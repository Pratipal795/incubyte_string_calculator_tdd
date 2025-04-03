class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    num_array = numbers.split(Regexp.escape(delimiter)).map(&:to_i)

    #checks the negative numbers
    negatives = num_array.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

    num_array.sum
  end
end
