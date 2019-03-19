//
//  Date+HumanString.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

extension Date {
    var humanString: String {
        let fmt = DateFormatter()
        let isToday = Calendar.current.isDateInToday(self)
        fmt.dateFormat = isToday ? "HH:mm" : "dd MMM"

        return fmt.string(from: self)
    }
}
