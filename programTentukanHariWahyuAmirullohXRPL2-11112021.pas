Program TentukanHari;
Uses Crt;
Label Awal, Baca1, Baca2;
Var
  TH, BL, JH : Integer;
  Lagi : Char;
Begin
  Awal:
    ClrScr;
    GotoXY(20,5); Write('Program Tentukan Jumlah Hari');
    GotoXY(20,6); Write('----------------------------');
  Baca1:
    GotoXY(20,8); Write('Masukkan Angka Tahun : '); Readln(TH);
    If Not((TH < 100) Or (TH > 1000)) Then
      Begin
        GotoXY(20, 8); Clreol;
        Write(#7); GoTo Baca1;
      End;
    Baca2:
      GotoXY(20, 9); Write('Masukkan Angka Bulan : '); Readln(BL);
      If((BL < 1) or (BL > 12)) Then
        Begin
          GotoXY(20, 9); Clreol;
          Write(#7); Goto Baca2;
        End;
      Case BL of
        1, 3, 5, 7, 8, 10, 12 : JH := 31;
        4, 6, 9, 11 : JH := 30;
        2 : Begin
          If(TH mod 2 = 0) Then
            JH := 29
          Else
            JH := 28
          End;
        End;
      GotoXY(20, 12); Write('Jumlah Hari = ', JH);
      GotoXY(20, 15); Write('Main Lagi [Y/N] ? '); Readln(Lagi);
      If(Lagi = 'Y') or (Lagi = 'y') Then
        Goto Awal;
    Readln;
    End.