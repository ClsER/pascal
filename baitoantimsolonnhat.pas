PROGRAM TIM_CUC_DAI;

USES CRT;

TYPE DAYSO = ARRAY[1..100] OF INTEGER; (* ĐỊNH NGHĨA KIỂU 
LIỆU DÃY SỐ LÀ MỘT MẢNG GỒM NHIỀU NHẤT LÀ 100 PHẦN TỬ *)
VAR A : DAYSO;
    N : INTEGER;
// KHAI BÁO CHƯƠNG TRÌNH CON NHẬP DÃY SỐ CỰC ĐẠI VÀO!
PROCEDURE NHAPSO(M:INTEGER; VAR X:DAYSO);
VAR I:INTEGER;
BEGIN 
    WRITELN('NHAP DAY SO KIEU INTEGER: ');
    FOR I:=1 TO M DO 
    BEGIN 
        WRITE('A[',I,'] = ');READLN(X[I]);
    END;
END;
// KHAI BÁO FUNCTION TÌM GIÁ TRỊ MAX
FUNCTION MAX(M:INTEGER; B:DAYSO):INTEGER;
VAR I,T:INTEGER;
BEGIN
    T := B[1];
    FOR I:=2 TO M DO
    BEGIN
        IF T<B[I] THEN T:=B[I];
        MAX := T;
    END;
END;
// KHAI BÁO CHƯƠNG TRÌNH MẸ!
BEGIN
    WRITE('BAN CAN NHAP BAO NHIEU SO?: ');READLN(N);
    NHAPSO(N,A); // GỌI CHƯƠNG TRÌNH CON NHAPSO VỚI 
                // HAI THAM SỐ THỰC LÀ N VÀ A
               // HAI THAM SỐ SẼ THAY THẾ CHO
              //  M VÀ X TRONG CHƯƠNG TRÌNH CON! 
    WRITELN('SO LON NHAT TRONG DAY SO LA: ',MAX(N,A):5);
    REPEAT UNTIL KEYPRESSED;
END.