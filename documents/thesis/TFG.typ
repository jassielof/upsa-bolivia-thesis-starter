#import "/template/upsa-bo/lib.typ": anexos, csl-styles, tfg

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

= Introducción

== Definiciones

#lorem(500)

=== Objetivos

#lorem(20)

==== Objetivo general

#lorem(100)

==== Objetivos específicos

#lorem(50)

+ #lorem(100)
+ #lorem(100)
+ #lorem(100)
+ #lorem(100)
+ #lorem(100)

= Desarrollo

== Análisis de requerimientos

#lorem(20)

=== Requerimientos funcionales

#lorem(300)

=== Requerimientos no funcionales

#lorem(500)

#figure(
  table(
    columns: 3,
    table.header([Caso de Uso], [Actor], [Descripción]),
    [CU-01], [Usuario], [El usuario inicia sesión en el sistema.],
    [CU-02], [Administrador], [El administrador gestiona los usuarios.],
    table.hline(),
  ),
  caption: [Tabla de Casos de Uso],
)

== Pruebas

=== Código Fuente

#lorem(10)

#figure(
  ```go
  package main

  import "fmt"

  func main() {
      fmt.Println("Hello, World!")
  }
  ```,
  alt: "Hello World en Go",
  caption: [Ejemplo de código fuente en Go],
)

=== Verificación y validación

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

== Conclusiones

#lorem(50)

=== #lorem(10)

#lorem(40)

=== #lorem(10)

#lorem(40)

=== #lorem(10)

#lorem(40)

=== #lorem(10)

#lorem(40)

=== #lorem(10)

#lorem(40)

== Recomendaciones

#lorem(500)

#bibliography(
  "/data/bib.haya.yaml",
  style: "ieee",
  full: true,
)


= Anexos

#show: anexos

== CV

#lorem(100)

== Carta de Aprobación

#lorem(100)

== Presupuesto

#lorem(100)

