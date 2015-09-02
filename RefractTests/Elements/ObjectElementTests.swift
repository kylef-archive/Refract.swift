import XCTest
import Refract


class ObjectElementTests: XCTestCase {
  let element = ObjectElement(content: [MemberElement(key: "key", value: "value")])

  func testElement() {
    XCTAssertEqual(element.element, "object")
  }

  func testContent() {
    let member = element.content?.first
    XCTAssertEqual(element.content?.count, 1)
    XCTAssertEqual(member?.key, "key")
    XCTAssertEqual(member?.value, "value")
  }

  func testSubscriptKnownKey() {
    let member = element["key"]
    XCTAssertEqual(member?.value, "value")
  }

  func testSubscriptUnknownKey() {
    let member = element["key2"]
    XCTAssertNil(member)
  }
}
