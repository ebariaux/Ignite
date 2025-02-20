//
//  ZStack.swift
//  Ignite
//  https://www.github.com/twostraws/Ignite
//  See LICENSE for license information.
//

import Foundation
import Testing

@testable import Ignite

/// Tests for the `ZStack` element.
@Suite("ZStack Tests")
@MainActor
class ZStackTests: IgniteTestSuite {
    static let alignments: [Alignment] = [
        .top, .topLeading, .topTrailing,
        .leading, .center, .trailing,
        .bottom, .bottomLeading, .bottomTrailing
    ]

    @Test("ZStack with elements")
    func basicZStack() async throws {
        let element = ZStack {
            Label(text: "Top Label")
            Label(text: "Bottom Label")
        }
        let output = element.render()

        #expect(output == """
        <div style="display: grid">\
        <label style="align-self: center; grid-area: 1/1; height: fit-content; \
        justify-self: center; margin-bottom: 0; width: fit-content; z-index: 0">Top Label</label>\
        <label style="align-self: center; grid-area: 1/1; height: fit-content; \
        justify-self: center; margin-bottom: 0; width: fit-content; z-index: 1">Bottom Label</label>\
        </div>
        """)
    }

    @Test("ZStack with alignments", arguments: await Self.alignments)
    func zStackWithAlignment(for alignment: Alignment) async throws {
        let element = ZStack(alignment: alignment) {
            Label(text: "Top Label")
            Label(text: "Bottom Label")
        }
        let output = element.render()

        #expect(output == """
        <div style="display: grid">\
        <label style="align-self: \(alignment.alignSelf); grid-area: 1/1; height: fit-content; \
        justify-self: \(alignment.justifySelf); margin-bottom: 0; width: fit-content; z-index: 0">Top Label</label>\
        <label style="align-self: \(alignment.alignSelf); grid-area: 1/1; height: fit-content; \
        justify-self: \(alignment.justifySelf); margin-bottom: 0; width: fit-content; z-index: 1">Bottom Label</label>\
        </div>
        """)
    }

}
