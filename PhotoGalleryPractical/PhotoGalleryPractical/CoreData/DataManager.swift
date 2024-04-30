//
//  DataManager.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 29/04/24.
//

import Foundation
import CoreData
import UIKit

class DataManager {
    static let shared = DataManager()
    
    //MARK: - Core Data Method -
    
    func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        
        return managedContext
    }
    
    func saveImage(arrImage: [GalleryData]) {
        let context = getContext() // Assuming getContext() retrieves the managed object context
        
        for obj in arrImage {
            let entity = NSEntityDescription.entity(forEntityName: "PhotoGallery", in: context)!
            let imgObj = PhotoGallery(entity: entity, insertInto: context)
            
            guard let imageURL = URL(string: obj.imageURL) else {
                print("Invalid image URL: \(obj.imageURL)")
                continue // Skip to the next object
            }
                // Assuming `imageURL` is the URL of your image
            

                if let imageURL = URL(string: obj.imageURL), let imageData = try? Data(contentsOf: imageURL) {
                    let base64String = imageData.base64EncodedString()
                    print(base64String)
                    imgObj.imgURL = base64String
                    do {
                        try context.save()
                    } catch {
                        print("Failed to save")
                    }
                } else {
                    print("Failed to convert image to base64 string.")
                }
            }
    }
//    imgObj.imgURL = image.toString() // Assuming toString() method converts the image to a string representation
//    do {
//        try context.save()
//    } catch let error as NSError {
//        print("Could not save. \(error), \(error.userInfo)")
//    }
    
    func fetchRecordsFromAccountTbl(_ completion: @escaping ((_ arrResult: [PhotoGallery]?) -> Void)) {

        let context = self.getContext()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoGallery")
        
        do {
            let obj = try context.fetch(fetchRequest)
//            var arrImages = [GalleryData]()
            let arrPhotos = obj as! [PhotoGallery]
//            for obj in arrPhotos {
//                arrImages.append(GalleryData(imageURL: obj.imgURL ?? ""))
//            }
            completion(arrPhotos)
                        
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
}

extension UIImage {
    convenience init?(base64String: String) {
        guard let imageData = Data(base64Encoded: base64String, options: .ignoreUnknownCharacters) else {
            return nil
        }
        self.init(data: imageData)
    }
    
    func toString() -> String? {
        guard let imageData = self.jpegData(compressionQuality: 5.0) else {
            return nil
        }
        return imageData.base64EncodedString()
    }
}
