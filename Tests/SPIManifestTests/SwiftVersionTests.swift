// Copyright Dave Verwer, Sven A. Schmidt, and other contributors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import XCTest
@testable import SPIManifest


class SwiftVersionTests: XCTestCase {

    func test_isLatestRelease() throws {
        XCTAssertEqual(SwiftVersion.v5_7.isLatestRelease, false)
        XCTAssertEqual(SwiftVersion.v5_8.isLatestRelease, false)
        XCTAssertEqual(SwiftVersion.v5_9.isLatestRelease, true)
    }

    func test_Comparable() throws {
        XCTAssert(SwiftVersion.v5_9 > .v5_8)
        XCTAssert(SwiftVersion.v5_8 > .v5_7)
        XCTAssert(SwiftVersion.v5_7 > .v5_6)
    }

}
