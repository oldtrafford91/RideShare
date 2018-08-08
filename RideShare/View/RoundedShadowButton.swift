import UIKit

class RoundedShadowButton: UIButton {
  func setupView() {
    layer.cornerRadius = 5.0
    layer.shadowRadius = 10.0
    layer.shadowOffset = .zero
    layer.shadowOpacity = 0.3
    layer.shadowColor = UIColor.darkGray.cgColor
  }
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
  func animate(loading: Bool, message: String?) {
    let originalFrame = frame
    let spinner = UIActivityIndicatorView(style: .whiteLarge)
    spinner.color = .darkGray
    spinner.alpha = 0.0
    spinner.center = center
    spinner.color = .darkGray
    spinner.hidesWhenStopped = true
    if loading {
      self.setTitle("", for: .normal)
      UIView.animate(withDuration: 0.5, animations: {
        self.layer.cornerRadius = self.bounds.height / 2
        self.frame = CGRect(x: self.center.x - self.bounds.height/2, y: self.frame.origin.y, width: self.bounds.height, height: self.bounds.height)
      }) { finished in
        spinner.center = CGPoint(x: self.bounds.width / 2 , y: self.bounds.width / 2)
        self.addSubview(spinner)
        spinner.startAnimating()
        UIView.animate(withDuration: 0.5, animations: {
          spinner.alpha = 1.0
        }, completion: nil)
      }
      self.isUserInteractionEnabled = false
    } else {
      self.isUserInteractionEnabled = true
      for subView in self.subviews {
        if subView.tag == 100 {
          subView.removeFromSuperview()
        }
      }
      UIView.animate(withDuration: 0.2, animations: {
        self.frame = originalFrame
        self.layer.cornerRadius = 5.0
      }, completion: nil)
    }
  }
}
