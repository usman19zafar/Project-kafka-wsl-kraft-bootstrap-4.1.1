Short, time‑ordered bullets:

12:25 — First controller bind failure on 9093 (Address already in use).

12:31 — Pin listeners to 127.0.0.1, still bind failure → ghost port.

12:35 — wsl --shutdown to clear ghost sockets.

12:36 — No readable meta.properties files found. → format KRaft dir.

12:41 — Both listeners report Awaiting socket connections on 9092/9093.

12:4x — Created topic uzi-test. → cluster confirmed online.
