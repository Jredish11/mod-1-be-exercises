require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn).to be_instance_of(Turn)
  end 

  it 'pulls a card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn2 = Turn.new("Saturn", card)
    
    expect(turn.card).to eq(card)

  end


  it 'makes a guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn2 = Turn.new("Saturn", card)

    expect(turn.guess).to eq("Juneau")
    expect(turn2.guess).to eq("Saturn")
  end



  it "is correct?" do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn2 = Turn.new("Saturn", card)

    
    expect(turn.correct?).to eq(true)
    expect(turn2.correct?).to eq(false)
  end
    

  it 'gives feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn2 = Turn.new("Saturn", card)
    

    expect(turn.feedback).to eq("Correct!")
    expect(turn2.feedback).to eq("Incorrect.")
    
  end
end



    
    

  


