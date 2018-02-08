require('rspec')
require('allergies')
require('pry')

describe("allergies") do
  it("returns allergen with input of score") do
    score = Allergen.new(1)
    expect(score.convert()).to(eq("eggs"))
  end
  it("returns two allergens with input of score") do
    score = Allergen.new(3)
    expect(score.convert()).to(eq(["eggs", "peanuts"]))
  end
end
