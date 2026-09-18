--1023090:ヒット&超サイヤ人ゴッド孫悟空_成長を続けるふたり
--sp_effect_b4_00203

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
SP_01 = 158400;

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

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 820, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 820, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 820, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 820, active, 255 );
-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ヒット歩く
SE002 = playSeVer2( spep_0 + 22, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 200 );
--SE003 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 22, SE003, 127 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 30, 1018, "", 0, 0, 0, -1);

--ヒット歩く
--SE005 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 78, SE005, 158 );
SE006 = playSeVer2( spep_0 + 74, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 200 );
--SE007 = playSeVer2( spep_0 + 132, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 132, SE007, 141 );
SE008 = playSeVer2( spep_0 + 130, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE008, 200 );
--SE009 = playSeVer2( spep_0 + 170, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 170, SE009, 141 );
SE010 = playSeVer2( spep_0 + 170, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 200 );
--SE011 = playSeVer2( spep_0 + 206, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 206, SE011, 141 );
SE012 = playSeVer2( spep_0 + 206, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 200 );
--SE013 = playSeVer2( spep_0 + 238, 1108, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 240, SE013, 141 );
SE014 = playSeVer2( spep_0 + 240, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE014, 200 );

--画面遷移
SE015 = playSeVer2( spep_0 + 342, 1072, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE015, 77 );
setStartTimeMs( SE015,  383 );
setPitch( spep_0 + 336, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );

--ポケットから手を出す
SE016 = playSeVer2( spep_0 + 366, 1332, "",spep_0 + 410, 2, 10, -1);
setSeVolumeByWorkId( spep_0 + 366, SE016, 141 );
setStartTimeMs( SE016,  183 );
SE017 = playSeVer2( spep_0 + 369, 4, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 370, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE018, 79 ); 

--ヒット手をあげる
SE019 = playSeVer2( spep_0 + 420, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE019, 58 );
setPitch( spep_0 + 420, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_0 + 420, 8, "",spep_0 + 492, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 420, SE020, 55 );

--二人構える
SE021 = playSeVer2( spep_0 + 556, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 556, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );
SE022 = playSeVer2( spep_0 + 570, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 570, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
---------------------------------------------
----ボイス
---------------------------------------------
--孫悟空
playVoice( spep_0 + 24, 323 );
setVoiceVolume( spep_0 + 24, 323, 100 );

--お前はまだ成長を続けているオレも負けてはいられんな
playVoice( spep_0 + 108, 324 );
setVoiceVolume( spep_0 + 108, 324, 100 );

--ここからがほんとうの闘いだ
playVoice( spep_0 + 445, 325 );
setVoiceVolume( spep_0 + 445, 325, 100 );

--へへへ…楽しくなってきたぞ!
playVoice( spep_0 + 600, 326 );
setVoiceVolume( spep_0 + 600, 326, 100 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 810 );

else end