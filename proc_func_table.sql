CREATE TABLE lesson(
	id serial PRIMARY KEY,
	_name VARCHAR(150) NOT NULL,
	_type VARCHAR(150),
	_number INTEGER CHECK(_number >=0),
	_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insert_name_to_lesson(_value VARCHAR(150))
LANGUAGE plpgsql
AS
	$$
		BEGIN
		INSERT INTO lesson(_name) VALUES(_value);
		COMMIT;
		END;
	$$;
	
----------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE delete_last_index_from_lesson()
LANGUAGE plpgsql
AS
	$$
		BEGIN
		DELETE FROM lesson WHERE id=(SELECT MAX(id) from lesson);
		COMMIT;
		END;
	$$;

---------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE update_last_name_from_lesson(_value VARCHAR(150))
LANGUAGE plpgsql
AS
	$$
		BEGIN
		UPDATE lesson SET _name = _value WHERE id = (SELECT MAX(id) from lesson);
		COMMIT;
		END;
	$$;

-----------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_last_three_char_of_names()
RETURNS TABLE( isimler varchar )
LANGUAGE plpgsql
AS
	$$
		BEGIN
		RETURN QUERY
			SELECT RIGHT(_name, 3)::varchar FROM lesson;
		END;
	$$;

---------------------------------------------------------------------------------------------------

CALL insert_name_to_lesson('Mehmet')

CALL delete_last_index_from_lesson()

CALL update_last_name_from_lesson('Ahmet')

SELECT get_last_three_char_of_names() isimler

SELECT * FROM lesson





