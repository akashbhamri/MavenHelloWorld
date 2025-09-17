“We need to identify the exact reason why the max open files (ulimit -n) value is inconsistent across our four-node cluster. The configuration in start_web.sh is identical on all nodes, and three nodes correctly reflect the expected limit, but node 01 reports a different value.

We have already confirmed that:

The same parameter is defined in start_web.sh for all four nodes.

Three nodes inherit the intended limit without issue.

Only node 01 shows a deviation.


The next step is to trace where node 01 is sourcing this incorrect value—whether from OS-level limits, PAM configuration, a systemd override, or environment differences—so we can ensure uniform settings across the cluster.”
