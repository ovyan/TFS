//
//  ThemeProvider.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

final class ThemeProvider {
    // MARK: - Interface

    func get() -> Themes {
        let result = Themes(firstColor: .green,
                            andSecondColor: .blue,
                            andThirdColor: .yellow)

        return result
    }
}
