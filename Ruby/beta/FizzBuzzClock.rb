=begin

Your plan

When a minute is evenly divisible by three, the clock will say the word "Fizz".
When a minute is evenly divisible by five, the clock will say the word "Buzz".
When a minute is evenly divisible by both, the clock will say "Fizz Buzz",
with two exceptions:

On the hour, instead of "Fizz Buzz", the clock door will open,
and the cuckoobird will come out and "Cuckoo" between one and twelve
times depending on the hour.

On the half hour, instead of "Fizz Buzz", the clock door will open,
and the cuckoo will come out and "Cuckoo" just once.

With minutes that are not evenly divisible by either three or five,
at first you had intended to have the clock just say the numbers ala
Fizz Buzz, but then you decided at least for version 1.0 to just have
the clock make a quiet, subtle "tick" sound for a little more clock
nature and a little less noise.

Your input will be a string containing hour and minute values in
24-hour time, separated by a colon, and with leading zeros.
For example, 1:34 pm would be "13:34".

Your return value will be a string containing the combination
of Fizz, Buzz, Cuckoo, and/or tick sounds that the clock needs
to make at that time, separated by spaces. Note that although
the input is in 24-hour time, cuckoo clocks' cuckoos are in 12-hour time.

Some examples

"13:34"       "tick"
"21:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
"11:15"       "Fizz Buzz"
"03:03"       "Fizz"
"14:30"       "Cuckoo"
"08:55"       "Buzz"

=end

# My Solution
def fizz_buzz_cuckoo_clock(time)
  hrs, min = time.split(":")
  hrs = hrs.to_i
  min = min.to_i
  result = ""
  result = "Fizz" if min % 3 == 0
  result = "Buzz" if min % 5 == 0
  result = "Fizz Buzz" if min % 15 == 0
  result = (["Cuckoo"] * (hrs % 12)).join(" ") if min == 0
  result = "Cuckoo" if min == 30

  result != "" ? result : "tick"
end

# Another Solution
def fizz_buzz_cuckoo_clock(time)
  h,m = time.split(':')[0].to_i, time.split(':')[1].to_i
  m==0 ? h>12 ? ('Cuckoo '*(h-12)).strip : ('Cuckoo '*h).strip : m==30 ? 'Cuckoo' :
    m%15==0 ? 'Fizz Buzz' : m%3==0 ? 'Fizz' : m%5==0 ? 'Buzz' : 'tick'
end

# Another Solution
def fizz_buzz_cuckoo_clock(time)
  hours, minutes = time.split(":").map(&:to_i)
  sounds = {0 => (["Cuckoo"] * (hours % 12 or 12)).join(" "), 15 => "Fizz Buzz", 30 => "Cuckoo", 45 => "Fizz Buzz"}
  if sounds.include? minutes
    return sounds[minutes]
  end

  return minutes % 3 == 0 ? "Fizz" : minutes % 5 == 0 ? "Buzz" : "tick"
end
