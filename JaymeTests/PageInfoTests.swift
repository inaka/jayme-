// Jayme
// PageInfoTests.swift
//
// Copyright (c) 2016 Inaka - http://inaka.net/
//
// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements. See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership. The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License. You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import XCTest
@testable import Jayme

class PageInfoTests: XCTestCase {

    func testMoreTrueCase() {
        let pageInfo = PageInfo(number: 1, size: 5, total: 12)
        XCTAssertTrue(pageInfo.more)
    }
    
    func testMoreFalseCase() {
        let pageInfo = PageInfo(number: 2, size: 5, total: 8)
        XCTAssertFalse(pageInfo.more)
    }
    
    func testMoreExtremeFalseCase() {
        let pageInfo = PageInfo(number: 2, size: 5, total: 10)
        XCTAssertFalse(pageInfo.more)
    }
    
    func testMoreExtremeTrueCase() {
        let pageInfo = PageInfo(number: 2, size: 5, total: 11)
        XCTAssertTrue(pageInfo.more)
    }

}
