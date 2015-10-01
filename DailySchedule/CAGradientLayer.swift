//
//  CAGradientLayer.swift
//  DailySchedule
//
//  Created by lye on 15/9/30.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import Foundation
import UIKit

extension CAGradientLayer {
    
    func gradientColor() -> CAGradientLayer {
        let topColor = UIColor(red: 178/255.0, green: 191/255.0, blue: 158/255.0, alpha: 1)
        let bottomColor = UIColor(red: 46/255.0, green: 187/255.0, blue: 222/255.0, alpha: 1)
        
        let gradientColor: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        gradientLayer.locations = gradientLocations
        
        return gradientLayer
    }
    
}
