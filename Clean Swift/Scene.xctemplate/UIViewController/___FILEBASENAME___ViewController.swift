import UIKit

protocol ___VARIABLE_sceneName___ViewControllerInput: class {
    func display(state: ___VARIABLE_sceneName___ViewModel.State)
}

final class ___VARIABLE_sceneName___ViewController: UIViewController {
    private var interactor: ___VARIABLE_sceneName___InteractorInput!
    private var router: ___VARIABLE_sceneName___RouterInput!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
  
  // MARK: Setup
  
    private func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
    
  // MARK: View lifecycle
  
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.load()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewControllerInput {
    func display(state: ___VARIABLE_sceneName___ViewModel.State) {
        
    }
}
