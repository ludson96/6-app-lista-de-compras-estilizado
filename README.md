# 🛍️ App Lista de Compras Estilizado

Bem-vindo ao repositório do **App Lista de Compras Estilizado**! Este é um aplicativo mobile desenvolvido em **Flutter**, focado em oferecer uma experiência de usuário (UX) agradável, uma interface limpa (UI) e um código bem estruturado.

## 📱 Sobre o Projeto

O objetivo deste aplicativo é facilitar a criação e o gerenciamento de listas de compras. Além das funcionalidades básicas, o projeto tem um forte apelo visual, trazendo elementos estilizados e interativos, como telas de estado vazio (Empty States) ricas e a possibilidade de customização da aparência.

## ✨ Funcionalidades

- **Gestão de Lista de Compras:** Adicione e gerencie os itens que você precisa comprar.
- **Interface de Estado Vazio (Empty State):** Feedback visual amigável quando a lista está vazia, guiando o usuário sobre o que fazer.
- **Tema Dinâmico (Dark/Light Mode):** Os usuários podem escolher a aparência do aplicativo entre "Claro", "Escuro" ou seguir a configuração padrão do "Sistema".
- **Gerenciamento de Estado Reativo:** O controle do tema da interface é feito de forma reativa utilizando `ValueNotifier`.

## 🛠️ Tecnologias Utilizadas

- **Flutter:** Framework UI do Google para criação de aplicativos multiplataforma.
- **Dart:** Linguagem de programação otimizada para UI.
- **ValueNotifier:** Gerenciamento de estado nativo do Flutter, garantindo performance e reatividade sem a necessidade imediata de bibliotecas externas complexas.

## 🏗️ Estrutura e Padrões de Projeto

- **Controllers e Stores:** A lógica de negócio e estado (como o `ThemeController`) é extraída da UI.
- **Enhanced Enums:** Utilizado no Dart >= 2.17 para associar rótulos e modos de tema (`ThemeMode`) diretamente às opções do aplicativo.
- **Singleton:** Uma instância global simples para gerenciar opções de usuário de qualquer lugar do app, com arquitetura aberta para futuras injeções de dependência.

## 🚀 Como Executar o Projeto

### Pré-requisitos
*   Flutter SDK instalado.
*   Emulador Android/iOS configurado ou dispositivo físico conectado.

### Passos

1. Clone este repositório:
   ```bash
   git clone https://github.com/ludson96/6-app-lista-de-compras-estilizado.git
   ```
2. Acesse a pasta do projeto:
   ```bash
   cd 6-app-lista-de-compras-estilizado
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Execute o aplicativo:
   ```bash
   flutter run
   ```

## 🔜 Próximos Passos (Roadmap)

- [ ] **Persistência de Dados (SharedPreferences):** Salvar a preferência de tema do usuário no armazenamento local.
- [ ] **Injeção de Dependências:** Substituir o singleton global por pacotes como `GetIt` ou adotar o `Provider` para refinar a gerência de estado.
- [ ] **Banco de Dados Local:** Persistir os dados da lista de compras usando `SQLite` ou `Hive`.

---
*Desenvolvido durante os projetos da Growdev.*
