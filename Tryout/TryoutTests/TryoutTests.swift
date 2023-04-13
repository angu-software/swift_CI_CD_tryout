//
//  TryoutTests.swift
//  TryoutTests
//
//  Created by Andreas Guenther on 13.04.23.
//

import XCTest

final class TryoutTests: XCTestCase {

    func test_should_pass() throws {
        XCTAssertTrue(true)
    }

    func test_should_fail() throws {
        XCTFail("This is a failing test")
    }

}
