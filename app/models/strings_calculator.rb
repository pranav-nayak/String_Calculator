class StringsCalculator
  def add(string)
    return 0 if string.empty?

    numbers = extract_numbers(string)
    validate_numbers(numbers)

    numbers.sum
  end

  private

  def extract_numbers(str)
    str.start_with?("//") ? delimiter = str[2,1] : delimiter = /,|\n/
    str.split(/#{delimiter}/).map(&:to_i)
  end

  def validate_numbers(numbers_list)
    negatives = numbers_list.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
  end
end
