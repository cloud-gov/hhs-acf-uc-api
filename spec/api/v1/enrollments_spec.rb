require 'rails_helper'
require 'pry'
require 'json'

describe '/enrollments' do
  context 'GET' do
    context 'without specific id' do
      it 'contains records' do
        get '/enrollments/'
        expect(response).to have_http_status(:ok)
      end
    end
    context 'by id' do
      it 'contains one record if the record exists' do
        get '/enrollments/'
        all_enrollments = JSON.parse(response.body)
        id = all_enrollments[0]['uac_id']
        get "/enrollments/#{id}"
        expect(response).to have_http_status(:ok)
      end
      it 'returns 404 if the record does not exist' do
        get '/enrollments/0'
        expect(response).to have_http_status(:missing)
      end
    end
  end
end
