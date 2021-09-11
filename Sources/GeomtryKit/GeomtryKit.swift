struct Point: Equatable {
    var x:Double
    var y:Double
}

/// A function which is represented as "y=kx+b"
struct LinearFunc {
    var k: Double
    var b: Double
    
    /// Checks, if lines intersect
    func intersection(with function: LinearFunc) -> Point? {
        let k1 = self.k; let b1 = self.b
        let k2 = function.k;let b2 = function.b
        guard k1 != k2 else { return nil } // Parallel
        /*
         e.g.
         y=x+1
         y=-2x-2
         x+1=-2x-2
         3x=-3
         x=-1
         
         or
         
         y=1x
         y=3x-10
         1x=3x-10
         -2x=-10
         x=5
         */
        let leftSide = k1 - k2 // -2, -2x
        var rightSide = b2 - b1 // 4
        rightSide *= 1/leftSide
        let x = rightSide
        let y = x * k1 + b1
        
        return Point(x: x, y: y)
    }
}

