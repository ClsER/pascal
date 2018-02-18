PROGRAM TINH_S_P_HCN; // KHAI BÁO TÊN CHƯƠNG TRÌNH!
// KHAI BÁO CÁC BIẾN CHỨA
VAR DAI,RONG,I:INTEGER;
    S,P:REAL;
// CHƯƠNG TRÌNH CHÍNH!
BEGIN
     FOR I:=3 DOWNTO 0 DO // CHO VÒNG LẶP GIẢM
     BEGIN               // GIỚI HẠN SỐ LẦN NHẬP VÀO!
        WRITE('NHAP CHIEU DAI VA CHIEU RONG?: ');READLN(DAI,RONG);
        IF (DAI OR RONG < 100) THEN
        BEGIN
            // KHAI BÁO CÔNG THỨC TÍNH S VÀ P
            S := DAI*RONG;
            P := (DAI + RONG)/2;
            // IN S VÀ P RA MÀN HÌNH!
            WRITE('S: ',S:4:2,'| P: ',P:4:2);
            READLN;
            BREAK;
        END
        ELSE
          WRITE('BAN CON ',I,' DE NHAP! ');
        IF I = 0 THEN
        BEGIN
          WRITE('VUI LONG THU LAI SAU!');
          BREAK;
        END;
     END;
END.
