require 'test_helper'

class TermTaxonomiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @term_taxonomy = term_taxonomies(:one)
  end

  test 'should get index' do
    get term_taxonomies_url
    assert_response :success
  end

  test 'should get new' do
    get new_term_taxonomy_url
    assert_response :success
  end

  test 'should create term_taxonomy' do
    assert_difference('TermTaxonomy.count') do
      post term_taxonomies_url, params: { term_taxonomy: { count: @term_taxonomy.count, description: @term_taxonomy.description, parent: @term_taxonomy.parent, taxonomy: @term_taxonomy.taxonomy, term_id: @term_taxonomy.term_id } }
    end

    assert_redirected_to term_taxonomy_url(TermTaxonomy.last)
  end

  test 'should show term_taxonomy' do
    get term_taxonomy_url(@term_taxonomy)
    assert_response :success
  end

  test 'should get edit' do
    get edit_term_taxonomy_url(@term_taxonomy)
    assert_response :success
  end

  test 'should update term_taxonomy' do
    patch term_taxonomy_url(@term_taxonomy), params: { term_taxonomy: { count: @term_taxonomy.count, description: @term_taxonomy.description, parent: @term_taxonomy.parent, taxonomy: @term_taxonomy.taxonomy, term_id: @term_taxonomy.term_id } }
    assert_redirected_to term_taxonomy_url(@term_taxonomy)
  end

  test 'should destroy term_taxonomy' do
    assert_difference('TermTaxonomy.count', -1) do
      delete term_taxonomy_url(@term_taxonomy)
    end

    assert_redirected_to term_taxonomies_url
  end
end
