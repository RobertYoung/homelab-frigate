resource "aws_ssm_parameter" "camera_frigate_password" {
  name        = "/homelab/frigate/camera-frigate-password"
  description = "Shared RTSP password for the frigate user across reolink cameras"
  type        = "SecureString"
  value       = "PLACEHOLDER_UPDATE_ME"

  tags = {
    Component = "cameras"
    Purpose   = "rtsp-authentication"
  }

  lifecycle {
    ignore_changes = [value]
  }
}

resource "aws_ssm_parameter" "camera_admin_password" {
  name        = "/homelab/frigate/camera-admin-password"
  description = "Shared admin password for reolink doorbell/living-room cameras"
  type        = "SecureString"
  value       = "PLACEHOLDER_UPDATE_ME"

  tags = {
    Component = "cameras"
    Purpose   = "camera-admin-authentication"
  }

  lifecycle {
    ignore_changes = [value]
  }
}
