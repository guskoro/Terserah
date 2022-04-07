//
//  FoodDetailViewController.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 07/04/22.
//

import UIKit

class FoodDetailViewController: UIViewController {

  
    @IBOutlet var wishList: UIButton!
    var cek = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addWishList(_ sender: UIButton) {
        if cek == false {
            cek = true
            wishList.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            cek = false
            wishList.setImage(UIImage(systemName: "heart"), for: .normal)
            
        }
    }
    
}
