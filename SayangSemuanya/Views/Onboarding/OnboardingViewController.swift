//
//  OnboardingViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 06/04/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    // conversion from UI to Code
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slides: [OnboardingSlide] = []
    
    // page controller setup
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1{
                nextButton.setTitle("Mulai", for: .normal)
            } else {
                nextButton.setTitle("Lanjut", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Data onboarding page displayed here
        slides = [
            OnboardingSlide(title: "Hi !", description: "Kenalan Yuk", image: #imageLiteral(resourceName: "OnGround1")),
            OnboardingSlide(title: "Hi !", description: "Vegan Ngga?", image: #imageLiteral(resourceName: "Vegan")),
            OnboardingSlide(title: "Hi !", description: "Gabisa Makan Apa?", image:  #imageLiteral(resourceName: "Intolerant"))
        ]
    }
    
    // Action for clicked next button on Onboarding Page
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard? .instantiateViewController(withIdentifier: "FoodList") as! UITabBarController; controller.modalPresentationStyle = .fullScreen
            
            present(controller, animated: true, completion: nil)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

// Onboarding extension drop here peeps!
extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    // sliding onboarding view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    // size setup for onboarding view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    // halo ini komen
    // size for scrolling onboarding page
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
}
