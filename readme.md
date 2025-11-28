# 🥛 **ControlLeite**
> Sistema desktop open-source para o controle e inventário de doações de leite por turma em campanhas estudantis.

---

## 📌 Sobre o projeto

O **ControlLeite** foi criado para **automatizar e organizar** a arrecadação de leite em campanhas institucionais.

O sistema permite:

🏫 **Cadastrar turmas** participantes
📦 **Registrar entregas de leite** com data e responsável
📊 **Gerar relatórios detalhados** por turma e total arrecadado
🔐 **Acessar o software com login seguro**

O projeto segue o padrão arquitetural **MVC + MVC**, utilizando:

GUI (interface gráfica)
MVC (Model-View-Controller)
Banco MySQL externo
Gerenciamento oficial de dependências via pip
Driver mysql-connector-python

---

## 🧠 Arquitetura (MVC)

ControlLeite/
│
├── src/
│ ├── controllers/ # Regras de negócio e interações do sistema
│ ├── models/ # Estruturas e manipulação do banco de dados
│ ├── views/ # Construção da interface (GUI)
│ ├── config/ # Configuração da conexão com MySQL externo
│ └── main.py # Inicialização da aplicação
│
├── screenshots/ # Pasta reservada para capturas de tela do sistema
├── requirements.txt # Dependências do projeto
└── README.md # Documentação


---

## 🗃 Banco de Dados – MySQL (Externo)

### ✏ Estrutura sugerida:

sql
CREATE DATABASE control_leite;

USE control_leite;

CREATE TABLE turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE entregas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    turma_id INT NOT NULL,
    quantidade FLOAT NOT NULL,
    data_entrega DATE NOT NULL,
    responsavel VARCHAR(100),
    FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

📦 Instalação do pacote via pip

O projeto será distribuído como código aberto:

pip install ControlLeite

Dependências
📄 requirements.txt:
ttkbootstrap
mysql-connector-python

Como executar a aplicação
✅ Pré-requisitos:

Python 3.8 ou superior

Banco MySQL externo (local ou na nuvem)

🧾 Passo a passo:

Clone o repositório

Acesse a pasta do projeto

Instale as dependências:

pip install -r requirements.txt


Configure seu banco externo em:

src/config/db_config.py


Execute o sistema:

python src/main.py

📸 Screenshots do Sistema

Imagens serão adicionadas conforme o desenvolvimento.

🔑 Tela de Login
<!-- IMAGEM AQUI -->
screenshots/login.png

🗂 Cadastro de Turmas
<!-- IMAGEM AQUI -->
screenshots/turmas.png

📦 Registro de Entregas
<!-- IMAGEM AQUI -->
screenshots/entregas.png

📊 Tela de Relatórios
<!-- IMAGEM AQUI -->
screenshots/relatorios.png

🌍 Código Aberto

Este projeto é open-source e pode ser utilizado livremente para estudo, modificação e contribuição da comunidade acadêmica.

❗ Licença

🚫 Este projeto não possui licença definida.

👩‍💻 Desenvolvido por

Projeto acadêmico do 2º semestre do curso Desenvolvimento de Sistemas – SENAI.