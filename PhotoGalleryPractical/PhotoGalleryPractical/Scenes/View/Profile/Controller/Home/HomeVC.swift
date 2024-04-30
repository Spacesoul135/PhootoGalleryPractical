//
//  HomeVC.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 29/04/24.
//




import Foundation
import UIKit
import SDWebImage

class GalleryCell:UICollectionViewCell {
    //MARK: - Outlets -
    
    @IBOutlet weak var vwGallery: UIView!
    @IBOutlet weak var imgGallery: UIImageView!
    //MARK: - Class  Varibles -
    
    
    //MARK: - Methods -
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class HomeVC:UIViewController {
    //MARK: - Outlets -
    
    @IBOutlet weak var colGallery: UICollectionView!
    
    //MARK: - Class  Varibles -
    var viewModel = HomeVM()
    
    //MARK: - Custom Methods -
    
    func setup() {
        self.applyStyle()
        self.colGallery.delegate = self
        self.colGallery.dataSource = self
    }
    func applyStyle() {
        
    }
    
    //MARK: - Button Action Methods -
    @IBAction func btnProfileTapped(_ sender: UIBarButtonItem) {
        
        //Move on Home screen
        let storyBoard : UIStoryboard = UIStoryboard(name: "Profile", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    //MARK: - LifeCycle Methods -
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.viewModel.callAPI(collectionView: self.colGallery)
        self.viewModel.setData()
        print("HOMEVC success")
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}


//MARK: UICollectionView Delagte Methods
extension HomeVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return self.viewModel.numOfRows()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as! GalleryCell
        let data = self.viewModel.valueForCell(Index: indexPath.row)
//        imageView.sd_setImage(with: URL(string: "http://www.domain.com/path/to/image.jpg"), placeholderImage: UIImage(named: "placeholder.png"))
        if self.viewModel.isInternetConnectionActive() {
            cell.imgGallery.sd_setImage(with: URL(string: data.imageURL))
        } else {
            cell.imgGallery.image = UIImage(base64String: data.imageURL)
        }
       
        
        
        // Get the image URL for this cell
//        let imageUrlString = self.viewModel.imageUrls[indexPath.row]
        
        // Convert the URL string to URL
//        if let imageUrl = URL(string: imageUrlString) {
//            // Fetch image data
//            let task = URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
//                if let error = error {
//                    print("Error loading image: \(error.localizedDescription)")
//                    return
//                }
//                
//                // Check if response contains image data
//                guard let imageData = data else {
//                    print("Error: Did not receive image data")
//                    return
//                }
//                
//                // Convert image data to UIImage
//                if let image = UIImage(data: imageData) {
//                    // Update UI on the main thread
//                    DispatchQueue.main.async {
//                        // Set the image to the cell's image view
//                        cell.imgGallery.image = image
//                    }
//                }
//            }
//            
//            // Start the data task
//            task.resume()
//        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            // Set the size of each cell
            let width = (collectionView.frame.width / 3) - 10 // You can adjust this according to your requirements
        let height = 120.0 //collectionView.frame.height / 3 // You can adjust this according to your requirements
            
            return CGSize(width: width, height: height)
        }
}
