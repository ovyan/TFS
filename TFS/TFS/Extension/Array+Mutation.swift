//
//  Array+Mutation.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    mutating func mutate(element: Element, _ mutation: ((inout Element) -> Void)) {
        guard let index = firstIndex(where: { $0 == element }) else { return }
        var element = self[index]
        mutation(&element)

        self[index] = element
    }
}
