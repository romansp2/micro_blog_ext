require 'test_helper'

class PostOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_option = post_options(:one)
  end

  test 'should get index' do
    get post_options_url
    assert_response :success
  end

  test 'should get new' do
    get new_post_option_url
    assert_response :success
  end

  test 'should create post_option' do
    assert_difference('PostOption.count') do
      post post_options_url, params: { post_option: { option_key: @post_option.option_key, option_value: @post_option.option_value, posts_id: @post_option.posts_id } }
    end

    assert_redirected_to post_option_url(PostOption.last)
  end

  test 'should show post_option' do
    get post_option_url(@post_option)
    assert_response :success
  end

  test 'should get edit' do
    get edit_post_option_url(@post_option)
    assert_response :success
  end

  test 'should update post_option' do
    patch post_option_url(@post_option), params: { post_option: { option_key: @post_option.option_key, option_value: @post_option.option_value, posts_id: @post_option.posts_id } }
    assert_redirected_to post_option_url(@post_option)
  end

  test 'should destroy post_option' do
    assert_difference('PostOption.count', -1) do
      delete post_option_url(@post_option)
    end

    assert_redirected_to post_options_url
  end
end
