//
//  AboutUsViewController.swift
//  DogCare
//
//  Created by Justin Torres on 2/13/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    //Normal IBOutlets for the website and themesong "button"
    @IBOutlet weak var missionStatement: UILabel!
    @IBOutlet weak var websiteContainer: UIView!
    
    //var to tell other screen what cards were shown last
    var redCardsShown: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Populating mission
        websiteContainer.layer.cornerRadius = 10
        missionStatement.text = """
In communities, kids face so many everyday challenges. They deal with bullying and low self- esteem, in addition to witnessing the inhumane treatment of animals. Happy Kids-Happy Pets created story cards to teach and enhance the character of children and to educate them on caring for a dog or cat.

Our Mission is to build a world where children experience peace, kindness, integrity, forgiveness and compassion for themselves and others; where children and animals grow up happy and safe – that’s what Happy Kids-Happy Pets is all about.
"""
    }
    
    @IBAction func websiteClicked(_ sender: Any) {
        //Open website in safari here
        if let url = URL(string: "http://www.happykids-happypets.com/") {
            UIApplication.shared.open(url, options: [:])
        }
    }

}
