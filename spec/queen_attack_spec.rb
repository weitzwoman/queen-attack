require('rspec')
require('queen_attack')
require('pry')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end
  it('is false if the coordinates are not vertically in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end
  it('is false if the coordinates are not diagonally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it('is true if the X coordinates are equal') do
    expect([1,1].queen_attack?([1,3])).to(eq(true))
  end
  it('is true if the Y coordinates are equal') do
    expect([1,1].queen_attack?([3,1])).to(eq(true))
  end
  it('is true if the absolute change in X and Y from queenX to TargetX, and queenY to TargetY are equal') do
    expect([1,1].queen_attack?([3,3])).to(eq(true))
  end
end

describe('Array#pawn_attack?') do
  it('is false if the y coordinates are not equal to plus one') do
    expect([1,1].pawn_attack?([1,3])).to(eq(false))
  end
  it('is true if the y coordinates are equal to self plus one, and the abs change in x is equal to the change in y') do
    expect([1,1].pawn_attack?([2,2])).to(eq(true))
    expect([1,1].pawn_attack?([0,2])).to(eq(true))
  end
end
