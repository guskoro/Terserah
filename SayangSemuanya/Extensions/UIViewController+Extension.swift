//
//  UIViewController.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 07/04/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self{
        //print("instantiate")
        print(identifier)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        return storyBoard.instantiateViewController(identifier: identifier) as! Self
    }
    
}
