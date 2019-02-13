import XCTest
@testable import Eval1

final class Eval1Tests: XCTestCase {

    var Code: Eval1!

    override func setUp(){
        Code = Eval1()
    }

    func testHelloWorld() {
        XCTAssertEqual(Code.HelloWorld(), "Hello World!")
    }

    func testCapitalizeEveryNthWord() {
        var sentence = "Lorem ipsum dolor sit amet";
        XCTAssertEqual("Lorem ipsum Dolor sit Amet", Code.CapitalizeEveryNthWord(sentence, 0, 2));
        XCTAssertEqual("Lorem ipsum Dolor Sit Amet", Code.CapitalizeEveryNthWord(sentence, 2, 1));
    }

    func IsPrimeTest() {
        XCTAssertEqual(Code.IsPrime(-1),false, "IsPrime(-1) should be false.")
        XCTAssertEqual(Code.IsPrime(0),false, "IsPrime(0) should be false.")
        XCTAssertEqual(Code.IsPrime(1),false, "IsPrime(1) should be false.")
        XCTAssertEqual(Code.IsPrime(2),true, "IsPrime(2) should be true.")
        XCTAssertEqual(Code.IsPrime(5),true, "IsPrime(5) should be true.")
        XCTAssertEqual(Code.IsPrime(87),false, "IsPrime(87) should be false.")
        XCTAssertEqual(Code.IsPrime(97),true, "IsPrime(97) should be true.")
    }
    
    func GoldenRatioTest() {
        XCTAssert(Code.GoldenRatio(1.0,1.0) >= 1.61800)
        XCTAssert(Code.GoldenRatio(1.0,1.0) <= 1.61806)
        XCTAssert(Code.GoldenRatio(100,6) >= 1.61800)
        XCTAssert(Code.GoldenRatio(100,6) <= 1.61806)      
    }

    func FibonacciTest() {
        XCTAssertEqual(0, Code.Fibonacci(0))
        XCTAssertEqual(1, Code.Fibonacci(1))
        XCTAssertEqual(1, Code.Fibonacci(2))
        XCTAssertEqual(2, Code.Fibonacci(3))
        XCTAssertEqual(6765, Code.Fibonacci(20))
    }
    func SquareRootTest() {
        XCTAssertEqual(5.0, Code.SquareRoot(25.0))
        XCTAssert(Code.SquareRoot(2.0) >= 1.414)
        XCTAssert(Code.SquareRoot(2.0) <= 1.4144)
    }

    static var allTests = [
        ("testHelloWorld", testHelloWorld),
        ("testCapitalizeEveryNthWord",testCapitalizeEveryNthWord),
        ("IsPrimeTest",IsPrimeTest),
        ("GoldenRatioTest",GoldenRatioTest),
        ("FibonacciTest",FibonacciTest),
        ("SquareRootTest",SquareRootTest)
    ]
}
