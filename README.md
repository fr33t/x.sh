# x.sh
for ctf misc

file, hexdump, strings, binwalk, foremost

## Usage:
```bash
./x.sh file
./x.sh file > log.txt
```
## Example
```bash
kali@kali:~/WinDownloads$ /usr/local/bin/x.sh 1.jpg
############################### Hex Dump ###############################
00000000  ff d8 ff e0 00 10 4a 46  49 46 00 01 01 00 00 01  |......JFIF......|
00000010  00 01 00 00 ff db 00 43  00 0d 09 0a 0b 0a 08 0d  |.......C........|
00000020  0b 0a 0b 0e 0e 0d 0f 13  20 15 13 12 12 13 27 1c  |........ .....'.|
00000030  1e 17 20 2e 29 31 30 2e  29 2d 2c 33 3a 4a 3e 33  |.. .)10.)-,3:J>3|
00000040  36 46 37 2c 2d 40 57 41  46 4c 4e 52 53 52 32 3e  |6F7,-@WAFLNRSR2>|
00000050  5a 61 5a 50 60 4a 51 52  4f ff db 00 43 01 0e 0e  |ZaZP`JQRO...C...|
00000060  0e 13 11 13 26 15 15 26  4f 35 2d 35 4f 4f 4f 4f  |....&..&O5-5OOOO|
00000070  4f 4f 4f 4f 4f 4f 4f 4f  4f 4f 4f 4f 4f 4f 4f 4f  |OOOOOOOOOOOOOOOO|
*
00000090  4f 4f 4f 4f 4f 4f 4f 4f  4f 4f 4f 4f 4f 4f ff c0  |OOOOOOOOOOOOOO..|
000000a0  00 11 08 02 8b 01 eb 03  01 22 00 02 11 01 03 11  |........."......|
000000b0  01 ff c4 00 1f 00 00 01  05 01 01 01 01 01 01 00  |................|
000000c0  00 00 00 00 00 00 00 01  02 03 04 05 06 07 08 09  |................|
000000d0  0a 0b ff c4 00 b5 10 00  02 01 03 03 02 04 03 05  |................|
000000e0  05 04 04 00 00 01 7d 01  02 03 00 04 11 05 12 21  |......}........!|
000000f0  31 41 06 13 51 61 07 22  71 14 32 81 91 a1 08 23  |1A..Qa."q.2....#|
00000100  42 b1 c1 15 52 d1 f0 24  33 62 72 82 09 0a 16 17  |B...R..$3br.....|
00000110  18 19 1a 25 26 27 28 29  2a 34 35 36 37 38 39 3a  |...%&'()*456789:|
00000120  43 44 45 46 47 48 49 4a  53 54 55 56 57 58 59 5a  |CDEFGHIJSTUVWXYZ|
00000130  63 64 65 66 67 68 69 6a  73 74 75 76 77 78 79 7a  |cdefghijstuvwxyz|
00000140  83 84 85 86 87 88 89 8a  92 93 94 95 96 97 98 99  |................|
00000150  9a a2 a3 a4 a5 a6 a7 a8  a9 aa b2 b3 b4 b5 b6 b7  |................|
00000160  b8 b9 ba c2 c3 c4 c5 c6  c7 c8 c9 ca d2 d3 d4 d5  |................|
00000170  d6 d7 d8 d9 da e1 e2 e3  e4 e5 e6 e7 e8 e9 ea f1  |................|
00000180  f2 f3 f4 f5 f6 f7 f8 f9  fa ff c4 00 1f 01 00 03  |................|
00000190  01 01 01 01 01 01 01 01  01 00 00 00 00 00 00 01  |................|
000001a0  02 03 04 05 06 07 08 09  0a 0b ff c4 00 b5 11 00  |................|
000001b0  02 01 02 04 04 03 04 07  05 04 04 00 01 02 77 00  |..............w.|
000001c0  01 02 03 11 04 05 21 31  06 12 41 51 07 61 71 13  |......!1..AQ.aq.|
000001d0  22 32 81 08 14 42 91 a1  b1 c1 09 23 33 52 f0 15  |"2...B.....#3R..|
000001e0  62 72 d1 0a 16 24 34 e1  25 f1 17 18 19 1a 26 27  |br...$4.%.....&'|
000001f0  28 29 2a 35 36 37 38 39  3a 43 44 45 46 47 48 49  |()*56789:CDEFGHI|
00000200  4a 53 54 55 56 57 58 59  5a 63 64 65 66 67 68 69  |JSTUVWXYZcdefghi|
00000210  6a 73 74 75 76 77 78 79  7a 82 83 84 85 86 87 88  |jstuvwxyz.......|
00000220  89 8a 92 93 94 95 96 97  98 99 9a a2 a3 a4 a5 a6  |................|
00000230  a7 a8 a9 aa b2 b3 b4 b5  b6 b7 b8 b9 ba c2 c3 c4  |................|
00000240  c5 c6 c7 c8 c9 ca d2 d3  d4 d5 d6 d7 d8 d9 da e2  |................|
00000250  e3 e4 e5 e6 e7 e8 e9 ea  f2 f3 f4 f5 f6 f7 f8 f9  |................|
00000260  fa ff da 00 0c 03 01 00  02 11 03 11 00 3f 00 f4  |.............?..|
00000270  ea 28 a2 80 0a 28 a4 a0  05 a4 a5 a4 a0 05 a2 92  |.(...(..........|
00000280  96 80 0a 28 a2 80 0a 28  a2 80 0a 4a 5a 4a 00 29  |...(...(...JZJ.)|
00000290  69 28 a0 05 a2 92 8c e2  80 16 92 ab 4b a8 5a 45  |i(..........K.ZE|
...
000098a0  f4 bb 01 d2 0c b5 97 42  f9 e8 cc 0e aa 40 a1 7e  |.......B.....@.~|
000098b0  e4 e2 fd 00 87 37 c8 67  64 a0 87 2d 05 6a af 49  |.....7.gd..-.j.I|
000098c0  f4 2f 7f 5e 7d 5c b0 31  2c e2 09 68 0f 37 8b bc  |./.^}\.1,..h.7..|
000098d0  86 20 9e da 57 7e 1d b9  ac e9 14 3c 83 cd 5c ec  |. ..W~.....<..\.|
000098e0  0c d4 5c e6 5a 71 db 20  a9 b5 22 0e 3f f3 13 ea  |..\.Zq. ..".?...|
000098f0  a9 a9 73 af 64 ed d2 a4  3e ce bd 0d 8b f5 7d 4e  |..s.d...>.....}N|
00009900  f4 81 12 5d 9b 52 b9 dc  2a 6e 43 b1 1a b7 44 0f  |...].R..*nC...D.|
00009910  28 2e c6 21 8b f6 4d 1c  8e 3d 9e 80 c1 d7 85 57  |(..!..M..=.....W|
00009920  3d 63 1f 46 4b 96 5a 72  05 81 84 62 99 86 63 e5  |=c.FK.Zr...b..c.|
00009930  50 d6 c4 32 d0 7f b5 c3  fa f8 26 ac d7 a6 75 35  |P..2......&...u5|
00009940  9d 43 f1 e9 45 9f 6f b2  c6 db 1f ce f9 97 b2 0f  |.C..E.o.........|
00009950  82 e5 4b c3 29 da 4f 29  12 df b1 0c 3b f3 fb 17  |..K.).O)....;...|
00009960  00 1f 5f 8a 8c c1 92                              |.._....|
00009967


############################### Strings-Default ###############################
JFIF
 .)10.)-,3:J>36F7,-@WAFLNRSR2>ZaZP`JQRO
&O5-5OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
$3br
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz
        #3R
&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz
pk)U
ka;=
B+xJ
N6,QIKV@QE
-%-lb
OAY^5
8$621
6j2\U
2AEn~^
e`NI#
Cg#ad_
^hai
^Myw.
Q[zW
        c$d
dH?:
}rjI
CAVA
@m|7
TYn"
{05K
uB;G
M62O
...
ele|>
        wrw
YF1KL
        o,m
TN*>
############################### Strings-Flag ###############################

############################### Strings-Base_encode ###############################



############################### File Type ###############################
1.jpg:  JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 491x651, components 3


############################### Exiftool ###############################
ExifTool Version Number         : 12.76
File Name                       : 1.jpg
Directory                       : .
File Size                       : 39 kB
File Modification Date/Time     : 2024:08:11 11:02:49+08:00
File Access Date/Time           : 2024:08:11 11:03:19+08:00
File Inode Change Date/Time     : 2024:08:11 11:02:49+08:00
File Permissions                : -rwxrwxrwx
File Type                       : JPEG
File Type Extension             : jpg
MIME Type                       : image/jpeg
JFIF Version                    : 1.01
Resolution Unit                 : None
X Resolution                    : 1
Y Resolution                    : 1
Image Width                     : 491
Image Height                    : 651
Encoding Process                : Baseline DCT, Huffman coding
Bits Per Sample                 : 8
Color Components                : 3
Y Cb Cr Sub Sampling            : YCbCr4:2:0 (2 2)
Image Size                      : 491x651
Megapixels                      : 0.320


############################### Binwalk ###############################

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             JPEG image data, JFIF standard 1.01
38884         0x97E4          Zlib compressed data, default compression
############################### Foremost ###############################
Processing: 1.jpg
|*|
```
