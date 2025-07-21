# Simple calorie calculator using Mifflin-St Jeor equation
import argparse

ACTIVITY_FACTORS = {
    "sedentary": 1.2,
    "light": 1.375,
    "moderate": 1.55,
    "active": 1.725,
    "very_active": 1.9,
}

def calculate_bmr(weight, height, age, sex):
    if sex.lower() == "male":
        return 10 * weight + 6.25 * height - 5 * age + 5
    elif sex.lower() == "female":
        return 10 * weight + 6.25 * height - 5 * age - 161
    else:
        raise ValueError("sex must be 'male' or 'female'")

def main():
    parser = argparse.ArgumentParser(description="Calorie calculator")
    parser.add_argument("--weight", type=float, required=True, help="Weight in kg")
    parser.add_argument("--height", type=float, required=True, help="Height in cm")
    parser.add_argument("--age", type=int, required=True, help="Age in years")
    parser.add_argument("--sex", choices=["male", "female"], required=True, help="Sex")
    parser.add_argument(
        "--activity",
        choices=list(ACTIVITY_FACTORS.keys()),
        default="sedentary",
        help="Activity level"
    )
    args = parser.parse_args()

    bmr = calculate_bmr(args.weight, args.height, args.age, args.sex)
    calories = bmr * ACTIVITY_FACTORS[args.activity]
    print(f"Estimated daily calories: {calories:.2f}")

if __name__ == "__main__":
    main()
