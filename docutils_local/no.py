
"""
Norwegian Bokmål localisation for Docutils.

Provides both Docutils and reStructuredText language mappings.
"""

from docutils.languages import en as docutils_en
from docutils.parsers.rst.languages import en as rst_en


# ------------------------------------------------------------
# Docutils-generated labels
# ------------------------------------------------------------

labels = dict(docutils_en.labels)

labels.update({
    'author': 'Forfatter',
    'authors': 'Forfattere',
    'organization': 'Organisasjon',
    'address': 'Adresse',
    'contact': 'Kontakt',
    'version': 'Versjon',
    'revision': 'Revisjon',
    'status': 'Status',
    'date': 'Dato',
    'copyright': 'Opphavsrett',
    'dedication': 'Tilegnelse',
    'abstract': 'Sammendrag',
    'attention': 'Merk!',
    'caution': 'Forsiktig!',
    'danger': 'Fare!',
    'error': 'Feil',
    'hint': 'Tips',
    'important': 'Viktig',
    'note': 'Merknad',
    'tip': 'Tips',
    'warning': 'Advarsel',
    'contents': 'Innhold',
    'figures': 'Figurer',
    'tables': 'Tabeller',
    'footnotes': 'Fotnoter',
    'citations': 'Referanser',
})


# ------------------------------------------------------------
# Bibliographic field names
# ------------------------------------------------------------

bibliographic_fields = dict(docutils_en.bibliographic_fields)

bibliographic_fields.update({
    'forfatter': 'author',
    'forfattere': 'authors',
    'organisasjon': 'organization',
    'adresse': 'address',
    'kontakt': 'contact',
    'versjon': 'version',
    'revisjon': 'revision',
    'status': 'status',
    'dato': 'date',
    'opphavsrett': 'copyright',
})

author_separators = docutils_en.author_separators


# ------------------------------------------------------------
# reStructuredText directives and interpreted roles
# ------------------------------------------------------------

# Retain standard directive and role names.
# Norwegian aliases can be added here when needed.

directives = dict(rst_en.directives)
roles = dict(rst_en.roles)

