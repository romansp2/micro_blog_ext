require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link = links(:one)
  end

  test 'should get index' do
    get links_url
    assert_response :success
  end

  test 'should get new' do
    get new_link_url
    assert_response :success
  end

  test 'should create link' do
    assert_difference('Link.count') do
      post links_url, params: { link: { link_description: @link.link_description, link_image: @link.link_image, link_name: @link.link_name, link_notes: @link.link_notes, link_owner: @link.link_owner, link_rating: @link.link_rating, link_rel: @link.link_rel, link_rss: @link.link_rss, link_target: @link.link_target, link_url: @link.link_url, link_visible: @link.link_visible } }
    end

    assert_redirected_to link_url(Link.last)
  end

  test 'should show link' do
    get link_url(@link)
    assert_response :success
  end

  test 'should get edit' do
    get edit_link_url(@link)
    assert_response :success
  end

  test 'should update link' do
    patch link_url(@link), params: { link: { link_description: @link.link_description, link_image: @link.link_image, link_name: @link.link_name, link_notes: @link.link_notes, link_owner: @link.link_owner, link_rating: @link.link_rating, link_rel: @link.link_rel, link_rss: @link.link_rss, link_target: @link.link_target, link_url: @link.link_url, link_visible: @link.link_visible } }
    assert_redirected_to link_url(@link)
  end

  test 'should destroy link' do
    assert_difference('Link.count', -1) do
      delete link_url(@link)
    end

    assert_redirected_to links_url
  end
end
