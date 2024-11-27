from flask import Flask, jsonify
from flask_cors import CORS  # Importando o CORS
from sqlalchemy import create_engine, text
import pandas as pd

app = Flask(__name__)

# Habilitando CORS para todo o aplicativo
CORS(app)
# URL de conexão com o banco de dados
DATABASE_URL = 'postgresql+pg8000://postgres:postgres@localhost:5432/postgres'

# Criação de uma engine para se conectar ao PostgreSQL
engine = create_engine(DATABASE_URL)

@app.route('/api/tables', methods=['GET'])
def list_tables():
    try:
        query = """
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = 'public';
        """
        # Abrindo conexão para executar a consulta
        with engine.connect() as connection:
            result = connection.execute(text(query))
            tables = [row[0] for row in result.fetchall()]  # Extrair nomes das tabelas

        return jsonify(tables)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/api/<table_name>', methods=['GET'])
def get_table_data(table_name):
    try:
        # Validar se a tabela existe
        validation_query = text("""
            SELECT table_name
            FROM information_schema.tables
            WHERE table_schema = 'public' AND table_name = :table_name
        """)
        with engine.connect() as connection:
            result = connection.execute(validation_query, {"table_name": table_name}).fetchone()
            if not result:
                return jsonify({"error": f"Tabela '{table_name}' não encontrada"}), 404

        # Consulta os dados da tabela
        query = text(f"SELECT * FROM {table_name}")
        with engine.connect() as connection:
            df = pd.read_sql(query, con=connection)

        # Retorna os dados em formato JSON
        return jsonify(df.to_dict(orient='records'))

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
