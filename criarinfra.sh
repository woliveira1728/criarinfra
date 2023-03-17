#!/bin/bash

echo "Infraestrutura como Código: Script de Criação de Estrutura de Usuários,Diretórios e permissões"

echo "Chupa Denilson Bonatti!!! kkkkk"

echo "Creating directories, groups and applying the proper permissions!!!"

mkdir /publico
chmod 777 /publico

mkdir /adm
groupadd GRP_ADM
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
groupadd GRP_VEN
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
groupadd GRP_SEC
chown root:GRP_SEC /sec
chmod 770 /sec


echo "Creating users and applying the proper permissions!!!"

useradd carlos -c "Carlos Magno" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria José" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Sem Braço" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e


useradd debora -c "Débora Alencar" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Fonseca" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e


useradd josefina -c "Josefina Perna Fina" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Nunes" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Paulista" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "All done!!!"
