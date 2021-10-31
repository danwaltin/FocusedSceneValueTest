//
//  FocusedValues+PlayList.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation
import SwiftUI

struct SelectedPlaylistKey : FocusedValueKey {
	typealias Value = Playlist
}

extension FocusedValues {
	var selectedPlaylist: Playlist? {
		get {self[SelectedPlaylistKey.self]}
		set {self[SelectedPlaylistKey.self] = newValue}
	}
}

