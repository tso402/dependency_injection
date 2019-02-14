class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHelloToMyLittleFriend
  def run (email = EmailClient.new)
    @email = email
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
