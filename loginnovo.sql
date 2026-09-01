-- 1. Cria o novo usuário com a senha "NovaSenha123!"
INSERT INTO `wpb3_users` (
  `ID`, 
  `user_login`, 
  `user_pass`, 
  `user_nicename`, 
  `user_email`, 
  `user_registered`, 
  `user_status`, 
  `display_name`
) 
VALUES (
  88, 
  'admin_novo', 
  MD5('NovaSenha123!'), 
  'admin_novo', 
  'admin2@novaolinda.ce.gov.br', 
  NOW(), 
  0, 
  'Administrador Novo'
);

-- 2. Concede privilégios de Administrador com o prefixo wpb3_
INSERT INTO `wpb3_usermeta` (`user_id`, `meta_key`, `meta_value`) 
VALUES (88, 'wpb3_capabilities', 'a:1:{s:13:"administrator";b:1;}');

-- 3. Define o nível de acesso máximo
INSERT INTO `wpb3_usermeta` (`user_id`, `meta_key`, `meta_value`) 
VALUES (88, 'wpb3_user_level', '10');