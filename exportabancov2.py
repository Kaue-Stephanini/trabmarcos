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

# Lógica para a categoria 'Other'
# Somar as porcentagens menores que 1%
other_percentage = data_cleaned[data_cleaned['percentage'] < 1]['percentage'].sum()

# Remover valores já considerados em 'Other'
data_cleaned = data_cleaned[data_cleaned['percentage'] >= 1]

# Verificar se 'Other' já existe
if 'Other' in data_cleaned['name'].values:
    # Adicionar o valor à categoria existente
    data_cleaned.loc[data_cleaned['name'] == 'Other', 'percentage'] += other_percentage
else:
    # Criar a categoria 'Other' se não existir
    other_row = pd.DataFrame({
        'category': ['Other'],
        'name': ['Other'],
        'percentage': [other_percentage],
        'change': [None],
        'date': [None]
    })
    data_cleaned = pd.concat([data_cleaned, other_row], ignore_index=True)

# Garantir que a soma não exceda 100%
total_percentage = data_cleaned['percentage'].sum()
if total_percentage > 100:
    excess = total_percentage - 100
    # Ajustar 'Other' para balancear
    data_cleaned.loc[data_cleaned['name'] == 'Other', 'percentage'] -= excess

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
