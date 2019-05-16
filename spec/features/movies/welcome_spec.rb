require 'rails_helper'

RSpec.describe "an unathenticated user visiting welcome page" do
  it "should see a welcome message" do
    visit '/'

    within "#greeting" do
      expect(page).to have_content("Welcome!")
    end
  end
end
