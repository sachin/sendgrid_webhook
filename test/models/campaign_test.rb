require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #


  test "should not save campaign without title" do
    campaign = Campaign.new
    assert_not campaign.save
  end


end
