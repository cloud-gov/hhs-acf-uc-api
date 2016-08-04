require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  it "should return a 404, because there is no generic data in the api" do
    visit "/"
    expect(page.status).to be(404)
  end
end
