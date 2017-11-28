require 'test_helper'

class TermRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @term_relationship = term_relationships(:one)
  end

  test 'should get index' do
    get term_relationships_url
    assert_response :success
  end

  test 'should get new' do
    get new_term_relationship_url
    assert_response :success
  end

  test 'should create term_relationship' do
    assert_difference('TermRelationship.count') do
      post term_relationships_url, params: { term_relationship: { term_order: @term_relationship.term_order, term_taxonomy_id: @term_relationship.term_taxonomy_id } }
    end

    assert_redirected_to term_relationship_url(TermRelationship.last)
  end

  test 'should show term_relationship' do
    get term_relationship_url(@term_relationship)
    assert_response :success
  end

  test 'should get edit' do
    get edit_term_relationship_url(@term_relationship)
    assert_response :success
  end

  test 'should update term_relationship' do
    patch term_relationship_url(@term_relationship), params: { term_relationship: { term_order: @term_relationship.term_order, term_taxonomy_id: @term_relationship.term_taxonomy_id } }
    assert_redirected_to term_relationship_url(@term_relationship)
  end

  test 'should destroy term_relationship' do
    assert_difference('TermRelationship.count', -1) do
      delete term_relationship_url(@term_relationship)
    end

    assert_redirected_to term_relationships_url
  end
end
