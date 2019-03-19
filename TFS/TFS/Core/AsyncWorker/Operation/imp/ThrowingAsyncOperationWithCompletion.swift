//
//  ThrowingAsyncOperationWithCompletion.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class ThrowingAsyncOperationWithCompletion: AsyncOperation {
    // MARK: - Members

    private let workItem: WorkerBlock

    private let completion: WorkerCompletion

    // MARK: - Init

    init(job: @escaping WorkerBlock, completion: @escaping WorkerCompletion) {
        workItem = job
        self.completion = completion
    }

    // MARK: - Overrides

    override func start() {
        guard !isCancelled else {
            state = .finished
            return
        }
        state = .executing
        defer { state = .finished }

        do {
            try workItem()
            completion(nil)
        } catch {
            completion(error)
        }
    }
}
