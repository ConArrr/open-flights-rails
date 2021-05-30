require 'rails_helper'

RSpec.describe 'AirlineAPI' do
  it 'get all airlines' do
    FactoryBot.create_list(:airline, 10)

    get '/api/v1/airlines'
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(json['data'].length).to eq(10)
    expect(json['included'].length).to eq(0)
  end
end