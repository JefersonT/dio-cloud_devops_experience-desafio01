#!/bin/bash

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando Grupos - finalizado)"

echo "---------------------------------------"
echo "Criando usuários ADM"
useradd carlos -c "Carlos" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd maria -c "Maria" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd joao_ -c "João" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -5 senha123)
echo "Criando Usuários ADM - finalizado)"
echo "---------------------------------------"
echo "Criando usuários VEN"
useradd debora -c "Debora" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd sebastiana -c "Sebastiana" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd roberto -c "Roberto" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -5 senha123)
echo "Criando Usuários VEN - finalizado)"
echo "---------------------------------------"
echo "Criando usuários SEC"
useradd josefina -c "Josefina" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd amanda -c "Amanda" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd rogerio -c "Rogerio" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -5 senha123)
echo "Criando Usuários SEC - finalizado)"

echo "---------------------------------------"
echo "Criando pasta /adm"
mkdir /home/adm
echo "Criando pasta /adm - finalizado"
echo "---------------------------------------"
echo "Criando pasta /ven"
mkdir /home/ven
echo "Criando pasta /ven - finalizado"
echo "---------------------------------------"
echo "Criando pasta /sec"
mkdir /home/sec
echo "Criando pasta /sec - finalizado"
echo "---------------------------------------"
echo "Criando pasta /publico"
mkdir /home/publico
echo "Criando pasta /publico - finalizado"
echo "---------------------------------------"

echo "Alterando Dono:Grupo da pasta /adm"
chown root:GRP_ADM /home/adm
echo "Alterando Dono:Grupo da pasta /adm - finalizado"
echo "---------------------------------------"
echo "Alterando Dono:Grupo da pasta /ven"
chown root:GRP_VEN /home/ven
echo "Alterando Dono:Grupo da pasta /ven - finalizado"
echo "---------------------------------------"
echo "Alterando Dono:Grupo da pasta /sec"
chown root:GRP_SEC /home/sec
echo "Alterando Dono:Grupo da pasta /sec - finalizado"
echo "---------------------------------------"
echo "Alterando Dono:Grupo da pasta /publico"
chown root:root /home/publico
echo "Alterando Dono:Grupo da pasta /publico - finalizado"
echo "---------------------------------------"

echo "Alterando permissóes da pasta /adm"
chmod 770 /home/adm
echo "Alterando permissóes da pasta /adm - finalizado"
echo "---------------------------------------"
echo "Alterando permissóes da pasta /ven"
chmod 770 /home/ven
echo "Alterando permissóes da pasta /ven - finalizado"
echo "---------------------------------------"
echo "Alterando permissóes da pasta /sec"
chmod 770 /home/sec
echo "Alterando permissóes da pasta /sec - finalizado"
echo "---------------------------------------"
echo "Alterando permissóes da pasta /publico"
chmod 777 /home/publico
echo "Alterando permissóes da pasta /publico - finalizado"
echo "---------------------------------------"
