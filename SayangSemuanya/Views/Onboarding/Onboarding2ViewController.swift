//
//  Onboarding2ViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 09/04/22.
//

import UIKit

class Onboarding2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let controller = storyboard? .instantiateViewController(identifier: "intolerantNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        
        present(controller, animated: true, completion: nil)
    }
    
}
