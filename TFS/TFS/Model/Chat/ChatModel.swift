//
//  ChatModel.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

struct ChatModel {
    let id: String
    var receiver: ChatUser
    var entries: [ChatEntry]

    init(userId: String, userName: String?, entries: [ChatEntry] = []) {
        id = UUID().uuidString
        let user = ChatUser(userId: userId, userName: userName, isOnline: true)
        receiver = user
        self.entries = entries
    }

    var lastMessageText: String? {
        return entries.last?.message
    }
}

extension ChatModel: Comparable {
    static func < (lhs: ChatModel, rhs: ChatModel) -> Bool {
        let lhsEntry = lhs.entries.last
        let rhsEntry = rhs.entries.last

        switch (lhsEntry, rhsEntry) {
        case let (.some(left), .some(right)):
            return left.receivedAt < right.receivedAt

        case (nil, nil):
            let lhsName = lhs.receiver.userName
            let rhsName = rhs.receiver.userName

            return lhsName < rhsName

        default:
            return false
        }
    }
}
