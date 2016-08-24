require 'rails_helper'
require 'support/factory_girl'

RSpec.describe ProductiveItem, :type => :model do
  describe 'self.suggested' do
    it 'returns some suggested items' do
      expected = []
      expected << create(:productive_item, body: "Palyed Guitar")
      expected << create(:productive_item, body: "Palyed Chello")

      not_expected = create(:productive_item, body: "Cleaned room")

      results = ProductiveItem.suggested('palyed')

      expect(results).to include(*expected)
      expect(results).not_to include(not_expected)
    end
  end
end
