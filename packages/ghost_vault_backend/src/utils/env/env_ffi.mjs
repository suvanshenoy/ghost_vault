// @ts-check

import * as process from "node:process";

/**
 * @typedef {"BACKEND_PORT" | "BACKEND_SECRET_BASE_KEY"} EnvKeys
 */

/**
 * @param {string} envPath
 * @param {EnvKeys} envKey
 */
export function getEnv(envPath, envKey) {
	process.loadEnvFile(envPath);

	if (envKey === "BACKEND_PORT") {
		return process.env?.BACKEND_PORT;
	}

	if (envKey === "BACKEND_SECRET_BASE_KEY") {
		return process.env?.BACKEND_SECRET_BASE_KEY;
	}
}
