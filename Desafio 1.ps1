
##Criado por: Rafael da Silva Pereira - Analista de Suporte Pleno

##Data: 13/04/2020

## O script abaixo está realizando uma coleta de todos os programas instalados no computador. No caminho: "C:\Users\Rafael\Desktop" é onde será criada uma parta com o nome de "informações do pc" e dentro dessa pasta um arquivo .txt com a lista de todos os programas instalados no computador.
## Esse caminho pode ser alterado conforme a sua necessidade.
## Criei nesse formato para listar os programas do meu computador.


New-Item c:\InformacoesdoPC\ -ItemType directory
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion | Sort-Object -Property DisplayName -Unique | Format-Table -AutoSize > “c:\InformacoesdoPC\programas_instalados.txt”
