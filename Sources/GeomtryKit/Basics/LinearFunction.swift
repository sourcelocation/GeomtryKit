import Foundation

/// A function which is represented as "y=kx+b"
struct LinearFunc: Equatable, CustomStringConvertible {
    var k: Double
    var b: Double
    
    /// Checks, if lines intersect
    func intersection(with function: LinearFunc) -> Point? {
        let k1 = self.k; let b1 = self.b
        let k2 = function.k;let b2 = function.b
        guard k1 != k2 else { return nil } // Parallel
        let leftSide = k1 - k2 // -2, -2x
        var rightSide = b2 - b1 // 4
        rightSide *= 1/leftSide
        let x = rightSide
        let y = x * k1 + b1
        
        return Point(x: x, y: y)
    }
    
    func contains(point: Point) -> Bool {
        return point.y == point.x * k + b
    }
    
    var description: String {
        "y=\(k)x+\(b)"
    }
}
