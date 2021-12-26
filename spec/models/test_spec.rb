require 'rails_helper'

RSpec.describe Test, type: :model do
  describe "#run" do
    it 'returns `true`' do
      test = Test.new
      expect(test.run).to eql(true)
    end
  end
end
