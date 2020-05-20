# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticon_translator = {}
   emoticons.each do |key,value|
      if emoticon_translator[key] == nil 
         emoticon_translator[key] = {}
      end
      if emoticon_translator[key][:english] == nil 
         emoticon_translator[key][:english] = value[0]
      end
      if emoticon_translator[key][:japanese] == nil 
         emoticon_translator[key][:japanese] = value[1]
      end
   end
   new_hash
end



def get_english_meaning(file, emoticon)
end 
      

def get_japanese_emoticon(file, emoticon)
end