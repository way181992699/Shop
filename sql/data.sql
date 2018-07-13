---------------------------------------��ṹ----------------------------------------------
-- ��Ʒ��
create table T_MC
(
  MCID        NUMBER primary key,
  MCNAME      VARCHAR2(20),
  MCDECX      VARCHAR2(1024),
  PRICE       NUMBER(11,2),
  PIC         VARCHAR2(500),
  FLAG        CHAR(1),
  SMALLTYPEID NUMBER,
  CREATEDATE  DATE,
  QUANTITY    NUMBER
);

-- ��Ʒ����
create table T_MCTYPE
(
  TYPEID   NUMBER primary key,
  TYPENAME VARCHAR2(50),
  FATHERID NUMBER
);

-- ǰ̨�û���
create table T_USER
(
  USERID     NUMBER primary key,
  USERNAME   VARCHAR2(20),
  PASSWORD   VARCHAR2(20),
  TRUENAME   VARCHAR2(20),
  USERSEX    CHAR(1),
  BIRTHDAY   DATE,
  EMAIL      VARCHAR2(50),
  PHONENO    VARCHAR2(20),
  POSTCADE   VARCHAR2(20),
  ADDRESS    VARCHAR2(1024),
  REGDATE    DATE,
  LOCKSTATE  CHAR(1),
  LASTACCESS DATE,
  LOGIN      NUMBER
);

-- ������
create table T_ORDERS
(
  ORDERID      VARCHAR2(20) primary key,
  USERID       NUMBER,
  QUANTITY     NUMBER,
  ALLTYPE      NUMBER,
  TOTALPRICE   NUMBER(11,2),
  PAYTYPE      VARCHAR2(20),
  RECEIVEDTYPE VARCHAR2(20),
  USERNAME     VARCHAR2(20),
  ADDRESS      VARCHAR2(500),
  POSTCODE     VARCHAR2(20),
  PHONENO      VARCHAR2(20),
  EMAIL        VARCHAR2(20),
  ORDERDATE    DATE,
  STATUS       CHAR(1),
  APPROVEDUSER VARCHAR2(20),
  APPROVEDDATE DATE,
  MSG          VARCHAR2(1024)
);

-- ���������
create table T_ORDERDETAIL
(
  DETAILID NUMBER primary key,
  ORDERID  VARCHAR2(20),
  MCID     NUMBER,
  BUYNUM   NUMBER
);
-- ��̨����Ա��
create table T_MANAGER
(
  MID       NUMBER(5) primary key,
  MUSERNAME VARCHAR2(20),
  MPASSWORD VARCHAR2(20),
  MTRUENAME VARCHAR2(20),
  MSEX      VARCHAR2(4),
  MLEVEL    NUMBER(2),
  MDATE     DATE
);
------------------------------�������------------------------------------------------
--��Ʒ�������
create sequence seq_t_mctype
start with 20
increment by 1;
--ǰ̨�û�
create sequence seq_t_user
start with 20
increment by 1;
--��Ʒ��Ϣ����
create sequence seq_t_mc
start with 20
increment by 1;
--��̨����Ա����
create sequence seq_t_manager
start with 20
increment by 1;
--������������
create sequence seq_t_ORDERDETAIL
start with 20
increment by 1;

----------------------------- ���� -----------------------------------------
-- ��Ʒ��Ϣ����
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (1, '����IXUS510', '�������:  �����������' || chr(13) || '' || chr(10) || '��Ч����:  1010������' || chr(13) || '' || chr(10) || '�佹����:  12����ѧ�佹' || chr(13) || '' || chr(10) || '����佹����:  4������佹' || chr(13) || '' || chr(10) || '����ģʽ:  ȫ�Զ�' || chr(13) || '' || chr(10) || '����������:  CMOS������' || chr(13) || '' || chr(10) || '�������ߴ�:  1/2.3Ӣ��', 1399, '1379390427587.jpg', '0', 6, to_date('17-09-2013 11:58:30', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (2, '����LEGRIAHFR46', '�ͺ�:  EOS C100' || chr(13) || '' || chr(10) || '��Ʒ����:  רҵ�����' || chr(13) || '' || chr(10) || '������;  830������' || chr(13) || '' || chr(10) || '��ѧ�佹:  �޹�ѧ�佹' || chr(13) || '' || chr(10) || '����������:  CMOS������,HD CMOS' || chr(13) || '' || chr(10) || '�������ߴ�:  1/4.85Ӣ��' || chr(13) || '' || chr(10) || 'LCDҺ����:  3.5Ӣ��', 2988, '1379390605786.jpg', '0', 7, to_date('17-09-2013 12:02:50', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (3, '����S21', '�ͺ�:  S21' || chr(13) || '' || chr(10) || '��Ʒ����:  ���������,���������' || chr(13) || '' || chr(10) || '������:  500������' || chr(13) || '' || chr(10) || '��ѧ�佹:  �޹�ѧ�佹' || chr(13) || '' || chr(10) || '����佹����:  4��' || chr(13) || '' || chr(10) || '��ͷ����:  f=7.0mm,F=3.25,��Ч��35mm f=52mm(��̬����)' || chr(13) || '' || chr(10) || 'LCDҺ����:  3.0Ӣ��' || chr(13) || '' || chr(10) || '����������:  CMOS������' || chr(13) || '' || chr(10) || '�������ߴ�:  1/2.5Ӣ��', 1899, '1379390716971.jpg', '0', 7, to_date('17-09-2013 12:04:41', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (4, '�ȸ�Nexus7', '�ͺű��' || chr(9) || 'Nexus 7(32G/4G)' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'Android,4.1' || chr(13) || '' || chr(10) || '������' || chr(9) || 'Nvidia Tegra 3,T30L' || chr(13) || '' || chr(10) || '����������' || chr(9) || '�ĺ�' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '1.3GHz' || chr(13) || '' || chr(10) || 'ϵͳ�ڴ�' || chr(9) || '1GB' || chr(13) || '' || chr(10) || '�洢����' || chr(9) || '32GB' || chr(13) || '' || chr(10) || 'Ӳ������' || chr(9) || '����Ӳ��' || chr(13) || '' || chr(10) || '������' || chr(9) || '����������,�����⴫����,��������,���ٴ�����', 2299, '1379390815568.jpg', '0', 4, to_date('17-09-2013 12:06:13', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (5, 'ƻ��iPadMini', '�ͺű��' || chr(9) || 'iPad Mini(16G/WiFi��)' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'iOS,6.0' || chr(13) || '' || chr(10) || '������' || chr(9) || 'Apple A5(1GHz)' || chr(13) || '' || chr(10) || '����������' || chr(9) || '˫��' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '1.0GHz' || chr(13) || '' || chr(10) || 'ϵͳ�ڴ�' || chr(9) || '512MB' || chr(13) || '' || chr(10) || '�洢����' || chr(9) || '16GB' || chr(13) || '' || chr(10) || '������' || chr(9) || '���ᴫ����,�����⴫����,������,���ٸ�Ӧ��', 2899, '1379393048296.jpg', '0', 4, to_date('17-09-2013 12:43:35', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (6, '΢��XboxSurface', '�ͺű��' || chr(9) || 'Xbox Surface' || chr(13) || '' || chr(10) || '������' || chr(9) || 'IBM POWER7' || chr(13) || '' || chr(10) || '����������' || chr(9) || '12��' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '3.1GHz' || chr(13) || '' || chr(10) || 'ϵͳ�ڴ�' || chr(9) || '5GB' || chr(13) || '' || chr(10) || '�ڴ�����' || chr(9) || 'DDR3,LRDIMM' || chr(13) || '' || chr(10) || '�洢����' || chr(9) || '250GB' || chr(13) || '' || chr(10) || '�Կ�оƬ' || chr(9) || 'AMD GCN' || chr(13) || '' || chr(10) || '������' || chr(9) || '����������', 2399, '1379393186240.jpg', '0', 4, to_date('17-09-2013 12:45:11', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (7, 'JVCGZGX8BACM', '�ͺ�' || chr(9) || 'GZ-GX8BACM' || chr(13) || '' || chr(10) || '��Ʒ����' || chr(9) || '���������,���������' || chr(13) || '' || chr(10) || '������' || chr(9) || '1000������' || chr(13) || '' || chr(10) || '��ѧ�佹' || chr(9) || '10��' || chr(13) || '' || chr(10) || '��Ȧ��Χ' || chr(9) || 'F1.2(�����Ȧ)' || chr(13) || '' || chr(10) || 'LCDҺ����' || chr(9) || '3.5Ӣ��' || chr(13) || '' || chr(10) || '��Ļ����' || chr(9) || '������' || chr(13) || '' || chr(10) || '����������' || chr(9) || 'CMOS������,����ʽCMOS������' || chr(13) || '' || chr(10) || '�������ߴ�' || chr(9) || '1/2.3Ӣ��', 8399, '1379390753896.jpg', '0', 7, to_date('17-09-2013 12:05:20', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (8, 'ThinkPidB470', '��Ļ�ߴ�:15Ӣ�� CPU�ͺţ�Intel ���i5 3110M ', 4542, 'thinkpid.jpg', '0', 3, to_date('04-09-2013 11:30:54', 'dd-mm-yyyy hh24:mi:ss'), 43);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (9, '����NEX900E', '�ͺ�:  ���� NEX VG-900E' || chr(13) || '' || chr(10) || '��Ʒ����:  ���������' || chr(13) || '' || chr(10) || '������:  1280������' || chr(13) || '' || chr(10) || '��ѧ�佹:  �޹�ѧ�佹' || chr(13) || '' || chr(10) || '��Ȧ��Χ:  F2.8' || chr(13) || '' || chr(10) || 'LCDҺ����:  2.7Ӣ��' || chr(13) || '' || chr(10) || '����������:  CMOS������������', 2499, '1379390646146.jpg', '0', 7, to_date('17-09-2013 12:03:31', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (10, '����GalaxyTab', '�ͺű��' || chr(9) || 'Galaxy Tab 3 10.1' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'Android,4.2' || chr(13) || '' || chr(10) || '��λ' || chr(9) || 'Ӣ�ض�оƽ��' || chr(13) || '' || chr(10) || '������' || chr(9) || 'Intel Atom Z2560' || chr(13) || '' || chr(10) || '����������' || chr(9) || '˫��' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '1.6GHz' || chr(13) || '' || chr(10) || 'ϵͳ�ڴ�' || chr(9) || '1GB' || chr(13) || '' || chr(10) || '�洢����' || chr(9) || '16GB' || chr(13) || '' || chr(10) || '������' || chr(9) || '����������,�����⴫����', 2399, '1379393011732.jpg', '0', 4, to_date('17-09-2013 12:42:12', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (11, '����IdeaCentre', '�ͺ�' || chr(9) || 'K315 ' || chr(13) || '' || chr(10) || '����' || chr(9) || '����̨ʽ��' || chr(13) || '' || chr(10) || '������' || chr(9) || 'AMD Athlon II X4 631' || chr(13) || '' || chr(10) || '����������' || chr(9) || '����II�ĺ�' || chr(13) || '' || chr(10) || '������Ƶ��' || chr(9) || '2.6GHz' || chr(13) || '' || chr(10) || '��������' || chr(9) || 'L2 4M' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'DOSϵͳ', 3499, '1379393238043.jpg', '0', 2, to_date('17-09-2013 12:46:50', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (12, '����HPE355CN', '�ͺ�' || chr(9) || 'HPE-355CN' || chr(13) || '' || chr(10) || '����' || chr(9) || '����̨ʽ��' || chr(13) || '' || chr(10) || '������' || chr(9) || 'Intel Core i7 930' || chr(13) || '' || chr(10) || '����������' || chr(9) || '���i7' || chr(13) || '' || chr(10) || '������Ƶ��' || chr(9) || '2.8GHz' || chr(13) || '' || chr(10) || '�������ӿ�' || chr(9) || 'LGA 1366' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'Windows 7 Home Premium' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '133MHz', 3599, '1379393287601.jpg', '0', 2, to_date('17-09-2013 12:47:26', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (13, '����Inspiron560s', '�ͺ�' || chr(9) || 'Inspiron 560s(I560SD-158)' || chr(13) || '' || chr(10) || '����' || chr(9) || '����̨ʽ��' || chr(13) || '' || chr(10) || '������' || chr(9) || 'Intel Core2 Duo E7500 2.93G' || chr(13) || '' || chr(10) || '����������' || chr(9) || '���2˫��' || chr(13) || '' || chr(10) || '������Ƶ��' || chr(9) || '2.93GHz' || chr(13) || '' || chr(10) || '�������ӿ�' || chr(9) || 'LGA 775' || chr(13) || '' || chr(10) || '����ϵͳ' || chr(9) || 'Windows 7 Home Basic' || chr(13) || '' || chr(10) || '��������Ƶ' || chr(9) || '200MHz', 3799, '1379393316849.jpg', '0', 2, to_date('17-09-2013 12:48:13', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (14, '����B470', '��Ļ�ߴ�:14Ӣ�� CPU�ͺţ�Intel ���i3 3110M ', 3242, 'lenson.jpg', '1', 3, to_date('08-09-2013 13:05:27', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (15, '����G480', '��Ļ�ߴ磺14Ӣ�� 1366x768' || chr(10) || 'CPU�ͺţ�Intel ���i5 3230M' || chr(10) || 'CPU��Ƶ��2.6GHz' || chr(10) || '�ڴ�������4GB DDR3' || chr(10) || 'Ӳ��������500GB 5400ת' || chr(10) || '�Կ�оƬ��NVIDIA GeForce GT 610M', 3256, 'lenovoG4801.jpg', '0', 3, to_date('11-09-2013 16:31:41', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (16, '����Inspiron��Խ', '��Ļ�ߴ磺14Ӣ�� 1366x768CPU�ͺţ�Intel ���i5 3337UCPU��Ƶ��1.8GHz �ڴ�������4GB DDR3 1600MHzӲ��������500GB 5400ת', 3242, 'dell14R1.jpg', '0', 3, to_date('11-09-2013 16:31:41', 'dd-mm-yyyy hh24:mi:ss'), 49);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (17, '����NX300', '�ͺ�:  NX300�׻�(��18-55mm��ͷ)' || chr(13) || '' || chr(10) || '�������:  �����������' || chr(13) || '' || chr(10) || '������:  2160������' || chr(13) || '' || chr(10) || '��չ�佹:  ���ܱ༭:1.2��,1.4��,1.7��,2��' || chr(13) || '' || chr(10) || '����ģʽ:  ��ȫ�ֶ�����' || chr(13) || '' || chr(10) || '����������:  CMOS������' || chr(13) || '' || chr(10) || '�������ߴ�:  23.5��15.7mm' || chr(13) || '' || chr(10) || '����������:  ɫ���˾�ϵͳ:RGBԭɫ�˾�; �����:3:2,16:9,1:1', 3999, '1379390524388.jpg', '0', 6, to_date('17-09-2013 12:01:14', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (18, '����F14217SCW', '��Ļ�ߴ磺14Ӣ�� 1600x900' || chr(10) || 'CPU�ͺţ�Intel ���i5 3337U' || chr(10) || 'CPU��Ƶ��1.8GHz' || chr(10) || '�ڴ�������4GB DDR3L 1600MHz���͵�ѹ�棩' || chr(10) || 'Ӳ��������750GB 5400ת' || chr(10) || '�Կ�оƬ��NVIDIA GeForce GT 740M ', 3800, 'sonyB.jpg', '0', 3, to_date('11-09-2013 16:14:10', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (19, '����1542ETD', '��Ļ�ߴ磺14Ӣ�� 1600x900' || chr(10) || 'CPU�ͺţ�Intel ���i3 3337U' || chr(10) || 'CPU��Ƶ��1.8GHz' || chr(10) || '�ڴ�������4GB DDR3L 1600MHz���͵�ѹ�棩' || chr(10) || 'Ӳ��������750GB 5400ת' || chr(10) || '�Կ�оƬ��NVIDIA GeForce GT 740M ', 4899, 'sonyB1.jpg', '0', 3, to_date('11-09-2013 16:31:42', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (20, '��������', '��ʾ���ߴ磺20Ӣ��' || chr(10) || 'CPU �ͺţ�Intel ��� i5 3470' || chr(10) || '�ڴ�������4GB DDR3' || chr(10) || 'Ӳ��������1TB 7200ת' || chr(10) || '�Կ�оƬ��AMD Radeon HD 7450 1GB', 5000, 'lenovoA1.jpg', '0', 2, to_date('11-09-2013 16:31:42', 'dd-mm-yyyy hh24:mi:ss'), 49);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (21, 'Ipad4', '��Ļ�ߴ磺9.7Ӣ�� ����ʽ������' || chr(10) || '����ϵͳ��iOS 5.1' || chr(10) || '�洢������16GB' || chr(10) || '��Ļ�ֱ��ʣ�2048x1536', 3500, 'ipad1.jpg', '0', 4, to_date('11-09-2013 16:31:42', 'dd-mm-yyyy hh24:mi:ss'), 50);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (22, 'SonyTX66', '�������ԣ���Ƭ��' || chr(10) || '��Ч���أ�1820��' || chr(10) || '��ʾ���ߴ磺3.3Ӣ�� 123������Һ���� ��ѧ�佹��5��' || chr(10) || '��������ȫ���壨1080��' || chr(10) || '�������ܣ���ѧ����', 1300, 'sonyPhoto1.jpg', '0', 6, to_date('11-09-2013 16:31:42', 'dd-mm-yyyy hh24:mi:ss'), 49);
insert into T_MC (MCID, MCNAME, MCDECX, PRICE, PIC, FLAG, SMALLTYPEID, CREATEDATE, QUANTITY)
values (23, '����IXUS230', '�������ԣ���Ƭ��' || chr(13) || '' || chr(10) || '��Ч���أ�1210��' || chr(13) || '' || chr(10) || '��ʾ���ߴ磺3Ӣ�� 46������Һ����' || chr(13) || '' || chr(10) || '��ѧ�佹��8��' || chr(13) || '' || chr(10) || '�������ܣ���ѧ����' || chr(13) || '' || chr(10) || '�������ߴ磺��1/2.3��Ӣ�� ����ʽCMOS', 1160, 'canonPhoto1.jpg', '1', 6, to_date('11-09-2013 16:31:42', 'dd-mm-yyyy hh24:mi:ss'), 0);
commit;

--- ��Ʒ��������
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (1, '�����', 0);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (2, '̨ʽ��', 1);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (3, '�ʼǱ�', 1);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (4, '���ϵ���', 1);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (5, '�����Ʒ', 0);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (6, '���������', 5);
insert into T_MCTYPE (TYPEID, TYPENAME, FATHERID)
values (7, '���������', 5);
commit;
--- ǰ̨�û� ����
insert into T_USER (USERID, USERNAME, PASSWORD, TRUENAME, USERSEX, BIRTHDAY, EMAIL, PHONENO, POSTCADE, ADDRESS, REGDATE, LOCKSTATE, LASTACCESS, LOGIN)
values (1, 'a00001', '123456', '����', '0', to_date('12-12-2001', 'dd-mm-yyyy'), '12345@qq.com', '15394415750', '123456', '������', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), '0', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into T_USER (USERID, USERNAME, PASSWORD, TRUENAME, USERSEX, BIRTHDAY, EMAIL, PHONENO, POSTCADE, ADDRESS, REGDATE, LOCKSTATE, LASTACCESS, LOGIN)
values (2, 'a00002', '123456', '����', '1', to_date('12-06-1991', 'dd-mm-yyyy'), '12345@qq.com', '15394415750', '123456', '������', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), '0', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into T_USER (USERID, USERNAME, PASSWORD, TRUENAME, USERSEX, BIRTHDAY, EMAIL, PHONENO, POSTCADE, ADDRESS, REGDATE, LOCKSTATE, LASTACCESS, LOGIN)
values (3, 'a00003', '123456', '����', '1', to_date('12-05-2001', 'dd-mm-yyyy'), '12345@qq.com', '15394415750', '123456', '������', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into T_USER (USERID, USERNAME, PASSWORD, TRUENAME, USERSEX, BIRTHDAY, EMAIL, PHONENO, POSTCADE, ADDRESS, REGDATE, LOCKSTATE, LASTACCESS, LOGIN)
values (4, 'Test', '888888', '������', '0', to_date('11-06-1991', 'dd-mm-yyyy'), '179491757@qq.com', '15394415750', '350001', '�����й�¥��', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), '0', to_date('07-12-2016 17:51:33', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;

-- ������ ����

insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917205949004', 4, 5, 3, 14586, '����������', '���', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('11-09-2013 20:59:47', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210122004', 4, 2, 2, 6741, '����������', '���', '����', '�����н�����', '350001', '18259002145', '179491757@qq.com', to_date('12-09-2013 21:01:00', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210253004', 4, 2, 2, 7199, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('12-09-2013 21:02:52', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210356004', 4, 2, 2, 5641, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('11-09-2013 21:03:55', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210940004', 4, 1, 1, 2988, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 21:09:39', 'dd-mm-yyyy hh24:mi:ss'), '2', 'SuperAdmin', to_date('17-09-2013 22:27:10', 'dd-mm-yyyy hh24:mi:ss'), '��Ʒ��·�ϱ��ƻ�');
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210231004', 4, 2, 2, 3599, '����������', '���', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('15-09-2013 21:02:30', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210452004', 4, 2, 2, 12941, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('16-09-2013 21:04:51', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210616004', 4, 1, 1, 3799, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('16-09-2013 21:06:15', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210638004', 4, 1, 1, 5000, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('15-09-2013 21:06:37', 'dd-mm-yyyy hh24:mi:ss'), '2', 'admin001', to_date('17-09-2013 22:29:34', 'dd-mm-yyyy hh24:mi:ss'), '��˹�﷨ʦ��˹�ٷҰ�˹�ٷ����ط�');
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917212607004', 4, 1, 1, 5000, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 21:26:05', 'dd-mm-yyyy hh24:mi:ss'), '1', 'SuperAdmin', to_date('17-09-2013 22:19:54', 'dd-mm-yyyy hh24:mi:ss'), '��˹�﷨ʦ��˹�ٷҰ�˹�ٷ����ط�');
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917205525004', 4, 3, 2, 6786, '����������', '���', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('17-09-2013 20:55:23', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210709004', 4, 2, 2, 5555, '����������', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('11-09-2013 21:07:08', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917170655004', 4, 1, 1, 1399, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('06-09-2013 17:06:54', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917205558004', 4, 1, 1, 2299, '����������', '���', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 20:55:56', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210028004', 4, 2, 2, 12398, '���߸���', 'ƽ��', '������', '�����й�¥��', '350014', '15394415750', '179491757@qq.com', to_date('15-09-2013 21:00:18', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210040004', 4, 1, 1, 3499, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('16-09-2013 21:00:39', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210142004', 4, 1, 1, 2899, '����������', '���', '����', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 21:01:34', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210324004', 4, 1, 1, 3256, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('16-09-2013 21:03:22', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210425004', 4, 1, 1, 2499, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 21:04:24', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210507004', 4, 1, 1, 3256, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('15-09-2013 21:05:05', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210547004', 4, 3, 3, 7397, '����������', '��������', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('14-09-2013 21:05:46', 'dd-mm-yyyy hh24:mi:ss'), '0', null, null, null);
insert into T_ORDERS (ORDERID, USERID, QUANTITY, ALLTYPE, TOTALPRICE, PAYTYPE, RECEIVEDTYPE, USERNAME, ADDRESS, POSTCODE, PHONENO, EMAIL, ORDERDATE, STATUS, APPROVEDUSER, APPROVEDDATE, MSG)
values ('130917210754004', 4, 5, 5, 14095, '���߸���', 'ƽ��', '������', '�����й�¥��', '350001', '15394415750', '179491757@qq.com', to_date('16-09-2013 21:07:52', 'dd-mm-yyyy hh24:mi:ss'), '1', 'SuperAdmin', to_date('17-09-2013 22:19:12', 'dd-mm-yyyy hh24:mi:ss'), '��Ʒ�㹻�����ڷ���');
commit;

--- �������� ����
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (24, '130917205949004', 21, 2);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (25, '130917205949004', 4, 2);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (26, '130917205949004', 2, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (30, '130917210122004', 16, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (31, '130917210122004', 11, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (35, '130917210253004', 6, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (36, '130917210253004', 18, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (38, '130917210356004', 16, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (39, '130917210356004', 6, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (56, '130917210940004', 2, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (33, '130917210231004', 4, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (34, '130917210231004', 22, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (41, '130917210452004', 8, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (42, '130917210452004', 7, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (47, '130917210616004', 13, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (48, '130917210638004', 20, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (57, '130917212607004', 20, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (21, '130917205525004', 2, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (22, '130917205525004', 3, 2);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (49, '130917210709004', 4, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (50, '130917210709004', 15, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (1, '130917170655004', 1, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (23, '130917205558004', 4, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (27, '130917210028004', 17, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (28, '130917210028004', 7, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (29, '130917210040004', 11, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (32, '130917210142004', 5, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (37, '130917210324004', 15, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (40, '130917210425004', 9, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (43, '130917210507004', 15, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (44, '130917210547004', 1, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (45, '130917210547004', 12, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (46, '130917210547004', 10, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (51, '130917210754004', 4, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (52, '130917210754004', 11, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (53, '130917210754004', 10, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (54, '130917210754004', 17, 1);
insert into T_ORDERDETAIL (DETAILID, ORDERID, MCID, BUYNUM)
values (55, '130917210754004', 3, 1);
commit;