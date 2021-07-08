require "pry"
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        # if happiness < 0
        #     @happiness = 0
        # elsif happiness > 10
        #     @happiness = 10
        # else 
        #     @happiness = happiness
        # end
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        # if hygiene < 0
        #     @hygiene = 0
        # elsif hygiene > 10
        #     @hygiene = 10
        # else 
        #     @hygiene = hygiene
        # end
        @hygiene = hygiene.clamp(0,10)
    end

    def clean?
        if self.hygiene > 7 
            true
        else 
            false
        end
    end

    def happy?
        if self.happiness > 7 
            true
        else 
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # friend = Person.new
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

joyce = Person.new("joyce", 30, -1, 9)
# binding.pry