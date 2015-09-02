import XCTest
import Refract

class ArrayElementTests: XCTestCase {
  let stringElement = StringElement(content: "Hello World")
  var element:ArrayElement<StringElement>!

  override func setUp() {
    element = ArrayElement<StringElement>(content: [stringElement])
  }

  func testElement() {
    XCTAssertEqual(element.element, "array")
  }

  func testContent() {
    XCTAssertEqual(element.content!.count, 1)
    XCTAssertEqual(element.content![0].content, "Hello World")
  }
}
