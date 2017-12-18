class MessagesController < ApplicationController # :nodoc:
  def index
    @message = Message.new

    @messages = Message.all.order(created_at: :desc)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = 'Message successfully created!'
    else
      flash[:error] = @message.errors.values.join(', ')
    end

    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])

    if @message.destroy
      flash[:success] = 'Message successfully deleted!'
    else
      flash[:error] = @message.errors.values.join(', ')
    end

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:body, :created_at)
  end
end
