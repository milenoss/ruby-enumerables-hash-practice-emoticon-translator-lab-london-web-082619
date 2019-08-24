# require modules here
require 'pry'
require "yaml"
# We will first start by defining a method and passing a parameter(file) 
# we will then assign a variable emoticons = Yaml.load_file(file)
# We create a new hash called new_emos = {:get_meaning => {}, to store meanings of these emoticon, and another :get_emoticon = {} to store the emoticon conversion fron english to japanese.
# }
# We will now iterate over the emoticons variable which we assigned earlier to the yaml file with the each method. 
# We will assign a key and value to this iteration. 
# Next step will be is to use binding.pry to see what our key and values are. 
# K should be the meaning of the emoticons and V should be the english and japanese emotiocons. 
# We can now assign these emoticons to into our new hash we created earlier. 
# new_emos[:get_meaning][v[1]] will give us the japanese emoticon and we will assing it to the meaning K. 
# new_emos[:get_emoticon][v[0]] = v[1]. After that we will now will assign v[0] to the japanese one v[1].
# we will end the method and return new_emos. 
# When you check what new_emos values are in bindin.pry or irb. It should give you this result. 

# {:get_meaning=>{"☜(⌒▽⌒)☞"=>"angel", "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry"},
# :get_emoticon=>{"O:)"=>"☜(⌒▽⌒)☞", ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ"}}
 
# Well done. You have succesfully broken it down and created the yaml file as required by the lab.

def load_library (file)
  emoticons =  YAML.load_file(file)
  new_emos = {:get_meaning => {},
             :get_emoticon => {}
  }
    emoticons.each do |k,v| 
    new_emos[:get_meaning][v[1]] = k
    new_emos[:get_emoticon][v[0]] = v[1]
  end
  new_emos
end



In this method we will be retrieving the japanese emoticons
so we will pass two parameters in the method. One will be the path of yaml file and another will be the emoticon which will be english emoticon. 

Assign a variable name emoticons to load_libray(path). This will load the yaml file. 
Assign result variable to emoticons[:get_emoticon][emoticon]
This will pull our japanese emoticon and will be assigned to the result variable. Please note and my apologies for not using different variable as emoticon and emoticons are not the same.

We will then issue an if statement to check if result(which is our japanese emoticon) is true if it is true then 
we will return result. 
else 
  "Sorry, that emoticon was not found.". 

 def get_japanese_emoticon(path, emoticon)
  
  emoticons = load_library(path) #call load_library
  result = emoticons[:get_emoticon][emoticon]
  binding.pry
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