# your code goes here
require "pry"
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 
    def initialize (name, money=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = money
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness= (num)
        if num < 10 
            @happiness = num
        elsif num >= 10
            @happiness = 10    
        end
        if num <= 0 
            @happiness = 0
        elsif num > 0 && num < 10 
            @happiness = num    
        end
    end

    def hygiene= (num)
        if num < 10 
            @hygiene = num
        elsif num >= 10
            @hygiene = 10    
        end
        if num <= 0  
            @hygiene = 0
        elsif num > 0 && num < 10
            @hygiene = num    
        end
        
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid (salary)
        @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene=(@hygiene)
        # binding.pry 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene = @hygiene - 3
        self.hygiene=(@hygiene)
        @happiness = @happiness + 2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        @happiness = @happiness + 3
        self.happiness=(@happiness)
        
        friend.happiness = friend.happiness + 3
        # friend.happiness=(friend.happines)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic == "politics"
            @happiness = @happiness - 2 
            self.happiness=(@happiness)
            person.happiness = person.happiness - 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            @happiness = @happiness + 1 
            self.happiness=(@happiness)
            person.happiness = person.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    end
end
