class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @users = User.all
  end

  def create
    @message = Message.new params[:message].permit([:title, :body])
    @message.date = Time.now
    logger.info "params[:recipients]: #{params[:recipients]}"
    params[:message][:recipients].each do |user_id|
      @recipient = @message.recipients.build 
      @recipient.user = User.find(user_id)
    end

    if @message.save
      redirect_to messages_path
    else
      render text: "Erro: #{@message.erros.full_messages}"
    end
  end

end
