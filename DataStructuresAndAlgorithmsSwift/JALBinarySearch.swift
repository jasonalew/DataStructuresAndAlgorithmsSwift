//
//  JALBinarySearch.swift
//  DataStructuresAndAlgorithmsSwift
//
//  Created by Jason Lew on 8/13/15.
//  Copyright (c) 2015 Jason Lew. All rights reserved.
//

import UIKit

class JALBinarySearch: NSObject {
    class func findItemAndPosition<T: Comparable>(key: T, sortedArray: [T]) -> (wasFound: Bool, index: Int) {
        // Make sure array is not empty
        if sortedArray.count == 0 { return (false, 0) }
        
        var low = 0
        var high = sortedArray.count - 1
        var mid:Int!
        
        while low <= high {
            mid = (low + high) / 2
            
            if key == sortedArray[mid] {
                return (true, mid)
            } else if key < sortedArray[mid] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        // The item was not found.
        // Return the highest index at failure for insert function.
        return (false, max(low, high))
    }
    
    class func findItem<T: Comparable>(key: T, sortedArray: [T]) -> Bool {
        return findItemAndPosition(key, sortedArray: sortedArray).wasFound
    }
    
    class func insertItem<T: Comparable>(item: T, inout sortedMutableArray: [T]) {
        // Must take in mutable sorted array as parameter
        let index = findItemAndPosition(item, sortedArray: sortedMutableArray).index
        sortedMutableArray.insert(item, atIndex: index)
    }
}
