# 🏠 No Database Airbnb

> Um clone simples do Airbnb usando Rails com banco de dados JSON estático remoto

## 📝 Sobre o Projeto

Vamos construir um clone simples do Airbnb com um banco de dados JSON estático remoto, incluindo uma página inicial (index) listando apartamentos disponíveis. 
## 🔧 Como Funcionar com JSON Remoto

Uma maneira de obter informações de um JSON em Ruby:

```ruby
require "open-uri"
url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(URI.parse(url).read)
```

## ✅ O que Conseguimos

- [x] **Gerou uma nova aplicação Rails**
- [x] **Configurou Bootstrap para estilização**  
- [x] **Implementou roteamento**
- [x] **Criou um controlador com uma ação**
- [x] **Construiu uma visualização com conteúdo dinâmico**
- [x] **Integrou dados de API externa**

## 🎯 Conceitos Principais Reforçados

### 🏗️ **Padrão MVC**
Separação Modelo-Visualização-Controlador para organização clara do código

### 📐 **Convenções Rails**
Seguir os padrões estabelecidos pelo framework para desenvolvimento eficiente

### 🐛 **Desenvolvimento Orientado por Erros**
Ler mensagens de erro e corrigir sistematicamente para aprender

### 🌐 **Integração de API**
Trabalhando com fontes de dados externas de forma eficaz

## 🚀 Como Executar

1. **Clone o repositório**
   ```bash
   git clone [seu-repositorio]
   cd airbnb-static
   ```

2. **Instale as dependências**
   ```bash
   bundle install
   ```

3. **Configure o banco de dados**
   ```bash
   rails db:migrate
   ```

4. **Inicie o servidor**
   ```bash
   rails server
   ```

5. **Acesse a aplicação**
   - Abra seu navegador em `http://localhost:3000`

## 📚 Tecnologias Utilizadas

- **Ruby on Rails** - Framework web
- **Bootstrap 5** - Framework CSS para estilização
- **JSON** - Formato de dados para a API externa

## 🎨 Funcionalidades

- ✨ **Listagem de Apartamentos** - Visualização de todos os apartamentos disponíveis
- 🎨 **Interface Responsiva** - Design adaptável com Bootstrap
- 🌐 **Integração com API** - Dados dinâmicos de fonte externa

## 🔄 Próximos Passos

- [ ] Adicionar páginas individuais de apartamentos (ação `show`)
- [ ] Implementar funcionalidade de busca e filtros
- [ ] Melhorar a estilização com componentes Bootstrap avançados
- [ ] Implementar paginação para grandes quantidades de dados

## 📖 Aprendizado

Este projeto é ideal para:
- 🔰 **Iniciantes em Rails** que querem entender o padrão MVC
- 🎨 **Desenvolvedores** interessados em integração com APIs externas
- 🧪 **Estudantes** que querem aprender sobre testes automatizados

---
