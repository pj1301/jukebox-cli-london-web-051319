#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/01.mp3',
"Go Go GO" => '/Volumes/CODER/Development/code/Labs/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/04.mp3',
"Wolf" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/05.mp3',
"Blue" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Volumes/CODER/Development/code/Labs/jukebox-cli-london-web-051319/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  input = gets.chomp
  if input == "help" || "exit"
    puts [/^(?=.*help), (?=.*list), (?=.*play), (?=.*exit).+/m]
  end
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
    input = gets.chomp
    puts my_songs.collect {|k,v| my_songs.k(v)}
    # puts my_songs.each_with_index.map {|song, i| ["#{i} #{song}"]}
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  input = gets.chomp
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
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
