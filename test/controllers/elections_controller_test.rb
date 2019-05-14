require 'test_helper'

class ElectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @election = elections(:one)
  end

  test "should get index" do
    get elections_url
    assert_response :success
  end

  test "should get new" do
    get new_election_url
    assert_response :success
  end

  test "should create election" do
    assert_difference('Election.count') do
      post elections_url, params: { election: { candidate_id: @election.candidate_id, deadline: @election.deadline, end: @election.end, position: @election.position, session: @election.session, start: @election.start, vote_count: @election.vote_count } }
    end

    assert_redirected_to election_url(Election.last)
  end

  test "should show election" do
    get election_url(@election)
    assert_response :success
  end

  test "should get edit" do
    get edit_election_url(@election)
    assert_response :success
  end

  test "should update election" do
    patch election_url(@election), params: { election: { candidate_id: @election.candidate_id, deadline: @election.deadline, end: @election.end, position: @election.position, session: @election.session, start: @election.start, vote_count: @election.vote_count } }
    assert_redirected_to election_url(@election)
  end

  test "should destroy election" do
    assert_difference('Election.count', -1) do
      delete election_url(@election)
    end

    assert_redirected_to elections_url
  end
end
