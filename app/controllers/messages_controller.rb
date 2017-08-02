class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def reply
    message_body = params["Body"] || "this is a test message"

    begin 
	    sms = TWILIO_CLIENT.messages.create(
	      from: TWILIO_PHONE,
	      to: TO_NUMBER,
	      body: message_body
	    )
	rescue  => e
	    Rails.logger.error e
	end
  end

  def receive
  end
end
