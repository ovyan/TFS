//
//  ViewController.swift
//  TFS
//
//  Created by Mike Ovyan on 07/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        out.printer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        out.printer()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        out.printer()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        out.printer()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        out.printer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        out.printer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        out.printer()
    }
}
