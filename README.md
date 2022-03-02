# git-conf
Shell script para configuração automática do GitHub para uso em computadores públicos. 

---

### Funcionalidades:  

1. Criar um script que inicialize o git
   * Deve ler o nome de usuário, nome do repo e email. 
   * Deve criar uma pasta git, clonar o repo nela, e entrar nela. 
   * Deve usar o .bash_alias para criar alias e colar ele na root do user

1. .bash_aliases
   > Um arquivo com alguns alias úteis que serão automaticamente setados pelo instalador.

2. Criar um script que encerre a sessão
   * Deve apagar as informações confidenciais
   * Deve apagar o histórico do shell
   * Deve remover todas as pastas clonadas

3. Script de pasta temporária
   > Cria uma pasta temp, com um atalho no desktop, que pode a qualquer momento ser resetada e que será deletada ao final do uso do programa

4. Script criador de projetos
   > Clona o repo do projeto java do jesus e deleta as coisas do git

#### Ideias

1. Algo que permita ler um token, armazenar ele num .txt ou numa variável, e automaticamente usar ele no push. 
    > Quem sabe, usar o próprio sistema de credencial, já que eu to matando ele mesmo 