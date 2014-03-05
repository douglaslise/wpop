#encoding: utf-8
require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
    @douglas = User.create({email: 'douglas@wonder.com.br', name: 'Douglas'})
    @rodrigo = User.create({email: 'rodrigo@wonder.com.br', name: 'Rodrigo'})
    @malomar = User.create({email: 'malomar@wonder.com.br', name: 'Malomar'})
  end

  test "simple message creation" do
    message = Message.new({title: "Olá ninguém", body: "Hellow"})
    assert message.save
  end

  test "complete message creation" do
    message = Message.new({title: "Olá ninguém", body: "Hellow"})
    message.sender = @douglas
    message.recipients.build.user = @rodrigo
    message.recipients.build.user = @malomar

    assert message.save
  end

end