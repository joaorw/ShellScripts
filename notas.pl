print"CALCULADORA DE NOTAS :\n";

print"PARA PROSSEGUIR, ESCOLHA UMA DAS SEGUINTES OPÇÕES: \n";

print"CALCULAR MÉDIA DO BOLETIM ---- >1 \n";
print"CALCULAR NOTA MÍNIMA NECESSÁRIA ----> 2 \n";
print"SAIR ----> EXIT \n";
chomp($escolha = <STDIN>);

if ($escolha == '1')
{

print"CALCULAR MÉDIA DO BOLETIM: \n";

print"MÉDIA ANUAL ----> 1 \n";
print"MÉDIA BIMESTRAL ----> 2 \n";
print"MÉDIA SEMESTRAL ----> 3 \n";
chomp($media = <STDIN>);

if ($media == '1')
{

print"MÉDIA ANUAL: \n";

print"4 BIMESTRES POR ANO ----> 1 \n";
print"2 SEMESTRES POR ANO ----> 2 \n";
chomp($ano = <STDIN>);

if ($ano == '1')
{

print"4 BIMESTRES POR ANO: \n";

print"DIGITE SUA NOTA NO 1º BIMESTRE: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NO 2º BIMESTRE: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NO 3º BIMESTRE: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NO 4º BIMESTRE: \n";
chomp($n4 = <STDIN>);

$resp=($n1+$n2+$n3+$n4)/4;

print"SUA MÉDIA ANUAL É:" .$resp;

}

if ($ano == '2')
{

print"2 SEMESTRES POR ANO: \n";

print"DIGITE SUA NOTA NO 1º SEMESTRE: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NO 2º SEMESTRE: \n";
chomp($n2 = <STDIN>);

$resp=($n1+$n2)/2;

print"SUA MÉDIA ANUAL É:" .$resp;

}
}
if ($media == '2')
{

print"MÉDIA BIMESTRAL: \n";

print"DIGITE O NÚMERO DE PROVAS POR BIMESTRE: \n";
chomp($bim = <STDIN>);

if ($bim == '2')
{

print"2 PROVAS POR BIMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

$resp=($n1+$n2)/2;


print"SUA MÉDIA É:" .$resp;

}

if ($bim == '3')
{

print"3 PROVAS POR BIMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

$resp=($n1+$n2+$n3)/3;

print"SUA MÉDIA É:" .$resp;

}

if ($bim == '4')
{

print"4 PROVAS POR BIMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

$resp=($n1+$n2+$n3+$n4)/4;

print"SUA MÉDIA É:" .$resp;

}
}

if ($media == '3')
{

print"MÉDIA SEMESTRAL: \n";

print"DIGITE O NÚMERO DE PROVAS POR SEMESTRE: \n";
chomp($sem = <STDIN>);

if ($sem == '2')
{

print"2 PROVAS POR SEMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

$resp=($n1+$n2)/2;

print"SUA MÉDIA É:" .$resp;

}

if ($sem == '3')
{

print"3 PROVAS POR SEMESTRE: \n";

print"DIGITE SUA NTOA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

$resp=($n1+$n2+$n3)/3;

print"SUA MÉDIA É:" .$resp;

}

if ($sem == '4')

{

print"4 PROVAS POR SEMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

$resp=($n1+$n2+$n3+$n4)/4;

print"SUA MÉDIA É:" .$resp;

}
}

}

if ($escolha == '2')
{

print"CALCULAR NOTA MÍNIMA NECESSÁRIA: \n";

print"NOTA NECESSÁRIA ANUAL ---- > 1 \n";
print"NOTA NECESSÁRIA BIMESTRAL ---->  2 \n";
print"NOTA NECESSÁRIA SEMESTRAL ----> 3 \n";
chomp($nota = <STDIN>);

if ($nota == '1')
{

print"NOTA NECESSÁRIA ANUAL: \n";

print"4 BIMESTRES ANUAIS ----> 1 \n";
print"2 SEMESTRES ANUAIS ----> 2 \n";
chomp($bim = <STDIN>);

if ($bim == '1')
{

print"4 BIMESTRES ANUAIS: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NO 1 º BIMESTRE: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NO 2º BIMESTRE: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NO 3º BIMESTRE: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NO 4º BIMESTRE: \n";
chomp($n4 = <STDIN>);

$resp=$media-($n1+$n2+$n3+$n4);

print"FALTA:" .$resp;
print"SE SEU RESULTADO FOR < QUE 0, VOCÂ NÃO PRECISA DE PONTOS \n";

}

if ($bim == '2')
{

print"2 SEMESTRES ANUAIS: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA :\n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NO 1º SEMESTRE: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NO 2º SEMESTRE: \n";
chomp($n2 = <STDIN>);

$resp=$media-($n1+$n2);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

}

if ($nota == '2')
{

print"NOTA NECESSÁRIA BIMESTRAL: \n";

print"DIGITE O NÚMERO DE PROVAS POR BIMESTRE: \n";
chomp($provas = <STDIN>);

if ($provas == '2')
{

print"2 PROVAS POR BIMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

$resp=$media-($n1+$n2);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

if ($provas == '3')
{

print"3 PROVAS POR BIMESTRE: \n";

print"DIGITE A MEDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

$resp=$media-($n1+$n2+$n3);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

if ($provas == '4')
{

print"4 PROVAS POR BIMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

$resp=$media-($n1+$n2+$n3+$n4);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECIA DE PONTOS \n";

}

}

if ($nota == '3')
{

print"NOTA NECESSÁRIA SEMESTRAL: \n";

print"DIGITE O NÚMERO DE PROVAS POR SEMESTRE: \n";
chomp($sem = <STDIN>);

if ($sem == '2')
{

print"2 PROVAS POR SEMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

$resp=$media-($n1+$n2);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

if ($sem == '3')
{

print"3 PROVAS POR SEMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chcmp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

$resp=$media-($n1+$n2+$n3);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS: \n";

}

if ($sem == '4')
{

print"4 PROVAS POR SEMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

$resp=$media-($n1+$n2+$n3+$n4);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

if ($sem == '5')
{

print"5 PROVAS POR SEMESTRE: \n";

print"DIGITE A MÉDIA DE SUA ESCOLA: \n";
chomp($media = <STDIN>);

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

print"DIGITE SUA NOTA NA 5º PROVA: \n";
chomp($n5 = <STDIN>);

$resp=$media-($n1+$n2+$n3+$n4+$n5);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QUE 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}

if ($sem == '6')
{

print"6 PROVAS POR SEMESTRE: \n";

print"DIGITE SUA NOTA NA 1º PROVA: \n";
chomp($n1 = <STDIN>);

print"DIGITE SUA NOTA NA 2º PROVA: \n";
chomp($n2 = <STDIN>);

print"DIGITE SUA NOTA NA 3º PROVA: \n";
chomp($n3 = <STDIN>);

print"DIGITE SUA NOTA NA 4º PROVA: \n";
chomp($n4 = <STDIN>);

print"DIGITE SUA NOTA NA 5º PROVA: \n";
chomp($n5 = <STDIN>);

print"DIGITE SUA NOTA NA 6º PROVA: \n";
chomp($n6 = <STDIN>);

$resp=$media-($n1+$n2+$n3+$n4+$n5+$n6);

print"FALTAM:" .$resp;
print"SE SUA RESPOSTA FOR < QEU 0, VOCÊ NÃO PRECISA DE PONTOS \n";

}
}

}

if ($escolha == 'exit')
{

print"OBRIGADO POR USAR MEU PROGRAMA!!! \n";

exit()

}

