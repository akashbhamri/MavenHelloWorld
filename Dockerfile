Request for DB Team Alignment on Index Rebuild Downtime

Yesterday, we experienced a major production issue in BB that resulted in 4+ hours of downtime. The root cause was again related to the Index Rebuild job.

Key observations:

We did not receive any alert/notification for the Index Rebuild downtime.

Our team requested updates regarding the rebuild, and we were informed after ~20 minutes that the rebuild was causing blocking. By then, our server services had already started misbehaving and eventually went down.

The DB team was not aware that the Index Rebuild job needed to be killed to recover services.

There was also a knowledge gap on how to check for database locks and release them. (This was previously handled by the earlier DB team multiple times).


Action Required:
We request a dedicated call with the DB team to:

1. Understand the gaps in monitoring and handling of Index Rebuild jobs.


2. Review the correct procedure for identifying and unlocking database locks.


3. Define preventive measures to avoid such prolonged downtime in the future.



This alignment is critical to ensure production stability and reduce recovery delays during similar incidents.
