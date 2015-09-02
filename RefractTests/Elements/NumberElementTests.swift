import XCTest
import Refract


class NumberElementTests: XCTestCase {
  let element = NumberElement(content: .Integer(5))

  func testElement() {
    XCTAssertEqual(element.element, "number")
  }

  func testContent() {
    XCTAssertEqual(element.content!, Number.Integer(5))
  }

  func testInitializeIntContent() {
    let element = NumberElement(content: 5)
    XCTAssertEqual(element.content, Number.Integer(5))
  }

  func testInitializeDoubleContent() {
    let element = NumberElement(content: 5.0)
    XCTAssertEqual(element.content, Number.Double(5.0))
  }
}
