fvwm-skywall
============

# Descrição

O repositório possui arquivos da configuração do FVWM utilizada por mim. Atualmente tenho usado o FVWM apenas no meu *subnotebook* Lenovo ThinkPad X200 e também na minha *workstation* Dell Precision T3600, o que significa que existem particularidades que devem ser observadas para quem desejar utilizar os arquivos.

**Nenhum suporte é provido e não sou responsável por quaisquer problemas advindos do uso de um ou mais arquivos carregados no repositório.**

É recomendável ter os seguintes aplicativos instalados:

- Stalonetray (ícones da bandeja)
- Network manager (controle da rede pelo usuário)
- Osmo (calendário e outras amenidades)
- Pasystray (controle de volume e outras amenidades para o PulseAudio)
- CopyQ (gerenciamento da área de transferência) ou Parcellite (utilizado no passado, mas será preciso modificar as configurações ou consultar revisões anteriores)
- Guake (terminal inspirado numa famosa obra-prima da iD Software)
- ROX-Filer (gerenciador de arquivos; usado também para gerenciar a área de trabalho na forma de *pinboard*)

A configuração também espera o uso dos seguintes aplicativos: ZIM Desktop Wiki, Galculator, Xman, Xmag, Geany, Thunar, XScreenSaver entre outros.

# Instalação

O diretório "fvwmroot.backup" é uma gambiarra para facilitar a carga dos *dotfiles*. O usuário deverá fazer ligações simbólicas dos arquivos do diretório em `~/.fvwm` (ou noutro diretório-raiz válido do FVWM). Similarmente, o conteúdo do repositório pode ser descarregado em `~/.fvwm`. Ou seja, para a execução funcionar, o `~/.fvwm` deve apresentar:

```
fvwm-skywall/
bandeja.sh -> fvwm-skywall/fvwmroot.backup/bandeja.sh*
config -> fvwm-skywall/fvwmroot.backup/config
keyb.sh -> fvwm-skywall/fvwmroot.backup/keyb.sh*
trackpoint.sh -> fvwm-skywall/fvwmroot.backup/trackpoint.sh*
wifi.sh -> fvwm-skywall/fvwmroot.backup/wifi.sh*
window_finder.sh -> fvwm-skywall/fvwmroot.backup/window_finder.sh*
xrandr.sh -> fvwm-skywall/fvwmroot.backup/xrandr.sh*
```
