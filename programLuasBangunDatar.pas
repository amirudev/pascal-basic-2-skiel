Program LuasBangunDatar;
Uses Crt;
Label
  Awal, Segiempat, Segitiga, Lingkaran, Selesai;
Var
  BangunDatar, Sisi, Alas, Tinggi, Radius : Integer;
  Luas : double;
  Jawab : Char;
Const
  Phi = 3.14;
Begin
  Awal:
    ClrScr;
    Writeln('PROGRAM TENTUKAN LUAS BANGUN DATAR');
    Writeln('----------------------------------');
    Writeln('WAHYU AMIRULLOH - X RPL 2');
    Writeln();
    Writeln('Pilih bangun datar');
    Writeln('1 - Segiempat / Persegi');
    Writeln('2 - Segitiga');
    Writeln('3 - Lingkaran');

    Readln(BangunDatar);

    Case BangunDatar of
      1 : Begin
        Goto Segiempat;
        End;
      2 : Begin
        Goto Segitiga;
        End;
      3 : Begin
        Goto Lingkaran;
        End;
    End;

  Segiempat:
    Writeln('Masukkan sisi dari Segiempat / Persegi : '); Readln(Sisi);
    Luas := Sisi * Sisi;
    Writeln('Luas bangun datar perseginya adalah : ', Luas : 10 : 2);
    Readln();
    Goto Selesai;

  Segitiga:
    Writeln('Masukkan alas dari Segitiga : '); Readln(Alas);
    Writeln('Masukkan tinggi dari Segitiga : '); Readln(Tinggi);
    Luas := Alas * Tinggi div 2;
    Writeln('Luas bangun datar segitiganya adalah : ', Luas : 10 : 2);
    Readln();
    Goto Selesai;

  Lingkaran:
    Writeln('Masukkan jari jari dari Lingkaran : '); Readln(Radius);
    Luas := Phi * Radius * Radius;
    Writeln('Luas bangun data lingkarannya adalah : ', Luas : 10 : 2);
    Readln();
    Goto Selesai;

  Selesai:
    Writeln('Apakah kamu mau mengulangi program lagi ? [Y/N]');
    Readln(Jawab);
    If(Jawab = 'Y') Then
      Goto Awal;
End.




