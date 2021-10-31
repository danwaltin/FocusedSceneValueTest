//
//  ThingCommands.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation
import SwiftUI

struct ThingCommands: Commands {
	@FocusedValue(\.selectedThing) private var thing
	
	var body: some Commands {
		CommandMenu("Things") {
			Button("Edit \(thingName)") {
				print("*** Editing \(thingName)")
			}
			.disabled(thing == nil)
			.keyboardShortcut("e")
		}
	}
	
	private var thingName: String {
		guard let thing = thing else {
			return ""
		}
		
		return thing.name
	}
}
