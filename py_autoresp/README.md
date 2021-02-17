# Debug Experiments

Functions to simulate **keyboard** and **mouse** events in order to automatically run an experiment and debug or check the log file.

## Packages

* [ahk](https://github.com/spyoungtech/ahk): This package is a **python** wrapper for AutoHotkey in order to interact with system hardware.
* [pyautogui](https://pyautogui.readthedocs.io/en/latest/): This is similar but do not works with Pyschojs.

# Functions

* `mouse_pos.py`: this is useful to check the mouse position in order to set the correct coordinates

Others functions are experiment-specific but the rationale is the same:

* Check the timing of the experiment and each step within the trial
* Set the range of responses
* Simulate a response
* Use `time.sleep()` in order to wait or simulate a different reaction time
