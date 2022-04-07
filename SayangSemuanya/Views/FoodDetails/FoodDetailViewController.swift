//
//  FoodDetailViewController.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 07/04/22.
//

import UIKit

class FoodDetailViewController: UIViewController {

    @IBOutlet var wishList: UIButton!
    var toggleButtonChecked = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func wishList(_ sender: Any) {
        if toggleButtonChecked == false {
            toggleButtonChecked = true
            wishList.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            toggleButtonChecked = false
            wishList.setImage(UIImage(systemName: "heart"), for: .normal)
            
        }
    }
    

}
