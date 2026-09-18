--1022880:クリリン/ベジータ_交代_tf0033
--sp_effect_a9_00086

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
SP_01 =	157903;

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
setEffMoveKey( spep_0 + 1176, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1176, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1176, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1176, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 6, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 74 );

--胸ぐらつかむ
SE003 = playSeVer2( spep_0 + 44, 1330, "",spep_0 + 102, 0, 16, -1);

--胸ぐらつかむ
SE004 = playSeVer2( spep_0 + 44, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );

--クリリンに迫る
SE005 = playSeVer2( spep_0 + 120, 1175, "",spep_0 + 372, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 120, SE005, 40 );

--クリリンに迫る
SE006 = playSeVer2( spep_0 + 126, 44, "", 0, 0, 0, -1);

--クリリンに迫る
SE007 = playSeVer2( spep_0 + 134, 1344, "", 0, 0, 0, -1);
--setPitch( spep_0 + 134, SE007, -600 );
--setTimeStretch( SE007, 0.6, 30, 4 );

--ベジータ振りかぶる
SE008 = playSeVer2( spep_0 + 306, 1003, "",spep_0 + 346, 0, 18, -1);

--ベジータ振りかぶる
SE009 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);

--ベジータ振りかぶる
SE010 = playSeVer2( spep_0 + 308, 1116, "",spep_0 + 342, 0, 10, -1);

--クリリン叫ぶ
SE011 = playSeVer2( spep_0 + 360, 1067, "", 0, 0, 0, -1);

--気弾撃つ
SE012 = playSeVer2( spep_0 + 446, 1177, "",spep_0 + 586, 0, 30, -1);

--気弾撃つ
SE013 = playSeVer2( spep_0 + 446, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE013, 88 );

--気弾撃つ
SE014 = playSeVer2( spep_0 + 456, 1109, "", 0, 0, 0, -1);

--ベジータ落ちていく
SE015 = playSeVer2( spep_0 + 530, 1072, "", 0, 0, 0, -1);

--ベジータ落ちていく
SE016 = playSeVer2( spep_0 + 546, 1183, "", 0, 0, 0, -1);

--回復
SE017 = playSeVer2( spep_0 + 690, 1329, "",spep_0 + 870, 16, 20, -1);
setStartTimeMs( SE017,  1017 );

--立つ
SE018 = playSeVer2( spep_0 + 850, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 850, SE018, 158 );

--立つ
SE019 = playSeVer2( spep_0 + 852, 1106, "", 0, 0, 0, -1);

--目線カットイン
SE020 = playSeVer2( spep_0 + 908, 1018, "", 0, 0, 0, -1);

--ラスト決め
SE021 = playSeVer2( spep_0 + 1016, 20, "", 0, 0, 0, -1);

--ラスト決め
SE022 = playSeVer2( spep_0 + 1016, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE022, 79 );

---------------------------------------------
----ボイス
---------------------------------------------

--終わり
--entryFadeBg( spep_0 + 0, 0, 890, 0, fcolor_r, fcolor_g, fcolor_b, 255);       --　白背景
endPhase( spep_0 + 1176 );
else end