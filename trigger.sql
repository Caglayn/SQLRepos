CREATE OR REPLACE FUNCTION trigger_ziyaretci()
	RETURNS trigger
	LANGUAGE plpgsql
	AS
	$$
		BEGIN
			UPDATE logs SET ziyaret = ziyaret + 1;
			RETURN NEW;
		END;
	$$;


CREATE TRIGGER trigger_sum
	AFTER INSERT
	ON region
	FOR EACH ROW
	EXECUTE PROCEDURE trigger_ziyaretci();
	
