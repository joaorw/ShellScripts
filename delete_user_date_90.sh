#!/bin/sh
#
#############################################################################################################################################
#   Script DELETE_USER_DATE_90.SH v1.0 POSTFIX AUTOMÁTICO COM MYSQL E IPTABLES - APAGANDO MSG ANTIGAS EM TODAS AS PASTAS DE UM USUÁRIO       #
                                                                                                                                             #
#                                                                                                                                            #
#  Autor new version: Joao Victor Bonfim Rocha                                                                                               #
#############################################################################################################################################
#
BASEDIR=/var/mail
clear
echo "*********************************************************************************************"
echo "*                                  Programa DELETE_USER_DATE_90 1.0                         *"
echo "*********************************************************************************************"
echo "Autor: Alessandro Dias"
echo "---------------------------------------------------------------------------------------------"
USERNAME=$1  # colhe o nome do usuario
if [ "$USERNAME" != "" ]; then
echo "                                ----- Usuário $USERNAME -----"
echo -e "---------------------------------------------------------------------------------------------"
ARQUIVOS=$BASEDIR/$USERNAME
ARQUIVOS="$BASEDIR/$USERNAME"" "`ls /home/$USERNAME/mail/*`
l=1
ARQUIVO=`echo $ARQUIVOS | cut -d " " -f $l`

while [ "$ARQUIVO" != "" -a "$ARQUIVO" != " " ]; do
  echo "Analizando o arquivo: $ARQUIVO"
  #Verifica as Msgs
  INICIO=1
  NLINHAS=1000
  i=0
  while [ "$INICIO" != "$NLINHAS" ]; do 
  i=`expr $i \+ 1`
  j=`expr $i \+ 1`
  LINHAS=`grep -n "From " $ARQUIVO | cut -d ":" -f 1`
  NLINHAS=`wc -l $ARQUIVO`
  NLINHAS=`echo $NLINHAS | cut -d " " -f 1`
  LINHAS="$LINHAS $NLINHAS"
  INICIO=`echo $LINHAS | cut -d " " -f $i`
  if [ "$INICIO" = "$NLINHAS" ]; then
    echo -e "---------------------------------------------------------------------------------------------"
  else
  FIM=`echo $LINHAS | cut -d " " -f $j`
  VALOR_TMP=`sed -n -e "$INICIO""p" $ARQUIVO`
  MES=`echo $VALOR_TMP | cut -d " " -f 4`
  ASSUNTO=`sed -n -e "$INICIO,$FIM""p" $ARQUIVO | grep "Subject:" | cut -d : -f 2`
  case $MES in
    Jan) MES=1 ;;
    Fev) MES=2 ;;
    Mar) MES=3 ;;
    Apr) MES=4 ;;
    Abr) MES=4 ;;
    May) MES=5 ;;
    Mai) MES=5 ;;
    Jun) MES=6 ;;
    Jul) MES=7 ;;
    Aug) MES=8 ;;
    Ago) MES=8 ;;
    Sep) MES=9 ;;
    Set) MES=9 ;;
    Oct) MES=10 ;;
    Out) MES=10 ;;
    Nov) MES=11 ;;
    Dez) MES=12 ;;
  esac
  DIA=`echo $VALOR_TMP | cut -d " " -f 5`
  ANO=`echo $VALOR_TMP | cut -d " " -f 7`
  if [ "$ANO" = "UTC" ]; then
    ANO=`echo $VALOR_TMP | cut -d " " -f 8`
  fi 
  HJ_ANO=`date +%Y`
  HJ_MES=`date +%m`
  HJ_DIA=`date +%e`
  DIF_ANO=`expr $HJ_ANO - $ANO`
  DIF_MES=`expr $HJ_MES - $MES`
  DIF_DIA=`expr $HJ_DIA - $DIA`
  TEMPO1=`expr $DIF_ANO \* 360`
  TEMPO2=`expr $DIF_MES \* 30`
  TEMPO3=$DIF_DIA
  TEMPO=`expr $TEMPO1 \+ $TEMPO2 \+ $TEMPO3`
  echo -e "\n   Mensagem $i - Data: $DIA/$MES/$ANO - $TEMPO dias - Linhas $INICIO-$FIM"
  echo -e "   Assunto: $ASSUNTO"
  if [ $TEMPO -ge 90 ]; then # se a msg tiver mais de 60 dias apagar
    if [ "$FIM" != "$NLINHAS" ]; then # se não é a ultima msg, não apaga a linha em branco
       FIM=`expr $FIM - 1`
    fi
    sed -n -e "$INICIO,$FIM""p" $ARQUIVO >> $ARQUIVO.apagadas
    echo " " >> $ARQUIVO.apagadas
    sed -e "$INICIO,$FIM""d" $ARQUIVO >> $ARQUIVO.tmp
    mv -f $ARQUIVO.tmp $ARQUIVO
    i=`expr $i - 1`
    j=`expr $j - 1`
    echo "   << Mensagem com mais de 90 dias  - APAGADA >>"
  fi
  fi
done
l=`expr $l \+ 1`
ARQUIVO=`echo $ARQUIVOS | cut -d " " -f $l`
done
else 
  echo -e "\nEntre com a sintaxe correta do comando:\n./delete_user_date_90.sh <nome_usuario>\n" 
fi
