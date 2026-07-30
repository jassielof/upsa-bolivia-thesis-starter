#import "/template/upsa-bo/lib.typ": anexos, tfg
#let personal-data = yaml("/data/personal.yaml")

#show: tfg.with(
  contenido: outline(
    target: heading.where(
      level: 2,
      outlined: true,
      supplement: [Capítulo],
    ),
    title: none,
  ),
)

= Dominio
hola

#set heading(offset: 1)

// #include "chapters/intro.typ"
= Requerimientos
== Análisis de Requerimientos
== Casos de Uso
#lorem(20)

#figure(
  table(
    columns: 3,
    [Caso de Uso], [Actor], [Descripción],
    [CU-01], [Usuario], [El usuario inicia sesión en el sistema.],
    [CU-02], [Administrador], [El administrador gestiona los usuarios.],
    table.hline(),
  ),
  caption: [Tabla de Casos de Uso],
)

== Análisis y Diseño
== Análisis de Robustez

= Entrega

== Diagramas de Secuencia

== Diagrama de Clase
#import "@preview/mmdr:0.2.2": mermaid

#figure(
  mermaid(
    "graph TD; A-->B;",
    base-theme: "default",
    theme: (
      background: "#f4f4f4",
      primary_color: "#ff0000",
    ),
    layout: (
      node_spacing: 50,
    ),
  ),
  alt: "Diagrama de grafo",
  caption: [Diagrama de grafo],
)

== Código Fuente
// #import "@preview/codly:1.3.0": codly-init
// #show: codly-init.with()
Ejemplo de código fuente en C:

#figure(
  ```c
  #include <stdio.h>

  int main() {
      printf("Hello, World!\n");
      return 0;
  }
  ```,
  alt: "Hello World en C",
  caption: [Ejemplo de código fuente en C],
)

== Pruebas
#lorem(30)

#figure(
  caption: [Recurrencia de complejidad algorítmica (Teorema Maestro) y entropía de Shannon],
  kind: math.equation,
  $
    T(n) & = a T(n/b) + f(n) \
    H(X) & = - sum_(i=1)^n p(x_i) log_2 p(x_i)
  $,
  alt: "Ecuación de complejidad algorítmica y entropía",
)

= Conclusiones

#bibliography(
  "/data/bib.haya.yaml",
  style: "ieee",
  title: [Bibliografía],
  full: true,
)


#show: anexos
= CV
= Carta de Aprobación
= Presupuesto
