//
//  output.swift
//  TFS
//
//  Created by Mike Ovyan on 08/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation
import UIKit

public let out = Out(with: .inactive)

public final class Out {
    var prevState: UIApplication.State
    
    public func printer(_ caller: String = #function) {
        #if !LOG_ENABLED
            let currState = UIApplication.shared.applicationState
            let currStateString = stateToString(with: currState)
            let prevStateString = stateToString(with: prevState)
        
            if currStateString != prevStateString {
                print("Application moved from \(prevStateString) to \(currStateString): [\(caller)]")
                prevState = currState
            } else {
                print("Application is at \(prevStateString): \(caller)")
            }
        #endif
    }
    
    func stateToString(with state: UIApplication.State) -> String {
        switch state {
        case .active:
            return "active"
        case .background:
            return "background"
        case .inactive:
            return "inactive"
        }
    }
    
    public init(with state: UIApplication.State) {
        prevState = state
    }
}
