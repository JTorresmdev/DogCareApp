import UIKit
import UICollectionViewGallery
import AVFoundation

//reuseidentifier for cell to prevent from re-typing
let reuseCell = "CollectionReuse"

class MainDogViewController: UIViewController, AVAudioPlayerDelegate{

    
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
        dogCareCards.append(CardClass(title: "Theme Song Words", cover: nil, number: "50", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Shelter Dogs Need a Home!", cover: "red1image", number: "1", body: "There are many mutts and purebred dogs that need loving homes, just like yours. So when you're ready to add a dog to your family, don't forget to check the shelter, foster parents, or adoption events to find your very own special dog.\nMy Family says I'm special because I came from the shelter. Your dog will be too!\n\nWhat are some things that are so special about adopting a dog from the shelter?", audioName: "red1"))
        dogCareCards.append(CardClass(title: "Why Mutts are Wonderful", cover: "red2image", number: "2", body: "A mutt is a dog that is not a \"purebred.\" It is a mixture of dog breeds. I'm a mutt. My grandfather was a Beagle; my grandmother was a mix of Maltese, Lhasa Apso, and something else. They each gave me their best qualities.\nThere is no other dog exactly like me. Even my brothers and sisters dont look like me, but we are each perfect. My human family tells me then love me. That is all that matters. Oh yeah, a couple more things...I love myself, and I love my family too.\n\nHow many wonderful mutts do you know? Can you name them?", audioName: "red2"))
        dogCareCards.append(CardClass(title: "Mutts", cover: nil, number: "3", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Fleas", cover: nil, number: "4", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Purebred or mixed", cover: nil, number: "5", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Taking care of your dog", cover: nil, number: "6", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Giving your dog attention and room to play", cover: nil, number: "7", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Dogs’ needs", cover: nil, number: "8", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Senior dogs", cover: nil, number: "9", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Dogs tail", cover: nil, number: "10", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "When people hurt animals", cover: nil, number: "11", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Cleaning up after your dog", cover: nil, number: "12", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Collar fits", cover: nil, number: "13", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Being gentle with your dog", cover: nil, number: "14", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Spay or Neutered", cover: nil, number: "15", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Socializing", cover: nil, number: "16", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "ID tags and microchips", cover: nil, number: "17", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Feeding your dog", cover: nil, number: "18", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Adopting another pet", cover: nil, number: "19", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Keeping a dog warm in the winter", cover: nil, number: "20", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Meeting other dogs", cover: nil, number: "21", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Don't tie me up", cover: nil, number: "22", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Noises affect dogs' ears", cover: nil, number: "23", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Never leave a dog locked in a car", cover: nil, number: "24", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Caring for blind dogs", cover: nil, number: "25", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Letting your dog out often", cover: nil, number: "26", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Antifreeze", cover: nil, number: "27", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Right kind of bones", cover: nil, number: "28", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Dog beds", cover: nil, number: "29", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "No teasing", cover: nil, number: "30", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "When the new baby comes home", cover: nil, number: "31", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "High-Energy dogs", cover: nil, number: "32", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Small dogs", cover: nil, number: "33", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Dogs new friend", cover: nil, number: "34", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Right amount of exercise", cover: nil, number: "35", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Do unto other dogs", cover: nil, number: "36", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Get the right dog", cover: nil, number: "37", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Dogs' enviroment", cover: nil, number: "38", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Ask my vet", cover: nil, number: "39", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Unwanted puppies", cover: nil, number: "40", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "A safe walk", cover: nil, number: "41", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Some things are posionous to dogs", cover: nil, number: "42", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Allergies", cover: nil, number: "43", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Check hot pavement", cover: nil, number: "44", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Rescue groups", cover: nil, number: "45", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Fostering", cover: nil, number: "46", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Be nice to bugs", cover: nil, number: "47", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Being thankful", cover: nil, number: "48", body: nil, audioName: nil))
        dogCareCards.append(CardClass(title: "Some people train dogs to be mean; train yours right", cover: nil, number: "49", body: nil, audioName: nil))
        
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
    }
    
    @IBAction func playButtonHit(_ sender: Any) {
        //play audio if card is selected
            if playButton.titleLabel?.text == "Play" {
                //play audio
                playButton.setTitle("Pause", for: .normal)
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
            let styleSize = CGSize(width: width/3.2, height: height/5)
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
            cell.title.text = dogCareCards[indexPath.row].title
            cell.number.text = dogCareCards[indexPath.row].number
            if dogCareCards[indexPath.row].cover != nil {
                cell.dogImage.image = UIImage(named: dogCareCards[indexPath.row].cover!)
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
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet var container: UIView!
    
}

