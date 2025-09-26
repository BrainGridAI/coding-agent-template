CREATE SCHEMA "coding-agent";
--> statement-breakpoint
CREATE TABLE "coding-agent"."tasks" (
	"id" text PRIMARY KEY NOT NULL,
	"prompt" text NOT NULL,
	"repo_url" text,
	"selected_agent" text DEFAULT 'claude',
	"selected_model" text,
	"status" text DEFAULT 'pending' NOT NULL,
	"progress" integer DEFAULT 0,
	"logs" jsonb,
	"error" text,
	"branch_name" text,
	"sandbox_url" text,
	"created_at" timestamp DEFAULT now() NOT NULL,
	"updated_at" timestamp DEFAULT now() NOT NULL,
	"completed_at" timestamp
);
--> statement-breakpoint
DROP TABLE "tasks" CASCADE;