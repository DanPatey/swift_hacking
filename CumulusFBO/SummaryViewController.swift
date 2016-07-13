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
    
    @IBAction func SaveRegistration(sender: UIBarButtonItem) {
        let tailNumber = RegistrationsManager.sharedManager.activeReservation.tailNumber
        let aircraftType = RegistrationsManager.sharedManager.activeReservation.aircraftType
        let arrivalTime = RegistrationsManager.sharedManager.activeReservation.arrivalTime
//        let eta = the flightaware API call on tailnumber
        
        reservationStore.createReservation(tailNumber!, aircraftType: aircraftType!, arrivalTime: arrivalTime!)
        dump(reservationStore.allReservations)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addItemsToSummary(textFields: [UITextField]) {
        for textfield in textFields {
            print(textfield)
        }
    }
}