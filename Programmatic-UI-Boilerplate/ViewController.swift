import UIKit
import SnapKit

class ViewController: UIViewController {
    let repository: ExampleRepositoryProtocol?

    let heading: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: label.font.fontName, size: 26)
        label.textColor = UIColor.white
        label.text = "Self-Service Kiosk"
        label.textAlignment = .center
        return label
    }()

    let subHeading: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: label.font.fontName, size: 20)
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()

    init(repository: ExampleRepositoryProtocol) {
        self.repository = repository
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        self.repository = nil
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(heading)
        heading.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(self.view)
        }

        subHeading.text = self.repository?.getText()
        self.view.addSubview(subHeading)
        subHeading.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(heading.snp.bottom).offset(15)
            make.centerX.equalTo(self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

