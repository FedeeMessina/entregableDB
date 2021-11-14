DROP database IF EXISTS entregableDB_Messina;
CREATE database entregableDB_Messina;
use entregableDB_Messina;

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(50) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `user_id` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `date_create` DATE NOT NULL,
   `date_upload` DATE,
   `date_delete` TINYINT,
   `descripcion` TEXT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias_notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `categoria_id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_b0a77b64-17c2-45d9-8cf3-6828fc6b8863` FOREIGN KEY (`user_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_33f13365-9679-482d-9ab4-a55fe865627f` FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_9fcaf299-ecd8-4e5e-95b1-ae002556593d` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`)  ;

-- Ingresando datos de usuarios en tabla usuarios

INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Federico', 'federico@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Ernesto', 'ernesto@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Enrique', 'enrique@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Laura', 'laura@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Lana', 'lana@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Paula', 'paula@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Valeria', 'valeria@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'Rodrigo', 'rodrigo@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'diego', 'diego@hotmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'eric', 'eric@hotmail.com');

-- Ingresando datos en tabla notas

INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '1', 'matematica', '2021-11-14 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '2', 'lengua', '2021-07-22 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '3', 'historia', '2021-06-13 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '4', 'fisica', '2021-07-09 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '5', 'quimica', '2021-08-15 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '6', 'biologia', '2021-02-05 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '7', 'psicologia', '2021-05-14 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '8', 'civica', '2021-11-12 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '9', 'computacion', '2021-10-05 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');
INSERT INTO `notas` (`id`, `user_id`, `titulo`, `date_create`, `date_upload`, `date_delete`, `descripcion`) VALUES (NULL, '10', 'gimnasia', '2021-03-23 04:20:00', NULL, '0', 'texto descriptivo de  la nota, bla bla');

-- Ingresando datos en la tabla categorias

INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'algebra');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'ingles');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'aleman');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'derecho');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'salud');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'ciencias politicas');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'ciencias naturales');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'quimica molecular');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'informatica');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'lenguaje');

-- Ingresando datos en categorias_notas


INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '1', '9');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '3', '7');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '5', '5');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '7', '3');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '9', '1');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '10', '10');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '8', '8');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '6', '6');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '5', '4');
INSERT INTO `categorias_notas` (`id`, `categoria_id`, `notas_id`) VALUES (NULL, '4', '2');
