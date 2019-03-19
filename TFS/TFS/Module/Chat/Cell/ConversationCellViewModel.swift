//
//  ConversationCellViewModel.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

protocol ConversationCellViewModel: class {
    var name: String { get }
    var message: String { get }
    var date: Date? { get }
    var isOnline: Bool { get }
    var hasUnreadMessage: Bool { get }

    var messageFont: UIFont { get }
    var dateText: String? { get }
}
