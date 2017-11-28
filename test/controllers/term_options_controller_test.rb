require 'test_helper'

class TermOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @term_option = term_options(:one)
  end

  test 'should get index' do
    get term_options_url
    assert_response :success
  end

  test 'should get new' do
    get new_term_option_url
    assert_response :success
  end

  test 'should create term_option' do
    assert_difference('TermOption.count') do
      post term_options_url, params: { term_option: { option_key: @term_option.option_key, option_value: @term_option.option_value, terms_id: @term_option.terms_id } }
    end

    assert_redirected_to term_option_url(TermOption.last)
  end

  test 'should show term_option' do
    get term_option_url(@term_option)
    assert_response :success
  end

  test 'should get edit' do
    get edit_term_option_url(@term_option)
    assert_response :success
  end

  test 'should update term_option' do
    patch term_option_url(@term_option), params: { term_option: { option_key: @term_option.option_key, option_value: @term_option.option_value, terms_id: @term_option.terms_id } }
    assert_redirected_to term_option_url(@term_option)
  end

  test 'should destroy term_option' do
    assert_difference('TermOption.count', -1) do
      delete term_option_url(@term_option)
    end

    assert_redirected_to term_options_url
  end
end
