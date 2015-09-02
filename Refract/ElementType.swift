/// Protocol representing a Refract element
public protocol ElementType {
  typealias Type

  /// The element property defines the name of element
  var element:String { get }
  var metadata:Metadata { get }
  var attributes:AttributeType { get }
  var content:Type? { get }

  func toRefract() -> [String:AnyObject]
}

public class AttributeType : Equatable {
  /* TODO */
  func toRefract() -> [String:AnyObject] {
    return [:]
  }
}
public func ==(lhs:AttributeType, rhs:AttributeType) -> Bool {
  return true
}

extension ElementType {
  public func toRefract() -> [String:AnyObject] {
    return [
      "element": element,
      "meta": metadata.toRefract(),
      "attributes": attributes.toRefract(),
      "content": content as? AnyObject ?? NSNull()
    ]
  }
}
