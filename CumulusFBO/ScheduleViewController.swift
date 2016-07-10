//
//  ScheduleViewController.swift
//  CumulusFBO
//
//  Created by Dan Patey on 7/9/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class ScheduleViewController: UITableViewController {
    var reservationStore: ReservationStore!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reservationStore.allReservations.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        let item = reservationStore.allReservations[indexPath.row]
        
        cell.textLabel?.text = item.tailNumber
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let reservationStore = ReservationStore()
        
        let tabController = segue.destinationViewController as! UITabBarController
        let reservationController = tabController.viewControllers![1] as! ScheduleViewController
        
        reservationController.reservationStore = reservationStore
    }
    
}