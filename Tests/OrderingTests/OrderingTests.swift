import XCTest
@testable import Ordering

public final class OrderingTests: XCTestCase {

    public func testEqualTo() {
        XCTAssertEqual(1.compare(to: 1), .equalTo)
    }
    
    public func testLessThan() {
        XCTAssertEqual(1.compare(to: 2), .lessThan)
    }

    public func testGreaterThan() {
        XCTAssertEqual(2.compare(to: 1), .greaterThan)
    }
    
    public func testSpaceshipOperatorEqualTo() {
        XCTAssertEqual(1 <=> 1, .equalTo)
    }

    public func testSpaceshipOperatorLessThan() {
        XCTAssertEqual(1 <=> 2, .lessThan)
    }

    public func testSpaceshipOperatorGreaterThan() {
        XCTAssertEqual(2 <=> 1, .greaterThan)
    }

    public static var allTests = [
        ("testEqualTo", testEqualTo),
        ("testLessThan", testLessThan),
        ("testGreaterThan", testGreaterThan),
        ("testSpaceshipOperatorEqualTo", testSpaceshipOperatorEqualTo),
        ("testSpaceshipOperatorLessThan", testSpaceshipOperatorLessThan),
        ("testSpaceshipOperatorGreaterThan", testSpaceshipOperatorGreaterThan)
    ]
}
