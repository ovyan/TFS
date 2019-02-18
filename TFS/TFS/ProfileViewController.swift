//
//  ViewController.swift
//  TFS
//
//  Created by Mike Ovyan on 07/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // MARK: - Outlets
    
    @IBOutlet var photoButton: UIButton!
    @IBOutlet var userAvatar: UIImageView!
    @IBOutlet var editButton: UIButton!
    
    @IBAction func handlePhotoTap(_ sender: Any) {
        print("Choose a profile pic")
        present(alert, animated: true, completion: nil)
    }
    
    let imagePC = UIImagePickerController()
    
    let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePC.delegate = self
        setAlert()
        
        // On this step not all of the constraints are set to their final values
        // Thus, a frame of the button is calculated without considering other constraints
        guard let editButtonFrame = editButton?.frame else {
            return
        }
        print("Frame is in \(#function) with properties: \(editButtonFrame)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        // On this step all of the constrainst have its final values
        // Hence, the frame has been recalculated for the specific device and now has its final value too
        guard let editButtonFrame = editButton?.frame else {
            return
        }
        print("Frame is in \(#function) with properties: \(editButtonFrame)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupAvatar()
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // On this step outlets are not set, therefore, have a nil value
        guard let editButtonFrame = editButton?.frame else {
            return
        }
        print("Frame is in \(#function) with properties: \(editButtonFrame)")
    }
    
    private func presentImagePicker(with type: UIImagePickerController.SourceType) {
        let picker = UIImagePickerController()
        picker.sourceType = type
        picker.delegate = self
        picker.allowsEditing = true
        
        present(picker, animated: true)
    }
    
    // MARK: - Setup
    
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
    
    func setAlert() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let chooseFromGallery = UIAlertAction(title: "Choose from Library", style: .default) { [weak self] _ in
                self?.presentImagePicker(with: .photoLibrary)
            }
            alert.addAction(chooseFromGallery)
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let takePhoto = UIAlertAction(title: "Make a photo", style: .default) { [weak self] _ in
                self?.presentImagePicker(with: .camera)
            }
            alert.addAction(takePhoto)
        }
        
        let cancel = UIAlertAction(title: "Close", style: .cancel) { [weak self] _ in
            self?.dismiss(animated: true)
        }
        alert.addAction(cancel)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let pickedImage = info[.editedImage] ?? info[.originalImage]
        
        if let pickedImage = pickedImage as? UIImage {
            userAvatar.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }
}
