CREATE FUNCTION func_name(search_ varchar)
RETURNS TABLE
{
	id_ integer, name_ varchar
}
LANGUAGE plpgsql
AS
$$
	BEGIN
	RETURN QUERY
	SELECT name, surname from prices where name like search_;
	END;
$$