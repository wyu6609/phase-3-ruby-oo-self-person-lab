class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

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

  def initialize(name)
    @name = name
    self.bank_account = 25
    self.happiness = 8
    self.hygiene = 8
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness += 1
      friend.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
