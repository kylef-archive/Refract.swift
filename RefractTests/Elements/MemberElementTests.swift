import XCTest
import Refract


class MemberElementTests: XCTestCase {
  let element = MemberElement(key: "key", value: StringElement(content: "value"))

  func testElement() {
    XCTAssertEqual(element.element, "member")
  }

  func testKey() {
    XCTAssertEqual(element.key, "key")
  }

  func testValue() {
    XCTAssertEqual(element.value?.content, "value")
  }

  func xtestToRefract() {
    XCTAssertEqual(element.toRefract() as NSDictionary, [
      "element": "member",
      "meta": [:],
      "attributes": [:],
      "content": [
        "key": "key",
        "value": "value",
      ],
    ])
  }
}
