from flask import Flask, render_template, request, jsonify
import mysql.connector
import os

app = Flask(__name__)

def get_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST", "db"),
        user=os.getenv("DB_USER", "user"),
        password=os.getenv("DB_PASSWORD", "123456"),
        database=os.getenv("DB_NAME", "provinciasEC"),
        charset='utf8mb4'
    )

@app.route('/')
def index():
    return render_template("map.html", servidor=os.getenv("SERVIDOR"))

@app.route('/api/provincias')
def listar_provincias():
    connection = get_connection()
    if not connection:
        return jsonify({'error': 'No se pudo conectar a la base de datos'}), 500

    try:
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT nombre, capital, area, poblacion, latitud, longitud FROM provinciasEcuador")
        provincias = cursor.fetchall()
        cursor.close()
        connection.close()
        return jsonify({'provincias': provincias})
    except Error as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
