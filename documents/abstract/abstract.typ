#import "/template/lib.typ": indicative-abstract

#import "@preview/citegeist:0.3.1": load-bibliography
#let bib = load-bibliography(read("/CITATION.bib"))
#let bib-fields = bib.ovando2026.fields

#show: indicative-abstract.with(
  name: bib-fields.author,
  degree: bib-fields.degree,
  title: bib-fields.title,
  modality: bib-fields.type,
  advisor: bib-fields.advisor,
  city: bib-fields.location,
  university: bib-fields.institution,
  date: bib-fields.date,
)

// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.
#lorem(200)
