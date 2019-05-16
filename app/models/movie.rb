class Movie < ApplicationRecord
  has_many :actor_books
  has_many :actors, through: :actor_movies
  has_many :reviews

  validates_presence_of :title,
                        :length,
                        :play_count
end
