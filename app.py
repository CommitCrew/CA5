from flask import Flask, jsonify
import mysql.connector
import json

app = Flask(__name__)

@app.route('/')
def index():
    try:
        # Connect to MySQL using a context manager
        with mysql.connector.connect(
            host='localhost',
            user='root',
            database='studentInfo'
        ) as db:
            cursor = db.cursor()

            # Print the connection details to the terminal
            print("Connected to MySQL Database")
            print(f"Host: {db.server_host}")
            print(f"Database: {db.database}")

            cursor.execute('SELECT * FROM studentInfo')
            data = cursor.fetchall()

            # Use json.dumps with 'indent' for pretty printing
            pretty_json = json.dumps(data, indent=4)

            return pretty_json
    except Exception as e:
        # Log the error for debugging purposes
        print("Error:", e)
        return "An error occurred while processing your request.", 500  # Return a 500 Internal Server Error response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)