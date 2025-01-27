O arquivo iac1.sh se trata do projeto de script feito do curso de Linux da plataforma dio, com base nas aulas do instrutor Denilson Libonnati.

Algumas mudança foram feitas mediante a base que foi explanada no curso onde:

- Uso da varável "$SENHA" no lugar do comando "-cript": O uso do -cript não estava sendo reconhecido no uso do Ubuntu Server 24.04.01. Em pesquisa verifiquei que o uso desse comando caiu em desuso. Assim, a
variável $SENHA serviu como armazenamento da senha atribuída ao usuário.

- passwd -e: Como já foi utilizado durante o curso, assim utilizei o mesmo neste script para que o usuário criado, ao realizar o primento acesso, já possa colocar sua senha pessoal.

- Estrutura adicional de grupos: Optei por não agregar o grupo no momento da criação do usuário, para justamente fazer a estrutura separada, e assim praticar por repetição.

Espero que seja de bom uso para todos, assim como eu que estou aprendendo, e prefiro detalhar o máximo possível.
