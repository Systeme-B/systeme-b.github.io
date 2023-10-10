---
title: Journal de Décisions
layout: base
---

{% for decision in site.data.decisions %}
## Réunion du {{decision.date}} - *{{decision.title}}*
##### Participants : {{ decision.participants | join: ', ' }}

{{ decision.decisions }}

---
{% endfor %}

###### Fin du journal de décisions de l'association Système B, vous trouverez ici [les statuts](./statuts.md)
