import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Eval1Tests.allTests),
    ]
}
#endif