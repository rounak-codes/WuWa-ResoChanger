# WuWa-ResoChanger
This script automatically changes the screen resolution before launching **Wuthering Waves** and restores it after the game is closed.

Wuthering Waves does not currently have the ability to render the game fullscreen in a specific resolution , it is always fixed at native resolution. If you are a gamer with a potato pc or laptop you would sometimes want to lower the resolution to achieve a smooth gameplay. Since , Wuthering Waves does not currently support the full screen feature , you will have to manually change the native system resolution everytime you want to run the game. However , this could become unintuitive and inefficient as you would have to open the windows display settings and change the resolution everytime you have to open or close the game. This tool automates that task through a simple batch script created to work with a simple tool called QRes.

-- The source code of QRes is publicly available so you can build the exe yourself if you want.

## How It Works
1. Saves the current screen resolution.
2. Changes resolution to **your choice**.
3. Launches **Wuthering Waves**.
4. Waits for the game to close.
5. Restores the original screen resolution.

## Installation
1. Ensure `**QRes.exe**` is in the same directory as the batch script.
2. Modify the path to the game executable if necessary.
3. Run the batch file.

## Customization
- Change the resolution values in `QRes.exe /x 1600 /y 900` to your preferred resolution. `x is width and y is height`.
- Update the path to your `**Wuthering Waves.exe**` if installed in a different location.
The default location is `"C:\Wuthering Waves\Wuthering Waves Game\Wuthering Waves.exe"`.

## Notes
- It is completely safe to use , it only changes the default system resolution of the windows , it does not alter with any game files whatsoever.
- The script runs the app directly without running it from launcher , for every version update , you will first need to update the app from the launcher
- Requires administrative privileges for execution.

## Disclaimer
Use at your own risk. This script modifies screen resolution settings, and incorrect configurations may lead to display issues.

