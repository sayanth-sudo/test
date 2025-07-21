# Calorie Calculator

This simple Python application calculates an estimate of daily calorie needs
based on the Mifflin-St Jeor equation.

## Usage

```bash
python calorie_calculator.py --weight 70 --height 175 --age 30 --sex male --activity moderate
```

`--weight`   Weight in kilograms

`--height`   Height in centimeters

`--age`      Age in years

`--sex`      `male` or `female`

`--activity` Activity level (`sedentary`, `light`, `moderate`, `active`, or `very_active`)

The script outputs the estimated daily calorie requirement.
