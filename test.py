#from pygetwindow import activate
import pyautogui
import time

print("Looking for Skip Ad...")

try:
    while True:
        try:
            skip_btn = pyautogui.locateOnScreen('skip_ad_button.png', confidence=0.8)
            if skip_btn:
                pyautogui.click(skip_btn)
                print("🎯 Skip Ad button clicked!")
                time.sleep(5)  # wait a bit after clicking
            else:
                print("🔍 Skip Ad not found...")
        except pyautogui.ImageNotFoundException:
            print("❌ Looking for Skip button.")
        time.sleep(3)
except KeyboardInterrupt:
    print("🛑 Stopped by user.")


#pyautogui
#pyscreeze
#Pillow
#Opencv-python
