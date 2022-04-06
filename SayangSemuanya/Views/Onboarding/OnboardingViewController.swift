//
//  OnboardingViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 06/04/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [
            OnboardingSlide(title: "Hi !", description: "Kenalan Yuk", image: #imageLiteral(resourceName: "OnGround1")),
            OnboardingSlide(title: "Hi !", description: "Vegan Ngga?", image: #imageLiteral(resourceName: "OnGround1")),
            OnboardingSlide(title: "Hi !", description: "Gabisa Makan Apa?", image:  #imageLiteral(resourceName: "OnGround1"))
        ]
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
}
