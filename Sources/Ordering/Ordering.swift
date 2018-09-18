
/// Represents a relation between two `Comparable` objects.
public enum Ordering {
    case equalTo
    case lessThan
    case greaterThan
}

extension Comparable {
    
    /// Compares a `Comparable` to another object of its type.
    ///
    /// - parameter value: The value the object is being compared to.
    ///
    /// - returns: An `Ordering`, either `.equalTo`, `.lessThan`, or `.greaterThan`.
    public func compare(to value: Self) -> Ordering {
        if self == value { return .equalTo }
        return self < value ? .lessThan : .greaterThan
    }
    
    /// An alias for `Comparable.compare(to:)`.
    public static func <=>(left: Self, right: Self) -> Ordering {
        return left.compare(to: right)
    }
}

infix operator <=>: ComparisonPrecedence
