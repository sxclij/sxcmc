import pyautogui
import pyperclip
import time

path = "C:\\u\\repo\\sxcmc\\command\\register.mcfunction"
src = ""

with open(path, 'r') as file:
    src = file.read()

time.sleep(1)

for (i, line) in enumerate(src.splitlines()):

    line_escaped = line.replace("\"", "\\\"")
    pos = "~ ~" + str(i) + " ~1 "
    out2 = "/data modify block " + pos + "Command set value \"" + line_escaped + "\""
    
    if i == 0:
        out1 = "/setblock " + pos + "minecraft:repeating_command_block[facing=up]"
    else:
        out1 = "/setblock " + pos + "minecraft:chain_command_block[facing=up]"
    pyperclip.copy(out1)
    pyautogui.hotkey('t')
    pyautogui.hotkey('ctrl', 'v')
    pyautogui.hotkey('enter')
    pyperclip.copy(out2)
    pyautogui.hotkey('t')
    pyautogui.hotkey('ctrl', 'v')
    pyautogui.hotkey('enter')
    