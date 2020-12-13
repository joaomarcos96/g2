require 'test_helper'

class NewsControllerAsAdminTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @news = news :one
    @user = users :admin
    sign_in @user
  end

  teardown do
    sign_out @user
  end

  test 'GET /admin/news as admin' do
    get news_index_url
    assert_response :success
  end

  test 'GET /admin/news/new as admin' do
    get new_news_url
    assert_response :success
  end

  test 'POST /admin/news as admin' do
    assert_difference 'News.count' do
      post news_index_url, params: params
    end

    assert_redirected_to news_index_url
  end

  test 'GET /admin/news/:id as admin' do
    get news_url @news
    assert_response :success
  end

  test 'GET /admin/news/:id/edit as admin' do
    get edit_news_url @news
    assert_response :success
  end

  test 'PATCH /admin/news/:id as admin' do
    patch news_url @news, params: params
    assert_redirected_to news_url @news
  end

  test 'DELETE /admin/news/:id as admin' do
    assert_difference 'News.count', -1 do
      delete news_url @news
    end

    assert_redirected_to news_index_url
  end

  test 'GET /news as admin' do
    get '/news'
    assert_response :success
  end

  test 'GET /news/new as admin' do
    get "/news/#{@news.id}"
    assert_response :success
  end

  private

    def params
      { news: @news.as_json }
    end
end
