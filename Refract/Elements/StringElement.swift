public struct StringElement : ElementType, Equatable {
  public typealias Type = String

  public var element:String { return "string" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Type? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    self.content = content
  }
}

public func ==(lhs:StringElement, rhs:StringElement) -> Bool {
  return (
    lhs.metadata == rhs.metadata &&
    lhs.attributes == rhs.attributes &&
    lhs.content == rhs.content
  )
}
