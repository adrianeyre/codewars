require 'time'

def drive(drinks, finished, drive_time)
  total_units = 0
  drinks.each do |drink|
    total_units += drink[0].to_f * drink[1].to_f / 1000
  end
  finished = Time.parse(finished)
  drive_time = Time.parse(drive_time)
  if finished > drive_time
    drive_time += 86400
  end
  time_when_can_drive = finished + (total_units * 3600)
  [total_units.round(2), time_when_can_drive < drive_time]
end

# alcohol = [[10.0,100]]
# p drive(alcohol,"20:00", "21:01")

# p drive([[10.0,100],[10.0,100]], "20:00", "21:00")

# srand
# (0..250).each do |cwtests|
#   drinks_li = []
#   (0..rand(0..10)).each do |dr|
#     drinks_li << [(rand(20)+5).to_f, rand(500)+75]
#   end
#   ft = "#{rand(10..23)}:#{rand(10..59)}"
#   dt = "#{rand(10..23)}:#{rand(10..59)}"
#   drinks_li
#   p can_drive(drinks_li, ft, dt)
# end
