# Terraform Configuration for Frigate

Manages AWS SSM parameters that store camera credentials consumed by the
Frigate Ansible role.

## SSM Parameters

| Parameter | Description |
|-----------|-------------|
| `/homelab/frigate/camera-frigate-password` | Shared RTSP password for the `frigate` user across reolink cameras |
| `/homelab/frigate/camera-admin-password` | Shared admin password for reolink doorbell/living-room cameras |

Parameter values are marked `ignore_changes` so they can be rotated out of
band without Terraform reverting them.

## Usage

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

Then set the real values:

```bash
aws ssm put-parameter --name "/homelab/frigate/camera-frigate-password" \
  --value "YOUR_PASSWORD" --overwrite --region eu-west-1 --type SecureString
aws ssm put-parameter --name "/homelab/frigate/camera-admin-password" \
  --value "YOUR_PASSWORD" --overwrite --region eu-west-1 --type SecureString
```
