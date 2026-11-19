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

pdflatex må være installere. Dette fåes gjennom en LaTeX-distribusjon, f.eks TeXLive

opprett et venv f.eks
'''
pyton3 -m venv venv
'''

aktiver det med 
'''
source venv/bin/activate
'''

installer requirements
'''
pip install -r requirements.txt
'''


Kompilere
=========

Etter at nye lovendringsforslag har blitt vedtatt og innlemmet i ``lover.rst``
og ``lover-regi.rst``, må de kompileres og legges ut på nettsiden.
``make all`` kompilerer ``lover.rst`` og ``lover-regi.rst`` til html og pdf.
