class StringsCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i unless numbers.include?(",")
    numbers.split(",")[0].to_i + numbers.split(",")[1].to_i
  end
end
