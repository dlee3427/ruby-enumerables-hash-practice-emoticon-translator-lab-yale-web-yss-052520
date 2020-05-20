# require modules here
require 'pry'
require 'yaml'

def load_library(file)
   emoticons = YAML.load_file(file)
   new_hash = {}
   emoticons.each do |key,value|
      if new_hash[key] == nil 
         new_hash[key] = {}
      end
      if new_hash[key][:english] == nil 
         new_hash[key][:english] = value[0]
      end
      if new_hash[key][:japanese] == nil 
         new_hash[key][:japanese] = value[1]
      end
   end
   new_hash
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
    emoticons["get_meaning"].each do |key,value|
      if emoticon == key 
        return value
      else
        return "Sorry, that emoticon was not found."
    end
  end
end
      

def get_japanese_emoticon(file, emoticon)
  emoticons = load_lbrary(file)
    emoticons["get_meaning"].each do |key, value|
      if emoticon == japenese_emoticon
        return meaning
      else 
        return "Sorry, that emoticon was not found."
    end 
end
