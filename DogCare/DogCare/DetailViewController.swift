//
//  DetailViewController.swift
//  DogCare
//
//  Created by Justin Torres on 4/19/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UIViewController{
    
    var caughtDogCareCard: CardClass?
    var caughtDogCareColor: String?
    //Creating an optional of the Audio player to be used later when the card is flipped
    var mainAudioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var frontImage: UIImageView!
    @IBOutlet weak var flipImage: UIImageView!
    
    var viewFront: UIView?
    var viewBack: DetailCollectionViewCell?
    var heightSaved: CGFloat?
    var widthSaved: CGFloat?
    
    var audioIsPlaying: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let nib = UINib(nibName: "DetailCell", bundle: nil).instantiate(withOwner: nil, options: nil)
        viewBack = nib[0] as? DetailCollectionViewCell
        
        if let card = caughtDogCareCard {
            print(card.number ?? "default")
           
            frontImage.image = UIImage(named: card.cover!)
            populateDetailSide(card: card)
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Play Audio", style: .plain, target: self, action: #selector(playAudio(_:)))
        }
        
        
      
        
        
        
        if let backgroundColor = caughtDogCareColor {
            if backgroundColor == "Red" {
                containerView.backgroundColor = UIColor.red
            } else {
                containerView.backgroundColor = UIColor(red:0.98, green:0.86, blue:0.28, alpha:1.0)
                viewBack?.detailContainer.backgroundColor = UIColor(red:0.98, green:0.86, blue:0.28, alpha:1.0)
            }
            
        }
        containerView.addSubview(frontImage)
        containerView.addSubview(viewBack!)
        viewBack?.isHidden = true
        let flipToBack = UITapGestureRecognizer(target: self, action: #selector(flipToBack(_:)))
        containerView.addGestureRecognizer(flipToBack)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            
            print("Landscape")
            print(viewBack?.frame.size.width ?? 0)
            print(viewBack?.frame.size.height ?? 0)
            viewBack?.frame.size.width = UIScreen.main.bounds.width
            viewBack?.frame.size.height = UIScreen.main.bounds.height/1.1
            
        } else {
            print("Portrait")
            print(viewBack?.frame.size.width ?? 0)
            print(viewBack?.frame.size.height ?? 0)
            viewBack?.frame.size.width = UIScreen.main.bounds.width
            viewBack?.frame.size.height = UIScreen.main.bounds.height/1.1
            
        }
    }
    
    @objc func flipToBack(_ sender: UITapGestureRecognizer){
        viewBack?.frame.size.height = containerView.frame.size.height
        viewBack?.frame.size.width = containerView.frame.size.width
        let transOpt = UIViewAnimationOptions.transitionFlipFromLeft
        UIView.transition(with: containerView, duration: 0.5, options: transOpt, animations: nil, completion: nil)
        viewBack?.isHidden = false
        frontImage.isHidden = true
        flipImage.isHidden = true
        
        viewBack?.dogImage.layer.masksToBounds = true
        let flipToFront = UITapGestureRecognizer(target: self, action: #selector(flipToFront(_:)))
        viewBack?.addGestureRecognizer(flipToFront)
    }
    
    @objc func flipToFront(_ sender: UITapGestureRecognizer){
        let transOpt = UIViewAnimationOptions.transitionFlipFromLeft
        UIView.transition(with: containerView, duration: 0.5, options: transOpt, animations: nil, completion: nil)
        viewBack?.isHidden = true
        frontImage.isHidden = false
        flipImage.isHidden = false
    }
    
    func populateDetailSide(card: CardClass){
        viewBack?.detailBody.text = card.body
        viewBack?.detailTitle.text = card.title
        viewBack?.detailNumber.text = card.number
        print("empty"+card.cover!)
        viewBack?.dogImage.image = UIImage(named: "empty"+card.cover!)
    }
    
    
    @objc func playAudio(_ sender: UITapGestureRecognizer){
        if self.navigationItem.rightBarButtonItem?.title == "Play Audio" {
            do {
                let audioPlayer = Bundle.main.path(forResource: caughtDogCareCard?.audioName, ofType: "mp3")
                try mainAudioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
                mainAudioPlayer?.delegate = self
                mainAudioPlayer?.play()
                audioIsPlaying = true
                self.navigationItem.rightBarButtonItem?.title = "Stop Audio"
            } catch {
                print(error.localizedDescription)
            }
        } else if self.navigationItem.rightBarButtonItem?.title == "Stop Audio" {
            mainAudioPlayer?.stop()
            audioIsPlaying = false
            self.navigationItem.rightBarButtonItem?.title = "Play Audio"
        }
    }
    

}


extension DetailViewController:  AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.navigationItem.rightBarButtonItem?.title = "Play Audio"
    }
    
}

// AVAudioPlayerDelegate,
//    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
////        playButton.setImage(UIImage(named:"playButton"), for: .normal)
////        playButton.setTitle("Play", for: .normal)
////        progressBarAudio.setValue(0, animated: true)
//    }
