require 'test_helper'


class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "user can be updated" do
    user = User.create!(:firstname => "Max", :lastname => "Kirby", :email => "mbkirby@gmail.com", :field => "Art", :user_type => "student", :password => "password" )
    put :update, :id => user.id, :user => {:firstname => "Bob"}
    user.reload
    assert_equal "Bob", user.firstname
  end

  test "user can view profile" do
    user = User.create!(:firstname => "Max", :lastname => "Kirby", :email => "mbkirby@gmail.com", :field => "Art", :user_type => "student", :password => "password" )
    get :show, 'id' => user.id
    assert_response :success
    assert_equal user, assigns(:user)
  end

end
