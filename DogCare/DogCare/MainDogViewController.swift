import UIKit
import UICollectionViewGallery



class MainDogViewController: UIViewController{
    
    //ReuseIdentifier for CollectionViewCell
    let reuseCell = "CollectionReuse"
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var cardButton: UIBarButtonItem!
    @IBOutlet weak var buttonContainer: UIView!
    
    
    //Cell class of the detail side
    var viewBack: DetailCollectionViewCell!
    
    //Bool used to move CollectionView Oncer then never again
    lazy var onceOnly = false
    //bool for audio
    var audioPlaying = false
    
    //Major Data
    var dogCareCards = [CardClass]()
    //Used when card is clicked
    var selectedCareCard: CardClass?
    //bool for cards being shown
    var redCards = true
    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    
    //Populating array of Red Cards before ViewDidLoad
    override func viewWillAppear(_ animated: Bool) {
        //Fixing the navigationbbarbuttonItem when the view reappaears
        self.navigationController?.navigationBar.tintAdjustmentMode = .normal
        mainCollectionView.recenterIfNeeded()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonContainer.layer.borderWidth = 1
        buttonContainer.layer.borderColor = UIColor.lightGray.cgColor
        if redCards {
            backgroundView.backgroundColor = UIColor.red
        } else {
            backgroundView.backgroundColor = UIColor.yellow
        }
        
        dogCareCards = [CardClass]()
        dogCareCards = CardClass.redCards()
        cardButton.title = "Dog Breeds"
        
        if UIDevice.current.userInterfaceIdiom == .phone {
          mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: CGSize(width: mainCollectionView.frame.width/2, height: mainCollectionView.frame.height/2),minScaleFactor:0.8)
        } else if UIDevice.current.userInterfaceIdiom == .pad {
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: CGSize(width: 500, height: screenHeight/2),minScaleFactor:0.8)
        }
        mainCollectionView.setGaleryBehavior(forInfiniteScroll: true, andScalingElemnts: true)
       
        
    }

    //IBAction to show Change the cards
    @IBAction func changeCards(_ sender: Any) {
        if(redCards) {
            backgroundView.backgroundColor = UIColor.yellow
            dogCareCards.removeAll()
            dogCareCards = CardClass.yellowCards()
            mainCollectionView.reloadData()
            cardButton.title = "Dog Care"
            redCards = false
        } else {
            backgroundView.backgroundColor = UIColor.red
            dogCareCards = [CardClass]()
            dogCareCards = CardClass.redCards()
            mainCollectionView.reloadData()
            cardButton.title = "Dog Breeds"
            redCards = true
        }
        mainCollectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .left, animated: false)
        mainCollectionView.recenterIfNeeded()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zoomInSegue" {
            if let vc = segue.destination as? DetailViewController {
                vc.caughtDogCareCard = selectedCareCard
                if redCards {
                    vc.caughtDogCareColor = "Red"
                } else {
                    vc.caughtDogCareColor = "Yellow"
                }
            }
        }
    }
    
    
    
    //IBAction for the AudioPlayer Play Button
//    @IBAction func playButtonHit(_ sender: Any) {
//
//
//        //If AudioPlayer hasnt started playing then start playing Audio based on SelectedCareCard which was assigned when the card was clicked//
////            if playButton.titleLabel?.text == "Play" {
////                //play audio
////                playButton.setTitle("Pause", for: .normal)
////                playButton.setImage(UIImage(named: "pauseButton"), for: .normal)
////                //Do->Try->Catch function used to play the actual audio
////                do {
////                    let audioPlayer = Bundle.main.path(forResource: selectedCareCard?.audioName, ofType: "mp3")
////                    try mainAudioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
////                    mainAudioPlayer?.delegate = self
////                    mainAudioPlayer?.play()
////                    audioPlaying = true
////
////                    //Setting progress bar to 0
////                    progressBarAudio.setValue(Float((mainAudioPlayer?.currentTime)!/(mainAudioPlayer?.duration)!), animated: false)
////
////                    //Calling Selector function every second to update audio progressbar
////                    Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:  #selector(updateProgress(_:)), userInfo: nil, repeats: true)
////
////                } catch {
////                    //Printing out error if ran into
////                    print(error.localizedDescription)
////
////                }
////
////            //If AudioPlayer is already playing then stop audio
////            } else {
////                playButton.setTitle("Play", for: .normal)
////                playButton.setImage(UIImage(named: "playButton"), for: .normal)
////                mainAudioPlayer?.stop()
////                audioPlaying = false
////                if aboutUsButton.isHidden {
////                    print("hidden")
////                } else {
////                    print("not hidden")
////                    playButton.isHidden = true
////                    progressBarAudio.isHidden = true
////                }
////            }
//
//    }
    
    //OBJC Selector Function used to update the progressBar of the Audio based on where in the Audio the User is at
//    @objc func updateProgress(_ sender: UITapGestureRecognizer){
//        if (mainAudioPlayer?.isPlaying)! {
//            //Update
//            progressBarAudio.setValue(Float((mainAudioPlayer?.currentTime)!/(mainAudioPlayer?.duration)!), animated: true)
//        }
//    }
    
    
    
    
    //Function for design changes based on UIScreenSize
//    func adjustmentsForStyle(){
//        //Using Cocoapods UICollectionViewGallery to customize uicollectionview design
//        //let width = UIScreen.main.nativeBounds.width
//        //let height = UIScreen.main.nativeBounds.height
//
//    }
    
}


//Extension for CollectionView containing the DataSource and Delegate
extension MainDogViewController: UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate {
    
    //AUDIO PLAYER FUNCTIONS////
    // AVAudioPlayerDelegate,
//    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
////        playButton.setImage(UIImage(named:"playButton"), for: .normal)
////        playButton.setTitle("Play", for: .normal)
////        progressBarAudio.setValue(0, animated: true)
//    }
    
    ///COLLECTION VIEW FUNCTIONS////
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //Makes the CollectionView start at the first card and more centered
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if !onceOnly {
            self.mainCollectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .left, animated: false)
           onceOnly = true
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        mainCollectionView.recenterIfNeeded()
    }
    
    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        mainCollectionView.recenterIfNeeded()
    }
   
    //Used to get the total number of cards in the CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogCareCards.count
    }
    
    //Used to populate and design all of the Fronts of the Cards based on indexPath
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemToShow = dogCareCards[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCell, for: indexPath) as! MainCollectionViewCell
        cell.dogImage.image = UIImage(named: itemToShow.cover!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCareCard = dogCareCards[indexPath.row]
        performSegue(withIdentifier: "zoomInSegue", sender: self)
    }
    
    //UICollectionViewCell has been clicked and will flip and show the Back of the Card
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//
//        //Grabbing the CollectionViewCell that was clicked and storing it into a Var
//        selectedCareCard = dogCareCards[indexPath.row]
//
//        if audioPlaying {
//            //audio is still playing
//
//        } else if !audioPlaying {
//            //audio is not playing
//            //Showing AudioPlayer controls
//            playButton.isHidden = false
//            progressBarAudio.isHidden = false
//            progressBarAudio.setValue(0, animated: false)
//            playButton.setTitle("Play", for: .normal)
//            playButton.setImage(UIImage(named: "playButton"), for: .normal)
//            //Hiding about us to make room for Audio Controls
//            aboutUsButton.isHidden = true
//            cardButton.isEnabled = false
//            aboutUsButton.isEnabled = true
//        }
//
//
//
//
//
//
//
//
//
//        //storing custom CollectionViewCell Class for the front into a Var
//        viewFront = collectionView.cellForItem(at: indexPath) as! MainCollectionViewCell
//
//        //Assigning the size of the back of the card to equal the front
//        viewBack.frame.size.height = viewFront.contentView.frame.size.height
//        viewBack.frame.size.width = viewFront.contentView.frame.size.width
//
//        //Creating Animation for Flipping the Card
//        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
//
//        //Function to make the card flip
//        UIView.transition(from: viewFront.contentView, to: viewBack, duration: 0.5, options: transitionOptiones, completion: nil)
//        //Disabling scrolling to prevent seeing cards with front and backs
//        mainCollectionView.isScrollEnabled = false
//
//        //Create TapGestureRecognizer so when the Back of the Card is Clicked it can FLip Back
//        let flipToFront = UITapGestureRecognizer(target: self, action: #selector(flipCardBack(_:)))
//
//        //Assigning TapGestureRecognizer to Back of card
//        viewBack.detailContainer.isUserInteractionEnabled = true
//        viewBack.addGestureRecognizer(flipToFront)
//
//        if(!redCards) {
//            viewBack.detailContainer.backgroundColor = UIColor.yellow
//            viewBack.detailTitle.textColor = UIColor.black
//            viewBack.detailNumber.textColor = UIColor.black
//        } else {
//            viewBack.detailContainer.backgroundColor = UIColor.red
//            viewBack.detailTitle.textColor = UIColor.white
//            viewBack.detailNumber.textColor = UIColor.white
//        }
//
//        //Function for populating the Back of the Card after the flip finishes
//        viewBack.updateInfo(index: dogCareCards[indexPath.row])
//
//        //DesignStuff//
//        viewBack.detailContainer.layer.cornerRadius = 20
//        //EndDesignStuff//
//
//    }
    
    //OBJC Selector Function for the TapGestureRecognizer for Flipping the Card to the Front
//    @objc func flipCardBack(_ sender: UITapGestureRecognizer){
//        //Creating Animation to flip card
//        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
//        //Function to flip card using same sizes grabbed before from the first click
//        UIView.transition(from: viewBack, to: viewFront.contentView, duration: 0.5, options: transitionOptiones, completion: nil)
//        //Showing About Us Button
//        aboutUsButton.isHidden = false
//        if audioPlaying {
//            //audio is playing
//            aboutUsButton.isEnabled = false
//        } else if !audioPlaying {
//            //audio isnt playing
//            //Enabaling scrolling to allow to see other cards only when showing the Front
//            mainCollectionView.isScrollEnabled = true
//            //Hiding Audio Controls
//            playButton.isHidden = true
//            progressBarAudio.isHidden = true
//            //card button
//            cardButton.isEnabled = true
//            aboutUsButton.isEnabled = true
//        }
//
//
//        //Stopping AudioPlayer if not done so by user
////        if mainAudioPlayer != nil {
////            if (mainAudioPlayer?.isPlaying)! {
////                //if audio is playing, continue playing
////
////            } else {
////                //if audio is not playing hide the controls
////                mainAudioPlayer?.stop()
////                audioPlaying = false
////                playButton.setTitle("Play", for: .normal)
////            }
////        }
//    }
    
    
}

////////////////////////////////////////CUSTOM COLLECTIONVIEWCELL CLASSES////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Class for the CollectionView Cell that will be the Front of the Card
class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dogImage: UIImageView!
    
    
}
//Class for the CollectionView Cell that will be the Back of the Card
class DetailCollectionViewCell: UIView {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var detailNumber: UILabel!
    @IBOutlet var detailContainer: UIView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailBodyContainer: UIView!
    @IBOutlet weak var detailBody: UILabel!
    
    //Function used to populate the detail side of the cell
    func updateInfo(index: CardClass){
        
        detailTitle.text = index.title
        detailNumber.text = index.number
        detailBody.text = index.body
        if(index.cover != nil){
            dogImage.image = UIImage(named: index.cover!)
        }
        
        //Design Stuff//
        dogImage.layer.cornerRadius = dogImage.frame.size.width/2
        dogImage.clipsToBounds = true
        detailBodyContainer.layer.borderWidth = 1.0
        detailBodyContainer.layer.borderColor = UIColor.black.cgColor
        detailBody.sizeToFit()
        //End Design Stuff//
    }
    
}

extension UIImageView
{
    func roundCornersForAspectFit(radius: CGFloat)
    {
        if let image = self.image {
            
            //calculate drawingRect
            let boundsScale = self.bounds.size.width / self.bounds.size.height
            let imageScale = image.size.width / image.size.height
            
            var drawingRect: CGRect = self.bounds
            
            if boundsScale > imageScale {
                drawingRect.size.width =  drawingRect.size.height * imageScale
                drawingRect.origin.x = (self.bounds.size.width - drawingRect.size.width) / 2
            } else {
                drawingRect.size.height = drawingRect.size.width / imageScale
                drawingRect.origin.y = (self.bounds.size.height - drawingRect.size.height) / 2
            }
            let path = UIBezierPath(roundedRect: drawingRect, cornerRadius: radius)
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
}

