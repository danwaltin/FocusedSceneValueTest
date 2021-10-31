//
//  ContentView.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			Sidebar()
			
			NoSelection()
		}
	}
}

struct Sidebar: View {
	@State private var selectedPlaylist: Playlist?

	var body: some View {
		List(playlists, selection: $selectedPlaylist) {
			SidebarItem(playlist: $0)
		}
	}
}

struct SidebarItem: View{
	let playlist: Playlist
	
	var body: some View {
		NavigationLink(
			destination: PlaylistView(playlist: playlist),
			label: {
				Text(playlist.name)
					.fixedSize()
			}
		)
	}
}

struct PlaylistView: View {
	var playlist: Playlist

	var body: some View {
		Text(playlist.name)
		.focusedSceneValue(\.selectedPlaylist, playlist)
		.navigationTitle(playlist.name)
	}
}

struct NoSelection: View {
	var body: some View {
		Text("Nothing selected")
	}
}
