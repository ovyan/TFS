//
//  AppThemeManager.swift
//  TFS
//
//  Created by Mike Ovyan on 05/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

final class AppThemeManager {
    // MARK: - Members

    private static let ThemeColorKey = "kThemeColor"

    private let defaults = UserDefaults.standard

    // MARK: - Interface

    func setTheme(_ color: UIColor) {
        UINavigationBar.appearance().backgroundColor = color
        saveColor(color)
    }

    func restoreTheme() {
        guard
            let colorData = defaults.value(forKey: AppThemeManager.ThemeColorKey) as? Data,
            let color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor else { return }

        UINavigationBar.appearance().backgroundColor = color
    }

    // MARK: - Helpers

    private func saveColor(_ color: UIColor) {
        let colorData = NSKeyedArchiver.archivedData(withRootObject: color)
        defaults.set(colorData, forKey: AppThemeManager.ThemeColorKey)
    }
}
