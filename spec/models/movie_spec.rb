require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "Validations" do
    it "is invalid without a title" do
      movie = Movie.new(length: 240, play_count: 2)

      expect(movie).to_not be_valid
    end
    it "is invalid without a movie length" do
      movie = Movie.new(title: "Rambo", play_count: 3)

      expect(movie).to_not be_valid
    end
  end

  describe "Validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :length }
    it { should validate_presence_of :play_count }
  end

  describe "Relationship" do
    it { should have_many (:actors).through(:actor_movies)}
    it { should have_many :reviews}
  end
end
