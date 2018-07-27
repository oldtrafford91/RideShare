//
//  GradientView.swift
//  RideShare
//
//  Created by Tran Tuan Hai on 7/28/18.
//  Copyright © 2018 Tran Tuan Hai. All rights reserved.
//

import UIKit


class GradientView: UIView {
  let gradientLayer = CAGradientLayer()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    print(#function)
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    print(#function)
    setupGradientView()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    print(#function)
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
