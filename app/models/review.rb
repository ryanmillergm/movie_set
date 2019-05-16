class Review < ApplicationRecord
  belongs_to :movie

  validates_presence_of :title, :rating, :text
end
