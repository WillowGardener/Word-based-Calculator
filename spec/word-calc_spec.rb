require("rspec")
require("word-calc")

describe("word_calc") do
  it("Adds two single digit numbers together") do
    expect(word_calc("2", "3", "plus")).to(eq(5))
  end

  it("Subtracts one single digit number from another") do
    expect(word_calc("5", "2", "minus")).to(eq(3))
  end

  it("Multiplies one single digit number to another") do
    expect(word_calc("9", "8", "times")).to(eq(72))
  end
  it("Divides one single digit number by another") do
    expect(word_calc("8", "4", "divided")).to(eq(2))
  end

  it("Adds one double digit number by another") do
    expect(word_calc("20", "10", "divided")).to(eq(2))
  end
  it("takes one number to the power of another") do
    expect(word_calc("20", "3", "power")).to(eq(8000))
  end
end

describe("number_reader") do
  it("Returns the solution of two numbers") do
    expect(number_reader("What is 20 times 10?")).to(eq(200))
  end
end
