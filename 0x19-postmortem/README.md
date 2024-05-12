Postmortem: Web Application Outage Incident

Issue Summary:

Duration: 12th May 2024, 08:00 UTC to 12th May 2024, 10:30 UTC
Impact: The web application experienced complete downtime during the outage, affecting 75% of users who were unable to access the service.
Root Cause: A misconfiguration in the load balancer settings led to a traffic bottleneck, causing the application servers to become unresponsive.

Timeline:

08:00 UTC: Issue detected through monitoring alerts showing a spike in server response times.
08:10 UTC: Engineering team started investigating the issue, suspecting a potential database overload.
08:30 UTC: Misleading assumption made that the database was the root cause, leading to unnecessary database optimizations.
-  09:00 UTC: Incident escalated to the DevOps team for further analysis.
-  10:30 UTC:Incident resolved by adjusting load balancer settings to distribute traffic evenly.

Root Cause and Resolution:

- Root Cause: Misconfigured load balancer settings causing uneven distribution of traffic to application servers.
- Resolution: Load balancer settings were adjusted to evenly distribute incoming traffic, resolving the bottleneck issue.

Corrective and Preventative Measures:
- Improvements:Enhance monitoring alerts for load balancer performance, conduct regular load testing to identify potential bottlenecks, implement automated scaling based on traffic patterns.

 Tasks:
  1. Update load balancer configuration to ensure proper traffic distribution.
  2. Enhance monitoring system to provide early warnings on load balancer performance.
  3. Conduct load testing scenarios to simulate high traffic conditions and optimise server scalability.
  4. Implement automated scaling mechanisms to adjust server capacity based on real-time traffic patterns.
