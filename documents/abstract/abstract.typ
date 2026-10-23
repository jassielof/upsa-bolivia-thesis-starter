#import "/template/lib.typ": indicative-abstract

#let my-info = yaml("/data/personal.yaml")

#show: indicative-abstract.with(
  name: my-info.author.name,
  degree: my-info.degree,
  title: my-info.title,
  modality: my-info.modality,
  advisor: my-info.advisor,
)

// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.

#lorem(50)

#lorem(100)

#lorem(40)
