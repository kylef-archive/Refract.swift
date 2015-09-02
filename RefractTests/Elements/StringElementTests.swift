import XCTest
import Refract


class StringElementTests: XCTestCase {
  let element = StringElement(content: "value")

  func testElement() {
    XCTAssertEqual(element.element, "string")
  }

  func testContent() {
    XCTAssertEqual(element.content, "value")
  }

  func testToRefract() {
    XCTAssertEqual(element.toRefract() as NSDictionary, [
      "element": "string",
      "meta": [:],
      "attributes": [:],
      "content": "value",
    ])
  }
}
