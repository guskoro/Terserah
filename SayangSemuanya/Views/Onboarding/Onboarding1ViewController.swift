//
//  Onboarding1ViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 09/04/22.
//

import UIKit

class Onboarding1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // next page button
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let controller = storyboard? .instantiateViewController(identifier: "VeganNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        
        present(controller, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
