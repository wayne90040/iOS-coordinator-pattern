//
//  view+extensions.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/9/28.
//

import Foundation
import UIKit


extension UIView {
    
    var width: CGFloat {
        frame.size.width
    }
    
    var height: CGFloat {
        frame.size.height
    }
    
    var top: CGFloat {
        frame.origin.y
    }
    
    var botton: CGFloat {
        top + height
    }
    
    var left: CGFloat {
        frame.origin.x
    }
    
    var right: CGFloat {
        left + width
    }
    
}
