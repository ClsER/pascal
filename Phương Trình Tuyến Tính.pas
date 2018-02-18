PROGRAM PHUONG_TRINH_TUYEN_TINH; // KHAI BÁO TÊN CHƯƠNG TRÌNH!
// KHAI BÁO UNIT
USES CRT;
// KHAI BÁO TÊN CÁC BIẾN!
VAR X1,Y1,Z1,X2,Y2,Z2,DD,DX,DY:INTEGER;
// CHƯƠNG TRÌNH CHÍNH!
BEGIN
     WRITE('NHAP CAC GIA TRI X1,Y1,Z1,X2,Y2,Z2: ');READLN(X1,Y1,Z1,X2,Y2,Z2);
     // HIỂN THỊ PHƯƠNG TRÌNH TUYẾN TÍNH!
     WRITELN(X1,'X + ',Y1,'Y = ',Z1);
     WRITELN(X2,'X + ',Y2,'Y = ',Z2);
     // KHAI BÁO THUẬT TOÁN LẤY ĐIỂM D,DX,DY!    ( HUYỀN - SẮC )
     DD := X1*Y2 - Y1*X2;
     DX := Z1*Y2 - Y1*Z2;
     DY := X1*Z2 - Z1*X2;
     // BIỆN LUẬN PHƯƠNG TRÌNH TUYẾN TÍNH! XÉT 2 TRƯỜNG HỢP!
    // TH1: CHO DD = 0;
     IF DD = 0 THEN
     BEGIN   // BIỆN LUẬN DX VÀ DY = 0 THÌ VÔ SỐ NGHIỆM
        IF (DX = 0) AND (DY = 0) THEN WRITE('PHUONG TRINH VO SO NGHIEM!');
        // BIỆN LUẬN DX = 0 DY <> 0 HOẶC NGƯỢC LẠI THÌ VÔ NGHIỆM
        IF (DX = 0) AND (DY <> 0) OR (DY = 0) AND (DX <> 0) THEN WRITE('VN');
     END;
     IF DD <> 0 THEN // XÉT TIẾP TH2: DD <> 0
     BEGIN
        WRITELN('HE CO 2 NGHIEM X VA Y!');
        WRITE('X = ',DX/DD:4:2,'| Y = ',DY/DD:4:2);
     END;
     READLN; // DỪNG CHƯƠNG TRÌNH!
END.
