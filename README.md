# MuteMacro


[AutoHotKey](https://www.autohotkey.com/) macro to mute and unmute the microphone with a customizable hotkey.

## How to Use

1. Install [Autohotkey](https://www.autohotkey.com/).
2. Download the repository
3. Open `Macro.ahk` in a text editor and customize the hotkey if desired (default is `F13` and `Shift + F13`) changing those lines.

```autohotkey
F13::
+F13::
```
To see which value you can use for your desired hotkey, check the [official documentation](https://www.autohotkey.com/docs/v1/KeyList.htm).

4. It will individuate the microphone based on his volume level (you can change the target valume level in the script, default is `93`).

```autohotkey
mixerID := GetMixerIDWithVolume(93)
```

5. Save the file and double-click it to run the script.
6. Press the hotkey to mute or unmute the microphone.

## Start it with Windows
To have the script start automatically with Windows:
1. Press `Win + R`, type `shell:startup`, and press Enter. This will open the Startup folder.
2. Create a shortcut to the `Macro.ahk` file in this folder.