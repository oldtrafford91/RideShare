import UIKit

class RoundedShadowButton: UIButton {
  // MARK: - Properties
  private var spinner = UIActivityIndicatorView(style: .whiteLarge)
  private var leadingConstraint: NSLayoutConstraint?
  private var traillingConstraint: NSLayoutConstraint?
  
  // MARK: - Setup
  private func setupView() {
    leadingConstraint = superview!.constraints.filter {
      $0.identifier == "RequestButtonLeading"
    }.first!
    traillingConstraint = superview!.constraints.filter {
      $0.identifier == "RequestButtonTrailling"
    }.first!
    spinner.color = .darkGray
    spinner.alpha = 0.0
    spinner.center = center
    spinner.color = .darkGray
    spinner.hidesWhenStopped = true
    spinner.tag = 100
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
  // MARK: Animation
  func animate(loading: Bool, message: String?) {
    if loading {
      self.setTitle("", for: .normal)
      UIView.animate(withDuration: 0.2, animations: {
        self.layer.cornerRadius = self.bounds.height / 2
        self.leadingConstraint?.constant = self.center.x - self.bounds.height / 2
        self.traillingConstraint?.constant = (self.center.x - self.bounds.height / 2)
        self.superview?.layoutIfNeeded()
      }) { finished in
        if (finished) {
          self.spinner.center = CGPoint(x: self.bounds.width / 2 , y: self.bounds.width / 2)
          self.addSubview(self.spinner)
          self.spinner.startAnimating()
          UIView.animate(withDuration: 0.2, animations: {
            self.spinner.alpha = 1.0
          }, completion: nil)
          self.isUserInteractionEnabled = false
        }
      }
    } else {
      self.isUserInteractionEnabled = true
      for subView in self.subviews {
        if subView.tag == 100 {
          subView.removeFromSuperview()
        }
      }
      UIView.animate(withDuration: 0.2, animations: {
        
      }, completion: nil)
    }
  }
}
