Very short evolution:

Initial attempts: default sample configs, split‑mode assumptions, wrong listeners.

Port conflict: controller on 9093 failing with “Address already in use”.

Fix: pin listeners to 127.0.0.1 and use combined‑mode KRaft.

Final config: the server.properties shown above.
