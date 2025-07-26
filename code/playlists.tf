data "spotify_search_track" "ariana_grande" {
  artist = "Ariana Grande"
  limit  = 10
}

resource "spotify_playlist" "ariana_grande" {
  name   = "My Ariana Grande Playlist"

  tracks = [
    data.spotify_search_track.ariana_grande.tracks[0].id,
  ]
}

data "spotify_search_track" "SZA" {
  artist = "SZA"
  limit  = 10
}

resource "spotify_playlist" "SZA" {
  name   = "My SZA Playlist"

  tracks = [
    data.spotify_search_track.SZA.tracks[0].id,
  ]
}