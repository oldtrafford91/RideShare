import UIKit

class ContainerViewController: UIViewController {
}

private extension UIStoryboard {
  class func mainStoryboard() -> UIStoryboard {
    return UIStoryboard(name: "Main", bundle: .main)
  }
  class func leftSidePanelViewController() -> LeftSidePanelViewController? {
    return mainStoryboard().instantiateViewController(withIdentifier: "LeftSidePanelViewController") as? LeftSidePanelViewController
  }
  class func homeViewController() -> HomeViewController? {
    return mainStoryboard().instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
  }
}
