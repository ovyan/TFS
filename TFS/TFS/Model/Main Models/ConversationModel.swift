//
//  ConversationModel.swift
//  TFS
//
//  Created by Mike Ovyan on 24/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

struct ConversationModel {
    let recipent: String
    let lastMessage: String?
    let lastMessageDate: Date?
    let isRecipentOnline: Bool
    let hasUnreadMessages: Bool
}
