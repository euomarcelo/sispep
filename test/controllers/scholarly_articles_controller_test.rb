require 'test_helper'

class ScholarlyArticlesControllerTest < ActionController::TestCase
  setup do
    @scholarly_article = scholarly_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scholarly_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scholarly_article" do
    assert_difference('ScholarlyArticle.count') do
      post :create, scholarly_article: { ISSN: @scholarly_article.ISSN, basic_publication: @scholarly_article.basic_publication, endingPage: @scholarly_article.endingPage, issue: @scholarly_article.issue, series: @scholarly_article.series, startingPage: @scholarly_article.startingPage, volume: @scholarly_article.volume }
    end

    assert_redirected_to scholarly_article_path(assigns(:scholarly_article))
  end

  test "should show scholarly_article" do
    get :show, id: @scholarly_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scholarly_article
    assert_response :success
  end

  test "should update scholarly_article" do
    patch :update, id: @scholarly_article, scholarly_article: { ISSN: @scholarly_article.ISSN, basic_publication: @scholarly_article.basic_publication, endingPage: @scholarly_article.endingPage, issue: @scholarly_article.issue, series: @scholarly_article.series, startingPage: @scholarly_article.startingPage, volume: @scholarly_article.volume }
    assert_redirected_to scholarly_article_path(assigns(:scholarly_article))
  end

  test "should destroy scholarly_article" do
    assert_difference('ScholarlyArticle.count', -1) do
      delete :destroy, id: @scholarly_article
    end

    assert_redirected_to scholarly_articles_path
  end
end
