require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
#require '' #plus besoin de préciser le path exact

def print_grid
  3.times { print "+----"*3, "+\n", "|    "*3, "|\n" }
  print "+----"*3, "+\n"
end

print_grid