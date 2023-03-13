START TRANSACTION;
INSERT INTO "public"."authors" ("name", "born", "web", "favorite_author_id") VALUES ('A', '2021-03-21 08:23:00.000000'::timestamp, 'http://www.example.com', NULL);
SELECT CURRVAL('authors_id_seq');
COMMIT;
SELECT "tag_followers".* FROM "tag_followers" AS "tag_followers" WHERE "tag_followers"."author_id" IN (3);
SELECT "authors".* FROM "public"."authors" AS "authors" WHERE "authors"."favorite_author_id" IN (3);
SELECT "books".* FROM "books" AS "books" WHERE "books"."author_id" IN (3) ORDER BY "books"."id" DESC;
SELECT "books".* FROM "books" AS "books" WHERE "books"."translator_id" IN (3);
START TRANSACTION;
DELETE FROM "public"."authors" WHERE "id" = 3;
COMMIT;