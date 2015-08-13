//
//  DataStructuresAndAlgorithmsSwiftTests.swift
//  DataStructuresAndAlgorithmsSwiftTests
//
//  Created by Jason Lew on 8/13/15.
//  Copyright (c) 2015 Jason Lew. All rights reserved.
//

import UIKit
import XCTest


class DataStructuresAndAlgorithmsSwiftTests: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        XCTAssert(true, "Pass")
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }

    func testForPrime() {
        XCTAssertTrue(JALPrime.isPrime(11), "Not Prime")
        XCTAssertFalse(JALPrime.isPrime(110), "Prime")
    }
    
    func testBinarySearch() {
        // Insert items in a sorted array
        var orderedArray = ["apple", "bee", "cat", "zebra"]
        let orderedComparisonArray = ["apple", "bee", "cat", "dog", "mouse", "zebra"]
        
        JALBinarySearch.insertItem("mouse", sortedMutableArray: &orderedArray)
        JALBinarySearch.insertItem("dog", sortedMutableArray: &orderedArray)
        
        XCTAssertEqual(orderedArray, orderedComparisonArray, "Arrays are not equal")
        
        // Simulate starting with an empty array and keeping it sorted as
        // items are added.
        var unorderedIntArray = [22, 12, 56, 89, 7, 45, 67, 9, 288, 134, 33, 356]
        let orderedComparisonIntArray = [7, 9, 12, 22, 33, 45, 56, 67, 89, 134, 288, 356]
        
        var newOrderedArray = [Int]()
        for item in unorderedIntArray {
            JALBinarySearch.insertItem(item, sortedMutableArray: &newOrderedArray)
        }
        
        XCTAssertEqual(newOrderedArray, orderedComparisonIntArray, "Arrays are not equal")
        
        // Just do a simple search
        XCTAssertFalse(JALBinarySearch.findItem("fish", sortedArray: orderedArray), "Search did not return false")
        XCTAssertTrue(JALBinarySearch.findItem("dog", sortedArray: orderedArray), "Search did not return true")
    }
}
