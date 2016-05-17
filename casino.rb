require_relative 'player'
require_relative 'menu'

Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file }

class Casino
    include Player
    include Menu

    def initialize
        @player = Player::Person.new
    end

    def play
        puts 'Welcome to the casino!'
        @player.gets_info
        Menu::MainMenu.display(@player)
    end

    
end

@game = Casino.new
@game.play 
