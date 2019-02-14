# dependency_injection

## Sample

```
class Greeter

def initialize(smiley = Smiley.new)
  @smiley = smiley
end

  def greet
    "Hello #{smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end

# > greeter = Greeter.new
# > greeter.greet
# => "Hello :)"
```

## Exercise 1
class Note
  def initialize(title, body)
    @title = title
    @body = body
    @formatter = NoteFormatter.new
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

## Exercise 2 - Make isolatable and then write tests

class Greeter
  def greet
    puts "What is your name?"
    name = Kernel.gets.chomp
    puts "Hello, #{name}"
  end
end

## Exercise 3 - Make isolatable (including classes) and write tests

class Diary
  def initialize
    @entries = []
  end

  def add(title, body)
    @entries << Entry.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end

## Exercise 3 - Amend SayHelloToMyLittleFriend to be testable in islation and then test it

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
  def run
    email = EmailClient.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
