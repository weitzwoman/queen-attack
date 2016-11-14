require('rspec')
require('queen_attack')
require('pry')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end
end
