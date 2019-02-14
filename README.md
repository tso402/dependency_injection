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
