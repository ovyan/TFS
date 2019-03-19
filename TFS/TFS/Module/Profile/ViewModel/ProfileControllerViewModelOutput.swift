//
//  ProfileControllerViewModelOutput.swift
//  TFS
//
//  Created by Mike Ovyan on 18/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import Foundation

protocol ProfileControllerViewModelOutput: class {
    var saveButtonEnabled: ((Bool) -> Void)? { get set }

    var viewModelUpdated: VoidBlock? { get set }

    var needsViewUpdate: ((ProfileViewModel) -> Void)? { get set }

    var showAlert: ((UIAlertController) -> Void)? { get set }
}
