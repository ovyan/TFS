//
//  DialogMessageProvider.swift
//  TFS
//
//  Created by Mike Ovyan on 24/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class DialogMessageProvider {
    // MARK: - Interface

    func get() -> [String] {
        let splitted = sentences.components(separatedBy: ".")
        let messages = ["HeLOO", "KAK DELA???", "two lines\nin one", "ghbdtn"] + splitted

        return Array(repeating: messages, count: 3).flatMap { $0 }
    }

    // MARK: - Members

    let sentences = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
}
