-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2023 às 14:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eduk`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbano_escolar`
--

CREATE TABLE `tbano_escolar` (
  `id` int(11) NOT NULL,
  `data_inicio` datetime NOT NULL,
  `data_fim` datetime NOT NULL,
  `serie` char(8) NOT NULL,
  `fk_escola_cnpj` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbaula`
--

CREATE TABLE `tbaula` (
  `id` int(11) NOT NULL,
  `data_aula` datetime NOT NULL,
  `duracao` char(10) NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `fk_ementa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbavaliacao`
--

CREATE TABLE `tbavaliacao` (
  `id` int(11) NOT NULL,
  `date_avaliacao` datetime NOT NULL,
  `peso` float NOT NULL,
  `fk_disciplina_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbconteudo`
--

CREATE TABLE `tbconteudo` (
  `id` int(11) NOT NULL,
  `duracao` char(10) NOT NULL,
  `bibliografia` varchar(255) DEFAULT NULL,
  `topico` varchar(255) NOT NULL,
  `fk_ementa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbdiscente`
--

CREATE TABLE `tbdiscente` (
  `matricula` int(11) NOT NULL,
  `fk_pessoa_id` int(11) NOT NULL,
  `fk_responsavel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbdisciplina`
--

CREATE TABLE `tbdisciplina` (
  `codigo` int(11) NOT NULL,
  `nome` char(32) NOT NULL,
  `fk_ementa_id` int(11) NOT NULL,
  `fk_docente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbdocente`
--

CREATE TABLE `tbdocente` (
  `id` int(11) NOT NULL,
  `salario` float NOT NULL,
  `fk_pessoa_id` int(11) NOT NULL,
  `fk_disciplina_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbementa`
--

CREATE TABLE `tbementa` (
  `id` int(11) NOT NULL,
  `fk_disciplina_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbendereco_escola`
--

CREATE TABLE `tbendereco_escola` (
  `id` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(16) DEFAULT NULL,
  `cep` varchar(8) NOT NULL,
  `bairro` varchar(64) NOT NULL,
  `cidade` varchar(64) NOT NULL,
  `estado` varchar(19) NOT NULL,
  `pais` varchar(6) NOT NULL,
  `fk_pessoa_cnpj` char(14) DEFAULT NULL,
  `fk_endereco_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbendereco_pessoa`
--

CREATE TABLE `tbendereco_pessoa` (
  `id` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(16) DEFAULT NULL,
  `cep` varchar(9) NOT NULL,
  `bairro` varchar(64) NOT NULL,
  `cidade` varchar(64) NOT NULL,
  `estado` varchar(19) NOT NULL,
  `pais` varchar(6) NOT NULL,
  `fk_pessoa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbescola`
--

CREATE TABLE `tbescola` (
  `cnpj` char(14) NOT NULL,
  `nome` char(255) NOT NULL,
  `data_ingresso` datetime NOT NULL,
  `assinatura` tinyint(1) NOT NULL,
  `email` char(255) NOT NULL,
  `fk_endereco_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbnotas`
--

CREATE TABLE `tbnotas` (
  `id` int(11) NOT NULL,
  `nota` float NOT NULL,
  `fk_discente_mat` int(11) NOT NULL,
  `fk_avaliacao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbobservacao`
--

CREATE TABLE `tbobservacao` (
  `id` int(11) NOT NULL,
  `data_ocorrido` datetime NOT NULL,
  `ocorrido` char(255) NOT NULL,
  `fk_discente_matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpessoa`
--

CREATE TABLE `tbpessoa` (
  `id` int(11) NOT NULL,
  `nome` char(64) NOT NULL,
  `sobrenome` char(64) NOT NULL,
  `data_nascimento` char(10) NOT NULL,
  `cpf` char(14) DEFAULT NULL,
  `rg` char(12) NOT NULL,
  `sexo` enum('masculino','feminino','nao informar') NOT NULL,
  `nacionalidade` char(16) NOT NULL,
  `fk_responsavel_id` int(11) DEFAULT NULL,
  `fk_docente_id` int(11) DEFAULT NULL,
  `fk_discente_mat` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbrel_frequencia`
--

CREATE TABLE `tbrel_frequencia` (
  `id` int(11) NOT NULL,
  `fk_discente_mat` int(11) NOT NULL,
  `fk_disciplina_codigo` int(11) NOT NULL,
  `data_aula` datetime NOT NULL,
  `presenca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbrel_turma`
--

CREATE TABLE `tbrel_turma` (
  `fk_ano_escolar_id` int(11) NOT NULL,
  `fk_disciplina_codigo` int(11) NOT NULL,
  `nome` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbresponsavel`
--

CREATE TABLE `tbresponsavel` (
  `id` int(11) NOT NULL,
  `vinculo` char(16) NOT NULL,
  `fk_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbtelefone`
--

CREATE TABLE `tbtelefone` (
  `numero` varchar(15) NOT NULL,
  `tipo` enum('residencial','fixo','móvel') NOT NULL,
  `fk_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbano_escolar`
--
ALTER TABLE `tbano_escolar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_escola_cnpj_fk_ano_escolar` (`fk_escola_cnpj`);

--
-- Índices de tabela `tbaula`
--
ALTER TABLE `tbaula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ementa_id` (`fk_ementa_id`);

--
-- Índices de tabela `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_disciplina_codigo_fk_avaliacao` (`fk_disciplina_codigo`);

--
-- Índices de tabela `tbconteudo`
--
ALTER TABLE `tbconteudo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ementa_id_fk` (`fk_ementa_id`);

--
-- Índices de tabela `tbdiscente`
--
ALTER TABLE `tbdiscente`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `fk_pessoa_id_fk_discente` (`fk_pessoa_id`),
  ADD KEY `fk_responsavel_id_fk_discente` (`fk_responsavel_id`);

--
-- Índices de tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_ementa_id_fk_disciplina` (`fk_ementa_id`),
  ADD KEY `fk_docente_id_fk_disciplina` (`fk_docente_id`);

--
-- Índices de tabela `tbdocente`
--
ALTER TABLE `tbdocente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa_id` (`fk_pessoa_id`),
  ADD KEY `fk_disciplina_codigo` (`fk_disciplina_codigo`);

--
-- Índices de tabela `tbementa`
--
ALTER TABLE `tbementa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_disciplina_codigo_fk` (`fk_disciplina_codigo`);

--
-- Índices de tabela `tbendereco_escola`
--
ALTER TABLE `tbendereco_escola`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa_cnpj_fk` (`fk_pessoa_cnpj`),
  ADD KEY `fk_endereco_id_fk` (`fk_endereco_id`);

--
-- Índices de tabela `tbendereco_pessoa`
--
ALTER TABLE `tbendereco_pessoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa_id_fk_endereco` (`fk_pessoa_id`);

--
-- Índices de tabela `tbescola`
--
ALTER TABLE `tbescola`
  ADD PRIMARY KEY (`cnpj`),
  ADD KEY `fk_endereco_id_fk_escola` (`fk_endereco_id`);

--
-- Índices de tabela `tbnotas`
--
ALTER TABLE `tbnotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discente_mat_fk_notas` (`fk_discente_mat`),
  ADD KEY `fk_avaliacao_id_fk_notas` (`fk_avaliacao_id`);

--
-- Índices de tabela `tbobservacao`
--
ALTER TABLE `tbobservacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discente_matricula` (`fk_discente_matricula`);

--
-- Índices de tabela `tbpessoa`
--
ALTER TABLE `tbpessoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_responsavel_id` (`fk_responsavel_id`),
  ADD KEY `fk_docente_id` (`fk_docente_id`),
  ADD KEY `fk_discente_mat` (`fk_discente_mat`);

--
-- Índices de tabela `tbrel_frequencia`
--
ALTER TABLE `tbrel_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_discente_mat_fk_rel_frequencia` (`fk_discente_mat`),
  ADD KEY `fk_disciplina_codigo_fk_rel_frequencia` (`fk_disciplina_codigo`);

--
-- Índices de tabela `tbrel_turma`
--
ALTER TABLE `tbrel_turma`
  ADD PRIMARY KEY (`fk_ano_escolar_id`,`fk_disciplina_codigo`),
  ADD KEY `fk_disciplina_codigo_fk_rel_turma` (`fk_disciplina_codigo`);

--
-- Índices de tabela `tbresponsavel`
--
ALTER TABLE `tbresponsavel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa_id_fk_responsavel` (`fk_pessoa_id`);

--
-- Índices de tabela `tbtelefone`
--
ALTER TABLE `tbtelefone`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_pessoa_id_fk` (`fk_pessoa_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbano_escolar`
--
ALTER TABLE `tbano_escolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbaula`
--
ALTER TABLE `tbaula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbconteudo`
--
ALTER TABLE `tbconteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbdiscente`
--
ALTER TABLE `tbdiscente`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbdocente`
--
ALTER TABLE `tbdocente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbementa`
--
ALTER TABLE `tbementa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbendereco_escola`
--
ALTER TABLE `tbendereco_escola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbendereco_pessoa`
--
ALTER TABLE `tbendereco_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbnotas`
--
ALTER TABLE `tbnotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbobservacao`
--
ALTER TABLE `tbobservacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpessoa`
--
ALTER TABLE `tbpessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbrel_frequencia`
--
ALTER TABLE `tbrel_frequencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbresponsavel`
--
ALTER TABLE `tbresponsavel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbano_escolar`
--
ALTER TABLE `tbano_escolar`
  ADD CONSTRAINT `fk_escola_cnpj_fk_ano_escolar` FOREIGN KEY (`fk_escola_cnpj`) REFERENCES `tbescola` (`cnpj`);

--
-- Restrições para tabelas `tbaula`
--
ALTER TABLE `tbaula`
  ADD CONSTRAINT `fk_ementa_id` FOREIGN KEY (`fk_ementa_id`) REFERENCES `tbementa` (`id`);

--
-- Restrições para tabelas `tbavaliacao`
--
ALTER TABLE `tbavaliacao`
  ADD CONSTRAINT `fk_disciplina_codigo_fk_avaliacao` FOREIGN KEY (`fk_disciplina_codigo`) REFERENCES `tbdisciplina` (`codigo`);

--
-- Restrições para tabelas `tbconteudo`
--
ALTER TABLE `tbconteudo`
  ADD CONSTRAINT `fk_ementa_id_fk` FOREIGN KEY (`fk_ementa_id`) REFERENCES `tbementa` (`id`);

--
-- Restrições para tabelas `tbdiscente`
--
ALTER TABLE `tbdiscente`
  ADD CONSTRAINT `fk_pessoa_id_fk_discente` FOREIGN KEY (`fk_pessoa_id`) REFERENCES `tbpessoa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_responsavel_id_fk_discente` FOREIGN KEY (`fk_responsavel_id`) REFERENCES `tbresponsavel` (`id`) ON DELETE CASCADE;


--
-- Restrições para tabelas `tbdisciplina`
--
ALTER TABLE `tbdisciplina`
  ADD CONSTRAINT `fk_docente_id_fk_disciplina` FOREIGN KEY (`fk_docente_id`) REFERENCES `tbdocente` (`id`),
  ADD CONSTRAINT `fk_ementa_id_fk_disciplina` FOREIGN KEY (`fk_ementa_id`) REFERENCES `tbementa` (`id`);

--
-- Restrições para tabelas `tbdocente`
--
ALTER TABLE `tbdocente`
  ADD CONSTRAINT `fk_disciplina_codigo` FOREIGN KEY (`fk_disciplina_codigo`) REFERENCES `tbdisciplina` (`codigo`),
  ADD CONSTRAINT `fk_pessoa_id` FOREIGN KEY (`fk_pessoa_id`) REFERENCES `tbpessoa` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tbementa`
--
ALTER TABLE `tbementa`
  ADD CONSTRAINT `fk_disciplina_codigo_fk` FOREIGN KEY (`fk_disciplina_codigo`) REFERENCES `tbdisciplina` (`codigo`);

--
-- Restrições para tabelas `tbendereco_escola`
--
ALTER TABLE `tbendereco_escola`
  ADD CONSTRAINT `fk_endereco_id_fk` FOREIGN KEY (`fk_endereco_id`) REFERENCES `tbendereco_escola` (`id`),
  ADD CONSTRAINT `fk_pessoa_cnpj_fk` FOREIGN KEY (`fk_pessoa_cnpj`) REFERENCES `tbescola` (`cnpj`);

--
-- Restrições para tabelas `tbendereco_pessoa`
--
ALTER TABLE `tbendereco_pessoa`
  ADD CONSTRAINT `fk_pessoa_id_fk_endereco` FOREIGN KEY (`fk_pessoa_id`) REFERENCES `tbpessoa` (`id`) ON DELETE CASCADE;


--
-- Restrições para tabelas `tbescola`
--
ALTER TABLE `tbescola`
  ADD CONSTRAINT `fk_endereco_id_fk_escola` FOREIGN KEY (`fk_endereco_id`) REFERENCES `tbendereco_escola` (`id`);

--
-- Restrições para tabelas `tbnotas`
--
ALTER TABLE `tbnotas`
  ADD CONSTRAINT `fk_avaliacao_id_fk_notas` FOREIGN KEY (`fk_avaliacao_id`) REFERENCES `tbavaliacao` (`id`),
  ADD CONSTRAINT `fk_discente_mat_fk_notas` FOREIGN KEY (`fk_discente_mat`) REFERENCES `tbdiscente` (`matricula`);

--
-- Restrições para tabelas `tbobservacao`
--
ALTER TABLE `tbobservacao`
  ADD CONSTRAINT `fk_discente_matricula` FOREIGN KEY (`fk_discente_matricula`) REFERENCES `tbdiscente` (`matricula`);

--
-- Restrições para tabelas `tbpessoa`
--
ALTER TABLE `tbpessoa`
  ADD CONSTRAINT `fk_discente_mat` FOREIGN KEY (`fk_discente_mat`) REFERENCES `tbdiscente` (`matricula`),
  ADD CONSTRAINT `fk_docente_id` FOREIGN KEY (`fk_docente_id`) REFERENCES `tbdocente` (`id`),
  ADD CONSTRAINT `fk_responsavel_id` FOREIGN KEY (`fk_responsavel_id`) REFERENCES `tbresponsavel` (`id`);

--
-- Restrições para tabelas `tbrel_frequencia`
--
ALTER TABLE `tbrel_frequencia`
  ADD CONSTRAINT `fk_discente_mat_fk_rel_frequencia` FOREIGN KEY (`fk_discente_mat`) REFERENCES `tbdiscente` (`matricula`),
  ADD CONSTRAINT `fk_disciplina_codigo_fk_rel_frequencia` FOREIGN KEY (`fk_disciplina_codigo`) REFERENCES `tbdisciplina` (`codigo`);

--
-- Restrições para tabelas `tbrel_turma`
--
ALTER TABLE `tbrel_turma`
  ADD CONSTRAINT `fk_ano_escolar_id_fk_rel_turma` FOREIGN KEY (`fk_ano_escolar_id`) REFERENCES `tbano_escolar` (`id`),
  ADD CONSTRAINT `fk_disciplina_codigo_fk_rel_turma` FOREIGN KEY (`fk_disciplina_codigo`) REFERENCES `tbdisciplina` (`codigo`);

--
-- Restrições para tabelas `tbresponsavel`
--
ALTER TABLE `tbresponsavel`
  ADD CONSTRAINT `fk_pessoa_id_fk_responsavel` FOREIGN KEY (`fk_pessoa_id`) REFERENCES `tbpessoa` (`id`) ON DELETE CASCADE;


--
-- Restrições para tabelas `tbtelefone`
--
ALTER TABLE `tbtelefone`
  ADD CONSTRAINT `fk_pessoa_id_fk` FOREIGN KEY (`fk_pessoa_id`) REFERENCES `tbpessoa` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
