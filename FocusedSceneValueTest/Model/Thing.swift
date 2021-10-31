//
//  Thing.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation

let things = [
	Thing(id: 1, name: "Alfa"),
	Thing(id: 2, name: "Beta"),
	Thing(id: 3, name: "Gamma")
]

struct Thing: Identifiable, Hashable {
	let id: Int
	let name: String
}
