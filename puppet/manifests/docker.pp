class { 'os_hardening':
  system_environment => 'docker',
}
class { 'ssh_hardening': }
