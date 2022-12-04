#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library("shiny")
library("bslib")
library("fontawesome")


# Define UI for application that draws a histogram
ui <- fluidPage(
  theme = bs_theme(5, "darkly"),
  lang = "es",
  title = "Deep Thiking",
  class = "p-0 m-0",
  div(class = "row m-0",
      div(
      class = "col-sm-3 bg-image p-0 d-none d-sm-block",
      div(
      style="background-image: url('0000.jpg'); height: 100vh; position:fixed; width:inherit;",
      img(src = "03.png", class="img-fluid"),
      div(
        class = "mt-5",
        a("Inicio", href = "#inicio", class = "btn btn-lg d-block"),
        a("Equipo", href = "#equipo", class = "btn btn-lg d-block"),
        a("Productos", href = "#productos", class = "btn btn-lg d-block"),
        a("Comunícate con nosotros", href = "#comunicate", class = "btn btn-lg d-block"),
      )
      ),
    ),
    div(
      class = "p-0 col-12 col-sm-9",
      div(
        class = "row d-block d-sm-none m-0",
        style="background-image: url('0000.jpg'); height: 90vh;",
        img(src = "03.png", class="img-fluid"),
      ),
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
      ),
      div(
        style="background-image: url(002.jpg); background-position: center center; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
        id="equipo",
        class = "row m-0",
        h1("Equipo", class = "p-5 text-muted"),
        div(
          class = "row d-flex flex-row justify-content-center m-0 p-0",
          div(
            class = "card m-3 p-0 b-0", style="width: 25rem;",
            div(class="card-header", "Prosperico"),
            img(class = "card-img-top p-3", src = "009.jpeg"),
            div(
              class = "card-body",
              h5(class = "card-title", "Ángela"),
              p(class = "card_text", "Admin"),
              a(href = "#", class = "btn btn-success", "ver más")
            )
          ),
          div(
            class = "card m-3 p-0 b-0", style="width: 25rem;",
            div(class="card-header", "Prosperico"),
            img(class = "card-img-top p-3", src = "007.jpeg"),
            div(
              class = "card-body",
              h5(class = "card-title", "Julián"),
              p(class = "card_text", "Data"),
              a(href = "#", class = "btn btn-success", "ver más")
            )
          )
        ),
        h3(class = "text-center text-muted p-5", "Somos una startup ágil. Nuestro equipo es pequeño, pero se mueve muy rápido para satisfacer todas las necesidades de las empresas."),
        # style="height: 90vh;",
      ),
      div(
        id="productos",
        class = "row m-0 bg-danger",
        div(
          style="background-image: url(004.jpg); background-position: center bottom; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
          class = "col-lg-6 m-0 p-0",
          h1("Productos", class = "p-5 text-")
        ),
        div(
          class = "col-lg-6 m-0 p-0 ",
          div(
            class = "card m-0 rounded-0 border-0",
            # div(class="card-header", "Prosperico"),
            img(class = "rounded-0 card-img", src = "019.jpg"),
            div(
              class = "card-img-overlay",
              h2(class = "card-title text-center", "Inteligencia de negocios"),
              h4(class = "card_text text-center", "Apoyamos todos los esfuerzos de una organización para transformar sus datos en ventajas competitivas."),
              # a(href = "#", class = "btn btn-warning", "ver más")
            )
          ),
          div(
            class = "card m-0 rounded-0 border-0",
            img(class = "rounded-0 card-img", src = "018.jpg"),
            div(
              class = "card-img-overlay",
              h2(class = "card-title text-center", "Inteligencia de mercados"),
              h4(class = "card_text text-center", "Creamos estrategias de expansión, conversión y fidelización basadas en datos."),
              # a(href = "#", class = "btn btn-warning", "ver más")
            )
          ),
          div(
            class = "card m-0 rounded-0 border-0",
            img(class = "rounded-0 card-img", src = "017.jpg"),
            div(
              class = "card-img-overlay",
              h2(class = "card-title text-center", "Inteligencia artificial"),
              h4(class = "card_text text-center", "Automatizamos procesos que hasta hoy requerían intervención humana."),
              # a(href = "#", class = "btn btn-warning", "ver más")
            )
          )
        )
      ),
      div(
        id="comunicate",
        class = "row  m-0 bg-success pb-2",
        style="background-image: url(05.jpg); background-position: center center; background-repeat: no-repeat; background-attachment: relative; background-size: cover; background-color:#464646;",
        h1("Comunícate con nosotros", class = "p-5 text-muted"),
        tags$iframe(
          src = "https://docs.google.com/forms/d/e/1FAIpQLSdXbCCaAcJs_GSppdQ6c5dv9uQbJJ57lrCmgANueXtoCFJHzQ/viewform?embedded=true",
          width="640", height="700", frameborder="0", marginheight="0", marginwidth="0", "Cargando…"
        ),
      )
    )
  ),
  div(
    class = "container flex d-block d-sm-none position-fixed bottom-0 text-center p-0",
    style="background-image: url('0000.jpg'); height: 10vh;",
    div(
      clas = "row",
      a(fa("home", fill = "white"), href = "#inicio", class = "btn p-3 btn-lg"),
      a(fa("users", fill = "white"), href = "#equipo", class = "btn p-3 btn-lg"),
      a(fa("computer", fill = "white"), href = "#productos", class = "btn p-3 btn-lg"),
      a(fa("envelope", fill = "white"), href = "#comunicate", class = "btn p-3 btn-lg"),
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)



