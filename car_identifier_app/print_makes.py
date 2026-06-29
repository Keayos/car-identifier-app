"""
print_makes.py
Prints all unique car make names from data.csv

Usage:
    python print_makes.py
"""

import csv
import os

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
INPUT_FILE = os.path.join(SCRIPT_DIR, 'data.csv')

def print_makes():
    makes = set()

    with open(INPUT_FILE, encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)
        for row in reader:
            make = row.get('Make', '').strip()
            if make:
                makes.add(make)

    for make in sorted(makes):
        print(make)

    print(f'\nTotal: {len(makes)} unique makes')

if __name__ == '__main__':
    print_makes()
