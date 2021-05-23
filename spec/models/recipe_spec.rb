require 'rails_helper'

RSpec.describe 'Recipe' do
  describe '#load_all' do
    subject do
      VCR.use_cassette("recipes") do
        Recipe.load_all
      end
    end

    it 'returns recipes' do
      subject
      expect(subject.total).to eq(4)
      expect(subject.map(&:id)).to match_array(["4dT8tcb6ukGSIg2YyuGEOm", "5jy9hcMeEgQ4maKGqIOYW6", "2E8bc3VcJmA8OgmQsageas", "437eO3ORCME46i02SeCW46"])
    end
  end
end
