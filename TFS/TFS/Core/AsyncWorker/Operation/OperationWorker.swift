//
//  OperationWorker.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class OperationWorker: AsyncWorker {
    // MARK: - Members

    private let queue: OperationQueue = {
        OperationQueue()
    }()

    // MARK: - Interface

    func perform(_ job: @escaping VoidBlock) {
        let operation = NonThrowingAsyncOperation(job: job)
        queue.addOperation(operation)
    }

    func perform(_ job: @escaping WorkerBlock, completion: @escaping WorkerCompletion) {
        let operation = ThrowingAsyncOperationWithCompletion(job: job, completion: completion)
        queue.addOperation(operation)
    }

    func load<M>(_ loader: @escaping () throws -> M, completion: @escaping (Error?, M?) -> Void) {
        let operation = ThrowingLoadingAsyncOperation(loader: loader, completion: completion)
        queue.addOperation(operation)
    }
}
