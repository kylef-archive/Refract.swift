public class Member<Key : Hashable, Value> {
  public let key:Key
  public let value:Value?

  public init(key:Key, value:Value?) {
    self.key = key
    self.value = value
  }
}


public struct MemberElement<Key : Hashable, Value> : ElementType {
  public typealias Type = Member<Key, Value>

  public var element:String { return "member" }
  public var metadata:Metadata
  public var attributes:AttributeType
  public var content:Type?

  public init(metadata:Metadata? = nil, attributes:AttributeType? = nil, key:Key, value:Value? = nil) {
    self.metadata = metadata ?? Metadata()
    self.attributes = attributes ?? AttributeType()
    self.content = Member(key: key, value: value)
  }

  public var key:Key {
    return content!.key
  }

  public var value:Value? {
    return content?.value
  }

  public func toRefract() -> [String:AnyObject] {
    return [
      "element": element,
      "meta": metadata.toRefract(),
      "attributes": attributes.toRefract(),
      "content": [
        "key": key as? AnyObject ?? NSNull(),
        "value": value as? AnyObject ?? NSNull(),
      ],
    ]
  }
}

public func ==<Key:Hashable, Value:Equatable>(lhs:MemberElement<Key, Value>, rhs:MemberElement<Key, Value>) -> Bool {
  return (
    lhs.metadata == rhs.metadata &&
    lhs.attributes == rhs.attributes &&
    lhs.key == rhs.key &&
    lhs.value == rhs.value
  )
}
