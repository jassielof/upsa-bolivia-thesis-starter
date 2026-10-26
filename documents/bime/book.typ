#import "/template/lib.typ": bime-abstract, front-cover, settings, spine

// #import "@preview/citegeist:0.3.1": load-bibliography
// #let bib = load-bibliography(read("/CITATION.bib"))
// #let bib-fields = bib.ovando2026.fields
#document(
  "thesis.pdf",
  include "/documents/thesis/TFG.typ",
)

// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.
#document("abstract.pdf", bime-abstract())

#document("front-cover.pdf")[
  #front-cover
]

#document("spine-cover.pdf")[
  #spine.cover(
    // volumes: 2
  )
]


// #context {
//   asset("thesis.bib", bytes("@thesis{ovando2026, title = {" + state("author-info").get().name + "}}"))
// }
