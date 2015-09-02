import XCTest
import Refract


class NullElementTests: XCTestCase {
  let element = NullElement()

  func testElement() {
    XCTAssertEqual(element.element, "null")
  }

  func testContent() {
    XCTAssertNil(element.content)
  }
}
