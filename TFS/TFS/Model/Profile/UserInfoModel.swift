//
//  UserInfoViewModel.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

struct UserInfoModel: Hashable {
    let name: String
    let about: String?
    let avatar: UIImage?
}
