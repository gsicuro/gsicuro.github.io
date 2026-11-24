PRESENTAZIONE HTML — MATEMATICA PER CAPIRE IL MONDO
Aprire index.html con Chrome, Firefox, Safari o Edge.

Navigazione: frecce sinistra/destra, clic sui pulsanti, F per schermo intero.
Nelle slide animate: barra spaziatrice per pausa/riprendi; R per ricominciare.
Le animazioni Gray-Scott, Lotka-Volterra e Schelling sono implementate in JavaScript e Canvas; NON richiedono GIF, MP4, Python o accesso internet.

IMMAGINI DA INSERIRE
Cercare nel file index.html l'attributo data-file="nomefile.jpg".
Sostituire il contenuto del div con <img src="immagini/nomefile.jpg" alt="descrizione">.
Mettere le immagini in una cartella immagini/ creata accanto al file index.html.
Per esempio:
<div class="image-placeholder portrait" data-file="Turing.png"><img src="immagini/Turing.png" alt="Alan Turing"></div>

NOTA SULLE SIMULAZIONI
- Le formule del modello Gray-Scott nel .tex e nel notebook allegato differiscono per il termine di perdita degli attivatori. È implementata la versione standard (f+k)A del notebook, con una nota sulla slide.
- Il notebook Turing0.ipynb allegato usa k=0.056, mentre le slide mostrano k=0.090 e k=0.087. Le simulazioni HTML usano i parametri scritti nelle rispettive slide. Non sono ricostruzioni esatte dei video originali (non allegati).
- Il notebook figure.ipynb produce dati di campionamento statistico 3D, non le simulazioni Lotka-Volterra o Schelling. Queste ultime sono state programmate dalle regole e formule disponibili nel file .tex.
- I grafici statici del modello Lotka-Volterra sono sostituiti da grafici Canvas calcolati nel browser; i parametri sono illustrativi, poiché i codici originali dei relativi video/grafici non erano disponibili.
- La slide originale con particles_slow.mp4 è nel blocco LaTeX \iffalse, quindi esclusa dalla versione presentata, come nella compilazione LaTeX.

FORMULE LATEX CON MATHJAX
Le formule sono scritte in sintassi LaTeX e renderizzate in SVG con MathJax 3.
Alla prima apertura serve una connessione internet per scaricare MathJax dal CDN jsDelivr.
Non occorre installare LaTeX o Python; le simulazioni Canvas funzionano senza rete.
Per funzionamento completamente offline, scaricare tex-svg.js e le eventuali dipendenze/font MathJax e adattare il riferimento script nell'HTML, oppure distribuire una copia locale completa di MathJax.
Per modificare le formule, usare \( ... \) nel testo e \[ ... \] nelle formule centrate.
