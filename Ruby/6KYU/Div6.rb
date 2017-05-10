def is_divisible_by_6(string)
    result = []
    ('0'..'9').each do |digit|
        number = string.gsub('*', digit).to_i
        result << number.to_s if number % 6 == 0 && number.positive?
    end
    result
end