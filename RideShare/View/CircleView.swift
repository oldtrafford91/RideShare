import UIKit

class CircleView: UIView {
  func setupView() {
    layer.cornerRadius = bounds.width / 2
    layer.borderWidth = 1.5
    layer.borderColor = UIColor.black.cgColor
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
}
