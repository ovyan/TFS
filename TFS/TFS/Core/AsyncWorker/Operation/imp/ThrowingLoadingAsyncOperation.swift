//
//  ThrowingLoadingAsyncOperation.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class ThrowingLoadingAsyncOperation<M>: AsyncOperation {
    // MARK: - Members

    private let loader: () throws -> M

    private let completion: (Error?, M?) -> Void

    // MARK: - Init

    init(loader: @escaping () throws -> M, completion: @escaping (Error?, M?) -> Void) {
        self.loader = loader
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
            let result = try loader()
            completion(nil, result)
        } catch {
            completion(error, nil)
        }
    }
}
