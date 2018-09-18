import XCTest
@testable import Ordering

public final class OrderingTests: XCTestCase {

    public func testEqualTo() {
        XCTAssert(1.compare(to: 1) == .equalTo)
    }
    
    public func testLessThan() {
        XCTAssert(1.compare(to: 2) == .lessThan)
    }

    public func testGreaterThan() {
        XCTAssert(2.compare(to: 1) == .greaterThan)
    }

    public static var allTests = [
        ("testEqualTo", testEqualTo),
        ("testLessThan", testLessThan),
        ("testGreaterThan", testGreaterThan)
    ]
}
