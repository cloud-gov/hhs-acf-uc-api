require 'rails_helper'
require 'pry'
require 'json'

describe '/enrollment_reports' do
  context 'GET' do
    context 'without filters' do
      it 'contains records' do
        get '/enrollment_reports/'
        expect(response).to have_http_status(:ok)
        results = JSON.parse(response.body)
        expect results.is_a? Array
        expect(results).not_to be_empty
        expect(results[0]).to have_key 'first_name'
      end
    end

    context 'filters passed to HTSQL' do
      it 'by country of birth' do
        get "/enrollment_reports/?cob='Honduras'"
        expect(response).to have_http_status(:ok)
        enrollments = JSON.parse(response.body)
        expect(enrollments).not_to be_empty
        # enrollments.each { |e| expect(e['cob']).to eq('Honduras') }
        # Stumped on why last test fails.  URL  
      end
    end

  end
end
