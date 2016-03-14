//
//  Contect.swift
//  ContectsApp
//
//  Created by Jinyou Liu on 3/8/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import Foundation

class Contact{
    var firstName:String
    var lastName:String
    var number:String
    var lastNameFirst = false
    init(firstName:String,lastName:String,number:String){
        self.firstName = firstName
        self.lastName = lastName
        self.number = number
    }
    
    func getName() -> String{
        if(lastNameFirst){
            return lastName + " " + firstName
        }else{
            return firstName + " " + lastName
        }
    }
}