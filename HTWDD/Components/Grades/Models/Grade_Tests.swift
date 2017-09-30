//
//  Grade_Tests.swift
//  HTWDD
//
//  Created by Benjamin Herzog on 05/01/2017.
//  Copyright © 2017 HTW Dresden. All rights reserved.
//

import XCTest
@testable import HTWDD

class Grade_Tests: XCTestCase {

    func test_equality() {
        var g1 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        var g2 = Grade(nr: 1, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        XCTAssertNotEqual(g1, g2)

        g1 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        g2 = Grade(nr: 0, state: "", credits: 2.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        XCTAssertNotEqual(g1, g2)

        g1 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        g2 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 2), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        XCTAssertNotEqual(g1, g2)

        g1 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        g2 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 1, note: nil)
        XCTAssertNotEqual(g1, g2)

        g1 = Grade(nr: 0, state: "abc", credits: 1.0, text: "text", semester: Semester.summer(year: 1), numberOfTry: 3, date: Date(timeIntervalSince1970: 0), mark: 0, note: "a note")
        g2 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        XCTAssertEqual(g1, g2)

    }

    func test_groupAndOrderBySemester() {

        let g1 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g2 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.winter(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g3 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.winter(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g4 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g5 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 1), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g6 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.summer(year: 2), numberOfTry: 0, date: Date(), mark: 0, note: nil)
        let g7 = Grade(nr: 0, state: "", credits: 1.0, text: "", semester: Semester.winter(year: 2), numberOfTry: 0, date: Date(), mark: 0, note: nil)

        let grades = [g1, g2, g3, g4, g5, g6, g7]

        let result = Grade.groupAndOrderBySemester(grades: grades)
        let hashMap = [Semester: [Grade]](result)
        XCTAssertEqual(hashMap[Semester.summer(year: 1)]!, [g1, g4, g5])
        XCTAssertEqual(hashMap[Semester.winter(year: 1)]!, [g2, g3])
        XCTAssertEqual(hashMap[Semester.summer(year: 2)]!, [g6])
        XCTAssertEqual(hashMap[Semester.winter(year: 2)]!, [g7])

        XCTAssertEqual(result[3].0, Semester.summer(year: 1))
        XCTAssertEqual(result[2].0, Semester.winter(year: 1))
        XCTAssertEqual(result[1].0, Semester.summer(year: 2))
        XCTAssertEqual(result[0].0, Semester.winter(year: 2))
    }

}