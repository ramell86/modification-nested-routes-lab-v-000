module SongsHelper

  def artist_dropdown(song)
    if song.artist.nil?
      select_tag 'song_artist_id', options_from_collection_for_select(@artists, 'id', 'name', selected = song.artist)
    else
      select_tag 'song_artist_id', options_from_collection_for_select(@artists, 'id', 'name', selected = nil)
    end
    
  end

end
