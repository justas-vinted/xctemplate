import Foundation

protocol ___VARIABLE_sceneName___PresenterInput {
    func present(state: ___VARIABLE_sceneName___Model.State)
}

final class ___VARIABLE_sceneName___Presenter {
    weak var viewController: ___VARIABLE_sceneName___ViewControllerInput?
    
    private func map(state: ___VARIABLE_sceneName___Model.State) -> ___VARIABLE_sceneName___ViewModel.State {
        return ___VARIABLE_sceneName___ViewModel.State()
    }
}

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterInput {
    func present(state: ___VARIABLE_sceneName___Model.State) {
        viewController?.display(state: map(state: state))
    }
}
