# physik_script_abi

Content of the German Abitur 2008 in the subject Physics.

*Note*: Since the book is written in German, this file is in German as well.

Physik-Script zu Inhalten für das Physikabitur 2008.
[Hier](physik_script_abi.pdf) die aktuelle Version.



# Lizenz

Das Buch wird unter GPLv3 zur Verfügung gestellt; siehe Datei `LICENSE`.


# Mitarbeit/Contribution

Um Fehler zu korrigieren oder den Inhalt sonst zu verbessern, bitte dieses
Repository klonen, die Fehler korrigieren und einen Pull-Request erstellen.
Die Kommentare sollten dabei auf deutsch verfasst werden.

Bei neuen Bildern bitte die Quelldateien (also bspw. odg für
openoffice-draw-Dokumente) und und ein PDF des Bildes unter `mat` oder
`praktika/mat_praktika` ablegen.

Änderungen an dem Quellcode sollten auch immer eine aktualisierte Version des
finalen PDF enthalten, sodass in diesem Repository immer auch ein fertiges PDF
zu finden ist.  Die PDFs werden nicht als Release sondern als ganz normale
Datei im Repository behandelt.


# PDF erstellen

Das Buch ist in LaTeX gesetzt.
Um aus den hier vorhandenen Quellen ein PDF zu erzeugen, wie folgt vorgehen:


```sh
# erster Durchlauf latex -> erzeugt .idx
pdflatex physik_script_abi.tex
# makeindex: Erstellt .ind aus .idx
makeindex physik_script_abi.idx
# zweiter Durchlauf latex -> verwendet .ind
pdflatex physik_script_abi.tex
# dritter Durchlauf latex; beim zweiten hatte sich Formatierung
# geaendert
pdflatex physik_script_abi.tex
```

Das script `build.sh` führt diese Operationen nacheinander aus.
Um die Dateien zu löschen, die LaTeX erzeugt, die aber später nicht mehr
gebraucht werden, können diese mittels
```sh
./build.sh --clean
```
wieder gelöscht werden.
