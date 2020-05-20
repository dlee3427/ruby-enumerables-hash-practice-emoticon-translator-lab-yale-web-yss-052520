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
   emoticon_translator
end



def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  emoticons.each do |translation, languages|
    languages.each do |key, emoji|
      if emoticon == translation[:japanese]
        binding.pry
        return 
      end
    end 
  end
end 
      

def get_japanese_emoticon(file, emoticon)
end