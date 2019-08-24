# require modules here
require 'pry'
require "yaml"
# We will first start by defining a method and passing a parameter(file) 
# we will then assign a variable emoticons = Yaml.load_file(file)
# We create a new hash called new_emos = {:get_meaning => {}, to store meanings of these emoticon, and another :get_emoticon = {} to store the emoticon itself. 
# }
# We will now iterate over the emoticons variable which we assigned earlier to the yaml file with the each method. 
# We will assign a key and value to this iteration. 
# Next step will be is to use binding.pry to see what our key and values are. 
K should be the meaning of the emoticons and V should be the english and japanese emotiocons. 
We can now assign these emoticons to into our new hash we created earlier. 
new_emos[:get_meaning][v[1]] will give us the japanese emoticon and we will assing it to the meaning K. 



def load_library (file)
  emoticons =  YAML.load_file(file)
  new_emos = {:get_meaning => {},
             :get_emoticon => {}
  }
    emoticons.each do |k,v| 
    new_emos[:get_meaning][v[1]] = k
    new_emos[:get_emoticon][v[0]] = v[1]
    
  binding.pry
  end
  new_emos
end

 def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) #call load_library
  result = emoticons[:get_emoticon][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
    
  end
end

  
  
  def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons[:get_meaning][emoticon] #the same above 
  #binding.pry
   if result
    result
  else
    "Sorry, that emoticon was not found"
    
  end
end