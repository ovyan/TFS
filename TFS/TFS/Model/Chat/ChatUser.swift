//
//  ChatUser.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

struct ChatUser: Hashable {
    let userId: String
    let userName: String?

    var isOnline: Bool
}
