
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Lagertha', 'Inteligência', 'Filhos', 'Luta com espada', 'Sword', '4');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Xena', 'Percepção', 'Gabrielle', 'Luta, ponto de pressão', 'Chakram', '1');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Arya Stark', 'Adaptação', 'No one', 'Disfarce, luta', 'Needle sword', '5');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Melisandre', 'Manibulação', 'Envelhecimento', 'Magia', 'Fogo', '2');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Claire Fraser', 'Inteligência', 'Jamie, Brianna', 'Medicina', 'Ervas e Instrumentos médicos', '3');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Jamie Fraser', 'Força', 'Claire, Brianna', 'Luta, comércio', 'Espada', '1');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Yennefer', 'Magia', 'Humanidade', 'Feitiçaria', 'Não Tem', '2');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`nome`, `atributos`, `fraquezas`, `habilidade`, `equipamento`, `fk_classe`) VALUES ('Michonne', 'Agilidade', 'Sentimentos', 'Espadachim', 'Katana', '1');

INSERT INTO `db_generation_game_online`.`tb_classe` (`classe`, `poder_de_ataque`, `poder_de_defesa`) VALUES ('Guerreiro', '4876', '2843');
INSERT INTO `db_generation_game_online`.`tb_classe` (`classe`, `poder_de_ataque`, `poder_de_defesa`) VALUES ('Mago', '3654', '4653');
INSERT INTO `db_generation_game_online`.`tb_classe` (`classe`, `poder_de_ataque`, `poder_de_defesa`) VALUES ('Curandeiro', '1123', '1465');
INSERT INTO `db_generation_game_online`.`tb_classe` (`classe`, `poder_de_ataque`, `poder_de_defesa`) VALUES ('Viking', '5675', '3756');
INSERT INTO `db_generation_game_online`.`tb_classe` (`classe`, `poder_de_ataque`, `poder_de_defesa`) VALUES ('Assassino', '4765', '1657');

SELECT * FROM  tb_personagem
INNER JOIN tb_classe ON tb_classe.idtb_classe = tb_personagem.fk_classe
WHERE tb_classe.poder_de_ataque > 2000;

SELECT * FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.idtb_classe = tb_personagem.fk_classe
WHERE tb_classe.poder_de_defesa >=1000 and tb_classe.poder_de_defesa  <=2000;

SELECT * FROM  tb_personagem
INNER JOIN tb_classe ON tb_classe.idtb_classe = tb_personagem.fk_classe
WHERE tb_personagem.nome LIKE "%C%";

SELECT * FROM  tb_personagem
INNER JOIN tb_classe ON tb_classe.idtb_classe = tb_personagem.fk_classe
WHERE tb_classe.classe = "Guerreiro";



