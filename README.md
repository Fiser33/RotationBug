# RotationBug
This repository has been created to demonstrate a bug on iPadOS 13 on device rotations

## Issue:
On iPadOS 13, there is a UI glitch related to device rotations. When a controller is locked to portrait only orientation and presentsmodally another controller that supports all orientations, the glitch occurs. See gif images attached at the end of this file.

## Steps to reproduce:
1. Clone this project
2. Choose your team and fill in bundle id
3. Run on device with iPadOS 13+ (tested on iPadOS 13.1.2 and 13.1.3)
4. While blue screen is on, rotate device to (any) landscape orientation
5. Tap on button "DETAIL" and observe the glitch

## Visualisation
Provided images are part of the repository.
### iOS 12.4.1
![iOS 12.4.1](https://raw.githubusercontent.com/Fiser33/RotationBug/master/images/ios_12-4-1.gif)
### iOS 13.1.3
![iOS 13.1.3](https://raw.githubusercontent.com/Fiser33/RotationBug/master/images/ios_13-1-3.gif)
