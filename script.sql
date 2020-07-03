create table student
(
	id varchar(3) not null
		constraint student_pk
			primary key,
	name varchar(100),
	age int,
	sex varchar(3) check ( sex in ('男','女') )
);

create table subject
(
    id          varchar(4)   not null
        primary key,
    subject     varchar(100) null,
    teacher     varchar(100) null,
    description varchar(200) null
);

create table score
(
    id  int generated as identity
		constraint table_id_pk
			primary key,
    student_id varchar(3) null,
    subject_id varchar(4) null,
    score      int     null
);

INSERT INTO student (id, name, age, sex) VALUES ('001', '张三', 18, '男');
INSERT INTO student (id, name, age, sex) VALUES ('002', '李四', 20, '女');

INSERT INTO subject (id, subject, teacher, description) VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO subject (id, subject, teacher, description) VALUES ('1002', '数学', '刘老师', '本次考试比较难');

INSERT INTO score (student_id, subject_id, score) VALUES ('001', '1001', 80);
INSERT INTO score (student_id, subject_id, score) VALUES ('002', '1002', 60);
INSERT INTO score (student_id, subject_id, score) VALUES ('001', '1001', 70);
INSERT INTO score (student_id, subject_id, score) VALUES ('002', '1002', 60);




