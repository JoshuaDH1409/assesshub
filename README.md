# AssessHub

Plataforma de **evaluación / examen de candidatos** (proyecto de portafolio).

Anteriormente conocido como CheckIT. La UI y la marca visible se presentan como **AssessHub**.

## Qué hace

- **Candidatos**: inicio de sesión, instrucciones de evaluación, preguntas con respuestas de texto o imagen y temporizador.
- **Supervisores**: panel (`Default.aspx`) que lista candidatos y resultados de exámenes desde SQL Server.
- Flujos de autenticación Forms y páginas maestras para login y área principal.

## Stack

- **ASP.NET Web Forms** (.NET Framework 4.7.2)
- **SQL Server** (cadena de conexión `AssessHubDB` en `CheckIT/Web.config`)
- Bootstrap / jQuery (plantilla Web Forms)
- HTML/CSS estático bajo `CheckIT/Candidato/` para prototipos de UI de evaluación

## Cómo abrir en Visual Studio

1. Clona o descarga este repositorio.
2. Abre `CheckIT.sln` en Visual Studio (2019/2022 recomendado) con workload de desarrollo web ASP.NET.
3. Configura SQL Server y edita `CheckIT/Web.config`:
   - Cadena `AssessHubDB` con `YOUR_SERVER`, `YOUR_USER`, `YOUR_PASSWORD` (o seguridad integrada según tu entorno).
   - **No subas credenciales reales** al repositorio.
4. Restaura paquetes NuGet si hace falta.
5. Establece `CheckIT` como proyecto de inicio y ejecuta (IIS Express).
6. Páginas útiles:
   - Supervisor / login: `CheckIT/login.aspx`, `CheckIT/Default.aspx`
   - Prototipos candidato: `CheckIT/Candidato/login.html`, `instrucciones.html`, `evaluacion-txt.html`

## Seguridad

Las credenciales reales de base de datos fueron **eliminadas** del `Web.config` para este portafolio. Si alguna vez se expusieron en el historial de git, **rota la contraseña** del usuario SQL y revisa el historial.

## Estructura breve

```
CheckIT.sln
CheckIT/
  Web.config          # AssessHubDB (placeholders)
  Default.aspx        # Lista de candidatos (supervisor)
  login.aspx          # Login Web Forms
  Site.master         # Layout plantilla AssessHub
  principal.master    # Layout supervisor
  secundaria.master   # Layout login
  Candidato/          # UI HTML de evaluación
  css/styles.css      # Estilos candidato / login
  Content/Site.css    # Estilos layout
```

## Licencia / uso

Código de demostración para portafolio. Adapta y despliega bajo tu propia responsabilidad.
