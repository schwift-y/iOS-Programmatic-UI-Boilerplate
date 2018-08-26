import Swinject

func createContainer(arguments: [String], environment: [String: String]) -> Container {
    let container = Container()

    container.register(ExampleRepositoryProtocol.self) { _ in
        if arguments.contains("UITests") {
            return TestExampleRepository()
        }
        return ExampleRepository()
     }

    return container
}
