//
//  ConversationCellViewModelImp.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

final class ConversationCellViewModelImp: ConversationCellViewModel {
    // MARK: - Members

    let name: String

    let message: String

    let date: Date?

    let isOnline: Bool

    let hasUnreadMessage: Bool

    let messageFont: UIFont

    let dateText: String?

    // MARK: - Init

    init(with model: ConversationModel) {
        name = model.recipent

        message = model.lastMessage ?? "No messages yet"
        if model.lastMessage != nil {
            messageFont = model.hasUnreadMessages ?
                UIFont.systemFont(ofSize: 17, weight: .medium) : UIFont.systemFont(ofSize: 17)
        } else {
            messageFont = UIFont.systemFont(ofSize: 15, weight: .semibold)
        }

        date = model.lastMessageDate
        dateText = date?.humanString

        isOnline = model.isRecipentOnline
        hasUnreadMessage = model.hasUnreadMessages
    }
}
