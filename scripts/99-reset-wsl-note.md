# WSL ghost port / bind issue

Symptom:
- Kafka log: `Socket server failed to bind to 0.0.0.0:9093: Address already in use.`
- `sudo lsof -i :9093` shows nothing.

Cause:
- WSL networking bug: Java process died, port remained in a ghost state.

Fix (run in Windows PowerShell, not Ubuntu):

```powershell
wsl --shutdown

Then reopen Ubuntu, cd ~/kafka_2.13-4.1.1, re‑format storage, and start Kafka again


---


