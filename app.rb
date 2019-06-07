require './chuck'
chk = ChuckJokes.new()
if ARGV.length == 2
  name = ARGV[0] +' ' + ARGV[1]
  chk.replace_name(name)
  exit
elsif ARGV.length == 1
  if ARGV[0].to_i > 0
    chk.get_joke_by_id(ARGV[0].to_i)
    exit
  else
    if ARGV[0] == 'random'
      chk.random
      exit
    else
      chk.replace_name(ARGV[0])
      exit
    end
  end
else
    chk.help
    exit
end
