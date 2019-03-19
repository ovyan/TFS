//
//  MultipeerCommunicator.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation
import MultipeerConnectivity

protocol MultipeerCommunicator: class {
    func sendMessage(_ message: String, to userID: String, completion: ((Bool, Error?) -> Void)?)

    var localPeerID: String { get }

    var delegate: CommunicatorDelegate? { get set }

    var isOnline: Bool { get set }
}

struct MultipeerCommunicatorError: Error {
    let reason: String
}
