import Foundation

protocol ExampleRepositoryProtocol: class {
    func getText() -> String
}

class ExampleRepository: ExampleRepositoryProtocol {
    func getText() -> String {
        return "ExampleRepository"
    }
}

class TestExampleRepository: ExampleRepositoryProtocol {
    func getText() -> String {
        return "TestExampleRepository"
    }
}
