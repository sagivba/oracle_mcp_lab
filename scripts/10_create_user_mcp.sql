-- Connect as SYSDBA
--sqlplus / as sysdba

-- Switch to the target PDB
ALTER SESSION SET CONTAINER = MCPLAB;

-- Create the MCP user with a strong password
CREATE USER mcp1 IDENTIFIED BY StrongPassword123;

-- Grant basic privileges to allow SQL execution and data access
GRANT CREATE SESSION TO mcp1;

-- Grant dictionary views access (for tools like describe-object)
GRANT SELECT ANY DICTIONARY TO mcp1;

-- Optionally allow selecting from all user tables (required for tools like run-sql)
GRANT SELECT ANY TABLE TO mcp1;

-- Optional: allow access to session info if needed
GRANT SELECT ON v_$session TO mcp1;

-- Optional: allow logging MCP1 activity (SQLcl creates DBTOOLS$MCP_LOG if used)
GRANT CREATE TABLE TO mcp1;

-- Exit SQL*Plus
EXIT;
