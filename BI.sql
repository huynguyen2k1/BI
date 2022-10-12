select * from KHACH_HANG;
INSERT INTO KHACH_HANG (MA_KH, TEN_KH, DIA_CHI, SDT, EMAIL) VALUES ('KH2','Nguy?n Quang Huy','H?i D??ng', '098898989','huy@345');
INSERT INTO KHACH_HANG (MA_KH, TEN_KH, DIA_CHI, SDT, EMAIL) VALUES ('KH3','Nguy?n Ph??ng','H?ng �n', '098898987','ph@345');
INSERT INTO KHACH_HANG (MA_KH, TEN_KH, DIA_CHI, SDT, EMAIL) VALUES ('KH4','H� Th? Nguy?n','B?c Giang', '0568898989','jimmy@345');
INSERT INTO KHACH_HANG (MA_KH, TEN_KH, DIA_CHI, SDT, EMAIL) VALUES ('KH5','Tr?n Th?o','Th�i Nguy�n','0988989812','thao@345');
select * from loai_sp;
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP1','V�ng tay',101);
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP2','V�ng c?',999);
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP3','Nh?n',120);
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP4','Th?t l?ng',99);
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP5','Khuy�n tai',55);
INSERT INTO loai_sp (MA_LSP, ten_lsp, so_luong) VALUES ('LSP6','M�c kh�a',230);

CREATE TABLE SAN_PHAM 
(
  MA_SP CHAR(10) NOT NULL primary key
, TEN_SP VARCHAR2(200) 
, MA_LSP CHAR(10),
FOREIGN KEY (MA_LSP)REFERENCES loai_sp
, MO_TA VARCHAR2(200) 
, DON_GIA FLOAT 
);
SELECT * FROM san_pham;
INSERT INTO san_pham (ma_sp, ten_sp, ma_lsp,mo_ta,don_gia) VALUES ('SP1','M�c kh�a Astro','LSP6','',20000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('VT1','Vong tay KAMENRA','LSP1','',50000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('VT2','Vong tay WHEEL','LSP1','',15000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('VC1','Vong co ICON','LSP2','',70000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('VC2','Vong co NIGHTFURY','LSP2','',70000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('NH1','Nhan EAGLE EYE','LSP3','',30000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('NH2','Nhan PLAIN','LSP3','',30000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('TL1','That lung FORD','LSP4','',125000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('TL2','That lung DG','LSP4','',90000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('KT1','Khuyen tai SMILE','LSP5','',50000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('KT2','Khuyen tai KAMADO','LSP5','',50000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('MK1','Moc khoa IRONMAN','LSP6','',25000);
INSERT INTO san_pham(ma_sp, ten_sp, ma_lsp, mo_ta, don_gia) VALUES ('MK2','Moc khoa GREY','LSP6','',25000);

CREATE TABLE NHAN_VIEN 
(
  MA_NV CHAR(10) NOT NULL primary key, 
  TEN_NV NVARCHAR2(100),
  FB NVARCHAR2(200),
  S?T CHAR(15),
  TK_NH NVARCHAR2(200)
);
DROP table NHAN_VIEN;
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV1','Nguy?n Th? H?ng Ph??ng','Phuong Nguyen','09786799737','Techcombank: 01264875');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV2','Tran Thi Hue','Hue Tran','0567833249','Techcombank: 19036 0051 78902');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV3','Tran Huyen Trang','Huyen Trang','0367177268','Viettin: 1018 7726 9125');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV4','Nguyen Mai Huong','Mai Huong Nguyen','0973240516','Techcombank: 19035 2270 84820');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV5','Dao Thi Cam','Cam Dao','0349112835','Vietcombank: 0731 000 878 422');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV6','Le Van Dao','Dao Lee','0972445671','Techcombank: 19036 8855 70142');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV7','Tran Tuan Khai','Tuan Khai','0353511412','MB; 0680 168 722 911');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV8','Vu Ngoc Ha','Ngoc Ha','0373581246','TPBank: 5684 254 4313');
INSERT INTO NHAN_VIEN(MA_NV, TEN_NV, FB, S?T, TK_NH) VALUES ('NV9','Nguyen Thi Ha','Ha Nguyen','0387442561','Viettin: 1068 6874 5540');
CREATE TABLE PHUONG_THUC_THANH_TOAN 
(
  MA_PT CHAR(10) NOT NULL primary key, 
  TEN_PT NVARCHAR2(100)
);
CREATE TABLE DON_VI_VAN_CHUYEN 
(
  MA_DVVC CHAR(10) NOT NULL primary key, 
  TEN_DVVC NVARCHAR2(100),
  SDT CHAR(15),
  DIA_CHI NVARCHAR2(200)
);
CREATE TABLE CHI_TIET_HD 
(
  MA_HD CHAR(10) , 
  MA_SP CHAR(10),
  FOREIGN KEY (MA_SP)REFERENCES SAN_PHAM, 
  MA_KM CHAR(10),
  FOREIGN KEY (MA_KM)REFERENCES KHUYEN_MAI, 
  SO_LUONG NUMBER,
  CHIET_KHAU FLOAT,
  TONG_TIEN FLOAT, 
  DON_VI_TINH NVARCHAR2(50)
);
DROP TABLE CHI_TIET_HD;

CREATE TABLE HOA_DON 
(
  MA_HD CHAR(10) NOT NULL primary key, 
  MA_NV CHAR(10),
  FOREIGN KEY (MA_NV)REFERENCES NHAN_VIEN, 
  MA_KH CHAR(10),
  FOREIGN KEY (MA_KH)REFERENCES KHACH_HANG,
  MA_DVVC char(10),
  FOREIGN KEY (MA_DVVC)REFERENCES DON_VI_VAN_CHUYEN,
  MA_PT char(10),
  FOREIGN KEY (MA_PT)REFERENCES PHUONG_THUC_THANH_TOAN,
  Ngay_Giao_Dich date
);
DROP TABLE HOA_DON;
CREATE TABLE KHUYEN_MAI 
(
  MA_KM CHAR(10) NOT NULL primary key, 
  TEN_KM CHAR(10),
  PHAN_TRAM NUMBER,
  CHI_TIET_KM nvarchar2(200),
  NGAY_BD DATE,
  NGAY_KT DATE
);
create trigger Tinhtoan on Chi_tiet_HD for insert, update as
begin
update CHI_TIET_HD
set CHI_TIET_HD.TongTien = i.SO_LUONG * s.DON_GIA
from (inserted i inner join CHI_TIET_HD c on i.MA_HD = c.MA_HD) inner join SAN_PHAM s on
s.Ma_SP = i.Ma_SP
update Chi_tiet_HD
end,
