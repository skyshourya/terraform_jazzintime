resource "spotify_playlist" "jazz_in_time" {
  name        = "jazz_in_time"
  description = "My playlist is so for sebs"
  public      = true
  tracks = [ "5703NcgKkYX9LxQLA2VC57" , "5ztIul377mylwHJkCnIWbn"]
}

data "spotify_search_track" "chet_baker" {
    artist = "chet baker"
  

}

resource "spotify_playlist" "chet_baker" {
  name        = " chet baker jazzintime"

  tracks = [data.spotify_search_track.chet_baker.tracks[2].id]
}