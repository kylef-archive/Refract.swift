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
}
