//
//  VideoLauncher.swift
//  DogCare
//
//  Created by Justin Torres on 3/15/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black
        //Youtube videos dont work without youtube helper implenetation
//        let urlString = NSURL(string: "https://www.youtube.com/watch?v=Kbn-dDCzZ3w&t=3s")
        //.avi is not an accepted format by Apple
//        guard let path = Bundle.main.path(forResource: "video", ofType:"m4v") else {
//            debugPrint("video.m4v not found")
//            return
//        }
        
//        if let url = path {
//            let player = AVPlayer(url: url)
//            let playerLayer = AVPlayerLayer(player: player)
//            self.layer.addSublayer(playerLayer)
//            playerLayer.frame = self.frame
//            player.play()
//        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ThemeSongLauncher: NSObject {
    func showThemeSong() {
        print("this function has been called")
        //container that holds everythign inside app
        if let keyWindow = UIApplication.shared.keyWindow {
            let view = UIView(frame: keyWindow.frame)
            view.backgroundColor = UIColor.white
            view.frame = CGRect(x: keyWindow.frame.width - 10, y: keyWindow.frame.height - 10, width: 10, height: 10)
            //adding video to view
            //16x9 is the aspect ratio for all HD Videos
            let height = keyWindow.frame.width * 9 / 16
            let videoPlayerFrame = CGRect(x: 0, y: 0, width: keyWindow.frame.width, height: height)
            let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
            view.addSubview(videoPlayerView)
            
            
            keyWindow.addSubview(view)
            
            UIView.animate(withDuration: 0.5, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                view.frame = keyWindow.frame
            }, completion: { (completedAnimation) in
                //animation finished
            })
        }
        
    }
}
