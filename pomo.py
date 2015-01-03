# simple pomodoro timer
# use: python pomo.py [number of pomodori]
from time import sleep
from subprocess import call
import sys

def pomodoro_task(work_duration, pause_duration, pomodori):
	sleep(work_duration)
	call(["say", "break time"])

# The duration is measured in seconds
work_duration = 25 * 60
pause_duration = 5 * 60

# default number of pomodori
default_pomodori = 1

#if hte user didn't specify the number of pomodori use the default value
if len(sys.argv) == 2:
	try:
		pomodori = int(sys.argv[1])
	except:
		pomodori = default_pomodori

for i in range (0, pomodori):
	pomodoro_task(work_duration, paynuse_duration, i+1)
call(["say","program finished"])

