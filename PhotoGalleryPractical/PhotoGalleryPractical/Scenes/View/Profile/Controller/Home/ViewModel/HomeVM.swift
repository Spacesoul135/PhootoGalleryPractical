//
//  HomeVM.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 29/04/24.
//
import Foundation
import UIKit
import Alamofire
import Network

class HomeVM {
    
    //MARK: - Custom Varibles -
    var imageUrls: [GalleryData] = []
    
    //MARK: - Custom Method -
    func setData() {
        
        if self.isInternetConnectionActive() {
            
            self.imageUrls = [
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/1.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/2.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/3.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/4.jpg"),
                GalleryData(imageURL: "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg")
            ]
            
            DataManager.shared.fetchRecordsFromAccountTbl { arrResult in
                if arrResult?.count == 0 {
                    DataManager.shared.saveImage(arrImage: self.imageUrls)
                }
            }
        } else {
            DataManager.shared.fetchRecordsFromAccountTbl { arrResult in
                self.imageUrls.removeAll()
                arrResult?.forEach({ photo in
                    self.imageUrls.append(GalleryData(imageURL: photo.imgURL ?? ""))
                })
                
            }
        }
    }
    
    func isInternetConnectionActive() -> Bool {
        let monitor = NWPathMonitor()
        let queue = DispatchQueue(label: "InternetConnectionMonitor")
        var isConnected = false
        
        monitor.pathUpdateHandler = { path in
            isConnected = path.status == .satisfied
        }
        
        monitor.start(queue: queue)
        
        // Wait for the monitor to update the connection status
        Thread.sleep(forTimeInterval: 0.5)
        
        return isConnected
    }
    
    
    
    //MARK: - Data Methods -
    func numOfRows() -> Int {
        self.imageUrls.count
    }
    
    func valueForCell(Index : Int) -> GalleryData{
        return self.imageUrls[Index]
    }
    //MARK: - API  -
    
    //    func callAPI(collectionView: UICollectionView) {
    //                // URL of your API
    //                let apiUrl = URL(string: "https://www.pexels.com/search/API")!
    //
    //                // Create a URLSession
    //                let session = URLSession.shared
    //
    //                // Create a data task
    //                let task = session.dataTask(with: apiUrl) { (data, response, error) in
    //                    // Check for errors
    //                    if let error = error {
    //                        print("Error: \(error.localizedDescription)")
    //                        return
    //                    }
    //
    //                    // Check if response contains data
    //                    guard let responseData = data else {
    //                        print("Error: Did not receive data")
    //                        return
    //                    }
    //
    //                    do {
    //                        // Convert JSON response to Swift object
    //                        let jsonResponse = try JSONSerialization.jsonObject(with: responseData, options: [])
    //
    //                        // Assuming your API returns an array of image URLs
    //                        if let jsonArray = jsonResponse as? [String] {
    //                            self.imageUrls = jsonArray
    //
    //                            // Reload collection view on the main thread
    //                            DispatchQueue.main.async {
    //                                collectionView.reloadData()
    //                            }
    //                        }
    //                    } catch {
    //                        print("Error decoding JSON: \(error.localizedDescription)")
    //                    }
    //                }
    //
    //                // Start the data task
    //                task.resume()
    //    }
    
    //    func getGalleryData() {
    //        let urlStr = "https://dummyjson.com/products"
    //
    //        AF.request(urlStr, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil)
    //                    .responseJSON(completionHandler: { response in
    //                        switch response.result {
    //                        case .success:
    //                            //let resJSON = JSON(response.value)
    //                            print(response.result)
    //                            let data = try Data(
    //
    //                            do {
    //                                let picture = try JSONDecoder().decode(GalleryDataModel.self, from: jsonData!) as? PictureJson
    //                                 print(picture!.picture!.data)
    //
    //                            } catch {
    //                                // print error here.
    //                            }
    //                            print("MJ Image: ", results?.products?[0].thumbnail ?? "")
    //                        case .failure(let error):
    //                            print(error)
    //                        }
    //                    })
    //    }
    
    //    func jsonToData(json: Any) -> Data? {
    //        do {
    //            return try JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted)
    //        } catch let myJSONError {
    //            print(myJSONError)
    //        }
    //        return nil;
    //    }
}
