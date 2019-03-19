//
//  Optional+Comparable.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

extension Optional where Wrapped: Comparable {
    static func < (lhs: Optional, rhs: Optional) -> Bool {
        switch (lhs, rhs) {
        case let (.some(left), .some(right)):
            return left < right
        default:
            return false
        }
    }
}
