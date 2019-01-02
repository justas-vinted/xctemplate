import Foundation

protocol ___VARIABLE_sceneName___InteractorInput {
    func load()
}

final class ___VARIABLE_sceneName___Interactor {
    private var state: ___VARIABLE_sceneName___Model.State
    var presenter: ___VARIABLE_sceneName___PresenterInput?
    
    init() {
        self.state = ___VARIABLE_sceneName___Model.State()
    }
    
    private func presentState() {
        presenter?.present(state: state)
    }
}

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorInput {
    
    func load() {
        presentState()
    }
}
