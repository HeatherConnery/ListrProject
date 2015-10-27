//
//  ListrViewController.swift
//  RedoOfListrDay1
//
//  Created by Heather Connery on 2015-10-27.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ListrViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
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
    
    var myFavoriteGames = ["Super Meat Boy","Doom","Super Mario Bros",
        "F Zero", "Grand Theft Auto","Donkey Kong Tropical Freeze" ]
    
    var arrayOfImages = ["eve.png","Wall-E.png","lunchBox.png","navigator.png","plant.png","cleanUpBot.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
