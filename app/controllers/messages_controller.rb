class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new params[:message].permit([:title, :body])
    @message.date = Time.now
    if @message.save
      redirect_to messages_path
    else
      render text: "Erro: #{@message.erros.full_messages}"
    end
  end

end
