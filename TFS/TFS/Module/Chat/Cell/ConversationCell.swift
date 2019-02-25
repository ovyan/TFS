//
//  ConversationCell.swift
//  TFS
//
//  Created by Mike Ovyan on 24/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

final class ConversationCell: UITableViewCell {
    // MARK: - Outlets

    @IBOutlet
    private var recipentLabel: UILabel!

    @IBOutlet
    private var messageLabel: UILabel!

    @IBOutlet
    private var dateLabel: UILabel!

    // MARK: - Interface

    func setup(with model: ConversationCellViewModel) {
        recipentLabel.text = model.name
        messageLabel.text = model.message
        messageLabel.font = model.messageFont
        dateLabel.text = model.dateText

        backgroundColor = model.isOnline ? #colorLiteral(red: 0.9876924157, green: 0.9783714414, blue: 0, alpha: 0.5) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
