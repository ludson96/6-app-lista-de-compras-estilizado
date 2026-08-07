# 🛍️ App Lista de Compras Estilizado

🌍 Read this in [English](README.en.md)

> Aplicativo mobile desenvolvido em **Flutter** focado no gerenciamento de listas de compras com suporte a customização de temas, padronização visual e design refinado.

## 📝 Sobre o Projeto

Este projeto consiste em um desafio de aprimoramento de habilidades em **UI/UX Design**, estilização e padronização arquitetural em aplicações mobile Flutter (refatoração do projeto da Fase 2).

O objetivo principal é oferecer uma experiência visual rica, intuitiva e acessível ao usuário, permitindo o gerenciamento completo de listas de compras e seus respectivos itens, além de suportar a alternância dinâmica entre os temas **Claro (Light)**, **Escuro (Dark)** e a sincronização automática com o **Sistema Operacional**.

No modo Escuro, o aplicativo aplica de forma personalizada a tipografia **Montserrat**, agregando uma estética moderna e elegante.

## 🖼️ Tela (Preview)

<img src="assets/images/lista-de-compras.gif" alt="Demonstração do App" width="300"/>

## ✨ Funcionalidades

- 🏠 **Página Principal Adaptativa:**
  - **Visualização de Estado Vazio (Empty State):** Exibe uma imagem centralizada acompanhada de mensagem orientativa incentivando o usuário a criar sua primeira lista.
  - **Visualização de Listas:** Apresenta os cartões de todas as listas de compras cadastradas no app.
- ➕ **Cadastro de Lista de Compras:** Tela dedicada para nomear e cadastrar novas listas.
- 🛒 **Visualização e Interação com Produtos:** Página específica para visualizar a lista de produtos, marcando itens ou interagindo com eles.
- 📌 **Bottom Sheet Dinâmico:** Modal inferior (bottom sheet) para cadastro rápido e fluido de produtos dentro de uma lista de compras.
- 🎨 **Gerenciamento de Temas Completo:**
  - **Claro (Light):** Interface com tonalidades claras e alta legibilidade.
  - **Escuro (Dark):** Interface estilizada com paleta escura e tipografia customizada **Montserrat**.
  - **Sistema:** Alterna automaticamente respeitando a preferência configurada no sistema operacional do dispositivo.
- ⚙️ **Tela de Configurações:** Permite ao usuário alternar a qualquer momento a preferência do tema entre Claro, Escuro ou Sistema.

## 🛠️ Tecnologias Utilizadas

- **[Flutter](https://flutter.dev/):** Framework UI multiplataforma para criação de apps nativos de alta performance.
- **[Dart](https://dart.dev/):** Linguagem moderna e reativa utilizada pelo Flutter.
- **Montserrat Font:** Tipografia estilizada aplicada no Tema Escuro.
- **Gerenciamento de Estado Reativo (ValueNotifier / Controller):** Para atualização fluida e performática do tema e dos dados do aplicativo sem complexidade excessiva.

## 🚀 Como Executar o Projeto

Para rodar este projeto em sua máquina local, você precisará ter o Flutter instalado. Depois, siga os passos abaixo:

1.  **Clone o repositório** (se estiver usando git):
    ```bash
    git clone https://github.com/ludson96/6-app-lista-de-compras-estilizado.git

    cd 6-app-lista-de-compras-estilizado
    ```

2.  **Instale as dependências** com o Flutter:
    ```bash
    flutter pub get
    ```

3.  **Execute o aplicativo**:
    ```bash
    flutter run
    ```
  