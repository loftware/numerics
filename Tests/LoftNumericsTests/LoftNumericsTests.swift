import XCTest
@testable import LoftNumerics

final class LoftNumericsTests: XCTestCase {
    // Add one test per package republished by LoftNumerics to ensure that the
    // public api of the package is being correctly re-exported by LoftNumerics.

    func testModuloExport() {
        let _ = 10.modulo(3)
    }

    func testIntegerDivisionExport() {
        let _ = 10.flooringDiv(3)
    }

    static var allTests = [
        ("testModuloExport", testModuloExport),
        ("testIntegerDivisionExport", testIntegerDivisionExport),
    ]
}
