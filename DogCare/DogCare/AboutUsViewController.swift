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
    @IBOutlet weak var websiteBox: UIView!
    @IBOutlet weak var themeSongBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Creating and Assigning TapGestureRecognizers to the Website and ThemeSong Button
        let websiteTap = UITapGestureRecognizer(target: self, action: #selector(websiteClicked))
        websiteBox.addGestureRecognizer(websiteTap)
        let themeSongTap = UITapGestureRecognizer(target: self, action: #selector(themeSongClicked))
        themeSongBox.addGestureRecognizer(themeSongTap)
        designSetup()
    }
    
    //OBJC Selector Function for the TapGestureRecognizer for the Website Button
    @objc func websiteClicked(){
        //Option 1////
//        //Open website in safari here
//        if let url = URL(string: "http://www.happykids-happypets.com/") {
//            UIApplication.shared.open(url, options: [:])
//        }
        //Option 2////
    //Animates view and shows lyrics under video
        //Video currently isnt working because of wrong format
        //let songLauncher = ThemeSongLauncher()
        //songLauncher.showThemeSong()
        
    }
    
    //OBJC Selector Function for the TapGestureRecognizer for the ThemeSong Button
    @objc func themeSongClicked(){
        //Checks whether user has the youtube app and if so opens the theme song in youtube app if not in safari
        let youtubeURL = URL(string: "youtube://watch?v=Kbn-dDCzZ3w")!
        let normalURL = URL(string: "https://www.youtube.com/watch?v=Kbn-dDCzZ3w")!
        if UIApplication.shared.canOpenURL(youtubeURL) {
            UIApplication.shared.open(youtubeURL, options: [:])
        } else {
            UIApplication.shared.open(normalURL, options: [:])
        }
    
    }
    
    //StartDesign//
    func designSetup(){
        //making rounded corners on the bottom boxes
        websiteBox.layer.cornerRadius = 20
        themeSongBox.layer.cornerRadius = 20
    }
    //EndDesign//


}
