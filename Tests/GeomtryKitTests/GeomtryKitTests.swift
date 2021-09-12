    import XCTest
    @testable import GeomtryKit

    final class GeomtryKitTests: XCTestCase {
        
        func testSegments() {
            print("aada")
            let segment = Segment(point1: Point(x: 0, y: 0), point2: Point(x: 2, y: 4))
            XCTAssertEqual(segment.function(),LinearFunc(k: 2, b: 0))
            
            XCTAssertEqual(segment.contains(point: Point(x: -10, y: 0)),false)
            XCTAssertEqual(segment.contains(point: Point(x: 1.5, y: 2.5)),false)
            print("")
            XCTAssertEqual(segment.contains(point: Point(x: 1, y: 2)),true)
        }
        func testLinearFunction() {
            print("aada")
            XCTAssertEqual(LinearFunc(k: 1, b: 0).intersection(with: LinearFunc(k: 3, b: -10)), Point(x: 5, y: 5))
            XCTAssertEqual(LinearFunc(k: 1, b: 1).intersection(with: LinearFunc(k: -2, b: -2)), Point(x: -1, y: 0))
            XCTAssertEqual(LinearFunc(k: 1, b: 1).intersection(with: LinearFunc(k: 1, b: 3)), nil)
        }
    }
