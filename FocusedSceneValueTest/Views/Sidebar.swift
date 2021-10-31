//
//  Sidebar.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct Sidebar: View {
	@State private var selectedPlaylist: Playlist?

	var body: some View {
		List(playlists, selection: $selectedPlaylist) {
			SidebarItem(playlist: $0)
		}
	}
}
