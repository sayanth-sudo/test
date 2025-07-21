# Calorie Calculator

This repository contains two implementations of a simple calorie calculator based on the Mifflin-St Jeor equation:

* A command-line Python script.
* A basic iOS application written in SwiftUI.

## Python Script Usage

```bash
python calorie_calculator.py --weight 70 --height 175 --age 30 --sex male --activity moderate
```

`--weight`   Weight in kilograms

`--height`   Height in centimeters

`--age`      Age in years

`--sex`      `male` or `female`

`--activity` Activity level (`sedentary`, `light`, `moderate`, `active`, or `very_active`)

The script outputs the estimated daily calorie requirement.

## iOS Application

The `ios` directory contains a minimal SwiftUI application that provides the same functionality on iPhone. Open the folder in Xcode and run the `CalorieCalculatorApp` target on a simulator or device.

