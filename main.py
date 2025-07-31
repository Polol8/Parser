import os
import servier_parsers.BIO
import servier_parsers.ARAUJO
import servier_parsers.DIMED
import servier_parsers.DROGACENTER
import servier_parsers.ELFA
import servier_parsers.HOSPINOVA
import servier_parsers.ONCOPRODD
import servier_parsers.VIVEO
import urllib
from sqlalchemy import create_engine, text

params = urllib.parse.quote_plus(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=localhost,1433;DATABASE=ODS;"
    "UID=sa;PWD=MinhaSenha!"
)

engine = create_engine(f"mssql+pyodbc:///?odbc_connect={params}")
with engine.begin() as conn:
    conn.execute(text("TRUNCATE TABLE stg.tb_demanda_onco"))
    conn.execute(text("TRUNCATE TABLE stg.tb_estoque_onco"))
    conn.execute(text("TRUNCATE TABLE stg.tb_historico_stk"))
base_path = os.path.dirname(os.path.abspath(__file__))
pasta_local = os.path.join(base_path, 'planilhas')
output_path = os.path.join(base_path, 'output')
for filename in os.listdir(output_path):
    file_path = os.path.join(output_path, filename)
    if os.path.isfile(file_path):
        os.remove(file_path)
for root, dirs, files in os.walk(pasta_local):
    for file in files:
        caminho_completo = os.path.join(root, file)
        local, cliente = os.path.split(root)
        match cliente:
            case "4BIO_ONCOLOGIA":
                servier_parsers.BIO.parse(file, caminho_completo, output_path, engine)
            case "ANBFARMA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "ARAUJO_CMVD":
                servier_parsers.ARAUJO.parse(file, caminho_completo, output_path, engine)
            case "CLAMED_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "DIMED_CMVD":
                servier_parsers.DIMED.parse(file, caminho_completo, output_path, engine)
            case "DPSP_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "DROGACENTER_CMVD":
                servier_parsers.DROGACENTER.parse(file, caminho_completo, output_path, engine)
            case "DROGAL_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "DROGÃO_SUPER_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "DROGARIAS_GLOBO_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "ELFA_ONCOLOGIA":
                servier_parsers.ELFA.parse(file, caminho_completo, output_path, engine)
            case "GENESIOAMENDES_GAM_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "HOSPINOVA_ONCOLOGIA":
                servier_parsers.HOSPINOVA.parse(file, caminho_completo, output_path, engine)
            case "INDIANA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "MILFARMA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "NAZARIA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "NISSEI_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "ONCOPRODD_ONCOLOGIA":
                servier_parsers.ONCOPRODD.parse(file, caminho_completo, output_path, engine)
            case "PAGUE MENOS_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "PANPHARMA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "PROFARMA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "RAIA DROGASIL_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "SANTA CRUZ_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "SÃO JOÃO_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "SBLOG_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "SERVIMED_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "SOLFARMA_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "TAPAJOS_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "VENANCIO_CMVD":
                print(f"{cliente}: Em desenvolvimento")
            case "VIVEO_ONCOLOGIA":
                servier_parsers.VIVEO.parse(file, caminho_completo, output_path, engine)

