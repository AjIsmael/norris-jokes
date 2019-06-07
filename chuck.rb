require 'chuck_norris'
# require './app'
class ChuckJokes
  def initialize()
  end

  def help
    puts "Run [ruby app.rb random] to give you a random joke."
    puts "Run [ruby app.rb {IdNumber} ] to give you a joke with the id you input."
    puts "Run [ruby app.rb {Name}] to give you a joke with changing the name."

  end

  def get_joke_by_id(id)
    joking = ChuckNorris::JokeFinder.find_joke(id)
    puts joking.joke
    puts joking.id
  end

  def replace_name(name)
    nam = name.split()
    if name.split().length == 2
      joking = ChuckNorris::JokeFinder.get_joke(first_name: "#{nam[0]}", last_name: "#{nam[1]}" )
      puts joking.joke
      puts joking.id
    else
      puts help
    end
  end

  def random
    joking = ChuckNorris::JokeFinder.get_joke
    puts joking.joke
    puts joking.id
  end
end
