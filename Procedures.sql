SET SERVEROUTPUT ON;

CREATE FUNCTION CALCULA_FGTS (P_VALOR NUMBER) RETURN
NUMBER IS

BEGIN 
    RETURN P_VALOR * 0.08;
END CALCULA_FGTS;

CREATE OR REPLACE PROCEDURE PROCEDURE_FGTS IS 
V_VALOR NUMBER;
BEGIN
    V_VALOR := CALCULA_FGTS(5000);
    DBMS_OUTPUT.PUT_LINE('O valor do FGTS �: ' || TO_CHAR(V_VALOR));
END PROCEDURE_FGTS;

EXEC PROCEDURE_FGTS();

CALL PROCEDURE_FGTS();

EXECUTE PROCEDURE_FGTS;

BEGIN
PROCEDURE_FGTS();
END;



