require "rails_helper"

RSpec.describe "movies index page", type: :feature do
  before :each do
    @movie_1 = Movie.create!(title: "Rambo", length: 115, play_count: 45)
    @movie_2 = Movie.create!(title: "Jaws", length: 125, play_count: 23)
  end

  it "user can see all movies" do
    visit movies_path

    expect(page).to have_content(@movie_1.title)
    expect(page).to have_content(@movie_2.title)
  end

end
