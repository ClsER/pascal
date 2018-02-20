PROGRAM CODE;

USES CRT;

VAR N:INTEGER;

(* CÁCH 1 *)

VAR I,S,N:INTEGER; { KHAI BÁO 3 BIẾN CHỨA ĐỂ LƯU TRỮ GIÁ TRỊ }

BEGIN
     S:=0; { KHAI BÁO GIÁ TRỊ TỔNG BAN ĐẦU BẰNG 0 }
     WRITELN('NHAP N: ');READLN(N); { NHẬP VÀ LƯU GIÁ TRỊ N }
     FOR I:=1 TO N DO S:=S+I; { TẠO VÒNG LẶP TỪ 1 CỘNG DỒN GIÁ TRỊ CHO S }
     WRITELN('TONG CUA S(N) LA: ',S); { XUẤT GIÁ TRỊ RA MÀN HÌNH }
     { DÙNG READLN; TẠM DỪNG CHƯƠNG TRÌNH ĐỂ XEM KẾT QUẢ }
     READLN;
END.

(* Cách 2 dùng đệ quy *) 
/////////////////////////////////////////////////////////////////////// Cách 2
                                                                    //
{TAO CHUONG TRINH CON DE DUNG DE QUY}                              //
FUNCTION TINHTONG(N:INTEGER):LONGINT;                             //
BEGIN                                                            //
     IF (N = 1) THEN TINHTONG := 1                              // 
     ELSE TINHTONG := TINHTONG(N-1)+N;                         //
END;                                                          //
{CHUONG TRINH CHINH}                                         //
BEGIN                                                       //
     WRITE('NHAP N: ');READLN(N);                          //
     WRITE('TONG LA: ',TINHTONG(N));                      //
     READLN;                                             //
END.                                                    // 
/////////////////////////////////////////////////////////









