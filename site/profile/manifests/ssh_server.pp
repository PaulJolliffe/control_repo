class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC00gHPbrPKWm56fgEKWtDmnKPgZzxrDo4hK2gtsyY8GTwBeJ61e8fnrNGo3eJ8R9wA6T7uXTOtbqhdFv/FuektfTScP215DBeaFrTuj23HBOeE+AJL+ole7Th7pgZW/ysUAtZNjG3T9vIbIjJ7Mw5i0MZVJUOkgUlAfy5Kn8gXZUUQ0eTcN/wu6phSFJMIviDaVGh0OmRN+NuqlR5c9gp9vE1j6arhFm/Fg7XoO9xzBTyogaEpHrWrOAdXk1t+Sg9snF/0Gfg3jf5wM8YK9x5aH7ajlWSVdegsHPsvO8pV844BF8sUwb7158ny0+fQbIgTyQk+vRk4X4F8j5cgU3G1',
        }
}
