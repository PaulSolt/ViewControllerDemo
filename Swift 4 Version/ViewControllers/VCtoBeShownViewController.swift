//
//  VCtoBeShownViewController.swift
//  ViewControllers
//
//  Created by Ryan O'Connor on 6/22/17.
//  Copyright © 2017 Ryan O'Connor. All rights reserved.
//

import UIKit

protocol VCtoBeShownViewControllerDelegate {
    func viewControllerDidFinish(viewController: VCtoBeShownViewController)
}

class VCtoBeShownViewController: UIViewController {
    
    var dataArray: [String] = []
    
    var delegate: VCtoBeShownViewControllerDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "There are \(dataArray.count) names: \(dataArray)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        
        self.delegate?.viewControllerDidFinish(viewController: self)
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


