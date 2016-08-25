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
  end
end
