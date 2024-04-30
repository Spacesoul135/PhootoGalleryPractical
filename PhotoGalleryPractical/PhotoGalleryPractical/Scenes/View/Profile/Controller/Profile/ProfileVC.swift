//
//  ProfileVC.swift
//  PhotoGalleryPractical
//
//  Created by Anand Panchal on 29/04/24.
//

import Foundation
import UIKit
import GoogleSignIn

class ProfileVC:UIViewController {
    //MARK: - Outlets -
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    
    //MARK: - Class  Varibles -
    
    //MARK: - Custom Methods -
    
    func setup() {
        self.applyStyle()
    }
    func applyStyle() {
        // In another view controller, retrieve user details from UserDefaults
        let userDefaults = UserDefaults.standard
        let emailAddress = userDefaults.string(forKey: "email")
        let fullName = userDefaults.string(forKey: "fullName")
        let familyName = userDefaults.string(forKey: "familyName")
        let profilePicUrlString = userDefaults.string(forKey: "profilePicUrl") ?? ""
        
        self.imgProfile.sd_setImage(with: URL(string: profilePicUrlString))
        self.lblEmail.text = emailAddress
        self.lblFirstName.text = fullName
        self.lblLastName.text = familyName
    }
    
    //MARK: - Button Action Methods -
    
    @IBAction func btnSignoutTapped(_ sender: UIButton) {
        GIDSignIn.sharedInstance.signOut()
        let defaults = UserDefaults.standard
            defaults.removeObject(forKey: "email")
            defaults.removeObject(forKey: "fullName")
            defaults.removeObject(forKey: "familyName")
            defaults.removeObject(forKey: "profilePicUrl")
            // Call synchronize to ensure changes are saved immediately
            defaults.synchronize()
            
        UIApplication.shared.setLogin()
    }
    
    
    // MARK: - UITextField Delegate Methods -
    
    
    
    // MARK: - UITextView Delegate Methods -
    
    
    
    //MARK: - LifeCycle Methods -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}

