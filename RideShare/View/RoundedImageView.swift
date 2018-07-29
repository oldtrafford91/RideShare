//
//  RoundedImageView.swift
//  RideShare
//
//  Created by Tran Tuan Hai on 7/29/18.
//  Copyright © 2018 Tran Tuan Hai. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
  
  func setupView() {
    layer.cornerRadius = bounds.width / 2
    clipsToBounds = true
  }
  
  
  
}
