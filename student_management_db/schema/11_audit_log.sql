-- 11_audit_log.sql
CREATE TABLE audit_log (
  id SERIAL PRIMARY KEY,
  table_name TEXT,
  operation TEXT,
  old_data JSONB,
  changed_at TIMESTAMP DEFAULT now()
);
