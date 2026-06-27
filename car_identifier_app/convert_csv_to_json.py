"""
convert_csv_to_json.py
Run this once to convert your Kaggle CSV into assets/data/cars.json

Usage:
    python convert_csv_to_json.py

Output:
    assets/data/cars.json
"""

import csv
import json
import os

# Always resolve paths relative to this script's location
SCRIPT_DIR  = os.path.dirname(os.path.abspath(__file__))
INPUT_FILE  = os.path.join(SCRIPT_DIR, 'data.csv')
OUTPUT_FILE = os.path.join(SCRIPT_DIR, 'assets', 'data', 'cars.json')

def clean_str(value):
    """Return stripped string or None if empty."""
    v = str(value).strip()
    return v if v and v.lower() != 'nan' else None

def clean_int(value):
    """Return int or None if not parseable."""
    try:
        return int(float(str(value).strip()))
    except (ValueError, TypeError):
        return None

def clean_float(value):
    """Return float or None if not parseable."""
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
            make  = clean_str(row.get('Make', ''))
            model = clean_str(row.get('Model', ''))
            year  = clean_int(row.get('Year', ''))

            # Skip rows missing the three required fields
            if not make or not model or year is None:
                skipped += 1
                continue

            cars.append({
                'Make':                make,
                'Model':               model,
                'Year':                year,
                'Engine Fuel Type':    clean_str(row.get('Engine Fuel Type', '')),
                'Engine HP':           clean_float(row.get('Engine HP', '')),
                'Engine Cylinders':    clean_int(row.get('Engine Cylinders', '')),
                'Transmission Type':   clean_str(row.get('Transmission Type', '')),
                'Driven_Wheels':       clean_str(row.get('Driven_Wheels', '')),
                'Number of Doors':     clean_int(row.get('Number of Doors', '')),
                'Vehicle Size':        clean_str(row.get('Vehicle Size', '')),
            })

    os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)

    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        json.dump(cars, f, ensure_ascii=False, separators=(',', ':'))

    print(f'Done! {len(cars)} cars written to {OUTPUT_FILE}')
    if skipped:
        print(f'Skipped {skipped} rows with missing Make/Model/Year.')

if __name__ == '__main__':
    convert()
