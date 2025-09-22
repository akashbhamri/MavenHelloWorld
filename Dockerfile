Got it! Here’s the updated version including that point:


---

📌 Issue Summary

Date & Time (EST): 21/09, 2:05 AM – 4:12 AM
Affected System: CBCI servers
Cause:

Storage upgrade: cables moved from 16G line card → 32G line card.

Servers didn’t automatically switch to the new 32G paths.

Resulted in:

Some storage paths dead/unresponsive

Latency issues

Some VMs temporarily lost connectivity



Why only CBCI impacted:

Only CBCI servers were using the affected paths during this window.

Other servers either had redundant paths configured correctly or weren’t actively using the upgraded line card yet.

Currently investigating why only CBCI was impacted during this time.



---

🛠 Fix Applied

1. Checked storage paths on ESXi hosts → identified dead/unresponsive paths.


2. Forced path failover → told ESXi to stop using the dead path and route traffic through the working path.


3. Rebooted VMs cluster by cluster → refreshed storage sessions, restored full connectivity.


4. Escalated to Cisco/Dell → to identify why auto-failover didn’t work and for a permanent fix (likely firmware/config patch).




---

✅ Outcome

Servers are now running stably on 32G line card.

Manual intervention (failover + VM reboots) was needed.

No rollback to 16G was done.

Permanent resolution expected after vendor analysis.



---

If you want, I can also make a short version for emailing or reporting with the investigation note included. Do you want me to do that?

