class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call(sid, token)
    client = Twilio::REST::Client.new(sid, token)
    client.messages.create({
      from: '+17089286924',
      to: '+33681496565',
      body: message
    })
  end
end
