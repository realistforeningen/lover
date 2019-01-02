========================
Realistforeningens lover
========================


Lovendringer
============

Lovendringsforslag tas imot som pull requests. Hold hele lovendringen
som én commit, og skriv bakgrunnen for forslaget i commit-meldinga
(som `her <https://github.com/realistforeningen/lover/commit/fbab7fe9ebb1ba1144e53ea6ee942e559fceaf1b>`_).

Merk: Husk å oppdatere vedtatt-datoen til datoen for generalforsamlingen.

Installering
============

Se ``requirements.txt``. ``pdflatex`` fås gjennom en LaTeX-distribusjon, f.eks.
TeXLive. 

Avhengig av operativsystem kan ``rst2latex`` og ``rst2html`` ha andre navn.
Eksempler kan være ``rst2html.py`` eller ``rst2latex2``. 
Bruk ``alias rst2html="rst2html.py"`` osv. eller endre ``Makefile``.

Kompilere
=========

Etter at nye lovendringsforslag har blitt vedtatt og innlemmet i ``lover.rst``
og ``lover-regi.rst``, må de kompileres og legges ut på nettsiden.
``make all`` kompilerer ``lover.rst`` og ``lover.rst`` til html og pdf.
