import UIKit

class CircleView: UIView {
  func setupView() {
    layer.cornerRadius = bounds.width / 2
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
}
