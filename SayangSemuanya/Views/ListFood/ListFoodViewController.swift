//
//  ListFoodViewController.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 05/04/22.
//

import UIKit

class ListFoodViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var foods: [Food] = [
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000),
        .init(id: "id1", name: "Sate Ayam", description: "Sate ayam blablablablbablbablab  ahabjbajba", price: 50000)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells(){
        tableView.register(UINib(nibName: FoodListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FoodListTableViewCell.identifier)
    }

}

extension ListFoodViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FoodListTableViewCell.identifier) as! FoodListTableViewCell
        cell.setup(food: foods[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("pressed")
        //let controller = FoodDetailViewController.instantiate()
        //navigationController?.pushViewController(controller, animated: true)
        //navigationController?.present(controller, animated: true, completion: nil)
        let controller = storyboard? .instantiateViewController(withIdentifier: "FoodDetailViewController") as! UIViewController; controller.modalPresentationStyle = .fullScreen
                    present(controller, animated: true, completion: nil)
    }
}
