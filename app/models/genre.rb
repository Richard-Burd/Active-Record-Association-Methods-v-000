class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    nu_array = []
    self.artists.each {|X| nu_array << x.name}
    nu_array
  end
end
