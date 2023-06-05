# Text-based Game Challenge
require 'colorize'


def display_ascii_art(art, color)
    puts File.read(art).colorize(color)
end



class Pokemon 
    attr_accessor :health, :name, :defense, :attack, :file_name
    def initialize(health, attack, defense, name)
        @health = health
        @file_name = name
        @name = name
        @defense = defense
        @attack = attack
        @treat = false
    end
    def eat_treat
        if @name != nil
            puts "#{@name} loves when you think of him!"
        end
        if @treat == false
            @treat = true
            @health = (health + 1)
            @attack = (attack + 1)
            @defense = (defense + 1)
            puts "Your pokemon's stats are improved!"
        else
            puts "Your pokemon is full right now"
        end
    end
    def to_s
       p 'Pokemon parent classes started'
      end
end




class Fire < Pokemon 
    attr_accessor()
    def initialize(name)
        super(12, 5, 4, name)
    end
    
    def to_s
        p 'Pokemon Fire classes started'
      end
    end

class Water < Pokemon 
    attr_accessor()
    def initialize(name)
        super(14, 3, 5, name)

    end
    def to_s
        p 'Pokemon Water classes started'
      end
    end


class Grass < Pokemon 
    attr_accessor()
    def initialize(name)
        super(9, 5, 4, name)
    end
    def to_s
        
    end

    end
    




puts 'Welcome to our world of pokemon!'.red
sleep 1

puts "What's your name?".blue
name = gets.chomp.green
sleep 1

puts "Welcome #{name}"
sleep 1 

puts "Choose your pokemon!"
sleep 1
system('clear')
pokemon = nil
choiceloop = true
while(choiceloop)


    
    system('clear')
    puts "Choose your pokemon!"
    display_ascii_art('./AsciiArt/MonkeyMon.txt', :red) 
    puts 'This is MonkeyMon'
    sleep 1
    system('clear')

    display_ascii_art('./AsciiArt/Leo.txt', :green) 
    puts 'This is Leo'
    sleep 1
    system('clear')

    display_ascii_art('./AsciiArt/Squortle.txt', :blue) 
    puts 'This is Squortle'
    sleep 1
    system('clear')

    

    puts "Which pokemon would you like?"
    sleep 1
    puts '1 for Monkeymon'
    sleep 1
    puts '2 for Leo'
    sleep 1
    puts '3 for Squortle'
    sleep 1
    puts '4 see choices again'

    
    case gets.chomp
        when "1"
        puts "Selected MonkeyMon"
        pokemon = 'MonkeyMon'
        pokemon_object = Grass.new('MonkeyMon')
        when "2"
        puts "Selected Leo"
        pokemon = 'Leo'
        pokemon_object = Fire.new('Leo')
        when "3"
        puts "Selected Squortle"
        pokemon = 'Squortle'
        pokemon_object = Water.new('Squortle')
        else
        puts "4 Here you go, pay attention this time."
        sleep 1
        next
    end
        choiceloop = false



end
system('clear')




renaming_loop = true
renaming_loop2 = true
while(renaming_loop)
    puts "You find yourself in a room with your new #{pokemon_object.name}"
    sleep 1
    puts "What would you like to do?"
    sleep 1
    puts '1 to feed them a treat, 2 rename your pokemon, 3 leave the room'
case gets.chomp
    when "1"
    puts "Your #{pokemon_object.name} smells the treat!"
    display_ascii_art("./AsciiArt/#{pokemon_object.file_name}.txt", :yellow)
    pokemon_object.eat_treat
    sleep 2
    system('clear')
    redo
    when "2"
        while renaming_loop2
            puts "What would you like to name your pokemon?"
            pokemon_object.name = gets.chomp
            puts "Are you happy with this name? #{pokemon_object.name}?"
            puts "Y/N"
            answer2 = gets.chomp.downcase
            puts answer2
            if answer2 == "y"
                puts "Your pokemon is now named #{pokemon_object.name}"
                
                
                
                sleep 1
                break
            else
                next

            end
    

        end
    when "3"
    puts "You go outside"
    sleep 1
    break
    renaming_loop = false
    else
    puts "That wasnt an option silly goose."
    next
    
    

    
end
end

puts "your #{pokemon_object.name} smells something in the grass, do you investigate or keep moving?"
sleep 1
puts "1 to investigate, 2 to keep moving along the path, 3 to go into the woods"
case gets.chomp
when "1"
puts "After looking around the grass you come across a strange looking stone"
sleep 1
puts "What do you do with the stone? 1 for touch your #{pokemon_object.name} with the stone, 2 for throw the stone away, 3 to put the stone in your backpack"
    case gets.chomp
    when "1"
        sleep 1
        system('clear')
        puts "THE POKEMON EVOLVED!!!!"
        display_ascii_art("./AsciiArt/#{pokemon_object.file_name}2.txt", :red) 
        sleep 2
    when "2"
        puts "#{pokemon_object.name} looks at the stone longingly"
    else 
        puts "#{pokemon_object.name} paws at your backpack as you start back on the path"
    end
when "2"
    puts "you motion to your #{pokemon_object.name} and continue along the path."
when "3"
    puts "A strange feeling takes hold of you. You cant explain it, but you suddenly feel the urge to walk into the woods. You follow this urge"
else 

    puts "other option"



end

puts "You and your pokemon continue walking until you are attacked by a wild pokemon!"
sleep 1
display_ascii_art('./AsciiArt/CharLizard.txt', :magenta) 
puts 'CharLizard'

char_lizard = ['❤️', '❤️','❤️','❤️','❤️','❤️','❤️','❤️','❤️','❤️']

puts "You have entered mortal combat, what will you do? "
    sleep 1

while (char_lizard.length > 0)
    puts char_lizard.join(" ")

    puts " Will you fight to the death?" 

    puts "What will you do? 1 - heavy attack, 2 - light attack, 3 -  defend yourself, 4 - evade, 5 - run away like a digitalMon  "
    sleep 1
    case gets.chomp

    when "1"
    pokemon_object.attack.times{char_lizard.pop}
    puts "#{pokemon_object.name} throws a haymaker"

    when "2"
    (pokemon_object.attack - 1).times{char_lizard.pop}
    puts "#{pokemon_object.name} slaps real hard"

    when "3"

    puts "#{pokemon_object.name} uses UNBREAKABLE GUARD"

when "4"
    puts "#{pokemon_object.name} side-steps incoming attack"

    else
    puts "#{pokemon_object.name} goes home to mamma. You wont catch em all like this."
    sleep 1
    # next
    end
end 

puts "GAME OVER YOU WINN!!!!"
sleep 3

puts "Great job #{name} you and your #{pokemon_object.name} are victorious and live long healthy lives!"