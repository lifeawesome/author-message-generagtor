server '54.183.63.204',
  user: 'borlin',
  roles: %w{app, db, web},
  ssh_options: {
    forward_agent: false,
    auth_methods: %w(publickey password),
    password: 'G3hsrq7tTzbN'
  }
