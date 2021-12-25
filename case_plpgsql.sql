SELECT s.student_name, s.final_notes,
CASE
	WHEN s.final_notes = 60
		THEN 'final notu 60'
	WHEN s.final_notes = 70
		THEN 'final notu 70'
	ELSE 'diger notlariniz'
END duration
FROM student s

DO
	$$
		DECLARE
			sayac int = 1;
		BEGIN
			WHILE sayac <=10
			LOOP
				RAISE NOTICE 'Sayac = %', sayac;
				sayac = sayac +1;
			END LOOP;
		END;
	$$;
	
CREATE OR REPLACE PROCEDURE SP_1()
LANGUAGE plpgsql
AS
	$$
		BEGIN
		
		END;
	$$;