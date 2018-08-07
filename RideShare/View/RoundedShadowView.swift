import UIKit

class RoundedShadowView: UIView {
  func setupView() {
    layer.shadowOpacity = 0.3
    layer.shadowColor = UIColor.darkGray.cgColor
    layer.shadowRadius = 5.0
    layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
    layer.cornerRadius = 5.0
  }
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
}
