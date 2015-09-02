import XCTest
import Refract


class BooleanElementTests: XCTestCase {
  let element = BooleanElement(content: true)

  func testElement() {
    XCTAssertEqual(element.element, "boolean")
  }

  func testContent() {
    XCTAssertTrue(element.content!)
  }
}
