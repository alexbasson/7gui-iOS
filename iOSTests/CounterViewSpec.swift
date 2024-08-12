//
//  CounterViewSpec.swift
//  iOSTests
//
//  Created by Alex Basson on 8/12/24.
//

import XCTest
import Quick
import Nimble
@testable import iOS
import ViewInspector

final class CounterViewSpec: XCTestCase {
    func testCounterView() {
        var counterView = CounterView()
        let exp = counterView.on(\.didAppear) { view in
            expect(try view.label().string()).to(equal("Count: 0"))
            
            try view.button().tap()
            
            expect(try view.label().string()).to(equal("Count: 1"))
        }
        ViewHosting.host(view: counterView)
        wait(for: [exp], timeout: 1.0)
    }
}

extension InspectableView<ViewType.View<CounterView>> {
    func label() throws -> InspectableView<ViewType.Text> {
        return try self.vStack().text(0)
    }
    
    func button() throws -> InspectableView<ViewType.Button> {
        return try self.vStack().button(1)
    }
}
