public struct ArrayElement<Element : ElementType> : ElementType {
  public typealias Type = [Element]

  public var element:String { return "array" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Type? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    self.content = content
  }
}

public func ==<T:Equatable>(lhs:ArrayElement<T>, rhs:ArrayElement<T>) -> Bool {
  return (
    lhs.metadata == rhs.metadata &&
    lhs.attributes == rhs.attributes &&
    lhs.content ?? [] == rhs.content ?? []
  )
}
