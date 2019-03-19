//
//  NonThrowingAsyncOperation.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class NonThrowingAsyncOperation: AsyncOperation {
    // MARK: - Members

    private let workItem: VoidBlock

    // MARK: - Init

    init(job: @escaping VoidBlock) {
        workItem = job
    }

    // MARK: - Overrides

    override func start() {
        guard !isCancelled else {
            state = .finished
            return
        }
        state = .executing
        workItem()
        state = .finished
    }
}
