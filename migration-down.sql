CREATE TYPE "resource_type" AS ENUM (
  'guide',
  'video',
  'exercice',
  'projet'
);

CREATE TABLE "resources" (
  "id" integer,
  "type" resource_type,
  "title" text,
  "description" text,
  "url" text,
  "is_ada" boolean,
  "theme_id" integer,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

CREATE TABLE "skills" (
  "id" integer PRIMARY KEY,
  "name" text
);

CREATE TABLE "resources_skills" (
  "resource_id" integer,
  "skill_id" integer
);

CREATE TABLE "themes" (
  "id" integer,
  "name" text,
  "description" text,
  "created_at" timestamptz,
  "updated_at" timestamptz
);

ALTER TABLE "resources_skills" ADD FOREIGN KEY ("resource_id") REFERENCES "resources" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "skills" ADD FOREIGN KEY ("id") REFERENCES "resources_skills" ("skill_id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "themes" ADD FOREIGN KEY ("id") REFERENCES "resources" ("theme_id") DEFERRABLE INITIALLY IMMEDIATE;
