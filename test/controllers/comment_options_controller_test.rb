require 'test_helper'

class CommentOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_option = comment_options(:one)
  end

  test 'should get index' do
    get comment_options_url
    assert_response :success
  end

  test 'should get new' do
    get new_comment_option_url
    assert_response :success
  end

  test 'should create comment_option' do
    assert_difference('CommentOption.count') do
      post comment_options_url, params: { comment_option: { comments_id: @comment_option.comments_id, option_key: @comment_option.option_key, option_value: @comment_option.option_value } }
    end

    assert_redirected_to comment_option_url(CommentOption.last)
  end

  test 'should show comment_option' do
    get comment_option_url(@comment_option)
    assert_response :success
  end

  test 'should get edit' do
    get edit_comment_option_url(@comment_option)
    assert_response :success
  end

  test 'should update comment_option' do
    patch comment_option_url(@comment_option), params: { comment_option: { comments_id: @comment_option.comments_id, option_key: @comment_option.option_key, option_value: @comment_option.option_value } }
    assert_redirected_to comment_option_url(@comment_option)
  end

  test 'should destroy comment_option' do
    assert_difference('CommentOption.count', -1) do
      delete comment_option_url(@comment_option)
    end

    assert_redirected_to comment_options_url
  end
end
