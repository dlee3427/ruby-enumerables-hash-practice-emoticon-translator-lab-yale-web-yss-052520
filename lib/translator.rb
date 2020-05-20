# require modules here
require 'pry'
require 'yaml'

def load_library(file)
   emoticons = YAML.load_file(file)
   emoticon_translator = {
      "definition" => {}
      "emoticon" => {}
   }
   library.each do |key,value| 
      english = value[0]
      japanese = value[1]
      emoticon_translator["definition"][japanese] = definition 
      emoticon_translator["emoticon"][english] = japanese 
   end
   return emoticon_translator
end



def get_english_meaning(file, emoticon)
  
      

def get_japanese_emoticon(file, emoticon)
  
