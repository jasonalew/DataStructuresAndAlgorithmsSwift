//
//  JALPrime.swift
//  DataStructuresAndAlgorithmsSwift
//
//  Created by Jason Lew on 8/13/15.
//  Copyright (c) 2015 Jason Lew. All rights reserved.
//

import UIKit

class JALPrime: NSObject {
    class func isPrime(num: Int) -> Bool {
        if (num < 2) { return false }
        for var i = 2; i * i < num; i++ {
            if (num % i == 0) { return false }
        }
        return true
    }
}
