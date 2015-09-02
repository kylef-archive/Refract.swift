/// Containing meta elements for an element
public class Metadata {
  /// Unique Identifier, MUST be unique throughout the document
  public let id:StringElement?

  /// Link to referenced element or type
  public let reference:Link?

  /// Array of classifications for given element
  public let classes:ArrayElement<StringElement>?

  /// Prefix in which element MAY be found
  public let prefix:StringElement?

  /// Include elements from given namespaces or prefix elements from given namespace
  public let namespace:Link?

  /// Human-readable title of element
  public let title:StringElement?

  /// Human-readable description of element
  public let description:StringElement?

  public init(id:StringElement? = nil, reference:Link? = nil, classes:ArrayElement<StringElement>? = nil, prefix:StringElement? = nil, namespace:Link? = nil, title:StringElement? = nil, description:StringElement? = nil) {
    self.id = id
    self.reference = reference
    self.classes = classes
    self.prefix = prefix
    self.namespace = namespace
    self.title = title
    self.description = description
  }
}


/// Path of referenced element to transclude
public enum LinkPath {
  case All

  /// The meta data of the referenced element
  case Metadata

  /// The attributes of the referenced element
  case Attributes

  /// The content of the referenced element
  case Content
}


/// A link is an object for providing URLs to local elements, prefixed elements, and remote elements or documents.
public struct Link {
  /// URL or ID of element in prefixed namespace
  public var href:String

  /// Prefix of namespace
  public var prefix:String?

  /// Path of referenced element to transclude
  public var path:LinkPath

  public init(href:String, prefix:String? = nil, path:LinkPath = .All) {
    self.href = href
    self.prefix = prefix
    self.path = path
  }
}
