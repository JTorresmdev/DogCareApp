import UIKit
import UICollectionViewGallery
import AVFoundation

//reuseidentifier for cell to prevent from re-typing
let reuseCell = "CollectionReuse"

class MainDogViewController: UIViewController, AVAudioPlayerDelegate{

    
    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    //collection view that will hold the dog info
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    
    
    var mainAudioPlayer: AVAudioPlayer?
    var viewBack: DetailCollectionViewCell!
    var viewFront: MainCollectionViewCell!
    var cellHeight: CGFloat = 0
    var cellWidth: CGFloat = 0
    var onceOnly = false
    //Major Data
    var dogCareCards = [CardClass]()
    var selectedCareCard: CardClass?
    
    //populating the list
    override func viewWillAppear(_ animated: Bool) {
        dogCareCards = CardClass.redCards()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Adjusting collectionView Style
        adjustmentsForStyle()
        //assigning collectionview cell nib (Custom cell)
        mainCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: reuseCell)
        let nib = UINib(nibName: "DetailCell", bundle: nil).instantiate(withOwner: nil, options: nil)
        viewBack = nib[0] as! DetailCollectionViewCell
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playButton.setTitle("Play", for: .normal)
        playButton.setImage(UIImage(named: "playButton"), for: .normal)
    }
    
    @IBAction func playButtonHit(_ sender: Any) {
        
        //play audio if card is selected
            if playButton.titleLabel?.text == "Play" {
                //play audio
                playButton.setTitle("Pause", for: .normal)
                playButton.setImage(UIImage(named: "pauseButton"), for: .normal)
                do {
                    let audioPlayer = Bundle.main.path(forResource: selectedCareCard?.audioName, ofType: "mp3")
                    
                    try mainAudioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
                    mainAudioPlayer?.delegate = self
                    mainAudioPlayer?.play()
                } catch {
                    //error catch
                }
            } else {
                //pause audio
                playButton.setTitle("Play", for: .normal)
                playButton.setImage(UIImage(named: "playButton"), for: .normal)
                mainAudioPlayer?.stop()
            }
        
    }
    
    //DESIGN//
    func adjustmentsForStyle(){
        switch UIScreen.main.nativeBounds.height {
        case 2436:
            //iphone X
            //using cocoapods UICollectionViewGllery to customize uicollectionview design
            let width = UIScreen.main.nativeBounds.width
            let height = UIScreen.main.nativeBounds.height
            let styleSize = CGSize(width: width/3.2, height: height/6)
            //iPhone X condition
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: styleSize, minScaleFactor: 0.8)
        default:
            //using cocoapods UICollectionViewGllery to customize uicollectionview design
            let width = UIScreen.main.nativeBounds.width
            let height = UIScreen.main.nativeBounds.height
            let styleSize = CGSize(width: width/3.2, height: height/4)
            //iPhone X condition
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: styleSize, minScaleFactor: 0.8)
        }
    }
    
}


//Extension for collection view related things
extension MainDogViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if !onceOnly {
            self.mainCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
           onceOnly = true
        } else {
            
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogCareCards.count
    }
    
   
    
    //Populating individual card
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCell, for: indexPath) as? MainCollectionViewCell {
            cellWidth = cell.container.frame.size.width
            cellHeight = cell.container.frame.size.height
            cell.container.layer.cornerRadius = 20
            cell.number.text = dogCareCards[indexPath.row].number
            cell.numberContainer.layer.cornerRadius = cell.numberContainer.frame.size.width/2
            
            if dogCareCards[indexPath.row].cover != nil {
                
                cell.dogImage.image = UIImage(named: dogCareCards[indexPath.row].cover!)
                cell.dogImage.layer.cornerRadius = 10
                cell.dogImage.clipsToBounds = true
                
            }
            return cell
            
            
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCell, for: indexPath) as! DetailCollectionViewCell
            cell.detailContainer.layer.cornerRadius = 20
            return cell
        }
    }
    
    //Card Has Been Clicked
    //Card list will not be able to move when selected until deselected
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //set selected cell for audio playing
        selectedCareCard = dogCareCards[indexPath.row]
        playButton.isHidden = false
        
        
        let cell = collectionView.cellForItem(at: indexPath) as! MainCollectionViewCell
        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
        viewFront = cell
        viewBack.frame.size.height = cell.contentView.frame.size.height
        viewBack.frame.size.width = cell.contentView.frame.size.width
        viewBack.detailContainer.layer.cornerRadius = 20
        UIView.transition(from: cell.contentView, to: viewBack, duration: 0.5, options: transitionOptiones, completion: nil)
        mainCollectionView.isScrollEnabled = false
        //Create tap gesture recognizer for viewback
        let flipToFront = UITapGestureRecognizer(target: self, action: #selector(flipCardBack(_:)))
        viewBack.detailContainer.isUserInteractionEnabled = true
        viewBack.addGestureRecognizer(flipToFront)
        aboutUsButton.isHidden = true
        //populate info
        viewBack.updateInfo(index: dogCareCards[indexPath.row])
        
        
        
        
    }
    
    //function to flip card back
    @objc func flipCardBack(_ sender: UITapGestureRecognizer){
        let transitionOptiones = UIViewAnimationOptions.transitionFlipFromLeft
        UIView.transition(from: viewBack, to: viewFront.contentView, duration: 0.5, options: transitionOptiones, completion: nil)
        mainCollectionView.isScrollEnabled = true
        playButton.isHidden = true
        
        if mainAudioPlayer != nil {
            if (mainAudioPlayer?.isPlaying)! {
                mainAudioPlayer?.stop()
                playButton.setTitle("Play", for: .normal)
            }
            
        }
        aboutUsButton.isHidden = false
        
        
        
        print("flip back")
    }
   
    
    
    
    
    
    
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        mainCollectionView.recenterIfNeeded()
    }
    
    
    
}

//CELL STUFF
class DetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var detailNumber: UILabel!
    @IBOutlet var detailContainer: UIView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailBodyContainer: UIView!
    @IBOutlet weak var detailBody: UILabel!
    
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

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var numberContainer: UIView!
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet var container: UIView!
    
}

