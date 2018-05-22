import UIKit
import UICollectionViewGallery



class MainDogViewController: UIViewController{
    
    //ReuseIdentifier for CollectionViewCell
    let reuseCell = "CollectionReuse"
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    //Bool used to move CollectionView Oncer then never again
    lazy var onceOnly = false
    //Major Data
    var dogCareCards = [CardClass]()
    //selected Button
    var caughtDogSection: String?
    //Used when card is clicked
    var selectedCareCard: CardClass?
    
    //Populating array of Red Cards before ViewDidLoad
    override func viewWillAppear(_ animated: Bool) {
        //Fixing the navigationbbarbuttonItem when the view reappaears
        self.navigationController?.navigationBar.tintAdjustmentMode = .normal
        mainCollectionView.recenterIfNeeded()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.setGaleryBehavior(forInfiniteScroll: false, andScalingElemnts: true)
        dogCareCards = [CardClass]()
        if caughtDogSection == "yellow" {
            dogCareCards = CardClass.yellowCards()
            backgroundView.backgroundColor =
                UIColor(red:0.98, green:0.86, blue:0.28, alpha:1.0)
        } else if caughtDogSection == "red" {
            dogCareCards = CardClass.redCards()
            
            backgroundView.backgroundColor = UIColor.red
        }
        mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: CGSize(width: mainCollectionView.bounds.width/1.2, height: mainCollectionView.bounds.height),minScaleFactor:0.8)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zoomInSegue" {
            if let vc = segue.destination as? DetailViewController {
                vc.caughtDogCareCard = selectedCareCard
                if caughtDogSection == "yellow" {
                    vc.caughtDogCareColor = "Yellow"
                } else if caughtDogSection == "red" {
                    vc.caughtDogCareColor = "Red"
                }
            }
            
        }
    }
    
}

//Extension for CollectionView containing the DataSource and Delegate
extension MainDogViewController: UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate {
    
    ///COLLECTION VIEW FUNCTIONS////
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

