class MessagesController < ApplicationController
  def index
    @message = Message.new

    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Message successfully created!"
    else
      flash[:error] = @message.errors.values.join(", ")
    end

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:body, :created_at)
  end
end
