//
//  ViewController.swift
//  TFS
//
//  Created by Mike Ovyan on 07/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: - Outlets
    
    @IBOutlet var photoButton: UIButton!
    @IBOutlet var userAvatar: UIImageView!
    @IBOutlet var editButton: UIButton!
    
    @IBAction func handlePhotoTap(_ sender: Any) {
        print("Choose profile pic")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupAvatar()
        setupButton()
    }
    
    func setupAvatar() {
        let cornerRadius = photoButton.bounds.width / 2
        let inset = CGFloat(16)
        
        photoButton.layer.cornerRadius = cornerRadius
        photoButton.clipsToBounds = true
        photoButton.imageView?.contentMode = .scaleAspectFit
        photoButton.imageEdgeInsets = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        
        userAvatar.layer.cornerRadius = cornerRadius
        userAvatar.clipsToBounds = true
    }
    
    func setupButton() {
        editButton.layer.borderWidth = 1
        editButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        editButton.layer.cornerRadius = 10
        editButton.clipsToBounds = true
    }
}
