require 'pry'
require 'yaml'

def load_library(file)
  library = YAML.load_file(file)
<<<<<<< HEAD
  ans = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each {|x,y|
    ans["get_emoticon"][y[0]] = y[1]
    ans["get_meaning"][y[1]] = x 
  }
  return ans
end

def get_japanese_emoticon(file, emoji)
  library = load_library(file)
  return library["get_emoticon"].include?(emoji) ? library["get_emoticon"][emoji] : "Sorry, that emoticon was not found"
=======
  ans = {get_meaning: {}, get_emoticon: {}}
  library.each {|x,y|
    ans[:get_emoticon][y[0]] = y[1]
    ans[:get_meaning][y[1]] = x 
  }
  ans
  binding.pry
end

def get_japanese_emoticon(jp_emoji)
  library = load_library

>>>>>>> aeaf0b14dae01305719c1269c488b1a413e75aaf
end

def get_english_meaning(file, emoji)
  library = load_library(file)
  return library["get_meaning"].include?(emoji) ? library["get_meaning"][emoji] : "Sorry, that emoticon was not found" 
end