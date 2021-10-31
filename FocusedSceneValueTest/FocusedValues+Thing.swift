//
//  FocusedValues+Thing.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation
import SwiftUI

struct SelectedThingKey : FocusedValueKey {
	typealias Value = Thing
}

extension FocusedValues {
	var selectedThing: Thing? {
		get {self[SelectedThingKey.self]}
		set {self[SelectedThingKey.self] = newValue}
	}
}

