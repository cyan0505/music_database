CREATE OR REPLACE FUNCTION checkIfUserExist (nickToCheck varchar(25)) RETURNS boolean AS $$
  DECLARE
  nickFromTable varchar(25);

  BEGIN
  nickFromTable := (SELECT nick FROM users WHERE nick = nickToCheck);
--   RAISE NOTICE 'II:%', nickFromTable;
  IF (nickFromTable=nickToCheck) THEN
    RETURN true;
  ELSE
    RETURN false;
  END IF;

END $$
LANGUAGE PLPGSQL;

