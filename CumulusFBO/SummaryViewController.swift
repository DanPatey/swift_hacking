//
//  SummaryViewController.swift
//  CumlusFBO
//
//  Created by Dan Patey on 3/29/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

let reservationStore = ReservationStore()

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var summary: UITextView! {
        didSet {
            self.summary.text = RegistrationsManager.sharedManager.activeReservation.generateSummary()
        }
    }
    
    //MARK: Save information to Reservation
    @IBAction func SaveRegistration(sender: UIBarButtonItem) {
    }
    
    //MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addItemsToSummary(textFields: [UITextField]) {
        for textfield in textFields {
            print(textfield)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segue = segue.destinationViewController as! ScheduleViewController

        let tailNumber = RegistrationsManager.sharedManager.activeReservation.tailNumber
        let aircraftType = RegistrationsManager.sharedManager.activeReservation.aircraftType
        let arrivalTime = RegistrationsManager.sharedManager.activeReservation.arrivalTime
        
        reservationStore.createReservation(tailNumber!, aircraftType: aircraftType!, arrivalTime: arrivalTime!)
        
        // Debug our reservation array
        dump(reservationStore.allReservations)
        
        
    }
}