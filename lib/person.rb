class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8     
    end   
    
    def happiness=(num)
        @happiness = num
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end    
    end
    def hygiene=(num)
        @hygiene = num
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end
    def happy?
        @happiness > 7    
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"  
    end   
    def take_bath
        clean = @hygiene + 4
        self.hygiene=(clean)
        "♪ Rub-a-dub just relaxing in the tub ♫"      
    end

    def work_out
        clean = @hygiene - 3
        self.hygiene=(clean)
        feeling = @happiness + 2
        self.happiness=(feeling)
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        caller = @happiness + 3
        self.happiness=(caller)
        receiver = friend.happiness + 3
        friend.happiness = receiver
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        people_in_converstation = [self, friend]
        case
        when topic == "politics"
            people_in_converstation.each {|people| people.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when topic == "weather"
            people_in_converstation.each {|people| people.happiness += 1}
            "blah blah sun blah rain"
        else        
            "blah blah blah blah blah"
        end
    end           
end