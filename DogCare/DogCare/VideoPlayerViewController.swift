//
//  VideoPlayerViewController.swift
//  DogCare
//
//  Created by Justin Torres on 3/17/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import UIKit
import YouTubePlayer

class VideoPlayerViewController: UIViewController {

    @IBOutlet weak var mainPlayer: YouTubePlayerView!
    @IBOutlet weak var themeSongLyrics: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //These controls allow the video to be played not in full screen, who the fuck knows how
        let playerVars = ["controls": "1", "playsinline": "1", "autohide": "1", "showinfo": "1", "autoplay": "0", "fs": "1", "rel": "0", "loop": "0", "enablejsapi": "1", "modestbranding": "1"]
        mainPlayer.playerVars = playerVars as YouTubePlayerView.YouTubePlayerParameters
        //Id of the theme song video
        mainPlayer.loadVideoID("Kbn-dDCzZ3w")
        // Do any additional setup after loading the view.
        themeSongLyrics.text = """
Happy Kids
Happy Pets
We love our Dogs
And we love our Cats
Family and Friends
They are the best!
Happy Kids
Happy Pets
Let's go to the Park!
Bark Bark Bark
Throw me a Stick!
Lick Lick Lick
Look who I found?
Meow Meow Meow
Lets have some Fun!
Run Run Run
Happy Kids
Happy Pets
We love our Dogs
and We love our Cats
Family and Friends
They are the best!
Happy Kids
Happy Pets
Play all Day!
Hey Hey Hey
Give me a treat!
Tweet Tweet Tweet
Let's go on a Walk!
Talk Talk Talk
Give me a bath!
Splash Splash Splash
Happy Kids
Happy Pets
We love our Dogs
and We love our Cats
Family and Friends
They are the best!
Happy Kids
Happy Pets
Owooooo!
"""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
