require "rails_helper"

# Note: these are gold standard tests since we can't get any data
# reliably into the database. And the multiple tests are really
# spot checking.

RSpec.describe Query::InCare, "#count" do
  it 'gets a gold standard for a series of dates' do
    expect(Query::InCare.new(on: '2016-07-20').count).to eq(5931)
    expect(Query::InCare.new(on: '2016-05-15').count).to eq(5923)
    expect(Query::InCare.new(on: '2015-07-15').count).to eq(5903)
    expect(Query::InCare.new(on: '2015-01-01').count).to eq(5893)
  end
end

