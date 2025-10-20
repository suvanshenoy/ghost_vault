import * as process from "node:process";

type EnvKeys = "BACKEND_PORT" | "BACKEND_SECRET_BASE_KEY";

export function getEnv(envPath: string, envKey: EnvKeys): string | undefined {
	process.loadEnvFile(envPath);

	if (envKey === "BACKEND_PORT") {
		return process.env?.BACKEND_PORT;
	}

	if (envKey === "BACKEND_SECRET_BASE_KEY") {
		return process.env?.BACKEND_SECRET_BASE_KEY;
	}
}
