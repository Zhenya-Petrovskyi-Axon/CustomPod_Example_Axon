import XCTest
@testable import CustomPod_Example_Axon

class CocoaPodsSDKTests: XCTestCase {
    
    var calculator = Calculator(key: "GoodMood")
    
    func testMath() {
        XCTAssertEqual(calculator.doMath(n1: 1, n2: 2, operation: .multiply), 2)
    }
    
}
