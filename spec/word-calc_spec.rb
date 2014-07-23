require("rspec")
require("word-calc")

describe("word_calc") do
  it("Adds two single digit numbers together") do
    expect(word_calc("What is 2 plus 3?")).to(eq(5))
  end

  it("Subtracts one single digit number from another") do
    expect(word_calc("What is 5 minus 2?")).to(eq(3))
  end

  it("Multiplies one single digit number to another") do
    expect(word_calc("What is 9 times 8?")).to(eq(72))
  end
end
