//
//  Store.swift
//  CrimeEye
//
//  Created by Gurpreet Paul on 03/12/2015.
//  Copyright © 2015 Crime Eye. All rights reserved.
//

import Foundation

class Store {
    static let defaults = NSUserDefaults.standardUserDefaults()
    static let USE_GPS = "USE_GPS"
    static let IS_FIRST_LOAD = "FIRST_LOAD"
    static let POST_CODE = "POST_CODE"
    static let LAT = "LAT"
    static let LONG = "LONG"
}