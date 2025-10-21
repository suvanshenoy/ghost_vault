import winston from "winston";

const logger = winston.createLogger({
	level: "info",
	format: winston.format.combine(
		winston.format.json({
			space: 2,
		}),
		winston.format.colorize({ all: true }),
	),
	transports: [new winston.transports.Console()],
});

type LogLevel = "info" | "error";

export function log(level: LogLevel, message: string) {
	if (level === "info") {
		logger.info(message);
		console.log();
	}
	if (level === "error") {
		logger.error(message);
		console.log();
	}
}
