require "rails_helper"

# Note: these are gold standard tests since we can't get any data
# reliably into the database. And the multiple tests are really
# spot checking.

RSpec.describe Query::Discharges, "#count" do
  context 'with an *on* param' do
    let(:count) { Query::Discharges.new(on: date).count }

    context 'when there is a record with whose exit date is today' do
      let(:date) { '2016-07-18' }

      it 'should find that record' do
        expect(count).to eq(1)
      end
    end

    context 'when there are many records with an exit date for that day' do
      let(:date) { '2016-07-11' }

      it 'should find that record' do
        expect(count).to eq(3)
      end
    end

    context 'when there are no records with an exit date for that day' do
      let(:date) { '2016-07-20' }

      it 'should find that record' do
        expect(count).to eq(0)
      end
    end
  end

  context '#on_status' do
    let(:count) { Query::Discharges.new({}).on_status.count }

    it 'includes those with status agreement' do
      expect(count).to eq(50115)
    end
  end
end

