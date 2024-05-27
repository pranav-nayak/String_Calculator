class StringsCalculator
  def add(string)
    return 0 if string.empty?
    numbers = string.split(",").map { |x| x.to_i }
    return numbers.inject { |sum, num| sum + num }
  end
end
