---
table: antz
from: null
to: whh_1
depends:
  - [health_user, whh_8]
sql: |
  CREATE TABLE antz (
    id SERIAL NOT NULL PRIMARY KEY,
    task TEXT NOT NULL, -- enum
    fired_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    status TEXT NOT NULL, -- enum
    user_id INTEGER NOT NULL REFERENCES health_user(id) ON DELETE RESTRICT
  );

---
table: antz
from: whh_1
to: whh_2
sql: |
  ALTER TABLE antz
    ADD COLUMN args TEXT default '{}';
  UPDATE antz SET args = '{}';

---
table: antz
from: whh_2
to: whh_3
depends:
  - [health_user, whh_9]
sql: |
  ALTER TABLE antz
    ADD COLUMN subscribed_id INTEGER REFERENCES health_user(id) ON DELETE RESTRICT;

---
table: antz
from: whh_3
to: whh_4
sql: |
  CREATE INDEX idx_antz_fired_at ON antz(fired_at) WHERE status ='pending';

---
table: antz
from: whh_4
to: syusa_5
sql: |
  CREATE INDEX idx_antz_task_created_at ON public.antz USING btree(created_at, task);

---
table: antz
from: syusa_5
to: syusa_6
sql: |
  CREATE INDEX IF NOT EXISTS idx_antz_user_id_task ON public.antz USING btree(user_id, task);
