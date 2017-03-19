import datetime
import random

def drive(drinks, finished, drive_time):
    total_units = 0
    for drink in drinks:
        total_units += float(drink[0]) * drink[1] / 1000
    finished = datetime.datetime.strptime(finished.replace(":",""), "%H%M")
    drive_time = datetime.datetime.strptime(drive_time.replace(":",""), "%H%M")
    if finished > drive_time: drive_time = drive_time + datetime.timedelta(days=1)
    time_when_can_drive = finished + datetime.timedelta(hours=total_units)
    print(total_units)
    return [round(total_units,2), time_when_can_drive < drive_time]

# for rtest in range(250):
#     drinks_li = []
#     for dr in range(random.randint(1,10)):
#         drinks_li.append([round(random.uniform(5.0,25.0),2),random.randint(75,500)])
#     ft = str(random.randint(10,23)) + ":" + str(random.randint(10,59))
#     dt = str(random.randint(10,23)) + ":" + str(random.randint(10,59))
#
#     solution = drive_tester(drinks_li,ft,dt)
#
#     print (solution)
    # test.it("Should return '"+solution+"'")
    # test.assert_equals(drive_tester(drinks_li,ft,dt), solution)
