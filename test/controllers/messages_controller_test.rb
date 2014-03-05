#encoding: utf-8
require 'test_helper'

class MessagesControllerTest < ActionController::TestCase

  def setup
    @douglas = User.create({email: 'douglas@wonder.com.br', name: 'Douglas'})
    @rodrigo = User.create({email: 'rodrigo@wonder.com.br', name: 'Rodrigo'})
    @malomar = User.create({email: 'malomar@wonder.com.br', name: 'Malomar'})
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
  end

end
