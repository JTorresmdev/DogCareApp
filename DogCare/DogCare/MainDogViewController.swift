import UIKit
import UICollectionViewGallery

//reuseidentifier for cell to prevent from re-typing
let reuseCell = "CollectionReuse"

class MainDogViewController: UIViewController{

    
    //collection view that will hold the dog info
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Adjusting collectionView Style
        adjustmentsForStyle()
        //assigning collectionview cell nib (Custom cell)
        mainCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: reuseCell)
    }
    
    
    func adjustmentsForStyle(){
        switch UIScreen.main.nativeBounds.height {
        case 2436:
            //iphone X
            //using cocoapods UICollectionViewGllery to customize uicollectionview design
            let width = UIScreen.main.nativeBounds.width
            let height = UIScreen.main.nativeBounds.height
            let styleSize = CGSize(width: width/3.2, height: height/6)
            //iPhone X condition
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: -40, itemSize: styleSize, minScaleFactor: 0.8)
        default:
            //using cocoapods UICollectionViewGllery to customize uicollectionview design
            let width = UIScreen.main.nativeBounds.width
            let height = UIScreen.main.nativeBounds.height
            let styleSize = CGSize(width: width/3.2, height: height/5)
            //iPhone X condition
            mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: -40, itemSize: styleSize, minScaleFactor: 0.8)
        }
    }
    
}


//Extension for collection view related things
extension MainDogViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseCell, for: indexPath) as! MainCollectionViewCell
        cell.container.layer.cornerRadius = 20
        return cell
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        mainCollectionView.recenterIfNeeded()
    }
    
    
    
}
