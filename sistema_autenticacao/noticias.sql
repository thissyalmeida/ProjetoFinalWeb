# phpMyAdmin SQL Dump
# version 2.5.6
# http://www.phpmyadmin.net
#
# Servidor: localhost
# Tempo de Generação: Mar 16, 2004 at 05:26 PM
# Versão do Servidor: 3.23.47
# Versão do PHP: 4.3.4
# 
# Banco de Dados : `noticias`
# 

# --------------------------------------------------------

#
# Estrutura da tabela `aut_noticias`
#

DROP TABLE IF EXISTS `aut_noticias`;
CREATE TABLE `aut_noticias` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` varchar(255) NOT NULL default '',
  `conteudo` text NOT NULL,
  `autor_id` int(11) NOT NULL default '0',
  `data` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

#
# Extraindo dados da tabela `aut_noticias`
#

INSERT INTO `aut_noticias` VALUES (1, 'Sistema de Usuários', 'bla bla bla\r\n\r\nbla bla bla', 1, 1079449401);
INSERT INTO `aut_noticias` VALUES (2, 'Atentado em Madri', 'onono onono onono onono', 1, 1079449430);
INSERT INTO `aut_noticias` VALUES (3, 'Kernel 2.6', 'oioioi oioioi oioioi oioioi', 2, 1079449456);

# --------------------------------------------------------

#
# Estrutura da tabela `aut_usuarios`
#

DROP TABLE IF EXISTS `aut_usuarios`;
CREATE TABLE `aut_usuarios` (
  `id` int(11) NOT NULL auto_increment,
  `nome` varchar(60) NOT NULL default '',
  `login` varchar(40) NOT NULL default '',
  `senha` varchar(40) NOT NULL default '',
  `postar` enum('S','N') NOT NULL default 'S',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# Extraindo dados da tabela `aut_usuarios`
#

INSERT INTO `aut_usuarios` VALUES (1, 'Albert Einstein', 'einstein', 'e7d80ffeefa212b7c5c55700e4f7193e', 'S');
INSERT INTO `aut_usuarios` VALUES (2, 'Usuário Teste', 'admin', '698dc19d489c4e4db73e28a713eab07b', 'N');
