//
//  Bubble.swift
//  sorting
//
//  Created by TJ Usiyan on 2016/20/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

// 8, 6, 7, 5, 3, 0, 9
// 6, 8, 7, 5, 3, 0, 9
// 6, 7, 8, 5, 3, 0, 9
// 6, 7, 5, 8, 3, 0, 9
// 6, 7, 5, 3, 8, 0, 9
// 6, 7, 5, 3, 0, 8, 9
// 6, 7, 5, 3, 0, 8, 9

import Foundation

public func bubbleSort(_ list: inout [Int]) {

    var didASwap: Bool

    repeat {
        didASwap = bubblePass(&list)
    } while didASwap
}

/// Returns true if swap occurred
public func bubblePass(_ list: inout [Int]) -> Bool {
    var didASwap = false

//    for counter in list.indices where list.index(after: counter) != list.endIndex {
    for counter in list.indices.dropLast() {
        let nextCounter = list.index(after: counter)
        didASwap = didASwap || swapIfOutOfOrder(itemsAt: counter, and: nextCounter, in: &list)
    }

    return didASwap
}

/// Returns true if swap occurred
public func swapIfOutOfOrder(itemsAt leftIndex: Int, and rightIndex: Int, in list: inout [Int]) -> Bool {
    precondition(leftIndex < rightIndex, "indices must be in order")
    precondition(leftIndex >= 0 && leftIndex < list.endIndex, "left index out of bounds for list")
    precondition(list.indices.contains(rightIndex), "right index out of bounds for list")

    if list[leftIndex] <= list[rightIndex] {
        return false
    } else {
        swap(&(list[leftIndex]), &(list[rightIndex]))
        return true
    }
}

