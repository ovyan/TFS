//
//  Finder.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

final class Finder {
    // MARK: - Members

    private let fm = FileManager.default

    // MARK: - Interface

    func documentsDir() throws -> URL {
        do {
            return try fm.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        } catch {
            throw error
        }
    }

    func delete(filePath: URL) throws {
        return try fm.removeItem(at: filePath)
    }
}
