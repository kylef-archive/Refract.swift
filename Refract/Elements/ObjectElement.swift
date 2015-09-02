public struct ObjectElement<Key: Hashable, Value> : ElementType {
  public typealias Type = [MemberElement<Key, Value>]

  public var element:String { return "object" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, content:Type? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    self.content = content
  }
}
