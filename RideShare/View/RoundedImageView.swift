import UIKit

class RoundedImageView: UIImageView {
  
  var cornerRadius: CGFloat = 2.0 {
    didSet {
      layer.cornerRadius = cornerRadius
      layer.masksToBounds = true
    }
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
  
  func setupView() {
    layer.cornerRadius = bounds.width / 2
    layer.masksToBounds = true
  }
}
