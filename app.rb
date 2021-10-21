require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game' #plus besoin de préciser le path exact
require 'players'
require 'boardcase'
require 'board'





def perform 
jeu = Game.new
end 

perform 