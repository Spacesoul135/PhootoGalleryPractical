//
//  UIApplication + Extension.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 30/04/24.
//

import Foundation
import UIKit

extension UIApplication {
    
    /**
     Sets login screen
     */
    func setLogin() {
        if let loginNavigation = UIStoryboard.auth.instantiateViewController(withIdentifier: "NavLogin") as? UINavigationController {
            self.setRootController(for: loginNavigation)
        }
    }
    
    func setHome() {
        if let loginNavigation = UIStoryboard.home.instantiateViewController(withIdentifier: "NavHome") as? UINavigationController {
            self.setRootController(for: loginNavigation)
        }
    }
    
    private func setRootController(for rootController: UIViewController) {
        if let window = UIApplication.shared.windows.first {
            // Set the new rootViewController of the window.
            
            window.rootViewController = rootController
            window.makeKeyAndVisible()
            
            // A mask of options indicating how you want to perform the animations.
            let options: UIView.AnimationOptions = .transitionCrossDissolve
            
            // The duration of the transition animation, measured in seconds.
            let duration: TimeInterval = 0.3
            
            // Creates a transition animation.
            // Though `animations` is optional, the documentation tells us that it must not be nil. ¯\_(ツ)_/¯
            UIView.transition(with: window, duration: duration, options: options, animations: {}, completion: { completed in
                // Do something on completion here
            })
        }
    }
    
    // Assuming you have a method to display a loader
    func displayLoader() {
        guard let window = UIApplication.shared.windows.first else { return }
        
        let loaderView = UIView(frame: window.bounds)
        loaderView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator.center = loaderView.center
        loaderView.addSubview(activityIndicator)
        window.addSubview(loaderView)
        activityIndicator.startAnimating()
    }
    
    // Assuming you have a method to remove the loader
    func removeLoader() {
        guard let window = UIApplication.shared.windows.first else { return }
        
        for subview in window.subviews {
            if subview is UIView {
                subview.removeFromSuperview()
            }
        }
    }
}





extension UIStoryboard {
    
    //App bundle
    private static var bundle: Bundle {
        return Bundle.main
    }
    
    /**
     Authentication storyboard
     */
    static var auth: UIStoryboard {
        return UIStoryboard(name: "Profile", bundle: bundle)
    }
    
    /**
     Home storyboard
     */
    static var home: UIStoryboard {
        return UIStoryboard(name: "Home", bundle: bundle)
    }
    
    
    /**
     Instantiate View Controller from selected storyboard
     - Returns: View Controller
     - Parameter name: Instantiate View Controller Name
     */
    func instantiateViewController<T: UIViewController>(withClass name: T.Type) -> T? {
        return instantiateViewController(withIdentifier: String(describing: name)) as? T
    }
    
    func viewController<T : UIViewController>(viewControllerClass : T.Type, function : String = #function, line : Int = #line, file : String = #file) -> T {
        
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        
        guard let scene = self.instantiateViewController(withIdentifier: storyboardID) as? T else {
            
            fatalError("ViewController with identifier \(storyboardID), not found in \(self) Storyboard.\nFile : \(file) \nLine Number : \(line) \nFunction : \(function)")
        }
        
        return scene
    }
}



extension UIViewController {
    ///Return storyboard identifier
    class var storyboardID : String {
        return "\(self)"
    }
}
