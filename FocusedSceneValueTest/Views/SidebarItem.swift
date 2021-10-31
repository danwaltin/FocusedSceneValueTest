//
//  SidebarItem.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

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
