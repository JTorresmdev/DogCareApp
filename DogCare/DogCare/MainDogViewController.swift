import UIKit
import UICollectionViewGallery

//reuseidentifier for cell to prevent from re-typing
let reuseCell = "CollectionReuse"

class MainDogViewController: UIViewController{

    
    //collection view that will hold the dog info
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //using cocoapods UICollectionViewGllery to customize uicollectionview design
        mainCollectionView.setGallery(withStyle: .horizontal, minLineSpacing: 20, itemSize: CGSize(width: 300, height: 300), minScaleFactor: 0.8)
        //assigning collectionview cell nib (Custom cell)
        mainCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: reuseCell)
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
