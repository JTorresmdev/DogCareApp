import UIKit
import UICollectionViewGallery
import AVFoundation



class MainDogViewController: UIViewController{
    
    //ReuseIdentifier for CollectionViewCell
    let reuseCell = "CollectionReuse"
    
    //Main Outlets from Storyboard
    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var progressBarAudio: UISlider!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var cardButton: UIBarButtonItem!
    
    

    //Creating an optional of the Audio player to be used later when the card is flipped
    var mainAudioPlayer: AVAudioPlayer?
    
    //Variable for CollectionViewCell used when flipping the card to make sure sizes stay the same
    //Cell class of the starting side
    var viewFront: MainCollectionViewCell!
    //Cell class of the detail side
    var viewBack: DetailCollectionViewCell!
    
    //Bool used to move CollectionView Oncer then never again
    lazy var onceOnly = false
    
    //Major Data
    var dogCareCards = [CardClass]()
    //Used when card is clicked
    var selectedCareCard: CardClass?
    //bool for cards being shown
    var redCards = true
    
    //Populating array of Red Cards before ViewDidLoad
    override func viewWillAppear(_ animated: Bool) {
        dogCareCards = [CardClass]()
        dogCareCards = CardClass.redCards()
        cardButton.title = "Dog Breeds"
        redCards = true
        //Fixing the navigationbbarbuttonItem when the view reappaears
        self.navigationController?.navigationBar.tintAdjustmentMode = .normal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Registering the nibs for the Front of the CustomCollectionViewCell
        mainCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: reuseCell)
        //Assigning the Back CustomCollectionViewCell to the Var to be used when the card is flipped
        let nib = UINib(nibName: "DetailCell", bundle: nil).instantiate(withOwner: nil, options: nil)
        viewBack = nib[0] as! DetailCollectionViewCell
        //Adjusting collectionView Style
        adjustmentsForStyle()
    }
    
    //Showing dog breeds
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "DogBreedSegue") {
            self.dismiss(animated: true, completion: nil)
        }
    }
    

    //IBAction to show Dog Breeds
    @IBAction func changeCards(_ sender: Any) {
        
        if(redCards) {
            dogCareCards.removeAll()
            dogCareCards = CardClass.yellowCards()
            mainCollectionView.reloadData()
            cardButton.title = "Dog Care"
            progressBarAudio.thumbTintColor = UIColor.yellow
            redCards = false
        } else {
            dogCareCards = [CardClass]()
            dogCareCards = CardClass.redCards()
            mainCollectionView.reloadData()
            cardButton.title = "Dog Breeds"
            progressBarAudio.thumbTintColor = UIColor.red
            redCards = true
        }
        self.mainCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
        
    }
    
    
    
    //IBAction for the AudioPlayer Play Button
    @IBAction func playButtonHit(_ sender: Any) {
        
        //If AudioPlayer hasnt started playing then start playing Audio based on SelectedCareCard which was assigned when the card was clicked//
            if playButton.titleLabel?.text == "Play" {
                //play audio
                playButton.setTitle("Pause", for: .normal)
                playButton.setImage(UIImage(named: "pauseButton"), for: .normal)
                //Do->Try->Catch function used to play the actual audio
                do {
                    let audioPlayer = Bundle.main.path(forResource: selectedCareCard?.audioName, ofType: "mp3")
                    try mainAudioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
                    mainAudioPlayer?.play()
                    
                    //Setting progress bar to 0
                    progressBarAudio.setValue(Float((mainAudioPlayer?.currentTime)!/(mainAudioPlayer?.duration)!), animated: false)
                    
                    //Calling Selector function every second to update audio progressbar
                    Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:  #selector(updateProgress(_:)), userInfo: nil, repeats: true)
                    
                } catch {
                    //Printing out error if ran into
                    print(error.localizedDescription)
                    
                }
                
            //If AudioPlayer is already playing then stop audio
            } else {
                playButton.setTitle("Play", for: .normal)
                playButton.setImage(UIImage(named: "playButton"), for: .normal)
                mainAudioPlayer?.stop()
            }
        
    }
    
    //OBJC Selector Function used to update the progressBar of the Audio based on where in the Audio the User is at
    @objc func updateProgress(_ sender: UITapGestureRecognizer){
        if (mainAudioPlayer?.isPlaying)! {
            //Update
            progressBarAudio.setValue(Float((mainAudioPlayer?.currentTime)!/(mainAudioPlayer?.duration)!), animated: true)
        }
    }
    
    
    
    
    //Function for design changes based on UIScreenSize
    func adjustmentsForStyle(){
        //Using Cocoapods UICollectionViewGallery to customize uicollectionview design
        let width = UIScreen.main.nativeBounds.width
        let height = UIScreen.main.nativeBounds.height
        switch UIScreen.main.nativeBounds.height {
        //iphone X
        case 2436:
            let styleSize = CGSize(width: width/3.2, height: height/6)
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: styleSize, minScaleFactor: 0.8)
        //Default duh
        default:
            let styleSize = CGSize(width: width/3.2, height: height/4)
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: styleSize, minScaleFactor: 0.8)
        }
    }
    
}


//Extension for CollectionView containing the DataSource and Delegate
extension MainDogViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //Makes the CollectionView start at the first card and more centered
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if !onceOnly {
            self.mainCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
           onceOnly = true
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        mainCollectionView.recenterIfNeeded()
    }

   
    //Used to get the total number of cards in the CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogCareCards.count
    }
    
    //Used to populate and design all of the Fronts of the Cards based on indexPath
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //assigned to a Custom CollectionViewCell Class for the Front
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCell, for: indexPath) as! MainCollectionViewCell
            
            cell.number.text = dogCareCards[indexPath.row].number
            cell.dogImage.image = UIImage(named: dogCareCards[indexPath.row].cover!)
        if(!redCards) {
            cell.container.backgroundColor = UIColor.yellow
        } else {
            cell.container.backgroundColor = UIColor.red
        }
            //DesignStuff//
            cell.container.layer.cornerRadius = 20
            cell.numberContainer.layer.cornerRadius = cell.numberContainer.frame.size.width/2
            cell.dogImage.layer.cornerRadius = 10
            cell.dogImage.clipsToBounds = true
            //EndDesignStuff//
        
            return cell
    }
    
    //UICollectionViewCell has been clicked and will flip and show the Back of the Card
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Grabbing the CollectionViewCell that was clicked and storing it into a Var
        selectedCareCard = dogCareCards[indexPath.row]
        
        //Showing AudioPlayer controls
        playButton.isHidden = false
        progressBarAudio.isHidden = false
        progressBarAudio.setValue(0, animated: false)
        playButton.setTitle("Play", for: .normal)
        playButton.setImage(UIImage(named: "playButton"), for: .normal)
        
        //Hiding about us to make room for Audio Controls
        aboutUsButton.isHidden = true
        cardButton.isEnabled = false
        
        //storing custom CollectionViewCell Class for the front into a Var
        viewFront = collectionView.cellForItem(at: indexPath) as! MainCollectionViewCell
        
        //Assigning the size of the back of the card to equal the front
        viewBack.frame.size.height = viewFront.contentView.frame.size.height
        viewBack.frame.size.width = viewFront.contentView.frame.size.width
        
        //Creating Animation for Flipping the Card
        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
        
        //Function to make the card flip
        UIView.transition(from: viewFront.contentView, to: viewBack, duration: 0.5, options: transitionOptiones, completion: nil)
        //Disabling scrolling to prevent seeing cards with front and backs
        mainCollectionView.isScrollEnabled = false
        
        //Create TapGestureRecognizer so when the Back of the Card is Clicked it can FLip Back
        let flipToFront = UITapGestureRecognizer(target: self, action: #selector(flipCardBack(_:)))
        
        //Assigning TapGestureRecognizer to Back of card
        viewBack.detailContainer.isUserInteractionEnabled = true
        viewBack.addGestureRecognizer(flipToFront)
        
        if(!redCards) {
            viewBack.detailContainer.backgroundColor = UIColor.yellow
            viewBack.detailTitle.textColor = UIColor.black
            viewBack.detailNumber.textColor = UIColor.black
        } else {
            viewBack.detailContainer.backgroundColor = UIColor.red
            viewBack.detailTitle.textColor = UIColor.white
            viewBack.detailNumber.textColor = UIColor.white
        }
        
        //Function for populating the Back of the Card after the flip finishes
        viewBack.updateInfo(index: dogCareCards[indexPath.row])
        
        //DesignStuff//
        viewBack.detailContainer.layer.cornerRadius = 20
        //EndDesignStuff//
        
    }
    
    //OBJC Selector Function for the TapGestureRecognizer for Flipping the Card to the Front
    @objc func flipCardBack(_ sender: UITapGestureRecognizer){
        //Creating Animation to flip card
        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
        //Function to flip card using same sizes grabbed before from the first click
        UIView.transition(from: viewBack, to: viewFront.contentView, duration: 0.5, options: transitionOptiones, completion: nil)
        //Enabaling scrolling to allow to see other cards only when showing the Front
        mainCollectionView.isScrollEnabled = true
        //Hiding Audio Controls
        playButton.isHidden = true
        progressBarAudio.isHidden = true
        //Showing About Us Button
        aboutUsButton.isHidden = false
        cardButton.isEnabled = true
        //Stopping AudioPlayer if not done so by user
        if mainAudioPlayer != nil {
            if (mainAudioPlayer?.isPlaying)! {
                mainAudioPlayer?.stop()
                playButton.setTitle("Play", for: .normal)
            }
        }
    }
    
    
}

////////////////////////////////////////CUSTOM COLLECTIONVIEWCELL CLASSES////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Class for the CollectionView Cell that will be the Front of the Card
class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var numberContainer: UIView!
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet var container: UIView!
    
}
//Class for the CollectionView Cell that will be the Back of the Card
class DetailCollectionViewCell: UICollectionViewCell {
    
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

