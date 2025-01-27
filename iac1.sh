# Auto detect text files and per#!/bin/bash


echo "Passo 1: Criando diretórios."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Passo 2: Criando grupos de usuários."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Passo 3: Criando usuários."
SENHA=$(openssl passwd -6 "Senha123")
useradd carlos -m -s /bin/bash -p "$SENHA"
passwd -e carlos
useradd maria -m -s /bin/bash -p "$SENHA"
passwd -e maria
useradd joao -m -s /bin/bash -p "$SENHA"
passwd -e joao

useradd debora -m -s /bin/bash -p "$SENHA"
passwd -e debora
useradd sebastiana -m -s /bin/bash -p "$SENHA"
passwd -e sebastiana
useradd roberto -m -s /bin/bash -p "$SENHA"
passwd -e roberto

useradd josefina -m -s /bin/bash -p "$SENHA"
passwd -e josefina
useradd amanda -m -s /bin/bash -p "$SENHA"
passwd -e amanda
useradd rogerio -m -s /bin/bash -p "$SENHA"
passwd -e rogerio

echo "Passo 4: Adicionando usuários aos grupos."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Passo 5 Atribuindo permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim das etapas do script de IaC !"form LF normalization
* text=auto
