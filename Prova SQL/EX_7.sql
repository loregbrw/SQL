CREATE FUNCTION SearchPais (@PALAVRA VARCHAR)
RETURNS TABLE AS
RETURN (
	SELECT *
	FROM PA�S
	WHERE Pa�s LIKE @PALAVRA + '%'
)

SELECT * FROM SearchPais('C')