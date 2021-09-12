import Foundation

struct Segment {
    var point1: Point
    var point2: Point
    
    func function() -> LinearFunc {
        let x1 = point1.x; let x2 = point2.x
        let y1 = point1.y; let y2 = point2.y
        var leftSide = y1 - y2
        let rightSide = x1 - x2
        leftSide *= 1/rightSide
        let k = leftSide
        let b = y1 - k * x1
        return LinearFunc(k: k, b: b)
    }
    
    func contains(point: Point) -> Bool {
        guard (point.x > point1.x && point1.x < point2.x) || (point.x < point1.x && point1.x > point2.x) else { return false }
        let function = function()
        return function.contains(point: point)
    }
}
