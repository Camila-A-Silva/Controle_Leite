from conexao import criar_conexao

class Turma_model():
    
    def inserir_turma(self,nome,padrinho) -> bool:
        conexao, cursor = criar_conexao()

        cursor.execute("""INSERT INTO
                       """)
