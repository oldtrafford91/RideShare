//
//  RoundedImageView.swift
//  RideShare
//
//  Created by Tran Tuan Hai on 7/29/18.
//  Copyright © 2018 Tran Tuan Hai. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedImageView: UIImageView {
  
  @IBInspectable var cornerRadius: CGFloat = 2.0 {
    
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
