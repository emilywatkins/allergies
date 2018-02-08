class Allergen
  def initialize(score)
    @score = score
  end

  def convert
    allergies = { 1 => "eggs", 2 => "peanuts" }
    allergy_array = []

    if allergies.include?(@score)
      allergies.fetch(@score)
    else
      a1 = @score/3
      a2 = a1*2

      allergy_array.push(allergies.fetch(a1), allergies.fetch(a2))
    end
  end

end
