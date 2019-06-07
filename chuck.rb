require 'chuck_norris'
require 'colorized_string'
# require './app'
class ChuckJokes
  def initialize()
  end

  def help
    puts ColorizedString["Run [ruby app.rb random] to give you a random joke."].colorize(:red)
    puts ColorizedString["Run [ruby app.rb {IdNumber} ] to give you a joke with the id you input."].colorize(:red)
    puts ColorizedString["Run [ruby app.rb {Name}] to give you a joke with changing the name."].colorize(:red)
  end

  def get_joke_by_id(id)
    joking = ChuckNorris::JokeFinder.find_joke(id)
    if joking.id == 'id'
      puts "A joke with that id doesnt exist."
    else
      puts ColorizedString[joking.joke].colorize(:green)
      puts ColorizedString[joking.id.to_s].colorize(:green)
    end
  end

  def replace_name(name)
    nam = name.split()
    if name.split().length == 2
      joking = ChuckNorris::JokeFinder.get_joke(first_name: "#{nam[0]}", last_name: "#{nam[1]}" )
      puts ColorizedString[joking.joke].colorize(:green)
      puts ColorizedString[joking.id.to_s].colorize(:green)
    else
      puts help
    end
  end

  def random
    joking = ChuckNorris::JokeFinder.get_joke
    puts ColorizedString[joking.joke].colorize(:green)
    puts ColorizedString[joking.id.to_s].colorize(:green)
  end
end
