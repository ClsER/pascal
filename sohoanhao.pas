(*////////////////////////////////////////////////
                                                /
Đề: Nhập vào 1 mảng 1 chiều chứa n phần tử,    /
đếm xem trong mảng có bao nhiêu số hoàn hảo   /
và in các số hoàn hảo đó ra. Pascal nhé      /
                                            /
////////////////////////////////////////////*)
PROGRAM BAITAP1;

USES CRT;

TYPE DAYSO = ARRAY[1..10000000] OF LONGINT; // TẠO MẢNG CHỨA GIÁ TRỊ
                                           // N < POW(10,7)
VAR A:DAYSO;
    N,I:INTEGER;
//////////////////////////////////////////// TẠO CHƯƠNG TRÌNH CON XỬ LÍ
PROCEDURE NHAPSO(M:INTEGER; VAR X:DAYSO);// PHẦN NHẬP DỮ LIỆU VÀO MẢNG!
VAR I:INTEGER;
BEGIN
   WRITELN('NHAP CAC PHAN TU VAO: ');
   FOR I:=1 TO M DO
   BEGIN
        WRITE('A[',I,'] = ');READLN(X[I]);
   END;
END; //////////////////////////////////// TẠO CHƯƠNG TRÌNH KIỂM TRA
FUNCTION SOHOANHAO(N:INTEGER):BOOLEAN;// GIÁ TRỊ N CÓ PHẢI LÀ SỐ HOÀN HẢO HAY KHÔNG
VAR I,S_UOC:LONGINT;
BEGIN
     S_UOC:=0;
     FOR I:=1 TO (N-1) DO
     IF (N MOD I) = 0 THEN S_UOC := S_UOC + I;
     SOHOANHAO := (N = S_UOC);
END;
////////////////////////////////////////////
BEGIN//////////////////// KHAI BÁO CHƯƠNG TRÌNH CHÍNH
     WRITE('NHAP SO PHAN TU CAN NHAP VAO MANG: ');READLN(N);
     NHAPSO(N,A);
     // LẤY VỊ TRÍ CHỨA CÁC SỐ HOÀN HẢO!
     FOR I:=1 TO N DO
     IF SOHOANHAO(A[I]) = TRUE THEN WRITELN('SO HOAN HAO TON TAI O VI TRI: ',I);
     READLN;
END.
