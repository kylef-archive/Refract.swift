import XCTest
import Refract


class MetadataTests: XCTestCase {
  let metadata = Metadata(id: StringElement(content: "identifier"),
                          classes: ArrayElement<StringElement>(content: [StringElement(content:"class")]),
                          prefix: StringElement(content: "Prefix"),
                          title: StringElement(content: "Title"),
                          description: StringElement(content: "Description"))

  func testID() {
    XCTAssertEqual(metadata.id?.content, "identifier")
  }

  func testClasses() {
    XCTAssertEqual(metadata.classes?.content?.first?.content, "class")
  }

  func testPrefix() {
    XCTAssertEqual(metadata.prefix?.content, "Prefix")
  }

  func testTitle() {
    XCTAssertEqual(metadata.title?.content, "Title")
  }

  func testDescription() {
    XCTAssertEqual(metadata.description?.content, "Description")
  }
}
