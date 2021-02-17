#! python3

from ahk import AHK
import pyautogui, sys, time, random

ahk = AHK()

# Keys

coord0 = (907,401) 
coord1 = (1016,399) 
coord2 = (1098,488)
coord3 = (1082,594)
coord4 = (1016,675)
coord5 = (895,686)
coord6 = (837,590)
coord7 = (838,482)

center = (960, 540)

coords = [coord0, coord1, coord2, coord3, coord4, coord5, coord6, coord7]

index = -1

## Experiment ##

# Calibration
time.sleep(10)
ahk.key_press('space')  # Press and release a key

while index < 345:
    index = index + 1
    resp = random.randint(0,7)
    time.sleep(1.2)
    ahk.click(coords[resp][0], coords[resp][1])
    time.sleep(0.5)
    ahk.click(center[0], center[1])
    
