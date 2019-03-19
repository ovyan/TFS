//
//  DialogMessageProvider.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class DialogMessageProvider {
    // MARK: - Interface

    func get() -> [String] {
        let splitted = sentences.components(separatedBy: ".")
        let messages = ["hi", "how r u?", "long long long two lines\nprobably", "yeah i think so"] + splitted

        return Array(repeating: messages, count: 3).flatMap { $0 }
    }

    // MARK: - Members

    private let sentences = "Text understanding on Facebook requires solving tricky scaling and language challenges where traditional NLP techniques are not effective. Using deep learning, we are able to understand text better across multiple languages and use labeled data much more efficiently than traditional NLP techniques. DeepText has built on and extended ideas in deep learning that were originally developed in papers by Ronan Collobert and Yann LeCun from Facebook AI Research."
}
