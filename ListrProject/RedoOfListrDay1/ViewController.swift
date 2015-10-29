//
//  ViewController.swift
//  RedoOfListrDay1
//
//  Created by Heather Connery on 2015-10-27.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyLogo: UIImageView!
    
    @IBOutlet weak var titleHeader: UILabel!
    
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.titleHeader.text = "New Title"
        self.descriptionText.text = "This is some text showing that we can update this on the fly"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

