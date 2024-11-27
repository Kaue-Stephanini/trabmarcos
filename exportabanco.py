import pandas as pd
from sqlalchemy import create_engine

# Carregar os dados do arquivo CSV (shs.csv) para um DataFrame
file_path = 'shs.csv'  # Substitua com o caminho correto do seu arquivo CSV
page_df = pd.read_csv(file_path)

# Filtrar colunas vazias (com todos os valores NA)
page_df_cleaned = page_df.dropna(axis=1, how='all')

# Defina a URL de conexão com o banco de dados usando pg8000
DATABASE_URL = 'postgresql+pg8000://postgres:postgres@localhost:5432/postgres'

# Criação de uma engine para se conectar ao PostgreSQL usando o driver pg8000
engine = create_engine(DATABASE_URL)

# Nome da tabela no banco de dados onde os dados serão inseridos
table_name = 'steam_survey'

# Enviar os dados para o banco de dados usando to_sql
page_df_cleaned.to_sql(table_name, engine, if_exists='replace', index=False)

print(f"Dados inseridos com sucesso na tabela '{table_name}'!")
