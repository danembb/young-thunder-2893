require 'rails_helper'

RSpec.describe Artist do
  describe 'relationships' do
    #dane, 7.19: Should this read `it { should be in_many(:movies) }`
    it { should have_many(:movies) }
  end
end
