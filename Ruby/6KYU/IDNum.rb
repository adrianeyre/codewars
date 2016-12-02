=begin

Every Turkish citizen has an identity number whose validity can be
checked by these set of rules:

It is an 11 digit number
First digit can't be zero
Take the sum of 1st, 3rd, 5th, 7th and 9th digit and multiply it by 7.
Then subtract the sum of 2nd, 4th, 6th and 8th digits from this value.
Modulus 10 of the result should be equal to 10th digit.
Sum of first ten digits' modulus 10 should be equal to eleventh digit.
Example:

10167994524
//  1+1+7+9+5= 23   // "Take the sum of 1st, 3rd, 5th, 7th and 9th digit..."
//    23 * 7= 161   //  "...and multiply it by 7"
//   0+6+9+4 = 19   // "Take the sum of 2nd, 4th, 6th and 8th digits..."
// 161 - 19 = 142   // "...and subtract from first value"
// "Modulus 10 of the result should be equal to 10th digit"
10167994524
         ^ = 2 = 142 % 10
// 1+0+1+6+7+9+9+4+5+2 = 44
// "Sum of first ten digits' modulus 10 should be equal to eleventh digit"
10167994524
          ^ = 4 = 44 % 10

=end

# My Solution
def check_valid_tr_number(number)
    return false if number.to_s.length != 11 || number.to_s[0] == "0"
    str = number.to_s
    a = 0 ; b = 0 ; c = 0 ; d = 0

    0.upto(8) {|i| i.even? ? (a+=str[i].to_i) : (b+=str[i].to_i)}
    c = (a*7-b)%10

    0.upto(9) {|i| d+=str[i].to_i}
    d = d%10

    c == str[9].to_i && d == str[10].to_i ? (return true) : (return false)
end

# Better Solution
def check_valid_tr_number(number)
  id = number.to_s
  id.match(/[1-9][0-9]{10}/) &&
  id[0..8].chars.map.with_index{|d,i| i % 2 == 0 ? d.to_i*7 : -d.to_i}.inject(:+) % 10 == id[9].to_i &&
  id[0..9].chars.map(&:to_i).inject(:+) % 10 == id[10].to_i ? true : false
end
