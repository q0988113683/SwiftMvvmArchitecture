//
//  RedditQuestionTests.swift
//  RedditQuestionTests
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import XCTest
@testable import RedditQuestion

//dependency injection
class RedditQuestionTests: XCTestCase {
    private var hotListVM: HotListViewModel!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.hotListVM = HotListViewModel(webService: MockService())
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        self.hotListVM = nil
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testFetchWithMock() {
        let expectation = XCTestExpectation(description: "mock webservice expectation")
        self.hotListVM.reloadTableViewClosure = {
            expectation.fulfill()
        }
        self.hotListVM.fetchData(after: "", before: "")
        wait(for: [expectation], timeout: 3.0)
        XCTAssertEqual(self.hotListVM.hotData?.modhash, "test", "modhast should be test")
    }
}

private class MockService: IWebServicesInterface {
    func getHotData(after: String, before: String, completion: @escaping (Result<HotData?, ErrorResult>) -> Void) {
        completion(.success(HotData(modhash: "test", dist: 25, children: [], after: "t5_31h78", before: "")))
    }
}
