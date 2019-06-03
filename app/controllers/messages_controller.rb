class MessagesController < ApplicationController
  def index
    @messages = Message.where(user: current_user)
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
  end

  def create

    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      flash[:notice] = "Your message has been successfully created"

      if params[:gridRadios] == "option1"
        to_send_at = Date.strptime(message_params[:send_date], "%m/%d/%Y")
      elsif params[:gridRadios] == "option2"
        to_send_at = Date.today + message_params[:delay_period].to_i
      end

      MessageJob.set(wait_until: to_send_at.to_s).perform_later(@message.id)

      redirect_to messages_path
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  private

  def message_params
    params.require(:message).permit(
      :recipient,
      :subject,
      :content,
      :send_date,
      :delay_period,
      )
  end

  def confirm_email
    raise
    @message = Message.find_by_confirm_token(params[:token])
    if @message.present?
      @message.update(email_confirmed: true)
      @message.save
      flash[:success] = "Message has been made"
    end
  end

end
