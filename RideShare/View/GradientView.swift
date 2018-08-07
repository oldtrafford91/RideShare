import UIKit

class GradientView: UIView {
  let gradientLayer = CAGradientLayer()
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupGradientView()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupGradientView()
  }
  
  func setupGradientView() {
    gradientLayer.frame = self.bounds
    gradientLayer.colors = [UIColor.white.cgColor, UIColor.white.withAlphaComponent(0.0).cgColor]
    gradientLayer.startPoint = CGPoint.zero
    gradientLayer.endPoint = CGPoint(x: 0, y: 1)
    gradientLayer.locations = [0.8, 1.0]
    self.layer.addSublayer(gradientLayer)
  }
}
