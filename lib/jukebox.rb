songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  elsif input == "list" 
    list(songs)
  elsif input == "exit"
    exit_jukebox
  elsif input.class == String && input !=("help" || "list" || "exit" )
    play(songs)
  elsif input.class == Integer && input !=("help" || "list" || "exit")
    play(songs)
  else
    nil
  end
end

def help()
  input = gets.chomp
  if input == "help" || "exit"
    puts [/^(?=.*help), (?=.*list), (?=.*play), (?=.*exit).+/m]
  end
end

def play(songs)
  input = gets.chomp
  songs.each do |song_name|
    if input.class == String && input == song_name
      puts song_name
    elsif input.length == 1 && input.to_i > 0 && input.to_i < 9
      puts songs[input.to_i - 1]
    else 
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  input = gets.chomp
  puts songs.each_with_index.map {|song, i| ["#{i} #{song}"]}
end

def exit_jukebox()
  input = gets.chomp
  puts "Goodbye"
end

