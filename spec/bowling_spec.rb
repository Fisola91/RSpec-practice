class Game

  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    @frames << pins

  end

  def score
    @frames.each do |frame|
      @score += frame
    end
    @score
  end
end

RSpec.describe Game do
  it "calculate score after one roll" do
    subject.roll(1)
    expect(subject.score).to eq(1)
  end

  it "caculate score after two rolls" do
    2.times { subject.roll(1) }
    expect(subject.score).to eq(2)
  end

  it "calculates score at one strike" do
    subject.roll(10)
    subject.roll(2)
    subject.roll(3)
    expect(subject.score).to eq(20)
  end
end
