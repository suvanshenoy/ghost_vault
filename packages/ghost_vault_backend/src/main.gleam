import gleam/int
import gleam/javascript/promise
import gleam/result
import logger/logger
import smol
import utils/env/env

pub fn main() {
  let port = env.get_env(".env", "BACKEND_PORT")

  use server <- promise.await(
    smol.new(handler)
    |> smol.after_start(fn(port, _) {
      logger.log(
        "info",
        "server started at " <> "http://localhost:" <> int.to_string(port),
      )
    })
    |> smol.port(result.unwrap(int.parse(port), 8000))
    |> smol.start,
  )

  case server {
    Ok(server) -> {
      use _ <- promise.await(promise.wait(10_000))
      use _ <- promise.await(smol.stop(server))
      logger.log("info", "server stopped")
      promise.resolve(Nil)
    }
    Error(_) -> {
      promise.resolve(Nil)
    }
  }
}

fn handler(_) -> promise.Promise(smol.Response) {
  smol.send_status(200)
}
