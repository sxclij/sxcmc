import pyautogui
import pyperclip
import time

path = "C:\\u\\repo\\sxcmc\\command\\tick.mcfunction"
src = ""

with open(path, 'r') as file:
    src = file.read()

time.sleep(1)

for (i, line) in enumerate(src.splitlines()):
    line_escaped = line.replace("\"", "\\\"")
    pos = "~ ~" + str(i) + " ~1 "
    out = "/data modify block " + pos + "Command set value \"" + line_escaped + "\""
    pyperclip.copy(out)
    pyautogui.hotkey('t')
    pyautogui.hotkey('ctrl', 'v')
    pyautogui.hotkey('enter')
    