import pandas as pd
from sqlalchemy import create_engine

# Carregar os dados do arquivo CSV
file_path = 'shs.csv'  # Substitua com o caminho correto do seu arquivo CSV
page_df = pd.read_csv(file_path)

# Filtrar colunas vazias
page_df_cleaned = page_df.dropna(axis=1, how='all')

# Filtrando valores NaN e porcentagem menor ou igual a 0
data_cleaned = page_df_cleaned.dropna(subset=['percentage'])
data_cleaned = data_cleaned[data_cleaned['percentage'] > 0]

# Multiplicando por 100 para ajustar a porcentagem
data_cleaned['percentage'] = data_cleaned['percentage'] * 100









# Enviar os dados ajustados para o banco de dados
DATABASE_URL = 'postgresql+pg8000://postgres:postgres@localhost:5432/postgres'

# Criação de uma engine para se conectar ao PostgreSQL usando o driver pg8000
engine = create_engine(DATABASE_URL)

# Filtrar os dados por categoria e enviar para tabelas diferentes
categories = data_cleaned['category'].unique()

for category in categories:
    # Filtrar o DataFrame para a categoria atual
    category_df = data_cleaned[data_cleaned['category'] == category]
    
    # Nome da tabela será o nome da categoria
    table_name = category.replace(" ", "_").lower()

    # Enviar os dados filtrados para o banco de dados
    category_df.to_sql(table_name, engine, if_exists='replace', index=False)

    print(f"Dados da categoria '{category}' inseridos na tabela '{table_name}' com sucesso!")
