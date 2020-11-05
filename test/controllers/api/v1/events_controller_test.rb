require 'test_helper'

class Api::V1::EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @issue = issues(:one)
  end

  test 'should get index' do
    get api_v1_issue_events_url(@issue)
    assert_response :success
  end

  test "should return a not_found response for nonexistent issue" do
    get api_v1_issue_events_url(200)
    assert_response :not_found
  end


  test 'should create event' do
    assert_difference 'Event.count' do
      post api_v1_events_url, params: { event: { action: 'opened' }, issue: { number: 3 } }
    end
    assert_response :success
  end

  test "should create issue if it doesn't exist" do
    assert_difference 'Issue.count' do
      post api_v1_events_url, params: { event: { action: 'opened' }, issue: { number: 500 } }
    end
    assert_response :success
  end

  test "shouldn’t create event with invalid parameters" do
    assert_no_difference 'Event.count' do
      post api_v1_events_url, params: { event: { action: nil }, issue: { number: nil } }
    end
    assert_response :unprocessable_entity
  end
end
