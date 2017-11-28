require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test 'should get index' do
    get posts_url
    assert_response :success
  end

  test 'should get new' do
    get new_post_url
    assert_response :success
  end

  test 'should create post' do
    assert_difference('Post.count') do
      post posts_url, params: { post: { comment_count: @post.comment_count, guid: @post.guid, menu_order: @post.menu_order, pinged: @post.pinged, post_author: @post.post_author, post_content: @post.post_content, post_content_filtered: @post.post_content_filtered, post_excerpt: @post.post_excerpt, post_mime_type: @post.post_mime_type, post_name: @post.post_name, post_parent: @post.post_parent, post_password: @post.post_password, post_status: @post.post_status, post_title: @post.post_title, post_type: @post.post_type, to_ping: @post.to_ping } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test 'should show post' do
    get post_url(@post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_post_url(@post)
    assert_response :success
  end

  test 'should update post' do
    patch post_url(@post), params: { post: { comment_count: @post.comment_count, guid: @post.guid, menu_order: @post.menu_order, pinged: @post.pinged, post_author: @post.post_author, post_content: @post.post_content, post_content_filtered: @post.post_content_filtered, post_excerpt: @post.post_excerpt, post_mime_type: @post.post_mime_type, post_name: @post.post_name, post_parent: @post.post_parent, post_password: @post.post_password, post_status: @post.post_status, post_title: @post.post_title, post_type: @post.post_type, to_ping: @post.to_ping } }
    assert_redirected_to post_url(@post)
  end

  test 'should destroy post' do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
