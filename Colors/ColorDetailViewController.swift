//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Holt Skinner on 10/21/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: (UIColor, String)?

    @IBOutlet weak var colorNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color?.0
        colorNameLabel.text = color?.1
        self.title = color?.1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
