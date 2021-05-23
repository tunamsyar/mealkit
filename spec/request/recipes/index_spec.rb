# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET recipes#index', type: :request do

  describe 'GET /' do
    context 'successful' do
      subject do
        VCR.use_cassette("recipes") do
          get root_path
        end
      end

      it 'returns success' do
        subject

        expect(response.status).to eq(200)
        expect(response.body).to include('Recipes')
      end
    end
  end
end
