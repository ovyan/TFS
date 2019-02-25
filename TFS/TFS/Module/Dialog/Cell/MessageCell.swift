//
//  DialogCell.swift
//  TFS
//
//  Created by Mike Ovyan on 24/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

protocol MessageCellConfiguration: class {
    var messageText: String? { get set }
}

final class MessageCell: UITableViewCell, MessageCellConfiguration {
    // MARK: - Outlets

    @IBOutlet
    private var messageLabel: UILabel!

    // MARK: - Members

    var messageText: String? {
        get {
            return messageLabel.text
        } set {
            messageLabel.text = newValue
        }
    }

    // MARK: - Interface

    func setup(with text: String) {
        messageLabel.text = text
    }
}
