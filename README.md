# Proyecto 4 — SQL (PostgreSQL)

Colección de consultas SQL desarrollada para el Máster.  
Este cuarto proyecto consiste en completar, validar y entregar una serie de *queries* de lectura sobre una base de datos de ejemplo de PostgreSQL (demo **bookings**).

---

## Objetivo

- Instalar la base de datos de ejemplo (*demo_small*) de PostgreSQL.
- Resolver consultas de lectura sobre tablas del esquema **bookings**.
- Guardar todas las sentencias en un único fichero: `IntroBBDD.sql`.
- Verificar que cada consulta devuelve exactamente lo que pide el enunciado antes de incluirla en la entrega.

---

## Base de datos usada

Se utiliza la base de datos de demo **bookings** (Rusia), por lo que las unidades monetarias están en **rublos**.

- Fuente oficial: demo database (bookings) de Postgres Pro.
- Instalación típica (ejemplo):
  - Descargar `demo_small_YYYYMMDD.sql`
  - Ejecutar: `psql -f demo_small_YYYYMMDD.sql -U postgres`

---

## Organización

- Todas las consultas están reunidas en un solo fichero: `IntroBBDD.sql`.
- Las consultas están ordenadas según el enunciado (1 → 9).
- Se incluyen tanto las queries obligatorias como las opcionales para seguir practicando.
- La intención es que el fichero sea “copiar/pegar y ejecutar”, manteniendo un orden claro y fácil de revisar.

---

## Ejercicios incluidos

Obligatorios:

1. Vuelos (`flights`) e identificador con `status = 'On Time'`.
2. Reservas (`bookings`) con `total_amount > 1.000.000`.
3. Datos completos de modelos de aviones (`aircraft_data` o `aircrafts_data` según versión).
4. Identificadores de vuelo realizados con Boeing 737 (modelo = `733`).
5. Información detallada de tickets comprados por personas llamadas **Irina**.

Opcionales (práctica extra):

6. Ciudades con más de un aeropuerto.
7. Número de vuelos por modelo de avión.
8. Reservas con más de un billete (varios pasajeros).
9. Vuelos con retraso de salida superior a una hora.

---

## Estructura

```text
/
├── 📄 IntroBBDD.sql
└── 📄 README.md
```

---

## Autor

Agustín Linares Carrera — uso educativo.
