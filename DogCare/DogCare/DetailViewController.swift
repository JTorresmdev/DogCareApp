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
                containerView.backgroundColor = UIColor.yellow
                viewBack?.detailContainer.backgroundColor = UIColor.yellow
                viewBack?.detailTitle.textColor = UIColor.black
                viewBack?.detailNumber.textColor = UIColor.black
            }
            
        }
        containerView.addSubview(frontImage)
        containerView.addSubview(viewBack!)
        viewBack?.isHidden = true
        let flipToBack = UITapGestureRecognizer(target: self, action: #selector(flipToBack(_:)))
        containerView.addGestureRecognizer(flipToBack)
        // Do any additional setup after loading the view.
    }
    
    @objc func flipToBack(_ sender: UITapGestureRecognizer){
        viewBack?.frame.size.height = containerView.frame.size.height
        viewBack?.frame.size.width = containerView.frame.size.width
        let transOpt = UIViewAnimationOptions.transitionFlipFromLeft
        UIView.transition(with: containerView, duration: 0.5, options: transOpt, animations: nil, completion: nil)
        viewBack?.isHidden = false
        frontImage.isHidden = true
        
        viewBack?.dogImage.layer.cornerRadius = (viewBack?.dogImage.frame.height)!/2
        viewBack?.dogImage.layer.masksToBounds = true
//        UIView.transition(from: viewFront!, to: viewBack!, duration: 0.5, options: transOpt, completion: nil)
        let flipToFront = UITapGestureRecognizer(target: self, action: #selector(flipToFront(_:)))
        viewBack?.addGestureRecognizer(flipToFront)
    }
    
    @objc func flipToFront(_ sender: UITapGestureRecognizer){
        let transOpt = UIViewAnimationOptions.transitionFlipFromLeft
        UIView.transition(with: containerView, duration: 0.5, options: transOpt, animations: nil, completion: nil)
        viewBack?.isHidden = true
        frontImage.isHidden = false
    }
    
    func populateDetailSide(card: CardClass){
        viewBack?.detailBody.text = card.body
        viewBack?.detailTitle.text = card.title
        viewBack?.detailNumber.text = card.number
        viewBack?.dogImage.image = UIImage(named: card.cover!)
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
