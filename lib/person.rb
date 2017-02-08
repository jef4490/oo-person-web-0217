require 'pry'
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
    if num >= 10
      @happiness = 10
    elsif num <= 0
      @happiness = 0
    else   # binding.pry
      @happiness = num
    end
  end

  def hygiene=(num)
    if num >= 10
      @hygiene = 10
    elsif num <= 0
      @hygiene = 0
    else   # binding.pry
      @hygiene = num
    end
  end

  def happy?
    return true if self.happiness > 7
    false
  end

  def clean?
    return true if self.hygiene > 7
    false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(receiver, topic)
    if topic == "politics"
      self.happiness -= 2
      receiver.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      receiver.happiness += 1
      return "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
