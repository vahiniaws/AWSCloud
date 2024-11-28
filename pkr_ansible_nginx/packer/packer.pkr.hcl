{
 build {
  name = "packer-ubuntu-build"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
   sources = [
    "source.amazon-ebs.win"
  ]
  ],
  # Install Ansible
  provisioner "shell" {
    script= "../scripts/install_dependencies.sh"
  }

  provisioner "ansible-local" {
    playbook_file = "../ansible/playbooks/nginx_https.yml"
  }

  provisioner "shell" {
    script= "../scripts/cleanup.sh"
  }
}
