//
//  ChatEntry.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

struct ChatEntry: Hashable {
    let message: String
    let sender: String
    let receiver: String
    let receivedAt: Date

    init(with message: String, sender: String, receiver: String) {
        self.message = message
        self.sender = sender
        self.receiver = receiver
        receivedAt = Date()
    }
}
