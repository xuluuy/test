--学生表  新增用户类型(usertype)
create table studentinfo(
       stuid varchar2(16) primary key,
       stupassword varchar2(10) DEFAULT '000000' not null,
       stuname varchar2(64),
       sex varchar2(4),
       stu_idcard varchar2(18),
       birthday date,
       studepartname varchar2(64),
       stumajorname varchar2(64),
       stulevel varchar2(16),        --层次
       stutel varchar2(11),
       stuaddress varchar2(128),
       usertype VARCHAR2(2) DEFAULT 'S'    --S  
);
create sequence student_seq 
increment by 1 
start with 201501004001 
minvalue 201501004001 
maxvalue 201501009999
nocache
NOCYCLE 
order;
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress) 
values(student_seq.nextval,'111111','李涛','男','371202199507201267',to_date('20-07-1995', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','13963455367','山东菏泽');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'222222','赵新奇','女','371202199701205326',to_date('20-01-1997', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','13963457856','山东济南','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'333333','陈瑞','男','371202199608123578',to_date('12-08-1996', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','13963451465','山东济南','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'444444','王震','男','371202199609233425',to_date('23-09-1996', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','13963457786','山东济南','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'111111','刘瑞生','男','371202199307181267',to_date('18-07-1993', 'dd-mm-yyyy'),'音乐学院','音乐教育学','本科','13963457789','山东菏泽','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'222222','杜云','男','371202199503251256',to_date('25-03-1995', 'dd-mm-yyyy'),'文学院','汉语言文学','本科','17853461423','山东济宁','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'111111','高健','男','371202199604211234',to_date('21-04-1996', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','17853461401','山东济南','S');
insert into studentinfo(stuid,stupassword,stuname,sex,stu_idcard,birthday,studepartname,stumajorname,stulevel,stutel,stuaddress,usertype) 
values(student_seq.nextval,'111111','姜超','男','371202199605257654',to_date('25-05-1996', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','本科','17853461423','山东济宁','S');
commit;
--教师表  新增用户类型(usertype)
create table teacherinfo(
       teacherid varchar2(16) primary key,
       teapassword varchar2(10) DEFAULT '000000' not null,
       teachername varchar2(64),
       sex varchar2(4),
       teacher_idcard varchar2(18),
       birthday date,
       teadepartname varchar2(64),
       teamajorname varchar2(64),
       teadegree varchar2(16),        --毕业学历
       teaposition varchar2(16),      --职位
       teatel varchar2(11),
       teaaddress varchar2(128),
       usertype VARCHAR2(2) DEFAULT 'T'  --T
);
create sequence teacher_seq 
increment by 1 
start with 413001 
minvalue 413001 
maxvalue 413999
nocache
NOCYCLE 
order;
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','张国厚','男','371202197602179876',to_date('17-02-1976', 'dd-mm-yyyy'),'信息管理学院','计算机技术','博士','教授','13963451265','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'222222','李梅','女','371202198105191254',to_date('19-05-1981', 'dd-mm-yyyy'),'经济管理学院','金融学','硕士','副教授','17853461278','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','韩芳','女','371202198206244321',to_date('24-06-1982', 'dd-mm-yyyy'),'信息管理学院','数据分析','硕士','副教授','17853461348','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','田贵云','男','371202198302156787',to_date('15-02-1983', 'dd-mm-yyyy'),'信息管理学院','计算机技术','硕士','副教授','17853468734','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','张潇潇','女','371202198704171344',to_date('17-04-1987', 'dd-mm-yyyy'),'信息管理学院','计算机科学与技术','硕士','副教授','17853467756','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','王菲','女','371202198608111267',to_date('11-08-1986', 'dd-mm-yyyy'),'信息管理学院','信息管理','硕士','副教授','17853462345','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','林志玲','女','371202198208199765',to_date('19-08-1982', 'dd-mm-yyyy'),'信息管理学院','网络工程','硕士','副教授','17853468975','山东德州','T');
insert into teacherinfo(teacherid,teapassword,teachername,sex,teacher_idcard,birthday,teadepartname,teamajorname,teadegree,teaposition,teatel,teaaddress,usertype) 
values(teacher_seq.nextval,'111111','张丽','女','371202198309208756',to_date('20-09-1983', 'dd-mm-yyyy'),'信息管理学院','大数据','硕士','副教授','17853464567','山东德州','T');
commit;
--管理员表  新增用户类型(usertype)
create table managerinfo(
       managerid varchar2(16) primary key,
       manpassword varchar2(10) DEFAULT '000000' not null,
       managername varchar2(64),
       sex varchar2(4),
       manager_idcard varchar2(18),
       birthday date,
       mandepartname varchar2(64),
       manposition varchar2(16),      --职位
       mantel varchar2(11),
       manaddress varchar2(128),
       usertype VARCHAR2(2) DEFAULT 'M'  --M
);
create sequence manager_seq 
increment by 1 
start with 101001 
minvalue 101001 
maxvalue 101999
nocache
NOCYCLE 
order;
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'111111','李涛','男','371202197308124368',to_date('12-08-1973', 'dd-mm-yyyy'),'教务处','副主任','17853461789','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','王敏','女','371202198012149856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'111111','李力','男','371202197308144368',to_date('12-08-1973', 'dd-mm-yyyy'),'教务处','副主任','17853461789','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','张慧','女','371202198012143856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'111111','王利民','男','37120319730814368',to_date('12-08-1973', 'dd-mm-yyyy'),'教务处','副主任','17853461789','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','刘涛','女','371204598012149856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'111111','吴亦凡','男','371202497308124368',to_date('12-08-1973', 'dd-mm-yyyy'),'教务处','副主任','17853461789','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','张珊珊','女','371202198412149856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'111111','李达康','男','371202197308124368',to_date('12-08-1973', 'dd-mm-yyyy'),'教务处','副主任','17853461789','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','刘晓红','女','371202198512149856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');
insert into managerinfo(managerid,manpassword,managername,sex,manager_idcard,birthday,mandepartname,manposition,mantel,manaddress,usertype) 
values(manager_seq.nextval,'222222','汪长诗','女','370202198512149856',to_date('14-12-1980', 'dd-mm-yyyy'),'行政管理','副主任','17853467782','山东德州','M');

commit;
select*from studentinfo;
select*from managerinfo;
SELECT*FROM teacherinfo;
select*from managerinfo where managername like '%涛%' and managerid like '%1%';




--院系表
create table depart(
       departid varchar2(16) primary key,
       departname varchar2(64) not null
);
create sequence depart_seq 
increment by 1 
start with 01 
minvalue 01 
maxvalue 1000 
nocache
NOCYCLE 
order;
insert into depart(departid,departname) values (depart_seq.nextval,'文学院');
insert into depart(departid,departname) values (depart_seq.nextval,'外国语学院');
insert into depart(departid,departname) values (depart_seq.nextval,'音乐学院');
insert into depart(departid,departname) values (depart_seq.nextval,'体育学院');
insert into depart(departid,departname) values (depart_seq.nextval,'数学科学学院');
insert into depart(departid,departname) values (depart_seq.nextval,'化学化工学院');
insert into depart(departid,departname) values (depart_seq.nextval,'信息管理学院');
insert into depart(departid,departname) values (depart_seq.nextval,'经济管理学院');
insert into depart(departid,departname) values (depart_seq.nextval,'政法学院');
insert into depart(departid,departname) values (depart_seq.nextval,'生命科学学院');
insert into depart(departid,departname) values (depart_seq.nextval,'机电工程学院');
commit;
select * from depart;

--专业表
create table major(
       majorid varchar2(16) primary key,
       majorname varchar2(64) not null
);
create sequence major_seq 
increment by 1 
start with 1001 
minvalue 1001 
maxvalue 9999 
nocache
NOCYCLE 
order;

insert into major(majorid,majorname) values (major_seq.nextval,'汉语言文学');
insert into major(majorid,majorname) values (major_seq.nextval,'经济学');
insert into major(majorid,majorname) values (major_seq.nextval,'金融学');
insert into major(majorid,majorname) values (major_seq.nextval,'田径运动');
insert into major(majorid,majorname) values (major_seq.nextval,'统计学');
insert into major(majorid,majorname) values (major_seq.nextval,'化学工程与工艺');
insert into major(majorid,majorname) values (major_seq.nextval,'计算机科学与技术');
insert into major(majorid,majorname) values (major_seq.nextval,'数学应用学');
insert into major(majorid,majorname) values (major_seq.nextval,'日语');
insert into major(majorid,majorname) values (major_seq.nextval,'软件工程');
insert into major(majorid,majorname) values (major_seq.nextval,'音乐教育学');
insert into major(majorid,majorname) values (major_seq.nextval,'法学');
commit;
select * from major;

--课表  新增开课时间、开课节次、课程号
create table classinfo(
  classid varchar2(16),       --课表号
  stuid varchar2(16),         --学号
  classname varchar2(64),     --课程名
  classdate varchar2(64),     --开课时间
  classjieci VARCHAR2(4),      --开课节次
  classplace varchar2(64),     --开课地点
  teacherid varchar2(16),      --教师ID
  courseid VARCHAR2(10)        --课程号
);
create sequence class_seq 
increment by 1 
start with 1 
minvalue 1 
maxvalue 1000
nocache
NOCYCLE 
order;
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','大学语文','4','2A-405','413003','3','1001');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','高等数学','1','1C-102','413007','1','1002');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','高等数学','2','1C-102','413007','1','1002');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','大学英语','3','2C-307','413005','1','1005');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','线性代数','2','2D-101','413008','2','1003');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004001','创业基础','5','2A-402','413006','4','1010');
insert into classinfo(classid,stuid,classname,classdate,classplace,teacherid,classjieci,courseid) 
values(class_seq.nextval,'201501004002','创业基础','2','2A-402','413006','1','1010');
commit;
select * from classinfo;
SELECT*FROM managerinfo;
ALTER TABLE classinfo ADD CONSTRAINT FK_course FOREIGN KEY(courseid) REFERENCES COURSEINFO(courseid);
SELECT*FROM courseinfo;

--选课表
create table selectcourse(
  selectid varchar2(16) primary key,
  stuid varchar2(16),
  courname varchar2(64),
  teacherid varchar2(16),
  courtype VARCHAR2(16),
  courseid VARCHAR2(10)
);
create sequence select_seq 
increment by 1 
start with 1 
minvalue 1 
maxvalue 1999
nocache
NOCYCLE 
order;
ALTER TABLE selectcourse ADD CONSTRAINT FK_select_course FOREIGN KEY(courseid) REFERENCES COURSEINFO(courseid);
insert into selectcourse(selectid,stuid,courname,teacherid,courtype,courseid) 
values(select_seq.nextval,'201501004001','大学语文','413003','必修','1001');
insert into selectcourse(selectid,stuid,courname,teacherid,courtype,courseid) 
values(select_seq.nextval,'201501004002','大学语文','413003','必修','1001');
insert into selectcourse(selectid,stuid,courname,teacherid,courtype,courseid) 
values(select_seq.nextval,'201501004001','大学英语','413005','必修','1005');
commit;
select * from selectcourse;

--课程表
create table courseinfo(
  courseid varchar2(16) primary key,
  coursename varchar2(64) not null,
  coursekind varchar2(64),             --学科门类
  coursetype varchar2(64),           --类型（选修/必修）
  credit number(2),                   --学分
  teacherid VARCHAR2(10)
);
create sequence course_seq 
increment by 1 
start with 1001 
minvalue 1001 
maxvalue 1999
nocache
NOCYCLE 
order;
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'大学语文','文科','必修',4,'413001');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'高等数学','理科','必修',4,'413004');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'线性代数','理科','必修',4,'413004');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'概率论','理科','必修',4,'413003');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'大学英语','文科','必修',4,'413002');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'英语视听说','文科','必修',4,'413005');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'高级程序设计','工科','必修',4,'413006');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'离散数学','工科','必修',4,'413003');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'唐诗宋词','文科','选修',2,'413008');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'创业基础','经济学','选修',2,'413007');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'C++程序设计','工学','必修',4,'413002');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'web前端开发','工学','必修',4,'413003');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'计算机网络','工学','必修',4,'413001');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'计算机组成原理','工学','必修',4,'413006');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'Java','工学','必修',4,'413003');
insert into courseinfo(courseid,coursename,coursekind,coursetype,credit,teacherid) 
values(course_seq.nextval,'PHP教程','工学','选修',4,'413002');
select * from courseinfo;
commit;


