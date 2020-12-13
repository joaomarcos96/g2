# G2

## Introdução

`G2` é portal de notícias escrita em `Ruby on Rails`, contendo uma área pública e uma área administrativa.

## Ferramentas

As *gems* utilizadas foram:

- [rails](https://github.com/rails/rails)
- [bootstrap](https://github.com/twbs/bootstrap-rubygem)
- [devise](https://github.com/heartcombo/devise)
- [dotenv-rails](https://github.com/bkeepers/dotenv)
- [friendly_id](https://github.com/norman/friendly_id)
- [jquery-rails](https://github.com/rails/jquery-rails)
- [simple_form](https://github.com/heartcombo/simple_form)
- [simplecov](https://github.com/simplecov-ruby/simplecov)

## Instruções

Os pré-requisitos para rodar o projeto são:
- `ruby` versão 2.7.1
- `rails` versão 6.1.0
- `bundler`

### Instalando as dependências

Rode o comando abaixo para instalar as dependências:

```
bundle install
```

### Rodando o projeto

Se for a primeira vez que estiver executando o projeto, crie seu próprio `.env` baseado no `.env.sample` e substitua com suas variáveis de ambiente:

```
cp .env.sample .env
```

Crie o banco:
    
```
bin/rake db:create
```

Rode as *migrations*:

```
bin/rake db:migrate
```

No `.env`, substitua as variáveis `DEFAULT_ADMIN_EMAIL` e `DEFAULT_ADMIN_PASSWORD` pelo e-mail e senha que deseja que o Administrador padrão tenha, e depois popule o banco com os *seeds*:

```
bin/rake db:seed
```

Para rodar a aplicação execute o seguinte comando:

```
bin/rails server
```

### Testes
Os testes são realizados utilizando o `Minitest`.

Para executar os testes, rode o comando abaixo:
```
bin/rails test
```
