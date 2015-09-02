public struct NullElement : ElementType, Equatable {
  public typealias Type = Void

  public var element:String { return "null" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
  }
}

public func ==(lhs:NullElement, rhs:NullElement) -> Bool {
  return (
    lhs.metadata == rhs.metadata &&
    lhs.attributes == rhs.attributes
  )
}
