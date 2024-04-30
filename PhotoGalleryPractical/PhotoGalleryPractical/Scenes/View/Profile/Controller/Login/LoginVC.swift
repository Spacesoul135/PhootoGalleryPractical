//
//  LoginVC.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 28/04/24.
//

import Foundation
import UIKit
import GoogleSignIn

class LoginVC:UIViewController {
    //MARK: - Outlets -
    @IBOutlet weak var btnLoginGoogle: UIButton!
    
    //MARK: - Class  Varibles -
    
    //MARK: - Custom Methods -
    
    //MARK: - Button Action Methods -
    @IBAction func btnLoginGoogleTapped(_ sender: UIButton) {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else {
                
                return }
            
            // If sign in succeeded, display the app's main content View.
            guard let signInResult = signInResult else { return }
            let user = signInResult.user
            
            let emailAddress = user.profile?.email
            let fullName = user.profile?.name
            let familyName = user.profile?.familyName
            let profilePicUrl = user.profile?.imageURL(withDimension: 320)
            
            // Save into UserDefaults
            let defaults = UserDefaults.standard
            defaults.set(emailAddress, forKey: "email")
            defaults.set(fullName, forKey: "fullName")
            defaults.set(familyName, forKey: "familyName")
            defaults.set(profilePicUrl?.absoluteString, forKey: "profilePicUrl")
            
            UIApplication.shared.setHome()
        }
    }
    
    
    
    //MARK: - LifeCycle Methods -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.hidesBackButton = true
        print("MJ call")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}

