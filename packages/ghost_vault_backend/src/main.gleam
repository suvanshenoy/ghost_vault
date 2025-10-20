import gleam/int
import gleam/javascript/promise
import gleam/result
import smol

pub type EnvPath =
  String

pub type EnvKeys =
  String

pub type EnvValue =
  String

@external(javascript, "./utils/env.ts", "getEnv")
fn get_env(env_path: EnvPath, env_key: EnvKeys) -> EnvValue

pub fn main() {
  let port = get_env(".env", "BACKEND_PORT")

  smol.new(handler)
  |> smol.port(result.unwrap(int.parse(port), 8000))
  |> smol.start
}

fn handler(_) -> promise.Promise(smol.Response) {
  smol.send_status(200)
}
