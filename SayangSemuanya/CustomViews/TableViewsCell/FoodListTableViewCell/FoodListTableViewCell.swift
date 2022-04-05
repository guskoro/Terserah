//
//  FoodListTableViewCell.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 04/04/22.
//

import UIKit

class FoodListTableViewCell: UITableViewCell {

    static let identifier = "FoodListTableViewCell"
    @IBOutlet var toggleButton: UIButton!
    var toggleButtonChecked = false
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setup(food: Food) {
        titleLabel.text = food.name
        descriptionLabel.text = food.description
        foodImageView.image = #imageLiteral(resourceName: "foodList")
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        if toggleButtonChecked == false {
            toggleButtonChecked = true
            customizeButtonSelected()
        } else {
            toggleButtonChecked = false
            customizeButtonNotSelected()
        }
    }
    
    func customizeButtonSelected(){
        toggleButton.setTitleColor(.blue, for: .normal)
    }
    func customizeButtonNotSelected(){
        toggleButton.setTitleColor(.orange, for: .normal)
    }
}
