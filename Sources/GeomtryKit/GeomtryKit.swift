struct Point: Equatable {
    var x:Double
    var y:Double
}

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
    
    var description: String {
        "y=\(k)x+\(b)"
    }
}

struct Segment {
    var point1: Point
    var point2: Point
    var function: LinearFunc {
        let x1 = point1.x; let x2 = point2.x
        let y1 = point1.y; let y2 = point2.y
        var leftSide = y1 - y2
        let rightSide = x1 - x2
        leftSide *= 1/rightSide
        let k = leftSide
        let b = y1 - k * x1
        return LinearFunc(k: k, b: b)
    }
}
