require 'test_helper'

class NewsControllerAsNonAdminTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @news = news :one
    @user = users :non_admin
    sign_in @user
  end

  teardown do
    sign_out @user
  end

  test 'should not allow any action in /admin/news as non admin' do
    get news_index_url
    assert_response :not_found

    get news_url @news
    assert_response :not_found

    get new_news_url
    assert_response :not_found

    get edit_news_url @news
    assert_response :not_found

    post news_index_url
    assert_response :not_found

    patch news_url @news
    assert_response :not_found

    delete news_url @news
    assert_response :not_found
  end

  test 'GET /news as non admin' do
    get '/news'
    assert_response :success
  end

  test 'GET /news/new as non admin' do
    get "/news/#{@news.id}"
    assert_response :success
  end
end
