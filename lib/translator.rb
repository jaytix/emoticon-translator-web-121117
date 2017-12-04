require 'yaml'

def load_library(file)
  library = {"meaning" => {}, "emoticon" => {}}
  YAML.load_file(file).each do |definition ,array|
    english, japanese = array
    library["emoticon"][english] = japanese
    library["meaning"][japanese] = definition
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
  result = library["meaning"][emoticon]
  if result
    result
  else 
    puts "Try again"
  end
end

def get_english_meaning(file, emoticon)
  library = load_library(file)
  result = library["meaning"][emoticon]
  if result
    result
  else
    puts "Try again"   
end
