#let my-info = yaml("/data/personal.yaml")

#show heading: set block(spacing: 2em)
#set text(size: 11pt, lang: "es", region: "bo", font: "Inter")
#set page(paper: "a4", margin: 1.5in)
#set par(justify: true)
#show heading: set align(center)

#line(length: 100%)
#set terms(separator: [: ])
/ #upper[Universidad]: Universidad Privada de Santa Cruz de la Sierra
/ #upper[Carrera]: #my-info.degree
/ #upper[Título]: #my-info.title
/ #upper[Modalidad de titulación]: Proyecto de grado
/ #upper[Nombres y apellidos del autor]: #my-info.name
/ #upper[Nombres y apellidos del tutor o prof. guía]: #my-info.advisor
/ #upper[Ciudad]: Santa Cruz de la Sierra
/ #upper[Año del trabajo]: #datetime.today().year()
#line(length: 100%)

#v(1fr)

// Resumen del tema para el formulario de defensa: máximo 250 palabras, una plana, distinto del abstract del informe. Por consigna no menciona capítulos, antecedentes, justificación, objetivos ni conclusiones: solo de qué se trata el trabajo.
= Resumen

El trabajo es una aplicación web para el salón de eventos _"Lucy"_ que reúne en un mismo sistema la operación diaria del negocio y el análisis de los datos que esa operación genera.

La parte operativa administra clientes, espacios, cotizaciones y reservas, y con ellas el evento completo: paquetes y servicios contratados a proveedores externos, pagos recibidos, y la entrega y devolución de los recursos materiales del salón, incluido el registro de las unidades dañadas o perdidas. Todo se guarda en una base de datos relacional normalizada, con acceso diferenciado para el personal y la administración.

Sobre esos mismos datos operan cinco tableros interactivos. Rentabilidad cruza ingresos, costos de proveedores y pérdidas de inventario para obtener el beneficio y el margen de cada evento, y los agrupa por tipo de evento y por temporada; un gráfico de ingresos contra costos ubica cada evento frente a su punto de equilibrio. Uso de recursos compara lo reservado con lo realmente utilizado. Pérdidas valoriza a costo de reposición lo dañado y lo extraviado. Ocupación resume en un mapa de calor los días y las horas de mayor demanda. Estado de recursos muestra la disponibilidad actual del inventario con alertas de existencias críticas. Cada tablero admite filtros por fecha, tipo de evento, temporada y categoría, y exporta sus resultados.

La plataforma está construida con _Django_ y _Plotly_ sobre _SQLite_, se ejecuta en el propio equipo del salón sin depender de servicios externos, y sus cálculos fueron verificados contra una implementación de referencia independiente.

#v(1fr)
