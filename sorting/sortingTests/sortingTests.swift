//
//  sortingTests.swift
//  sortingTests
//
//  Created by TJ Usiyan on 2016/20/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

import XCTest
import sorting

class sortingTests: XCTestCase {
    func testBubbleSort() {
        var case1 = [8, 6, 7, 5, 3, 0, 9]
        var case2 = [8, 5, 3, 2, 6, 9, 1]
        var case3: [Int] = []
        var case4 = [9001]
        var case5 = [3, 1]

        bubbleSort(&case1)
        bubbleSort(&case2)
        bubbleSort(&case3)
        bubbleSort(&case4)
        bubbleSort(&case5)

        let expected1 = case1.sorted(by: <)
        let expected2 = case2.sorted(by: <)
        let expected3 = case3.sorted(by: <)
        let expected4 = case4.sorted(by: <)
        let expected5 = case5.sorted(by: <)

        XCTAssertEqual(case1, expected1)
        XCTAssertEqual(case2, expected2)
        XCTAssertEqual(case3, expected3)
        XCTAssertEqual(case4, expected4)
        XCTAssertEqual(case5, expected5)
    }

    func testSwapIfOutOfOrder_wasOrdered() {
        var source:[Int] = [3, 4]
        let result = swapIfOutOfOrder(itemsAt: 0, and: 1, in: &source)
        XCTAssertEqual(result, false)
        XCTAssertEqual(source, [3, 4])
    }

    func testSwapIfOutOfOrder_wasOutOfOrder() {
        var source:[Int] = [100, 4]
        let result = swapIfOutOfOrder(itemsAt: 0, and: 1, in: &source)
        XCTAssertEqual(result, true)
        XCTAssertEqual(source, [4, 100])
    }

    func testSwapIfOutOfOrder_same() {
        var source:[Int] = [3, 3]
        let result = swapIfOutOfOrder(itemsAt: 0, and: 1, in: &source)
        XCTAssertEqual(result, false)
        XCTAssertEqual(source, [3, 3])
    }
}


