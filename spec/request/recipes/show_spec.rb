# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET recipes#show', type: :request do
  describe 'GET /recipes/:id' do
    context 'successful' do
      subject do
        VCR.use_cassette('recipe') do
          get recipe_path('4dT8tcb6ukGSIg2YyuGEOm')
        end
      end

      it 'returns success' do
        subject

        expect(response.status).to eq(200)
        expect(response.body).to include('White Cheddar Grilled Cheese with Cherry Preserves')
      end
    end

    context 'recipe does not exist' do
      subject do
        VCR.use_cassette('recipe_not_found') do
          get recipe_path('asdad')
        end
      end

      it 'returns success' do
        subject

        expect(response.status).to eq(404)
        expect(response.body).to include('Sorry, recipe requested was not found.')
      end
    end
  end
end
