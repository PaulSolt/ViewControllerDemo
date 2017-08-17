//
//  ViewController.swift
//  ViewControllers
//
//  Created by Ryan O'Connor on 6/22/17.
//  Copyright © 2017 Ryan O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VCtoBeShownViewControllerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showVCPressed(_ sender: Any) {
        
        let vcToShow = VCtoBeShownViewController(nibName: "ViewControllerToBeShown", bundle: nil)
        
        vcToShow.dataArray = ["Larry", "Megan", "Robert", "Tom"]
        vcToShow.delegate = self
        
        self.present(vcToShow, animated: true, completion: nil)
        
    }
    
    func viewControllerDidFinish(viewController: VCtoBeShownViewController) {
        print("VCtoBeShownViewController was dismissed")

    }
    
    
}

