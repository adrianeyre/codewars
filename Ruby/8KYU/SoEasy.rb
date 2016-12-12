=begin

#Task To charge your mobile phone battery, do you know how much time it takes
from 0% to 100%? It depends on your cell phone battery capacity and the power
of the charger. A rough calculation method is:

0% --> 85%  (fast charge)
(battery capacity(mAh) * 85%) / power of the charger(mA)

85% --> 95% (decreasing charge)
(battery capacity(mAh) * 10%) / (power of the charger(mA) * 50%)

95% --> 100% (trickle charge)
(battery capacity(mAh) * 5%) / (power of the charger(mA) * 20%)
For example: Your battery capacity is 1000 mAh and you use a charger 500 mA,
to charge your mobile phone battery from 0% to 100% needs time:

0% --> 85%  (fast charge) 1.7 (hour)

85% --> 95% (decreasing charge) 0.4 (hour)

95% --> 100% (trickle charge) 0.5 (hour)

total times = 1.7 + 0.4 + 0.5 = 2.6 (hour)
Complete function calculateTime that accepts two arguments battery and charger,
return how many hours can charge the battery from 0% to 100%. The result should
be a number, round to 2 decimal places.

=end

# My Solution
def calculate_time(battery,charger)
  (((battery * 0.85)/charger) + ((battery * 0.1)/(charger * 0.5)) + ((battery * 0.05)/(charger * 0.2))).round(2)
end

# Better Solution
def calculate_time(b,c)
  (1.3*b/c).round(2)
end
