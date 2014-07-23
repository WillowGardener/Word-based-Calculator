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

  it("Divides one single digit number by another") do
    expect(word_calc("What is 8 divided by 4?")).to(eq(2))
  end

  it("Adds one double digit number by another") do
    expect(word_calc("What is 20 divided by 10")).to(eq(2))
  end

  it("takes one number to the power of another") do
    expect(word_calc("What is 20 to the 3rd power?")).to(eq(8000))
  end

  it("Returns the solution of three numbers already in correct order of operations") do
    expect(word_calc("What is 20 times 10 plus 5?")).to(eq(205))
  end

  it("Returns the solution of three numbers not in correct order of operations") do
    expect(word_calc("What is 20 plus 10 times 5?")).to(eq(70))
  end
end

# describe("number_reader") do
#
# end
