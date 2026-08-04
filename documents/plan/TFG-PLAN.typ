#import "../../template/upsa-bo/lib.typ": all-outlines, back-matter, front-matter, main-matter, settings, title-page

#show: settings.with(
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

#front-matter(
  abstract-content: outline(
    target: heading.where(
      level: 3,
      outlined: true,
      supplement: [Sección],
    ),
    indent: 0em,
    title: [Contenido],
  )
)

// #title-page()

// #all-outlines

#show: main-matter.with()

#set heading(offset: 2)
= Definición del problema
= Objetivos
= Metodología
= Alcance
= Contenido
= Cronograma
= Conclusiones

#show: back-matter.with()

#bibliography("/data/bib.haya.yaml", title: [Fuentes de información], full: true)
