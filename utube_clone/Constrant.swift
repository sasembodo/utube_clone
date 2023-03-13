//
//  Constrant.swift
//  utube_clone
//
//  Created by user on 20/02/23.
//

import Foundation

struct Constrant: Decodable {
    static var API_KEY = "AIzaSyDq-R9fdfnzkrKuoRYPzzf6lAIexnCkcAM"
    static var PLAYLIST_ID = "PL63BwSmEYVZ0ordACgLtFFotufloiU3-j"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constrant.PLAYLIST_ID)&key=\(Constrant.API_KEY)"
}
