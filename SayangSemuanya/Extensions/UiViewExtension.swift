//
//  UiViewExtension.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 06/04/22.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
