# Text-Based Game Challenge

#### Overview

Text-based games, or interactive fiction games, are one of the earliest styles of computer games. Text-based games create a narrative where the user is presented with a series of choices. Each decision the user makes moves the game forward in a unique way. Creating a text-based game requires a developer to create organized code that will trigger further code actions in response to the user's decision.

#### Learning Objectives

- can demonstrate effectively collecting user interactions from the IRB console
- can determine appropriate built-in Ruby methods needed to accomplish a task

#### Additional Resources

- Checkout [Playfic](http://playfic.com/explore/popular) for inspiration
- [ASCII Art](https://www.asciiart.eu/) can add some flair to your text
- [Output one character at a time](https://stackoverflow.com/questions/4515157/read-a-ruby-string-one-character-at-a-time-for-word-wrapping)

#### Process

- clone the appropriate repository from GitHub classroom
- `cd` into the repository
- Create a new branch for each feature you implement
- Open the folder in a text editor
- Code!

---

### Planning

The most important part of this project is the planning phase. Work with your team to construct a story line. Think of an idea that will make your game enjoyable. Common choices are treasure hunts, day-in-the-life stories, zombie apocalypse adventures, and murder mysteries.

You need to decide how your user will interact with the code that you write. Every option you present will need to be followed with an action. If you choose to create multiple storylines your code base will need to reflect all the possible actions. Each storyline can be a unique adventure where some are successful and some are not.

// Pokemon Themed
//Boss fight 
// little fights lead to a big fight
// depending on the points you have by the end of the game will determine a win or lose
//side quest to unlock special items that increase your chances of winning(power ups,items)
// steal peoples pokemon(Grand Theft Pokemon)
 //Boss modifiers update based on previous quest performances   
//Final boss 

### Game Play

The game will take place entirely in the terminal. All interactions between the user and the game are text-based. The user will see a story printed to the terminal and then be presented with options that the will determine the next phase of the story. The user will type their selection into the terminal.

// attack, defend, run, evade
// each pokemon has two different attacks(fast attack ,heavy attack)
// 10 points health
// light attack = 2 90%
// heavy attck = 3 65%
// evade (reduces the chances of you being attacked by 45% percent)
// defend reduces damage by 1
// run has a 65% chance to work
//can decide which path you go (2 paths)
// can find random items based off environments
// can decide to engage in different instances that contain different rewards in their reward tables
// Can hold four pokemon at once in backpack
// Pokeballs: regular = 50%, ultra = 65%, master = 85%
// Starter Pokemon: Charzard, Bublbasaur, Squirtle
// Use captured as assist 
// Can use items and some pokemon to heal
// Items: healing juice, pheonix joint, winged shoes(dodge item),  


// Story:
// start at a House
//Just had a conversation


### Tips and Tricks

Think about how the user will contribute to the game. Whatever the user does will need to trigger the next step. This means as the game creator you must present your options in a easily accessible way. Options include presenting the user with yes or no choices, giving the user a numbered list of options, or prompting the user to type specific words. Keep in mind that the casing and spacing of your user's response will affect the functionality of your code.

The Ruby `gets` operator is your best friend in this game. Calling the method `.chomp` on the `gets` operator will remove the `return` keystroke syntax. The `gets` operator will always return a string. It is the developer's responsibility to change the data type if necessary.

Think about the difference between `p` and `puts`. Using `p` in development is helpful for seeing raw data outputs in the terminal. But you may not want code syntax such as quotation marks in your text-based stories.

Keep your code simple. You have all the tools you need to effectively construct the game. This is an exercise in organization, planning, and creativity.

Have fun! This medium is prime for easter eggs and (class appropriate) inside jokes.