//
//  MenuViewController.swift
//  DogCare
//
//  Created by Justin Torres on 4/29/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var redCardButton: UIButton!
    @IBOutlet weak var yellowCardButton: UIButton!
    @IBOutlet weak var themeSongButton: UIButton!
    @IBOutlet weak var moreInfoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redCardButton.layer.cornerRadius = 20
        yellowCardButton.layer.cornerRadius = 20
        themeSongButton.layer.cornerRadius = 20
        moreInfoButton.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yellowSegue" {
            if let vc = segue.destination as? MainDogViewController {
                vc.caughtDogSection = "yellow"
            }
        } else if segue.identifier == "redSegue" {
            if let vc = segue.destination as? MainDogViewController {
                vc.caughtDogSection = "red"
            }
        }
    }

}
