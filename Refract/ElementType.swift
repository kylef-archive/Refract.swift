/// Protocol representing a Refract element
public protocol ElementType {
  typealias Type

  /// The element property defines the name of element
  var element:String { get }
  var metadata:Metadata { get }
  var attributes:AttributeType { get }
  var content:Type? { get }
}

public class AttributeType { /* TODO */ }
