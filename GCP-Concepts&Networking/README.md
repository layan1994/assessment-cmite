# assessment-cmite

## GCP Concepts & Networking

2. Write a brief summary explaining:

● How you would secure the setup.

# Answer

Securing the Setup:

VPC Isolation: By using a custom VPC, the services (GKE, CloudSQL, and Redis) are isolated from the broader network and public internet. This adds a strong layer of security by preventing unauthorized access.

Private IP for CloudSQL: Configure CloudSQL to use a private IP address to ensure it is only accessible within the VPC. This prevents direct external access and keeps the database more secure.

Firewall Rules: Define strict firewall rules to control traffic between services.

For example:
Allow only the GKE nodes to access CloudSQL on the necessary ports.
Limit access to Redis only from GKE pods that need it.
Block all unnecessary traffic from external sources.

IAM Roles and Policies: Ensure that IAM roles are set with the principle of least privilege. Each service and user should have the minimum level of access required for their tasks.
For example:
GKE worker nodes should have only the permissions necessary to access CloudSQL and Redis.
Service accounts for GKE, CloudSQL, and Redis should have specific roles rather than broad administrative access.
Service Accounts for GKE: Each GKE node pool should be assigned a dedicated service account, which limits the scope of access to other resources and improves security.

Network Policies: Use Kubernetes Network Policies within GKE to control traffic between pods, ensuring that only authorized pods can communicate with each other.

● How you would optimize costs while maintaining high availability.

# Answer

CloudSQL High Availability (HA): Enable CloudSQL’s HA feature, which automatically replicates data to a standby instance in another zone. This ensures that the database remains available during a regional failure, reducing downtime without needing additional manual intervention.

GKE Autoscaling: Configure autoscaling for GKE node pools. By enabling Cluster Autoscaler and Horizontal Pod Autoscaler, GKE can automatically adjust the number of nodes and pods based on demand. This prevents over-provisioning and reduces costs while ensuring performance is maintained.

Preemptible VMs for GKE: To further optimize costs, consider using preemptible VMs for non-critical workloads. These VMs are significantly cheaper but can be terminated by Google at any time. If your application can tolerate interruptions (e.g., using pod replication and horizontal scaling), this is a great way to reduce infrastructure costs.

Redis Regional Replication: Use Redis replication with persistence enabled for high availability. Redis Enterprise or managed Redis on GCP offers regional replication, ensuring data is always available even if a region goes down.

Cost Optimization with Right-Sizing: Continuously monitor the usage and performance of CloudSQL, GKE, and Redis instances to ensure they are appropriately sized for the workload. You can reduce costs by selecting smaller instance types that still meet the performance requirements during off-peak times and scaling up as needed.

Reserved Instances (for CloudSQL): For predictable workloads, using reserved instances for CloudSQL can provide significant cost savings (up to 57% compared to on-demand pricing).

Use Cost Management Tools: Leverage GCP's cost management tools such as Budgets and Alerts and Cost Explorer to monitor usage and avoid overspending. These tools will help you track costs and set limits for services that might increase unexpectedly.
