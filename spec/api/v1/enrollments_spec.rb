require 'rails_helper'
require 'pry'
require 'json'

describe '/enrollments' do
  context 'GET' do
    context 'without specific id' do
      it 'contains records' do
        get '/enrollments/'
        expect(response).to have_http_status(:ok)
        all_enrollments = JSON.parse(response.body)
        expect all_enrollments.is_a? Array
        expect(all_enrollments).not_to be_empty
        enrollment = all_enrollments[0]
        expect(enrollment).to have_key 'first_name'
      end

      it 'contains nested program and sponsor info' do
        get '/enrollments/'
        all_enrollments = JSON.parse(response.body)
        expect(all_enrollments).to all include 'programs'
        expect(all_enrollments).to all include 'sponsors'
      end

      it 'contains program info for some records' do
        get '/enrollments/'
        all_enrollments = JSON.parse(response.body)
        has_programs = all_enrollments.map {|e| not e['programs'].empty?}
        expect has_programs.any?
      end
    end

    context 'by id' do
      it 'contains one record if the record exists' do
        # Use a general query to get an existing ID
        get '/enrollments/'
        all_enrollments = JSON.parse(response.body)
        enrollment = all_enrollments[0]
        id = all_enrollments[0]['uac_id']

        # Query on that ID
        get "/enrollments/#{id}"
        expect(response).to have_http_status(:ok)
        all_enrollments = JSON.parse(response.body)
        expect all_enrollments.is_a? Array
        expect(all_enrollments.size).to eq 1
        enrollment = all_enrollments[0]
        expect(enrollment).to have_key 'first_name'
      end

      it 'returns 404 if the record does not exist' do
        get '/enrollments/0'
        expect(response).to have_http_status(:missing)
      end
    end

    context 'filters passed to HTSQL' do
      it 'by country of birth' do
        get "/enrollments/?cob='Honduras'"
        expect(response).to have_http_status(:ok)
        enrollments = JSON.parse(response.body)
        expect(enrollments).not_to be_empty
        enrollments.each { |e| expect(e['cob']).to eq('Honduras') }
      end
    end

    context 'provides census counts' do
      it 'when no as_of date provided' do
        get "/enrollments/count"
        expect(response).to have_http_status(:ok)
        counts = JSON.parse(response.body)
        expect(counts).not_to be_empty
        count = counts[0]
        expect(count).to have_key 'in_care'
        expect(count['in_care']).to be_an Integer
        expect(count).to have_key 'referred_today'
        expect(count['referred_today']).to be_an Integer
        expect(count).to have_key 'placed_today'
        expect(count['placed_today']).to be_an Integer
        expect(count).to have_key 'discharged_today'
        expect(count['discharged_today']).to be_an Integer
      end
      it 'when as_of date provided' do
        get "/enrollments/count?as_of=2014-01-22"
        expect(response).to have_http_status(:ok)
        counts = JSON.parse(response.body)
        expect(counts).not_to be_empty
        count = counts[0]
        expect(count).to have_key 'in_care'
        expect(count['in_care']).to be_an Integer
        expect(count).to have_key 'referred_today'
        expect(count['referred_today']).to be_an Integer
        expect(count['referred_today']).not_to be 0
        expect(count).to have_key 'placed_today'
        expect(count['placed_today']).to be_an Integer
        expect(count['referred_today']).not_to be 0
        expect(count).to have_key 'discharged_today'
        expect(count['discharged_today']).to be_an Integer
      end
    end

  end
end
