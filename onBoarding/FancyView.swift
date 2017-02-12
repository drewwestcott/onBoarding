//
//  FancyView.swift
//  SET-Capture
//
//  Created by Drew Westcott on 28/12/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import UIKit

class FancyView: UIView {
	let SHADOW_COLOR: CGFloat = 120.0 / 255.0

	override func awakeFromNib() {
		super.awakeFromNib()
		
		layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.7).cgColor
		layer.shadowOpacity = 0.8
		layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
		layer.shadowRadius = 5.0
	}

	
}
