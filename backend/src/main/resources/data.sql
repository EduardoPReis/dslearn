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