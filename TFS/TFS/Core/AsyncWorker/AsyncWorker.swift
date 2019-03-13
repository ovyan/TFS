//
//  AsyncWorker.swift
//  TFS
//
//  Created by Mike Ovyan on 12/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

typealias VoidBlock = () -> Void

typealias WorkerBlock = () throws -> Void

typealias WorkerLoadBlock<M> = () throws -> M

typealias WorkerCompletion = (Error?) -> Void

typealias WorkerLoadCompletion<M> = (Error?, M?) -> Void

protocol AsyncWorker: class {
    func perform(_ job: @escaping VoidBlock)
    func perform(_ job: @escaping WorkerBlock, completion: @escaping WorkerCompletion)
    func load<M>(_ loader: @escaping WorkerLoadBlock<M>, completion: @escaping WorkerLoadCompletion<M>)
}
