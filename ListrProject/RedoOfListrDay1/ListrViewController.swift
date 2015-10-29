//
//  ListrViewController.swift
//  RedoOfListrDay1
//
//  Created by Heather Connery on 2015-10-27.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ListrViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // simple data model for stage 2:
    var myFavoriteGames = ["Super Meat Boy","Doom","Super Mario Bros",
        "F Zero", "Grand Theft Auto","Donkey Kong Tropical Freeze" ]
    
    var arrayOfImages = ["eve.png","Wall-E.png","lunchBox.png","navigator.png","plant.png","cleanUpBot.png"]

    
    @IBOutlet weak var listrTableViewOutlet: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFavoriteGames.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        // Configure the cell...
        cell.textLabel?.text = myFavoriteGames[indexPath.row]
//        cell.imageView?.image = UIImage(named: "tshirt.jpg")
        cell.imageView?.image = UIImage(named: arrayOfImages[indexPath.row])
        return cell
    }
    
    func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // UIAlertController displays an alert message to user and can have associated actions
//        let alertController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: .Alert)
//        
//        let okayAction = UIAlertAction(title: "OKAY", style: .Cancel) {
//            (action) in
//            println(action)
//        }
//        
//        presentViewController(alertController, animated: true)
//    }
//    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController
        // Pass the selected object to the new view controller.
        if segue.identifier == "presentation"
        {
            if let destinationVC = segue.destinationViewController as? ViewController {
                // Do something cool. Like pass data from one view controller to another.
                //print("Let's do something cool")
            }
        }
    }

    
    
    

}









