module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
  def artist_select(song, artist)
      # collection_select :song_artist_id, @artists, :id, :name
  
  end
end


# Create a helper to display a drop-down list of artists if someone edits a song directly via /songs/id/edit and 
  # to only display the artist's name if they are editing through nested routing. Name the helper method artist_select. 
  # Hint: You'll need to set a variable in the controller action to pass to the helper method as an argument along with a song instance.
 
  # how to do a drop down?
    # def display_artist(song)
    #   # #Artist.all
    #   #   # collection_select :artist_name, @artists, :id, :name
    #       collection_select(:song, :artist_id, @artists, :id, :name, prompt: true)
        
    #      end