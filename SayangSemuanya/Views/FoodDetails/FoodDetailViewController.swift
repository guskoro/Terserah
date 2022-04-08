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
    
    @IBAction func wishList(_ sender: Any) {
        if cek == false {
//            print("change")
            cek = true
            wishList.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            wishList.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
}
