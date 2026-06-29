"""
convert_csv_to_json.py
Run this once to convert your CSV into assets/data/cars.json

Usage:
    python convert_csv_to_json.py

Output:
    assets/data/cars.json
"""

import csv
import json
import os

SCRIPT_DIR  = os.path.dirname(os.path.abspath(__file__))
INPUT_FILE  = os.path.join(SCRIPT_DIR, 'data.csv')
OUTPUT_FILE = os.path.join(SCRIPT_DIR, 'assets', 'data', 'cars.json')

def clean_str(value):
    v = str(value).strip()
    return v if v and v.lower() not in ('nan', 'none', '') else None

def clean_int(value):
    try:
        return int(float(str(value).strip()))
    except (ValueError, TypeError):
        return None

def clean_float(value):
    try:
        return float(str(value).strip())
    except (ValueError, TypeError):
        return None

def convert():
    cars = []
    skipped = 0

    with open(INPUT_FILE, encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)

        for row in reader:
            make_model = clean_str(row.get('Make Model', ''))

            if not make_model:
                skipped += 1
                continue

            cars.append({
                'Make Model':           make_model,
                'Make':                 clean_str(row.get('Make', '')),
                'Model':                clean_str(row.get('Model', '')),
                'Trim Description':     clean_str(row.get('Trim Description', '')),
                'Engine Fuel Type':     clean_str(row.get('Engine Fuel Type', '')),
                'Engine Horsepower Hp': clean_float(row.get('Engine Horsepower Hp', '')),
                'Engine Cylinders':     clean_str(row.get('Engine Cylinders', '')),
                'Engine Size':          clean_float(row.get('Engine Size', '')),
                'Engine Rpm':           clean_int(row.get('Engine Rpm', '')),
                'Engine Drive Type':    clean_str(row.get('Engine Drive Type', '')),
                'Engine Transmission':  clean_str(row.get('Engine Transmission', '')),
                'Body Type':            clean_str(row.get('Body Type', '')),
                'Body Doors':           clean_int(row.get('Body Doors', '')),
                'Body Seats':           clean_int(row.get('Body Seats', '')),
            })

    os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)

    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        json.dump(cars, f, ensure_ascii=False, separators=(',', ':'))

    print(f'Done! {len(cars)} cars written to {OUTPUT_FILE}')
    if skipped:
        print(f'Skipped {skipped} rows with missing Make Model.')

if __name__ == '__main__':
    convert()
