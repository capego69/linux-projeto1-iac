#!/bin/bash

# Pastas de Departamentos

echo " Criando as pastas dos departamentos" 

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Grupos de Usuarios

echo "Criar os grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar os usuarios

echo " Criando os usuarios."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123Mudar) -G GRP_SEC

#  Definir Permissões

echo "Definido as permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
