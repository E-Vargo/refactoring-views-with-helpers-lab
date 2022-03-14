module ArtistsHelper
    
    def display_artist(song)
        if song.artist && song.artist.name != ""
            a = song.artist
            link_to "#{a.name}", artist_path(a)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end
