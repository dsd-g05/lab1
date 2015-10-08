-- Felix Dube (260533620), Auguste Lalande (260577748)
-- CREATED		"Sep 29, 2015"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g05_num1s IS 
PORT(
		X :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		num1s :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END g05_num1s;

ARCHITECTURE behavior OF g05_num1s IS 
BEGIN 
		num1s(2) <= 	(X(0) and X(1) and X(2) and X(3));
		num1s(1) <=		(X(0) and X(1) and (not X(2)))
						or	((not X(0)) and X(1) and X(3))
						or	(X(0) and (not X(1)) and X(3))
						or	((not X(0)) and X(2) and X(3))
						or	(X(1) and X(2) and (not X(3)))
						or	(X(0) and X(2) and (not X(3)));
		num1s(0) <=		((not X(0)) and X(1) and (not X(2)) and (not X(3)))
						or	(X(0) and (not X(1)) and (not X(2)) and (not X(3)))
						or	((not X(0)) and (not X(1)) and (not X(2)) and X(3))
						or	(X(0) and X(1) and (not X(2)) and X(3))
						or	((not X(0)) and X(1) and X(2) and X(3))
						or	(X(0) and (not X(1)) and X(2) and X(3))
						or	((not X(0)) and (not X(1)) and X(2) and (not X(3)))
						or	(X(0) and X(1) and X(2) and (not X(3)));
END behavior;