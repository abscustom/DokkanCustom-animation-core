--サポートメモリー_トランクスとマイの旅立ち
--support_memory_40009

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1400014;
SP_02 = 1400015;

------------------------------------------------------
-- 共通部分⭐︎⭐︎
------------------------------------------------------

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_101 = 1000000;  --ベースの背景演出-奥
SP_102 = 1000001;  --ベースの背景演出-手前
SP_103 = 1000002;  --終わりのオレンジの光

multi_frm = 2;

setVisibleUI(0, 0);

------------------------------------------------------
-- サポートメモリー演出(1182F)
------------------------------------------------------
spep_0 = 0;

--演出によって書き換えてください。
f = 1182; --終わりのf数を入れてください。

-- ** エフェクト等 ** --
--共通部分⭐︎⭐︎
entryEffectLife( spep_0 + 0, SP_101, f +10, 0x80, -1, 0, 0, 0 );  --ベース奥
entryEffectLife( spep_0 + 0, SP_102, f +10, 0x100, -1, 0, 0, 0, 1000 );  --ベース手前

--基本的には書き換えない⭐︎⭐︎(場合によっては書き換えてください)
entryEffectLife( spep_0 + 0, SP_01, 185, 0x100, -1, 0, 0, 0 );  --カットイン
entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0, 3000 );  --サポートメモリー映像

-- ** SE ** --
--共通部分⭐︎⭐︎
--冒頭
SE_XX1 = playSe( spep_0 + 10, 63 );
setSeVolumeByWorkId( spep_0 + 10, SE_XX1, 79 );
stopSe( spep_0 + 54, SE_XX1, 12 );

SE_XX2 = playSe( spep_0 + 10, 44 );
setSeVolumeByWorkId( spep_0 + 10, SE_XX2, 0 );
setSeVolumeByWorkId( spep_0 + 11, SE_XX2, 6.9 );
setSeVolumeByWorkId( spep_0 + 12, SE_XX2, 13.8 );
setSeVolumeByWorkId( spep_0 + 13, SE_XX2, 20.7 );
setSeVolumeByWorkId( spep_0 + 14, SE_XX2, 27.6 );
setSeVolumeByWorkId( spep_0 + 15, SE_XX2, 34.5 );
setSeVolumeByWorkId( spep_0 + 16, SE_XX2, 41.4 );
setSeVolumeByWorkId( spep_0 + 17, SE_XX2, 48.3 );
setSeVolumeByWorkId( spep_0 + 18, SE_XX2, 55.2 );
setSeVolumeByWorkId( spep_0 + 19, SE_XX2, 62.1 );
setSeVolumeByWorkId( spep_0 + 20, SE_XX2, 69 );
setSeVolumeByWorkId( spep_0 + 21, SE_XX2, 75.9 );
setSeVolumeByWorkId( spep_0 + 22, SE_XX2, 82.8 );

--メモリー決め
SE_XX3 = playSe( spep_0 + 46, 1062 );
setPitch( spep_0 + 46, SE_XX3, 300 );
setTimeStretch( SE_XX3, 1.2, 10, 1 );

SE_XX4 = playSe( spep_0 + 46, 20 );
setSeVolumeByWorkId( spep_0 + 46, SE_XX4, 38 );

--映写機音
SE_XX5 = playSe( spep_0 + 98, 70 );
setSeVolumeByWorkId( spep_0 + 98, SE_XX5, 158 );
setSeVolumeByWorkId( spep_0 + 190, SE_XX5, 158 );
setSeVolumeByWorkId( spep_0 + 194, SE_XX5, 148 );
setSeVolumeByWorkId( spep_0 + 198, SE_XX5, 132 );
setSeVolumeByWorkId( spep_0 + 202, SE_XX5, 126 );
setSeVolumeByWorkId( spep_0 + 206, SE_XX5, 115 );
setSeVolumeByWorkId( spep_0 + 210, SE_XX5, 107 );
setSeVolumeByWorkId( spep_0 + 214, SE_XX5, 100 );
setSeVolumeByWorkId( spep_0 + 218, SE_XX5, 96 );
setSeVolumeByWorkId( spep_0 + 222, SE_XX5, 93 );
setSeVolumeByWorkId( spep_0 + 226, SE_XX5, 89 );
setSeVolumeByWorkId( spep_0 + 230, SE_XX5, 85 );
setSeVolumeByWorkId( spep_0 + 234, SE_XX5, 78 );
setSeVolumeByWorkId( spep_0 + 238, SE_XX5, 71 );
setSeVolumeByWorkId( spep_0 + 242, SE_XX5, 64 );
setSeVolumeByWorkId( spep_0 + 246, SE_XX5, 57 );
setSeVolumeByWorkId( spep_0 + 250, SE_XX5, 50 );
setSeVolumeByWorkId( spep_0 + 252, SE_XX5, 45 );

--メモリー光る
SE_XX6 = playSe( spep_0 + 156, 46 );
setSeVolumeByWorkId( spep_0 + 156, SE_XX6, 38 );

SE_XX7 = playSe( spep_0 + 156, 1115 );
setTimeStretch( SE_XX7, 1.11, 10, 1 );
stopSe( spep_0 + 156 +78, SE_XX7, 92 );

--演出によって書き換えてください
--飛行音
SE001 = playSeVer2( spep_0 + 200, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 200, SE001, 24, 700 );
SE002 = playSeVer2( spep_0 + 264, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 264, SE002, 24, 700 );

--マイセリフカットイン
SE003 = playSeVer2( spep_0 + 272, 1018, "", 0, 0, 0, -1);

--飛行音
SE004 = playSeVer2( spep_0 + 328, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 328, SE004, 24, 700 );

--トランクスセリフカットイン
SE005 = playSeVer2( spep_0 + 384, 1048, "", 0, 0, 0, -1);

--飛行音
SE006 = playSeVer2( spep_0 + 392, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 392, SE006, 24, 700 );

--レバー倒す
SE007 = playSeVer2( spep_0 + 466, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE007, 71 );
setStartTimeMs( SE007,  433 );

--飛行音
SE008 = playSeVer2( spep_0 + 456, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 456, SE008, 24, 700 );

--レバー倒す
SE009 = playSeVer2( spep_0 + 472, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE009, 155 );
SE010 = playSeVer2( spep_0 + 472, 29, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 480, 1012, "",spep_0 + 498, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 480, SE011, 72 );
SE012 = playSeVer2( spep_0 + 482, 1197, "",spep_0 + 490, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 482, SE012, 60 );

--ブースト
SE013 = playSeVer2( spep_0 + 514, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE013, 71 );

--飛行音
SE014 = playSeVer2( spep_0 + 520, 1019, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 520, SE014, 24, 700 );

--ブースト
SE015 = playSeVer2( spep_0 + 520, 1011, "", 0, 0, 0, -1);

--浮上する
SE016 = playSeVer2( spep_0 + 568, 1336, "",spep_0 + 868, 0, 114, -1);
SE017 = playSeVer2( spep_0 + 568, 1326, "",spep_0 + 872, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 568, SE017, 66 );
SE018 = playSeVer2( spep_0 + 568, 1327, "",spep_0 + 782, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 568, SE018, 71 );
SE019 = playSeVer2( spep_0 + 584, 1311, "", 0, 0, 0, -1);
setTimeStretch( SE019, 1.23, 30, 4 );

--悟飯見上げる
SE020 = playSeVer2( spep_0 + 752, 1175, "",spep_0 + 1006, 48, 112, -1);
setSeVolumeByWorkId( spep_0 + 752, SE020, 25 );
setStartTimeMs( SE020,  833 );

--画面遷移
SE021 = playSeVer2( spep_0 + 770, 1232, "", 0, 0, 0, -1);

--悟飯見上げる
SE022 = playSeVer2( spep_0 + 784, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE022, 72 );

--画面遷移
SE023 = playSeVer2( spep_0 + 852, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 852, SE023, 66 );

--飛行音
SE024 = playSeVer2( spep_0 + 864, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 864, SE024, 63 );
SE025 = playSeVer2( spep_0 + 928, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 928, SE025, 63 );

--上昇する
SE026 = playSeVer2( spep_0 + 1032, 1204, "",spep_0 + 1166, 40, 38, -1);
setStartTimeMs( SE026,  1333 );

--飛行音
SE027 = playSeVer2( spep_0 + 992, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 992, SE027, 63 );

--上昇する
SE028 = playSeVer2( spep_0 + 1024, 1336, "",spep_0 + 1112, 18, 26, -1);
setStartTimeMs( SE028,  633 );
SE029 = playSeVer2( spep_0 + 1018, 1215, "",spep_0 + 1178, 74, 48, -1);
SE030 = playSeVer2( spep_0 + 1028, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE030, 78 );
SE031 = playSeVer2( spep_0 + 1028, 1326, "",spep_0 + 1112, 32, 26, -1);

--飛行音
SE032 = playSeVer2( spep_0 + 1056, 1019, "",spep_0 + 1104, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1056, SE032, 63 );

--消える
SE033 = playSeVer2( spep_0 + 1082, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1082, SE033, 69 );
SE034 = playSeVer2( spep_0 + 1082, 1303, "",spep_0 + 1164, 0, 40, -1);
SE035 = playSeVer2( spep_0 + 1082, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1082, SE035, 141 );

-- ** 終わり部分 ** --
--共通部分⭐︎⭐︎
entryEffect( spep_0 + f -52, SP_103, 0x100, -1, 0, 0, 0, 5000 );  --最後のオレンジ
entryFadeBg( spep_0 + 0 , 0, f +2 , 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --白背景
entryFade( spep_0 + f -6 , 0, 10, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --白

--SE
stopSe( spep_0 + f -54, SE_XX5, 54 );
SE_XX8 = playSe( spep_0 + f -54, 63 );
setSeVolumeByWorkId( spep_0 + f -54 +0, SE_XX8, 0 );
setSeVolumeByWorkId( spep_0 + f -54 +1, SE_XX8, 2.7 );
setSeVolumeByWorkId( spep_0 + f -54 +2, SE_XX8, 5.4 );
setSeVolumeByWorkId( spep_0 + f -54 +3, SE_XX8, 8.1 );
setSeVolumeByWorkId( spep_0 + f -54 +4, SE_XX8, 10.8 );
setSeVolumeByWorkId( spep_0 + f -54 +5, SE_XX8, 13.5 );
setSeVolumeByWorkId( spep_0 + f -54 +6, SE_XX8, 16.2 );
setSeVolumeByWorkId( spep_0 + f -54 +7, SE_XX8, 18.9 );
setSeVolumeByWorkId( spep_0 + f -54 +8, SE_XX8, 21.6 );
setSeVolumeByWorkId( spep_0 + f -54 +9, SE_XX8, 24.3 );
setSeVolumeByWorkId( spep_0 + f -54 +10, SE_XX8, 27 );
setSeVolumeByWorkId( spep_0 + f -54 +11, SE_XX8, 29.7 );
setSeVolumeByWorkId( spep_0 + f -54 +12, SE_XX8, 32.4 );
setSeVolumeByWorkId( spep_0 + f -54 +13, SE_XX8, 35.1 );
setSeVolumeByWorkId( spep_0 + f -54 +14, SE_XX8, 37.8 );
setSeVolumeByWorkId( spep_0 + f -54 +15, SE_XX8, 40.5 );
setSeVolumeByWorkId( spep_0 + f -54 +16, SE_XX8, 43.2 );
setSeVolumeByWorkId( spep_0 + f -54 +17, SE_XX8, 45.9 );
setSeVolumeByWorkId( spep_0 + f -54 +18, SE_XX8, 48.6 );
setSeVolumeByWorkId( spep_0 + f -54 +19, SE_XX8, 51.3 );
setSeVolumeByWorkId( spep_0 + f -54 +20, SE_XX8, 54 );
setSeVolumeByWorkId( spep_0 + f -54 +21, SE_XX8, 56.7 );
setSeVolumeByWorkId( spep_0 + f -54 +22, SE_XX8, 59.4 );
setSeVolumeByWorkId( spep_0 + f -54 +23, SE_XX8, 62.1 );
setSeVolumeByWorkId( spep_0 + f -54 +24, SE_XX8, 64.8 );
setSeVolumeByWorkId( spep_0 + f -54 +25, SE_XX8, 67.5 );
setSeVolumeByWorkId( spep_0 + f -54 +26, SE_XX8, 70.2 );
setSeVolumeByWorkId( spep_0 + f -54 +27, SE_XX8, 72.9 );
setSeVolumeByWorkId( spep_0 + f -54 +28, SE_XX8, 75.6 );
setSeVolumeByWorkId( spep_0 + f -54 +29, SE_XX8, 78.3 );
setSeVolumeByWorkId( spep_0 + f -54 +30, SE_XX8, 81 );
setSeVolumeByWorkId( spep_0 + f -54 +31, SE_XX8, 83.7 );
setSeVolumeByWorkId( spep_0 + f -54 +32, SE_XX8, 86.4 );
setStartTimeMs( SE_XX8,  450 );
setTimeStretch( SE_XX8, 1.18, 10, 1 );

--終わり
endPhase(spep_0 + f);
