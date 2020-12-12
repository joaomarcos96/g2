require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @admin = users :admin
    @non_admin = users :non_admin

    sign_in @admin
  end

  teardown do
    sign_out @admin
  end

  test 'should get index' do
    get users_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    assert_difference 'User.count' do
      post users_url, params: params
    end

    assert_redirected_to user_url User.last
  end

  test 'should show user' do
    get user_url @non_admin
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_url @non_admin
    assert_response :success
  end

  test 'should update user' do
    patch user_url @non_admin, params: params
    assert_redirected_to user_url @non_admin
  end

  test 'should destroy user' do
    assert_difference 'User.count', -1 do
      delete user_url @non_admin
    end

    assert_redirected_to users_url
  end

  private

    def params
      {
        user: {
          name: 'Regular user test',
          email: 'test@test.com',
          password: '123456',
          password_confirmation: '123456'
        }
      }
    end
end
