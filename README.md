# blog

Projeto em Flutter para visualizar novidades e publicar posts.

# Flutter Version
3.0.1

# Design Pattern
Clean Architechure
Seguindo a estrutura:

```yaml
/lib
  /core
    /error
    /services
  /features
    /auth
    /home
    /microblogging
  injection_container.daet
  main.dart
```


# State Management
BloC - Toda e qualquer atualização de tela é feita emitindo eventos do bloc responsável pela tela.

# Dependency Injection
get_it


### Intruções
Caso seja necessário criar novas entities e models está sendo utilizado o json_anotation, 
freezed e build_runner.

Para gerar novamente os arquivos basta executar na raiz do projeto:
flutter packages pub run build_runner build --delete-conflicting-outputs

