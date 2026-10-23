CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  uuid TEXT,
  limit_gb REAL DEFAULT 0,
  expiry_days INTEGER DEFAULT 0,
  ips TEXT,
  connection_type TEXT,
  tls TEXT,
  port INTEGER,
  used_gb REAL DEFAULT 0,
  used_req INTEGER DEFAULT 0,
  lifetime_used_gb REAL DEFAULT 0,
  is_active INTEGER DEFAULT 1,
  last_active INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS settings (key TEXT PRIMARY KEY, value TEXT);
