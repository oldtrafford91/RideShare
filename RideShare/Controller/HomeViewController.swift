import UIKit
import MapKit

class HomeViewController: UIViewController {
  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  @IBAction func testButton(_ sender: RoundedShadowButton) {
    sender.animate(loading: true, message: nil)
  }
}

extension HomeViewController: MKMapViewDelegate {
}
