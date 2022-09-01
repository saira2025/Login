require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # frozen_string_literal: true
  test 'should get index' do
    get home_index_url
    assert_response :success
  end
end
