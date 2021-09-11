    import XCTest
    @testable import GeomtryKit

    final class GeomtryKitTests: XCTestCase {
        func testIntersections() {
            XCTAssertEqual(LinearFunc(k: 1, b: 0).intersection(with: LinearFunc(k: 3, b: -10)), Point(x: 5, y: 5))
            XCTAssertEqual(LinearFunc(k: 1, b: 1).intersection(with: LinearFunc(k: -2, b: -2)), Point(x: -1, y: 0))
            XCTAssertEqual(LinearFunc(k: 1, b: 1).intersection(with: LinearFunc(k: 1, b: 3)), nil)
        }
        func testSegmentToFunctionConversion() {
            XCTAssertEqual(Segment(point1: Point(x: 0, y: 0), point2: Point(x: 2, y: 4)).function,LinearFunc(k: 2, b: 0))
        }
    }
