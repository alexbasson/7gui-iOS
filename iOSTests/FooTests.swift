//
//  FooTests.swift
//  iOSTests
//
//  Created by Alex Basson on 8/12/24.
//

import XCTest
import Quick
import Nimble

final class FooTests: QuickSpec {
    override class func spec() {
        describe("running a test") {
            it("runs successfully") {
                expect(true).to(beTrue())
            }
        }
    }
}
