#import "/template/lib.typ": back-matter, front-matter, main-matter, settings

#show: settings.with(
  typeface: "Reforma",
  author-name: "Jassiel Ovando Franco",
  author-university-id: 2021117600,
  work-title: [El título de esta tesis es «Esperanza»],
  author-email: "a2021117600@estudiantes.upsa.edu.bo",
  supervisor: [Nombre del guía de tesis],
  degree-level: [Licenciatura],
  degree-program: [Ingeniería de Sistemas],
  faculty: [Facultad de Ingeniería],
  modality: [Proyecto de Grado],
  modality-acronym: [PG],
  faculty-acronym: [FAI],
  abstract: lorem(200),
  keywords: ("UPSA", "tesis"),
  date: datetime.today().year(),
  paper-size: "a4",
)

#front-matter(
  executive-summary: lorem(50),
  objective: lorem(30),
  problem: lorem(20),
)

#show: main-matter.with()

// Este ejemplo conserva la organización por partes de la plantilla actual.
// Los capítulos y su profundidad deberán ajustarse al criterio de la carrera.
= Introducción

Este documento combina contenido de demostración en español con texto de relleno para mostrar la composición de un trabajo de grado. El caso ilustrativo es un sistema de seguimiento de solicitudes de préstamo de equipos de laboratorio. No describe una implementación real ni resultados obtenidos en la Universidad.

== Planteamiento del problema

En el escenario ficticio, las solicitudes se registran en archivos separados, lo que dificulta consultar la disponibilidad de equipos y conocer el estado de cada préstamo. El proyecto propone centralizar el registro y mantener una secuencia identificable de solicitud, aprobación, entrega y devolución. Antes de usar este planteamiento en un trabajo real, el estudiante deberá sustituirlo por evidencia de su contexto y delimitar el problema con su asesor.

=== Alcance del ejemplo

La demostración comprende el registro de solicitudes y el seguimiento de sus estados. Se excluyen compras, facturación y mantenimiento físico de equipos. Los nombres de roles y las reglas siguientes son supuestos didácticos, no procedimientos institucionales.

+ El solicitante consulta equipos y registra una solicitud.
+ El responsable revisa disponibilidad y aprueba o rechaza la solicitud.
+ El encargado registra la entrega y la devolución del equipo.

Las tablas y referencias de este ejemplo muestran cómo vincular una necesidad con su comprobación posterior; su contenido debe adaptarse al proyecto de cada estudiante.

== Definiciones

#lorem(500)

=== Justificación

#lorem(50)

==== Justificación académica

#lorem(100)

===== Sobre la Universidad

#lorem(100)

====== Historia de la Universidad
#lorem(100)

======= Misión y Visión de la Universidad
#lorem(100)

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

== Trazabilidad de requisitos <trazabilidad>

La @tabla-requisitos vincula los requisitos del caso ficticio con criterios observables. Los identificadores permiten referirse al mismo requisito durante el análisis, el diseño y las pruebas sin repetir su descripción completa.

#figure(
  table(
    columns: (auto, 1fr, 1fr),
    table.header([Identificador], [Requisito ilustrativo], [Criterio de aceptación]),
    [RF-01], [Registrar una solicitud.], [Con datos válidos se asigna un identificador y el estado pendiente.],
    [RF-02], [Resolver una solicitud.], [Solo el rol responsable puede aprobarla o rechazarla.],
    [RF-03], [Consultar el historial.], [Se muestran los cambios de estado y su fecha para una solicitud.],
    table.hline(),
  ),
  caption: [Matriz ilustrativa de requisitos y criterios de aceptación],
) <tabla-requisitos>

=== Diseño de la solución

Se propone separar la interfaz, las reglas de préstamo y la persistencia de datos. Esta división permite revisar cada responsabilidad y comprobar que una modificación visual no altere las reglas de aprobación. Para un proyecto real, la elección de arquitectura debe justificarse frente a sus restricciones y alternativas.

Cada solicitud contiene un identificador, el equipo, el solicitante y su estado. Las transiciones permitidas son de pendiente a aprobada o rechazada, de aprobada a entregada y de entregada a devuelta. Una solicitud rechazada no permite registrar una entrega. Un diagrama de estados puede complementar esta descripción cuando resulte útil.

== Pruebas

Las pruebas propuestas se derivan de los criterios de la @tabla-requisitos. La tabla siguiente es un plan de comprobación, no un registro de pruebas ejecutadas.

#figure(
  table(
    columns: (auto, 1fr, 1fr),
    table.header([Caso], [Acción], [Resultado esperado]),
    [CP-01],
    [Enviar una solicitud con todos los campos obligatorios.],
    [Se registra una solicitud pendiente con identificador único.],
    [CP-02], [Intentar aprobar con el rol solicitante.], [Se rechaza la operación y se conserva el estado anterior.],
    [CP-03], [Intentar entregar una solicitud rechazada.], [No se registra una entrega.],
    table.hline(),
  ),
  caption: [Plan ilustrativo de pruebas funcionales],
)

=== Presentación de resultados

En una investigación real, esta sección deberá indicar el entorno, la versión evaluada, los casos ejecutados y la evidencia de cada resultado. Una prueba pendiente no debe presentarse como aprobada. Las observaciones de usuarios se distinguirán de los resultados técnicos y se describirá cómo fueron recogidas.

Para mostrar una expresión matemática sencilla, puede definirse la proporción de casos aprobados como:

#math.equation(
  block: true,
  alt: "La proporción p es igual al número de casos aprobados dividido entre el número de casos ejecutados.",
  $p = n_a / n_e$,
)

donde #math.equation(alt: "n subíndice a", $n_a$) es el número de casos aprobados y #math.equation(alt: "n subíndice e", $n_e$) el número de casos ejecutados, siempre que #math.equation(alt: "n subíndice e es mayor que cero", $n_e > 0$). Esta proporción resume únicamente los casos ejecutados y no demuestra por sí sola la calidad completa del sistema.

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

#show: back-matter.with()

#bibliography(
  "/data/bib.haya.yaml",
  style: "ieee",
  full: true,
)

= Anexos

== Curriculum Vitae

#image(
  "/documents/cv/CV.svg",
  alt: "Curriculum Vitae",
  height: 1fr,
)

== Carta de Aprobación

#lorem(100)

== Presupuesto

#lorem(100)

=== Herramientas

#lorem(50)
