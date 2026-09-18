--1022190:孫悟空(天使)&ベジータ(天使)_融合_tf0030
--battle_301214

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01=	3137;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0, SP_01, 2, 1);

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1266, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1266, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1266, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1266, active, 255 );

-------------------------------------------
--SE
-------------------------------------------

--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 18 );
stopSe( spep_0 + 356, SE001, 10 );

--悟空腕振る
SE002 = playSe( spep_0 + 14, 1003 );
setSeVolumeByWorkId( spep_0 + 14, SE002, 93 );
setPitch( spep_0 + 14, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--ベジータ足踏み
SE003 = playSe( spep_0 + 76, 1106 );
setSeVolumeByWorkId( spep_0 + 76, SE003, 120 );

--ベジータ足踏み
SE004 = playSe( spep_0 + 76, 1301 );
setSeVolumeByWorkId( spep_0 + 76, SE004, 140 );

--ベジータ足踏み
SE005 = playSe( spep_0 + 102, 1192 );
setSeVolumeByWorkId( spep_0 + 102, SE005, 25 );
setSeVolumeByWorkId( spep_0 + 104, SE005, 50 );
setSeVolumeByWorkId( spep_0 + 106, SE005, 75 );
setSeVolumeByWorkId( spep_0 + 108, SE005, 100 );
stopSe( spep_0 + 116, SE005, 10 );

--ベジータ足踏み
SE006 = playSe( spep_0 + 102, 1301 );
setSeVolumeByWorkId( spep_0 + 102, SE006, 78 );

--ベジータ足踏み
SE007 = playSe( spep_0 + 106, 1106 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 95 );

--二人近づく
SE008 = playSe( spep_0 + 124, 1106 );
setSeVolumeByWorkId( spep_0 + 124, SE008, 178 );

--二人近づく
SE009 = playSe( spep_0 + 124, 1108 );
setSeVolumeByWorkId( spep_0 + 124, SE009, 158 );

--二人近づく
SE010 = playSe( spep_0 + 134, 1107 );
setSeVolumeByWorkId( spep_0 + 134, SE010, 178 );

--二人近づく
SE011 = playSe( spep_0 + 134, 1108 );
setSeVolumeByWorkId( spep_0 + 134, SE011, 158 );

--二人近づく
SE012 = playSe( spep_0 + 144, 1108 );
setSeVolumeByWorkId( spep_0 + 144, SE012, 158 );

--二人近づく
SE013 = playSe( spep_0 + 146, 1106 );

--二人近づく
SE014 = playSe( spep_0 + 150, 1108 );
setSeVolumeByWorkId( spep_0 + 150, SE014, 158 );

--二人近づく
SE015 = playSe( spep_0 + 154, 1107 );

--二人腕を反対に
SE016 = playSe( spep_0 + 186, 1189 );

--二人腕を反対に
SE017 = playSe( spep_0 + 186, 1003 );

--二人指近づける
SE018 = playSe( spep_0 + 240, 1004 );
setSeVolumeByWorkId( spep_0 + 240, SE018, 74 );

--二人指近づける
SE019 = playSe( spep_0 + 240, 44 );
stopSe( spep_0 + 270, SE019, 30 );

--二人指近づける
SE020 = playSe( spep_0 + 270, 1004 );
setPitch( spep_0 + 270, SE020, 100 );
setTimeStretch( SE020, 1.07, 10, 1 );

--指合わさる
SE021 = playSe( spep_0 + 340, 1145 );
setSeVolumeByWorkId( spep_0 + 340, SE021, 15 );
setSeVolumeByWorkId( spep_0 + 342, SE021, 30 );
setSeVolumeByWorkId( spep_0 + 344, SE021, 45 );
setSeVolumeByWorkId( spep_0 + 346, SE021, 60 );
setSeVolumeByWorkId( spep_0 + 348, SE021, 75 );
setSeVolumeByWorkId( spep_0 + 350, SE021, 110 );
stopSe( spep_0 + 384, SE021, 30 );
setStartTimeMs( SE021,  417 );
setPitch( spep_0 + 340, SE021, 500 );
setTimeStretch( SE021, 1.33, 10, 1 );

--指合わさる
SE022 = playSe( spep_0 + 340, 1027 );
setSeVolumeByWorkId( spep_0 + 340, SE022, 97 );
setPitch( spep_0 + 340, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );

--指合わさる
SE023 = playSe( spep_0 + 340, 1312 );
setSeVolumeByWorkId( spep_0 + 340, SE023, 96 );
setPitch( spep_0 + 340, SE023, 300 );
setTimeStretch( SE023, 1.2, 10, 1 );

--奥で青く光る
SE024 = playSe( spep_0 + 384, 1231 );
setSeVolumeByWorkId( spep_0 + 384, SE024, 141 );

--奥で青く光る
SE025 = playSe( spep_0 + 388, 1311 );
setSeVolumeByWorkId( spep_0 + 388, SE025, 170 );
setTimeStretch( SE025, 1.26, 30, 5 );

--奥で青く光る
SE026 = playSe( spep_0 + 388, 1202 );
setSeVolumeByWorkId( spep_0 + 388, SE026, 100 );

--奥で青く光る
SE027 = playSe( spep_0 + 388, 1307 );
setSeVolumeByWorkId( spep_0 + 388, SE027, 133 );

--シルエット光る
SE028 = playSe( spep_0 + 494, 1284 );
setSeVolumeByWorkId( spep_0 + 494, SE028, 65 );
stopSe( spep_0 + 494 + 140, SE028, 60 );

--シルエット光る
SE029 = playSe( spep_0 + 494, 1231 );
setSeVolumeByWorkId( spep_0 + 494, SE029, 158 );

--シルエット光る
SE030 = playSe( spep_0 + 494, 1024 );

--宇宙
SE031 = playSe( spep_0 + 524, 1175 );
setSeVolumeByWorkId( spep_0 + 524, SE031, 63 );

--宇宙
SE032 = playSe( spep_0 + 558, 1305 );
setSeVolumeByWorkId( spep_0 + 558, SE032, 72 );
stopSe( spep_0 + 682, SE032, 22 );

--宇宙光る
SE033 = playSe( spep_0 + 638, 1289 );
setSeVolumeByWorkId( spep_0 + 638, SE033, 52 );
setPitch( spep_0 + 638, SE033, 400 );
setTimeStretch( SE033, 1.27, 10, 1 );

--オーラ
SE034 = playSe( spep_0 + 708, 1036 );

--服はためく
SE035 = playSe( spep_0 + 714, 1332 );
setSeVolumeByWorkId( spep_0 + 714, SE035, 251 );

--服はためく
SE036 = playSe( spep_0 + 714, 1333 );
setSeVolumeByWorkId( spep_0 + 714, SE036, 168 );
setPitch( spep_0 + 714, SE036, -600 );
setTimeStretch( SE036, 0.85, 30, 4 );

--環境音
SE037 = playSe( spep_0 + 714, 1269 );
setSeVolumeByWorkId( spep_0 + 714, SE037, 21 );

--オーラ
SE038 = playSe( spep_0 + 732, 1036 );

--煙広がる
SE039 = playSe( spep_0 + 756, 1278 );
stopSe( spep_0 + 828, SE039, 74 );

--オーラ
SE040 = playSe( spep_0 + 756, 1036 );

--オーラ
SE041 = playSe( spep_0 + 780, 1036 );

--煙広がる
SE042 = playSe( spep_0 + 800, 1188 );
setSeVolumeByWorkId( spep_0 + 800, SE042,16 );
setSeVolumeByWorkId( spep_0 + 804, SE042,32 );
setSeVolumeByWorkId( spep_0 + 808, SE042,48 );
setSeVolumeByWorkId( spep_0 + 812, SE042,64 );
setSeVolumeByWorkId( spep_0 + 816, SE042,82 );
setSeVolumeByWorkId( spep_0 + 820, SE042,100 );
setStartTimeMs( SE042,  117 );

--オーラ
SE043 = playSe( spep_0 + 804, 1036 );

--オーラ
SE044 = playSe( spep_0 + 828, 1036 );

--オーラ
SE045 = playSe( spep_0 + 852, 1036 );
setSeVolumeByWorkId( spep_0 + 852, SE045, 75 );

--オーラ
SE046 = playSe( spep_0 + 876, 1036 );
setSeVolumeByWorkId( spep_0 + 876, SE046, 58 );

--オーラ
SE047 = playSe( spep_0 + 900, 1036 );
setSeVolumeByWorkId( spep_0 + 900, SE047, 54 );

--セリフカットイン
SE048 = playSe( spep_0 + 912, 1018 );

--最後決め
SE049 = playSe( spep_0 + 1084, 20 );
setSeVolumeByWorkId( spep_0 + 1084, SE049, 83 );

--最後決め
SE050 = playSe( spep_0 + 1084, 1068 );
setSeVolumeByWorkId( spep_0 + 1084, SE050, 71 );

--最後決め
SE051 = playSe( spep_0 + 1084, 1062 );
setSeVolumeByWorkId( spep_0 + 1084, SE051, 61 );


---------------------------------------------
----ボイス
---------------------------------------------

--フュー…
playVoice( spep_0 + 97, 282 );
setVoiceVolume( spep_0 + 97, 282, 100 );

--ジョン！
playVoice( spep_0 + 177, 283 );
setVoiceVolume( spep_0 + 177, 283, 100 );

--はっ！！
playVoice( spep_0 + 228, 284 );
setVoiceVolume( spep_0 + 228, 284, 142 );

--オレは悟空でもベジータでもない！オレはきさまを倒すものだ！
playVoice( spep_0 + 910, 285 );
setVoiceVolume( spep_0 + 910, 285, 100 );

--
--entryFade( spep_0 + 1266 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--endPhase( spep_0 + 1266 );
endPhase( spep_0 + 1308 );
else end