class MessageJob < ApplicationJob
  queue_as :default

  def perform(message_id)
    @message = Message.find(message_id)
    mail = MessageMailer.with(message: @message, recipient: @message.recipient).send_message
    mail.deliver_later
  end
end
