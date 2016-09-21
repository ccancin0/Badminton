class Film < ApplicationRecord
	validates :title, length: { maximum: 120 }
	validates :imdb_url, :format => URI::regexp(%w(http https http://www.imdb.com/)), allow_blank: true
  	validates :genre, inclusion: { :in => ['Absurdist', 'Action', 'Adventure', 'Comedy', 'Crime', 'Drama', 'Fantasy', 'Historical', 'Historical fiction', 'Horror', 'Magical realism', 'Mystery', 'Paranoid', 'Philosophical', 'Political', 'Romance', 'Saga', 'Satire', 'Science fiction', 'Slice of Life', 'Speculative', 'Thriller', 'Urban', 'Western'],
  				message: "%{value} is not a valid genre" }
  	validates :imdb_url, uniqueness: true
  	validates :title, :genre, presence: true
  	validates :release_year, :numericality => { :greater_than => 1888, :less_than_or_equal_to => 2016 }, allow_blank: true
end

