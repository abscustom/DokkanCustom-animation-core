--1034120:LR_パーフェクトセル_登場時演出
--sp_effect_a9_00177
--pse0126

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164537; --セリフカットイン〜フィニッシュまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 最初 〜 最後まで
------------------------------------------------------
MAX_FRAME_0 = 1420;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--再生する
SE002 = playSeVer2( spep_0 + 0, 1456, "",spep_0 + 226, 0, 101, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
SE003 = playSeVer2( spep_0 + 31, 1473, "",spep_0 + 66, 0, 6, -1);
SE004 = playSeVer2( spep_0 + 66, 1473, "",spep_0 + 101, 0, 6, -1);
SE005 = playSeVer2( spep_0 + 101, 1418, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 101, 1456, "",spep_0 + 380, 0, 38, -1);
SE007 = playSeVer2( spep_0 + 101, 1459, "",spep_0 + 378, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 101, SE007, 155 );
SE008 = playSeVer2( spep_0 + 101, 1214, "",spep_0 + 369, 0, 30, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 327, 8, "", 0, 0, 0, -1);

--風圧
SE010 = playSeVer2( spep_0 + 389, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 389, SE010, 63 );
SE011 = playSeVer2( spep_0 + 389, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 389, SE011, 81 );
SE012 = playSeVer2( spep_0 + 424, 1226, "",spep_0 + 848, 0, 178, -1);
setSeVolumeByWorkId( spep_0 + 424, SE012, 45 );
SE013 = playSeVer2( spep_0 + 433, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 433, SE013, 62 );

--イナヅマ
SE014 = playSeVer2( spep_0 + 561, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 561, SE014, 56 );

--オーラ
SE015 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE015, 50 );
SE016 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE016, 50 );

--セリフカットイン	
E017 = playSeVer2( spep_0 + 709, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 709, SE017, 63 );

--オーラ
SE018 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE018, 50 );

--イナヅマ
SE019 = playSeVer2( spep_0 + 741, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 741, SE019, 56 );

--オーラ
SE020 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE020, 50 );
SE021 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE021, 50 );
SE022 = playSeVer2( spep_0 + 796, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE022, 50 );
SE023 = playSeVer2( spep_0 + 820, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE023, 50 );
SE024 = playSeVer2( spep_0 + 844, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE024, 50 );
SE025 = playSeVer2( spep_0 + 868, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE025, 50 );
SE026 = playSeVer2( spep_0 + 892, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE026, 50 );
SE027 = playSeVer2( spep_0 + 916, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE027, 50 );
SE028 = playSeVer2( spep_0 + 940, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 940, SE028, 50 );
SE029 = playSeVer2( spep_0 + 964, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE029, 50 );

--イナヅマ
SE030 = playSeVer2( spep_0 + 987, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 987, SE030, 56 );

--オーラ
SE031 = playSeVer2( spep_0 + 988, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 988, SE031, 50 );
SE032 = playSeVer2( spep_0 + 1012, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1012, SE032, 50 );
SE033 = playSeVer2( spep_0 + 1036, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE033, 50 );
SE034 = playSeVer2( spep_0 + 1060, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE034, 50 );
SE035 = playSeVer2( spep_0 + 1084, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE035, 50 );
SE036 = playSeVer2( spep_0 + 1108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1108, SE036, 50 );
SE037 = playSeVer2( spep_0 + 1132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE037, 50 );

--イナヅマ
SE038 = playSeVer2( spep_0 + 1133, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1133, SE038, 56 );

--オーラ
SE039 = playSeVer2( spep_0 + 1156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1156, SE039, 50 );
SE040 = playSeVer2( spep_0 + 1180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1180, SE040, 50 );
SE041 = playSeVer2( spep_0 + 1204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1204, SE041, 50 );
SE042 = playSeVer2( spep_0 + 1228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1228, SE042, 50 );
SE043 = playSeVer2( spep_0 + 1252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1252, SE043, 50 );
SE044 = playSeVer2( spep_0 + 1276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1276, SE044, 50 );
SE045 = playSeVer2( spep_0 + 1300, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1300, SE045, 50 );
SE046 = playSeVer2( spep_0 + 1324, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1324, SE046, 50 );

--イナヅマ
SE047 = playSeVer2( spep_0 + 1347, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1347, SE047, 56 );

--オーラ
SE048 = playSeVer2( spep_0 + 1348, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1348, SE048, 50 );

--ラスト決め
SE049 = playSeVer2( spep_0 + 1346, 1369, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_0 + 1372, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1372, SE050, 50 );
SE051 = playSeVer2( spep_0 + 1396, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1396, SE051, 50 );


-- ** ボイス ** --
--「ただの完全体ではないはるかにパワーアップしているぞ」
playVoice( spep_0 + 716, 1243 );
setVoiceVolume( spep_0 + 716, 1243, 116 );

--「より完璧になってここに帰ってくることができたのだ…」
playVoice( spep_0 + 1069, 1244 );
setVoiceVolume( spep_0 + 1069, 1244, 116 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1420f

end