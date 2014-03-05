#encoding: utf-8
require 'test_helper'

class MessagesControllerTest < ActionController::TestCase

  def setup
    @douglas = User.find_or_create_by({email: 'douglas@wonder.com.br', name: 'Douglas'})
    @rodrigo = User.find_or_create_by({email: 'rodrigo@wonder.com.br', name: 'Rodrigo'})
    @malomar = User.find_or_create_by({email: 'malomar@wonder.com.br', name: 'Malomar'})
  end

  def teardown
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create message" do
    post :create, {
      message: {
        title: "Sabe de algo?",
        body: "Preciso de informações",
        recipients: [@rodrigo.id, @malomar.id]
      }
    }

    assert_redirected_to message_path(assigns(:message))
  end

end
