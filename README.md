# WlanAusschaltenFreetz

## Funktionsweise des Scripts ohne Ping:
Einmal gestartet läuft es, bis es gestoppt wird, in einer Endlosschleife. 
Es prüft beim Aufruf ob Lan 1 eingesteckt wurde.
Solange Lan1 eingesteckt ist macht er folgendes:
prüft er ob das WLan aus ist und wenn dies der Fall ist wird das WLan angeschaltet.
Anschließend wird eine Pause von 60 Sekunden
Ist Lan1 nicht eingesteckt prüft er solange Lan1 nicht eingesteckt ist folgendes:
Ist Wlan an? Wenn ja schalte es aus.
Anschließend wird eine Pause von 60 Sekunden

## Funktionsweise des Scripts mit Ping:
Das Wlan wird nur angeschaltet, wenn ein Ping auf eine beliebige Adresse ebenfalls erfolgreich war.

## Installation
Dieses Skript ist für eine Fritz!Box mit installierten freetz (www.freetz.org).
Bei der Variante mit Ping kann man die IP 192.168.222.1 durch die IP/DNS Namen seines Wunsches ersetzen...
Das Script speichert  man auf der Fritzbox z.B. unter auf dem NAS im Ordner FRITZ. 
Anschließend muss das Script über die Rudi-Shell (Freetz-Oberfläche -> System -> Rudi-Shell) oder telnet Ausführbar gemacht werden.
z.B. mit "chmod +x /var/media/ftp/FRITZ/wlanautoping-freetz.sh"
Damit es beim starten der Fritz!Box ausgeführt wird empfehle ich es in die rc.custom ( Freetz-Oberfläche -> Freetz –> rc.custom) reinzuschreiben: 
/var/media/ftp/FRITZ/wlanautoping-freetz.sh

## Support
Das Programm wird ausgeliefert wie es ist.
Ich werde voraussichtlich ab Juli keinerlei updates oder fixes für diese Scripts nachliefern.

## Danksagung
Vielen Dank an @PeterPawn.
https://www.ip-phone-forum.de/threads/wlan-ausschalten-wenn-kein-vpn.299657
