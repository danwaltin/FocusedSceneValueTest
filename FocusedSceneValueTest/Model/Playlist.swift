//
//  Playlist.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation

let playlists = [
	Playlist(id: 1, name: "Alfa", tracks: [Track(id: 11, name: "Apa"), Track(id: 12, name: "Bpa")]),
	Playlist(id: 2, name: "Beta", tracks: []),
	Playlist(id: 3, name: "Gamma", tracks: [])
]

struct Playlist: Identifiable, Hashable {
	let id: Int
	let name: String
	let tracks: [Track]
}

struct Track: Identifiable, Hashable {
	let id: Int
	let name: String
}
