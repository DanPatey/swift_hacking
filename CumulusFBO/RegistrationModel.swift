//
//  ReservationsModel.swift
//  CumlusFBO
//
//  Created by Dan Patey on 4/17/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import Foundation

class RegistrationsModel {
    
    //MARK: Registration Information
    var firstName: String?
    var lastName: String?
    var company: String?
    var phoneNumber: String?
    var email: String?
    
    //MARK: Flight Information
    var tailNumber: String?
    var aircraftType: String?
    var airportCode: String?
    var arrivalTime: String?
    var departureTime: String?
    
    //MARK: Aggregate data for summary
    func generateSummary() -> String {
        
        let registrationInfo = "First Name: \(self.firstName ?? "")\nLast Name: \(self.lastName ?? "")\nCompany: \(self.company ?? "")\nPhone Number: \(self.phoneNumber ?? "")\nEmail: \(self.email ?? "")"
        let flightInfo = "\nTail Number: \(self.tailNumber ?? "")\nAircraft Type: \(self.aircraftType ?? "")\nAirport Code: \(self.airportCode ?? "")\nArrival Time: \(self.arrivalTime ?? "")\nDeparture Time: \(self.departureTime ?? "")"
        return registrationInfo + flightInfo
    }
}