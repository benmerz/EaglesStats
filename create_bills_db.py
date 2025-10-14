
import csv
import sqlite3

with open('bills.csv', newline='', encoding='utf-8') as f:
	reader = csv.reader(f)
	header = next(reader)
	conn = sqlite3.connect('bills.db')
	cur = conn.cursor()
	col_defs = ', '.join(f'"{c}" TEXT' for c in header)
	cur.execute(f'CREATE TABLE IF NOT EXISTS bills ({col_defs})')
	placeholders = ', '.join('?' for _ in header)
	for row in reader:
		cur.execute(f'INSERT INTO bills VALUES ({placeholders})', row)
	conn.commit()
	conn.close()
