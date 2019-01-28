import UIKit
import MapKit
import SideMenu

class HomeViewController: UIViewController {
  
  var leftSideMenuController: LeftSidePanelViewController!
  
  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  private func presentLeftMenuViewController() {
    leftSideMenuController = UIStoryboard.leftSidePanelViewController()
    let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: leftSideMenuController)
    SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
    SideMenuManager.default.menuFadeStatusBar = false
    SideMenuManager.default.menuLeftNavigationController?.isNavigationBarHidden = true
    present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
  }
  @IBAction func testButton(_ sender: RoundedShadowButton) {
    sender.animate(loading: true, message: nil)
  }
  @IBAction func toogleLeftSidePanel(_ sender: Any) {
    presentLeftMenuViewController()
  }
}

extension HomeViewController: MKMapViewDelegate {
}


