import UIKit

extension UIStoryboard {
  
  static func mainStoryboard() -> UIStoryboard {
    return UIStoryboard(name: "Main", bundle: .main)
  }
  
  static func leftSidePanelViewController() -> LeftSidePanelViewController? {
    return mainStoryboard().instantiateViewController(withIdentifier: "LeftSidePanelViewController") as? LeftSidePanelViewController
  }
}
