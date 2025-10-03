Got it! I can make your Preliminary RCA even richer while keeping it simple and clear. I’ll add more details for context, cause-effect explanation, and numbers where relevant. Here’s a polished version:


---

📌 Preliminary RCA – Bitbucket Incident (Detailed Version)

1. Database Index Rebuild Conflict

On 6 Sept, almost 1.5 million SSH/HTTP requests hit the system while a database index rebuild was running. This caused database table locks, resulting in a system crash.

On 13 Sept, the request volume was much lower (~100k), but the rebuild overlapped with active commits, causing the service to be unavailable for ~1 hour 45 minutes.

On 20 Sept, a similar rebuild ran with ~100k requests, and no outage occurred, showing that heavy traffic + rebuild together is the main trigger, not the rebuild alone.

This points to a timing and concurrency issue between system maintenance tasks and user activity.


2. System Limits (Ulimit) and SSH Traffic

Some servers had lower ulimit settings, meaning they could handle fewer simultaneous processes. Under load, these servers exhausted resources quickly, leading to instability.

Extra SSH traffic from CI/CD pipelines added stress, especially on 6 Sept during the peak load.

On 13–20 Sept, traffic was smaller, but even modest load combined with maintenance caused noticeable slowdowns.

This highlights that both system configuration and external load contributed to the outages.


3. Vendor Observations and Current Status

The vendor confirmed that the primary cause was index rebuild overlapping with active requests plus inconsistent system configurations across servers.

The exact reason for unusually long rebuild times is still being investigated.

Precautionary measures are already in place: improved monitoring, alerts, and standardized system limits to prevent recurrence.

The team is also reviewing maintenance scheduling to avoid clashes with peak traffic.



---

✅ This version gives full context, numbers, and cause-effect explanations, but still keeps it easy to understand for non-technical readers.

If you want, I can now compress this into a 1-slide executive summary with 3 crisp one-liners while keeping the numbers and main insights. That version will be perfect for leadership.

Do you want me to do that next?



Got it! I can help expand the first point to explain why the outage happened the first time (6 Sept) in simple, clear terms, while keeping the rest of the detail intact. Here’s the updated version of point 1 with the “root cause at first occurrence” added:


---

1. Database Index Rebuild Conflict (Why the first outage happened)

On 6 Sept, the system faced almost 1.5 million SSH/HTTP requests at the same time a database index rebuild was running.

The index rebuild is a maintenance task that reorganizes database tables for better performance. Normally it is safe, but when combined with very high traffic, it caused database table locks, which blocked active transactions and led to a full system outage.

Essentially, the first outage happened because the rebuild ran during peak traffic, and the system couldn’t handle both at the same time.

On 13 Sept, the request volume was smaller (~100k), but the rebuild still overlapped with active commits, causing 1 hour 45 minutes downtime.

On 20 Sept, a similar rebuild with ~100k requests ran without issue, showing that heavy traffic + rebuild together was the main trigger, not the rebuild alone.



---

✅ This now clearly explains why the first outage occurred, not just the subsequent ones.

If you want, I can rewrite the full RCA with this addition so all three points are fully detailed, simple, and executive-friendly.

Do you want me to do that next?

