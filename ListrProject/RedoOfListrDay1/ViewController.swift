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
    
    var titleData:String?
    var imageData: UIImage?
    var descriptionData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.titleHeader.text = titleData
        self.companyLogo.image = imageData
        self.descriptionText.text = descriptionData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

