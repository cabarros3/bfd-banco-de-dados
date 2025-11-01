# 🌿 VerdeViva — Sistema de Horta Comunitária

O **VerdeViva** é um projeto de **banco de dados relacional** desenvolvido para gerenciar as atividades de uma **horta comunitária**.  
Ele abrange todo o ciclo da produção: desde o **plantio e cultivo** até a **colheita e doação dos alimentos** para instituições parceiras.

---

## 🧠 Visão Geral do Projeto

O sistema foi projetado para registrar e organizar informações sobre:

- **Plantas** cultivadas na horta.
- **Canteiros** disponíveis e suas características.
- **Cultivos** realizados (qual planta, onde e quando).
- **Voluntários** responsáveis pelas atividades.
- **Colheitas** de cada cultivo.
- **Doações** feitas com os produtos colhidos.
- **Instituições** que recebem as doações.

Essa modelagem garante:

- Rastreamento completo do ciclo de vida de cada cultivo.
- Histórico de colheitas e doações.
- Transparência e organização nas ações da horta comunitária.

---

## 🧩 Modelo Entidade-Relacionamento (MER)

**Entidades principais e suas funções:**

| Entidade        | Descrição                                                                 |
| --------------- | ------------------------------------------------------------------------- |
| **Planta**      | Armazena informações sobre os tipos de plantas cultivadas.                |
| **Canteiro**    | Representa o espaço físico onde ocorre o cultivo.                         |
| **Cultivo**     | Liga uma planta a um canteiro e registra o período de cultivo.            |
| **Voluntário**  | Representa os participantes da horta.                                     |
| **Colheita**    | Registra as colheitas de cada cultivo, incluindo data e quantidade.       |
| **Doação**      | Registra as doações feitas, associando colheitas a instituições.          |
| **Instituição** | Representa entidades que recebem as doações (ex: escolas, abrigos, ONGs). |

### Diagrama da modelagem Conceitual

Foi utilizado o brmodelo para fazer a modelagem conceitual do mini mundo.

![Diagrama ER do banco de dados](./src/images//img1.png)

---

## Modelo Lógico

![Diagrama ER do banco de dados](./src/images/img2.png)

![Diagrama ER do banco de dados](./src/images//img3.png)

---

## 🗃️ Estrutura das Tabelas (modelo SQL simplificado)

```sql
CREATE TABLE planta (
  planta_id SERIAL PRIMARY KEY,
  nome_planta VARCHAR(100),
  tempo_cultivo VARCHAR(50)
);

CREATE TABLE canteiro (
  canteiro_id SERIAL PRIMARY KEY,
  nome_canteiro VARCHAR(100),
  localizacao_canteiro VARCHAR(100),
  tamanho_canteiro DECIMAL
);

CREATE TABLE voluntario (
  voluntario_id SERIAL PRIMARY KEY,
  nome_voluntario VARCHAR(100),
  contato VARCHAR(50)
);

CREATE TABLE cultivo (
  cultivo_id SERIAL PRIMARY KEY,
  data_cultivo DATE,
  voluntario_id INT REFERENCES voluntario(voluntario_id),
  planta_id INT REFERENCES planta(planta_id),
  canteiro_id INT REFERENCES canteiro(canteiro_id)
);

CREATE TABLE colheita (
  colheita_id SERIAL PRIMARY KEY,
  data_colheita DATE,
  quantidade DECIMAL,
  cultivo_id INT REFERENCES cultivo(cultivo_id)
);

CREATE TABLE instituicao (
  instituicao_id SERIAL PRIMARY KEY,
  nome_instituicao VARCHAR(100),
  endereco VARCHAR(150),
  telefone VARCHAR(20)
);

CREATE TABLE doacao (
  doacao_id SERIAL PRIMARY KEY,
  data_doacao DATE,
  quantidade DECIMAL,
  colheita_id INT REFERENCES colheita(colheita_id),
  instituicao_id INT REFERENCES instituicao(instituicao_id)
);
```

## 🔗 Relacionamentos

- Uma planta → pode participar de vários cultivos.

- Um canteiro → pode abrigar vários cultivos.

- Um cultivo → pode gerar várias colheitas.

- Uma colheita → pode originar várias doações.

- Uma doação → é destinada a uma instituição.

- Um voluntário → pode estar vinculado a diversos cultivos.
