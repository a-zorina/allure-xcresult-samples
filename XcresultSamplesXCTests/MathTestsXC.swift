import XCTest

final class MathTests: XCTestCase {
    func testAddition() throws {
        let result = 2 + 3
        XCTAssertEqual(result, 5)
    }
    
    func testIncorrectMultiplication() throws {
        let result = 3 * 4
        XCTAssertEqual(result, 11) // This will fail
    }
}