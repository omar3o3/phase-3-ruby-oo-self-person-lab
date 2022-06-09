# your code goes here
require 'pry'

class Person
    
    attr_accessor :bank_account

    def initialize(name , bank_account = 25 , happiness = 8 , hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end



    def happiness=(value)
        if value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end


    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end


    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        hygiene = self.hygiene+=4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        hygiene = self.hygiene-=3
        happiness = self.happiness+=2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        happiness = self.happiness+=3
        happiness = friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend , topic)
        case topic
            when "politics"
                happiness = self.happiness-=2
                happiness = friend.happiness-=2
                'blah blah partisan blah lobbyist'
            when "weather"
                happiness = self.happiness+=1
                happiness = friend.happiness+=1
                'blah blah sun blah rain'
            else
                'blah blah blah blah blah'
        end
    end



    def name
        @name
    end

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end



end

# binding.pry
