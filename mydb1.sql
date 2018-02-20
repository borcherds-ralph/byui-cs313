/*
Drop the tables in order for the Foreing Keys to not be an issue
*/

DROP TABLE IF EXISTS "public"."notes";
DROP TABLE IF EXISTS "public"."talks";
DROP TABLE IF EXISTS "public"."sessions";
DROP TABLE IF EXISTS "public"."speakers";
DROP TABLE IF EXISTS "public"."users";

/*
DROP SEQUENCE which is the auto increment number
CREATE SEQUENCE for the auto increment number
*/
DROP SEQUENCE IF EXISTS "public"."user_id_seq";
CREATE SEQUENCE "public"."user_id_seq";

/*
Create Table for the users table in the public schema
*/
CREATE TABLE "public"."users" ( 
	"user_id" SERIAL NOT NULL PRIMARY KEY, 	
	"username" character varying(60) NOT NULL, 
	"frist_name" character varying(40) NOT NULL, 
	"last_name" character varying(40) NOT NULL, 
	"password" character varying(40) NOT NULL
) WITH (oids = false);

/*
DROP SEQUENCE which is the auto increment number
CREATE SEQUENCE for the auto increment number
*/
DROP SEQUENCE IF EXISTS "public"."speakers_id_seq";
CREATE SEQUENCE "public"."speakers_id_seq";

/*
Create Table for the speakers table in the public schema
*/
CREATE TABLE "public"."speakers" (
	"speaker_id" SERIAL NOT NULL PRIMARY KEY,
	"speaker_name" character varying(60) NOT NULL,
	"speaker_title" character varying(100) NOT NULL
) WITH (oids = false);





/*
DROP SEQUENCE which is the auto increment number
CREATE SEQUENCE for the auto increment number
*/
DROP SEQUENCE IF EXISTS "public"."sessions_session_id_seq";
CREATE SEQUENCE "public"."sessions_session_id_seq";

/*
Create Table for the conference sessions table in the public schema
*/
CREATE TABLE "public"."sessions" (
	"session_id" SERIAL NOT NULL PRIMARY KEY,
	"session_name" character varying(100) NOT NULL,
	"session_year" integer NOT NULL
) WITH (oids = false);






/*
DROP SEQUENCE which is the auto increment number
CREATE SEQUENCE for the auto increment number
*/
DROP SEQUENCE IF EXISTS "public"."talk_id_seq";
CREATE SEQUENCE "public"."talk_id_seq";

/*
Create Table for the talks table in the public schema
*/
CREATE TABLE "public"."talks" (
	"talk_id" SERIAL NOT NULL PRIMARY KEY,
	"talk_name" character varying(100) NOT NULL,
	"speaker_id" integer NOT NULL REFERENCES speakers(speaker_id),
	"session_id" integer NOT NULL REFERENCES sessions(session_id)
) WITH (oids = false);






/*
DROP SEQUENCE which is the auto increment number
CREATE SEQUENCE for the auto increment number
*/
DROP SEQUENCE  IF EXISTS "public"."notes_notes_id_seq";
CREATE SEQUENCE "public"."notes_notes_id_seq";

/*
Create Table for the notes table in the public schema
This table has foreign keys to the talks, users, and sessions tables
*/
CREATE TABLE "public"."notes" (
	"note_id" SERIAL NOT NULL PRIMARY KEY,
	"note" text NOT NULL,
	"talk_id" integer NOT NULL REFERENCES talks(talk_id),
	"user_id" integer NOT NULL REFERENCES users(user_id),
	"session_id" integer NOT NULL REFERENCES sessions(session_id)
) WITH (oids = false);



/*
Insert Data into all the tables to do the initial seeding
*/
INSERT INTO public.users(
	username, frist_name, last_name, password)
	VALUES ('ralphb', 'Ralph', 'Borcherds', '12345678'),
('stacyb', 'Stacy', 'Borcherds', '12345678');


INSERT INTO public.speakers(
	speaker_name, speaker_title)
	VALUES ('Dieter F. Uchtdorf', 'Second Counselor in the First Presidency'),
('Dallin H. Oaks', 'Of the Quorum of the Twelve Apostles'),
('Gary E. Stevenson', 'Of the Quorum of the Twelve Apostles') ;



INSERT INTO public.sessions(
	session_name, session_year)
	VALUES ('October Saturday Morning', '2017'),
	('October Saturday Afternoon', '2017'),
	('October Sunday Morning', '2017'),
	('October Sunday Afternoon', '2017');

INSERT INTO "public"."talks" (
	talk_name, session_id, speaker_id)
	VALUES ('A Yearning from Home', '1', '1'),
	('The Plan and the Proclamation', '1', '2'),
	('Spiritual Exlipse', '2', '3');

INSERT INTO public.notes(
	note, talk_id, user_id, session_id)
	VALUES ('Turn your soul toward the light. Begin your own wonderful journey home. As you do so, your life will be better, happier, and more purposeful.', '1', '1', '1'),
('The family proclamation is the Lord’s reemphasis of the gospel truths we need to sustain us through current challenges to the family.', '2','1','1'),
('Don’t let life’s distractions eclipse heaven’s light.', '3', '1','2');


/*  JOIN to link talbes together */
SELECT us.username, nt.note, ss.session_name, tk.talk_name, sp.speaker_name 
FROM "public"."users" AS us
RIGHT OUTER JOIN "public"."notes" AS nt ON us.user_id = nt.user_id
RIGHT OUTER JOIN "public"."talks" AS tk ON tk.talk_id = nt.talk_id
RIGHT OUTER JOIN "public"."sessions" AS ss ON ss.session_id = tk.session_id
RIGHT OUTER JOIN "public"."speakers" AS sp ON sp.speaker_id = tk.speaker_id ;

