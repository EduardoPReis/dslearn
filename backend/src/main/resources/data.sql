INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Green', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqZiUWaTbyq5Qc5EIMBPBOJ6vSH4EYJclp5w&s',
'https://static.vecteezy.com/system/resources/previews/014/641/413/non_2x/html-js-css-line-icon-vector.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',
TIMESTAMP WITH TIME ZONE '2024-06-20T21:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2025-06-20T21:50:07.12345Z',1);

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',
TIMESTAMP WITH TIME ZONE '2025-06-21T21:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2026-06-21T21:50:07.12345Z',1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha pricipal do curso', 1,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqZiUWaTbyq5Qc5EIMBPBOJ6vSH4EYJclp5w&s', 1, 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRadTiHc6FDmpvK9NB4-NN332odjipWB2u91Q&s', 2, 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives ', 'Lives Exclusivas para assinantes', 3,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqZiUWaTbyq5Qc5EIMBPBOJ6vSH4EYJclp5w&s', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id,prerequisite_id) VALUES ('Capítulo 1', 'Inicio de lógica para Html',1,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRadTiHc6FDmpvK9NB4-NN332odjipWB2u91Q&s',1, null);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id,prerequisite_id) VALUES ('Capítulo 2', 'Tags e introdução CSS',2,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRadTiHc6FDmpvK9NB4-NN332odjipWB2u91Q&s',1, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id,prerequisite_id) VALUES ('Capítulo 3', 'HTML 5',3,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRadTiHc6FDmpvK9NB4-NN332odjipWB2u91Q&s',1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refound_Moment, avaliable, only_Update) VALUES 
(1, 1, TIMESTAMP WITH TIME ZONE '2024-06-20T22:50:07.12345Z',null,true,false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refound_Moment, avaliable, only_Update) VALUES 
(2, 1, TIMESTAMP WITH TIME ZONE '2024-06-20T22:50:07.12345Z',null,true,false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (id,text_Content, video_Uri) VALUES (1,'Material de apoio','https://www.youtube.com/watch?v=IjProDV001o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (id,text_Content, video_Uri) VALUES (2,'','https://www.youtube.com/watch?v=IjProDV001o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (id,text_Content, video_Uri) VALUES (3,'','https://www.youtube.com/watch?v=IjProDV001o');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa Aula 1', 4, 1);
INSERT INTO tb_task (id,description, question_Count, approval_Count, weight, due_Date) VALUES 
(4, 'Fazer trabalho', 5, 4, 1.0,TIMESTAMP WITH TIME ZONE '2024-06-28T21:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES 
('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES 
('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES 
('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES 
('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2024-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2024-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2024-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2024-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2024-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2024-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2024-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);