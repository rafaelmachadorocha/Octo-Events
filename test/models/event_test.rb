require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'valid event' do
    assert events(:one).valid?
  end

  test 'invalid event without name' do
    refute Event.new.valid?
  end
  
end
