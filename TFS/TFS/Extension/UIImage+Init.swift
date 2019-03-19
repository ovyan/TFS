//
//  UIImage+Init.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

public extension UIImage {
    convenience init?(data: Data?) {
        guard let value = data else { return nil }

        self.init(data: value)
    }
}
