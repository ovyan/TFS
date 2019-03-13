//
//  ProfileControllerViewModel.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

struct ProfileViewModel {
    let name: String
    let about: String?
    let avatar: UIImage
}

protocol ProfileControllerViewModel: ProfileControllerViewModelOutput {
    var name: String? { get set }
    var aboutYou: String? { get set }
    var image: UIImage? { get set }

    func loadSavedData()
    func endEditing()
    func saveDataGCD()
    func saveDataOperation()
}
