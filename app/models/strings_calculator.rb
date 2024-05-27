class StringsCalculator
  def add(string)
    return 0 if string.empty?
    return numbers(string).inject { |sum, num| sum + num }
  end

  def numbers(str)
    str.start_with?("//") ? delimiter = str[2,1] : delimiter = /,|\n/
    str.split(/#{delimiter}/).map(&:to_i)
  end
end
