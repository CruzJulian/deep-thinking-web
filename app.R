
# Librerías ---------------------------------------------------------------


library("shiny")
library("bslib")
library("fontawesome")
library("shiny.router")



# Funciones ---------------------------------------------------------------


# Función para construir páginas dinámicamente ----------------------------

fun_ui <- function(side_menu, main_content, menu_movil = menu_mov){
 
  fluidPage(
      theme = bs_theme(5, "darkly"),
      lang = "es",
      title = "Deep Thiking",
      class = "p-0 m-0",
      menu_movil,
      div(
        class = "row m-0",
        side_menu,
        div(
          class = "p-0 col-12 col-sm-10",
          main_content
        )
      )
    )
   
}


# Contenidos --------------------------------------------------------------

cntnt <- list(
  eq = list(
    titulo = "Equipo",
    texto = "Somos una startup ágil. Nuestro equipo en crecimiento es altamente calificado y competitivo, lo que nos permite movernos mas rápido para satisfacer las necesidades de tu organización.",
    ang = list(
      nom = "Ángela",
      desc = "Más de diez años de experiencia en procesos administrativos que se reflejan en visión y estrategia."
    ),
    jul = list(
      nom = "Julián",
      desc = "Asesoría técnica soportada por más de ocho años de trayectoria en tecnolgías de análisis de datos."
    ),
    liz = list(
      nom = "Elizabeth",
      desc = "Apoyo administrativo con sólidas beses en gestión y optimización de procesos."
    )
  )
)



# Contenidos móviles ------------------------------------------------------


div(
  class = "row d-block d-sm-none m-0",
  style="background-image: url('0000.jpg'); background-position: left top;",
  img(src = "003.png", style="max-width: 150px"),
) -> cover


div(
  class = "row d-block d-sm-none m-0",
  style="background-image: url('0000.jpg'); background-position: left top;",
  div(
    clas = "row",
    img(src = "003.png", style="max-width: 150px"),
    a(fa("home", fill = "white"), href = route_link("/"), class = "btn p-2 btn-lg"),
    a(fa("users", fill = "white"), href = route_link("equipo"), class = "btn p-2 btn-lg"),
    a(fa("computer", fill = "white"), href = route_link("productos"), class = "btn p-2 btn-lg"),
    a(fa("envelope", fill = "white"), href = route_link("comunicate"), class = "btn p-2 btn-lg"),
  )
) -> menu_mov


# Contenidos pc -----------------------------------------------------------

div(
  class = "col-sm-2 bg-image p-0 d-none d-sm-block",
  div(
    style="background-image: url('0000.jpg'); height: 100vh; position:fixed; width:inherit;",
    img(src = "03.png", class="img-fluid"),
    div(
      class = "mt-5",
      a("Inicio", href = route_link("/"), class = "btn btn-lg d-block"),
      a("Equipo", href = route_link("equipo"), class = "btn btn-lg d-block"),
      a("Clientes", href = route_link("clientes"), class = "btn btn-lg d-block"),
      a("Productos", href = route_link("productos"), class = "btn btn-lg d-block"),
      a("Comunícate con nosotros", href = route_link("comunicate"), class = "btn btn-lg d-block"),
    )
  )
) -> home_menu


div(
  id = "inicio",
  class = "row m-0 d-flex flex-column-reverse align-items-end",
  style="background-image: url(001.jpg); background-position: left top; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
  div(
    h1(
      class = "row m-0 d-none d-lg-block",
      style = "height: 60vh;"
    ),
    h3("Conoce Deep Thinking.", style="text-align: right;"),
    h1("El apoyo que las empresas necesitan para tomar decisiones inteligentes.", style="text-align: right;"),
    class = "p-5 col-sm-7"
  ),
) -> inicio

div(
  style="background-image: url(002.jpg); background-position: center center; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
  id="equipo",
  class = "row m-0",
  h1(class = "p-5 text-muted", cntnt$eq$titulo),
  div(
    class = "row d-flex flex-row justify-content-center m-0 p-0 text-muted",
    div(
      class = "card mx-auto p-0 rounded-0 border-0 bg-white", style="width: 25rem;",
      # div(class="card-header", "Nuestra CFO"),
      img(class = "card-img-top p-3", src = "009.png"),
      div(
        class = "card-body",
        h5(class = "card-title", cntnt$eq$ang$nom),
        p(class = "card_text", cntnt$eq$ang$desc),
        # a(href = "#", class = "btn btn-success", "ver más")
      )
    ),
    div(
      class = "card mx-auto p-0 rounded-0 border-0 bg-white", style="width: 25rem;",
      # div(class="card-header", "Nuestro CEO"),
      img(class = "card-img-top p-3", src = "007.png"),
      div(
        class = "card-body",
        h5(class = "card-title", cntnt$eq$jul$nom),
        p(class = "card_text", cntnt$eq$jul$desc),
        # a(href = "#", class = "btn btn-success", "ver más")
      )
    ),
    div(
      class = "card mx-auto p-0 rounded-0 border-0 bg-white", style="width: 25rem;",
      # div(class="card-header", "Nuestro CEO"),
      img(class = "card-img-top p-3", src = "008.png"),
      div(
        class = "card-body",
        h5(class = "card-title", cntnt$eq$liz$nom),
        p(class = "card_text", cntnt$eq$liz$desc),
        # a(href = "#", class = "btn btn-success", "ver más")
      )
    )
  ),
  h3(class = "text-center text-muted p-5", cntnt$eq$texto),
  # style="height: 90vh;",
) -> equipo

div(
  id="productos",
  class = "row m-0 bg-danger",
  div(
    style="background-image: url(004.jpg); background-position: center center; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
    class = "col-xxl-8 col-md-6 m-0 p-0",
    h1("Productos", class = "p-5")
  ),
  div(
    class = "col-xxl-4 col-md-6 m-0 p-0 ",
    # style="background-image: url(004.jpg); background-position: center bottom; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
    div(
      style="background-color: #131426;",
      class = "card m-0 rounded-0 border-0",
      # div(class="card-header", "Prosperico"),
      # img(class = "rounded-0 card-img", src = "019.jpg"),
      div(
        # class = "card-img-overlay",
        class = "card-body",
        h3(class = "card-title text-center", "Inteligencia de negocios"),
        h4(class = "card_text text-center", "Orientamos la transformación de la información de tu organización en conocimiento y en ventajas competitivas."),
        # a(href = "#", class = "btn btn-warning", "ver más")
      )
    ),
    div(
      style="background-color: #131426;",
      class = "card m-0 rounded-0 border-0",
      # img(class = "rounded-0 card-img", src = "018.jpg"),
      div(
        class = "card-body",
        h3(class = "card-title text-center", "Inteligencia de mercados"),
        h4(class = "card_text text-center", "Creamos estrategias de penetración y profundización por medio utilizando activos de información que ya posees."),
        # a(href = "#", class = "btn btn-warning", "ver más")
      )
    ),
    div(
      style="background-color: #131426;",
      class = "card m-0 rounded-0 border-0",
      # img(class = "rounded-0 card-img", src = "017.jpg"),
      div(
        class = "card-body",
        h3(class = "card-title text-center", "Inteligencia artificial"),
        h4(class = "card_text text-center", "Automatizamos procesos que hasta hoy requerían intervención humana mejorando la eficiencia, velocidad y consistencia del servicio."),
        # a(href = "#", class = "btn btn-warning", "ver más")
      )
    )
  )
) -> productos

div(
  id="clientes",
  class = "row m-0 bg-danger",
  style="background-image: url(006.jpg); background-position: center bottom; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
  div(
    class = "row d-flex flex-row justify-content-center m-0 p-0",
    h1("Nuestros clientes", class = "p-5"),
    img(
      class = "card m-5 rounded-0 border-0 p-3 bg-white", 
      style="width: 20rem;",
      src = "final_aeroac.png"
    ),
    img(
      class = "card m-5 rounded-0 border-0 p-3 bg-white", 
      style="width: 20rem;",
      src = "final_century.png"
    ),
    img(
      class = "card m-5 rounded-0 border-0 p-3 bg-white", 
      style="width: 20rem;",
      src = "final_disenio-publico.png"
    ),
    img(
      class = "card m-5 rounded-0 border-0 p-3 bg-white", 
      style="width: 20rem;",
      src = "final_newsapiens.png"
    )
  )
) -> clientes



div(
  id="comunicate",
  class = "row  m-0 bg-success pb-2",
  style="background-image: url(05.jpg); background-position: center center; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646; min-height: 100vh;",
  h1("Comunícate con nosotros", class = "p-5 text-muted"),
  tags$iframe(
    src = "https://docs.google.com/forms/d/e/1FAIpQLSdXbCCaAcJs_GSppdQ6c5dv9uQbJJ57lrCmgANueXtoCFJHzQ/viewform?embedded=true",
    width="640", height="1000", frameborder="0", marginheight="0", marginwidth="0", "Cargando…"
  )
) -> comunicate


div(
  class = "col-sm-2 bg-image p-0 d-none d-sm-block",
  div(
    style="background-image: url('0000.jpg'); height: 100vh; position:fixed; width:inherit;",
    img(src = "03.png", class="img-fluid")
  )
) -> landing_menu

div(
  id="landing",
  class = "row m-0",
  style="background-image: url(002.jpg); background-position: center bottom; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646; ; min-height: 100vh",
  div(
    class = "col-lg-6 m-0 p-0",
    h1("¿De qué se trata?", class = "p-5 text-muted"),
    div(
      class="d-flex flex-row justify-content-center",
      tags$iframe(
        width="560", height="315", 
        src="https://www.youtube.com/embed/rc0RbuMF-Ac?controls=0", frameborder="0", 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
      )
    )
  ),
  div(
    class = "col-lg-6 m-0 p-0 ",
    # h1("Obtén una asesoría gratuita", class = "p-5 text-muted"),
    div(
      class="calendly-inline-widget",
      "data-url"="https://calendly.com/cruz-julian-mauricio?hide_landing_page_details=1&hide_gdpr_banner=1&primary_color=15bf81", 
      style= "min-width:480px;height:95vh;"
    ),
    tags$script(type="text/javascript", src="https://assets.calendly.com/assets/external/widget.js")
  )
) -> landing_content



router <- make_router(
  route("/", fun_ui(home_menu, list(inicio, clientes,comunicate))),
  route("equipo", fun_ui(home_menu, list(equipo, clientes,comunicate))),
  route("productos", fun_ui(home_menu, list(productos, clientes,comunicate))),
  route("clientes", fun_ui(home_menu, list(clientes,comunicate))),
  route("comunicate", fun_ui(home_menu, comunicate)),
  route("landing", fun_ui(landing_menu, landing_content, menu_movil = cover))
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  router$server(input, output, session)
}

# Run the application 
shinyApp(ui = router$ui, server = server)



