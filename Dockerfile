Got it 👍
Here’s a professional draft you can send to your application vendor to confirm about the timing parameters (LOCK_TIMEOUT vs WaitAtLowPriority settings):


---

Subject: Confirmation on Index Rebuild Timeout Parameters

Hi [Vendor Team],

As part of our recent discussions on index rebuild optimization, we are considering the use of timing parameters to avoid blocking or application crashes during rebuilds. We would like your confirmation on the below points:

1. WaitAtLowPriority Parameters

WaitAtLowPriorityMaxDuration = 5 minutes

WaitAtLowPriorityAbortAfterWait = SELF
➝ Our understanding is that this will make the rebuild wait at low priority for 5 minutes, and if the lock is still not available, the rebuild cancels itself (instead of killing user sessions).



2. LOCK_TIMEOUT Parameter

We are also evaluating the use of LOCK_TIMEOUT in the index rebuild script.
➝ As we understand, this will automatically terminate the rebuild session if it is unable to obtain the required lock within the specified time, thus preventing indefinite blocking.




Could you please confirm:

If our understanding of both parameters is correct?

What would be the recommended duration (in minutes) for these settings from your side, based on best practices and our application workload?


Your guidance will help us finalize the configuration safely.

Thanks & Regards,
[Your Name]


---

Would you like me to also make a shorter Teams/Chat message version of this (instead of email format), in case you want to quickly ask during vendor calls?

