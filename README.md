# Ordering

This is a simple package that allows for three-way comparisons in Swift. It is
inspired by Rust's elegant `match Ordering` pattern.

```rust
match 1.cmp(&2) {
    Equal   => println!("One is equal to two."),
    Less    => println!("One is less than two."),
    Greater => println!("One is greater than two."),
}
```

Importing this package allows a similar pattern in Swift for objects that
conform to the `Comparable` protocol.

```swift
switch 1.compare(to: 2) {
    case .equalTo: print("One is equal to two.")
    case .lessThan: print("One is less than two.")
    case .greaterThan: print("One is greater than two.")
}
```

Using this pattern in the place of ugly `if-else` chains allows you to greatly
clean up your code and prevent errors in places where what you are really
wanting to test is the relationship between `Comparable` objects.

A "spaceship" operator is also available as a convenient alias.

```swift
switch "hello" <=> "world" {
    case .equalTo: print("The two words are identical.")
    case .lessThan: print("'hello' comes before 'world'.")
    case .greaterThan: print("'hello' comes after 'world'.")
}
```
