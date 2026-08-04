#import "../../template/upsa-bo/lib.typ": all-outlines, settings, title-page2

#settings(
  fonts: (
    body: "Source Serif 4",
    title: "Source Sans 3",
  ),
  paragraph: (
    spacing: 1.5em,
    leading: 1.25em,
  ),
  graduation-work-info: (
    is-plan: true,
  ),
)

#title-page2()

#all-outlines

#set heading(offset: 2)
= Definición del problema
= Objetivos
= Metodología
= Alcance
= Contenido
= Cronograma
= Conclusiones

#bibliography("/data/bib.haya.yaml", title: [Fuentes de información])
