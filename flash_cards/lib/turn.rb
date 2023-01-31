class Turn
  attr_reader :card, :guess

  def initialize(string, card)
  @string = string
  @card = card
end

def guess
  @string
end

def correct?
  guess == card.answer
end

def feedback
  if guess == card.answer
    "Correct!"
  else 
    "Incorrect."
  end
end




