require "rails_helper"

# Note: these are gold standard tests since we can't get any data
# reliably into the database. And the multiple tests are really
# spot checking.

RSpec.describe Query::Referrals, "#count" do
  let(:count) { Query::Referrals.new(on: date).count }

  context 'when there is a record with whose date_orr_approved is today' do
    let(:date) { '2016-07-26' }

    it 'should find that record' do
      expect(count).to eq(1)
    end
  end

  context 'when there are many records for that day' do
    let(:date) { '2016-07-14' }

    it 'should find that record' do
      expect(count).to eq(10)
    end
  end

  context 'when there are no records for that day' do
    let(:date) { '2016-07-18' }

    it 'should find that record' do
      expect(count).to eq(0)
    end
  end
end

