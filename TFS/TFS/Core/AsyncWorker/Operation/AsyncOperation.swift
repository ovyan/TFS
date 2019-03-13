//
//  AsyncOperation.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

public enum OperationState: String {
    case ready
    case executing
    case finished

    var keyPath: String {
        return "is" + rawValue.capitalized
    }
}

open class AsyncOperation: Operation {
    open var state = OperationState.ready {
        willSet {
            willChangeValue(forKey: newValue.keyPath)
            willChangeValue(forKey: state.keyPath)
        }

        didSet {
            didChangeValue(forKey: oldValue.keyPath)
            didChangeValue(forKey: state.keyPath)
        }
    }

    open override var isAsynchronous: Bool { return true }

    open override var isExecuting: Bool { return state == .executing }

    open override var isFinished: Bool { return state == .finished }
}
