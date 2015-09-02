public enum Number : Equatable {
  case Integer(Swift.Int)
  case Double(Swift.Double)
}

public func ==(lhs:Number, rhs:Number) -> Bool {
  switch (lhs, rhs) {
  case let (.Integer(left), .Integer(right)):
    return left == right
  case let (.Double(left), .Double(right)):
    return left == right
  default:
    return false
  }
}

public struct NumberElement : ElementType, Equatable {
  public typealias Type = Number

  public var element:String { return "number" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Type? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    self.content = content
  }

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Int? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    if let content = content {
      self.content = .Integer(content)
    }
  }

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Double? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()

    if let content = content {
      self.content = .Double(content)
    }
  }
}

public func ==(lhs:NumberElement, rhs:NumberElement) -> Bool {
  return (
    lhs.metadata == rhs.metadata &&
    lhs.attributes == rhs.attributes &&
    lhs.content == rhs.content
  )
}
