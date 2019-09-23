
require 'rails_helper'

RSpec.describe PostComment, type: :model do
  describe 'アソシエート' do
    it "所属してる事" do
      is_expected.to belong_to(:user)
    end
  end
end