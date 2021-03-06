class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])

    @message = Message.new(message_params)
    @message.user = current_user
    @message.chatroom = @chatroom
    authorize @message

    if @message.save
      ChatroomChannel.broadcast_to(@chatroom,
        {
          user: current_user.id,
          message: render_to_string(partial: "message", locals: { message: @message })
        }
      )
      head :ok
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
