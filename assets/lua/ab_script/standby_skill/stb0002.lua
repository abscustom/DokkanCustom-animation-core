--1025770：LR_孫悟空(GT)＆超サイヤ人4ベジータ_スタンバイ演出
--battle_301248
--stb0002

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
SP_01 = 3179;

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
stanby = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stanby, 0, 0, 0 );
setEffMoveKey( spep_0 + 1512, stanby, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stanby, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1512, stanby, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stanby, 0 );
setEffRotateKey( spep_0 + 1512, stanby, 0 );
setEffAlphaKey( spep_0 + 0, stanby, 255 );
setEffAlphaKey( spep_0 + 1512, stanby, 255 );

-- ** 黒背景フェード ** --
entryFade( spep_0 + 1407, 0, 2, 0, 0, 0, 0, 255 );  --black bg fade

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 24, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE002, 58 );
SE003 = playSeVer2( spep_0 + 38, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 58 );
SE004 = playSeVer2( spep_0 + 638, 1018, "", 0, 0, 0, -1);

--ベジータ立つ
SE005 = playSeVer2( spep_0 + 665, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 665, SE005, 155 );

--画面遷移
SE006 = playSeVer2( spep_0 + 776, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE006, 79 );

--仲間降りてくる
SE007 = playSeVer2( spep_0 + 1126, 1117, "",spep_0 + 1172, 16, 16, -1);
setStartTimeMs( SE007,  167 );
SE008 = playSeVer2( spep_0 + 1126, 63, "",spep_0 + 1166, 0, 16, -1);

--仲間着地
SE009 = playSeVer2( spep_0 + 1148, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1148, SE009, 168 );
SE010 = playSeVer2( spep_0 + 1148, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1148, SE010, 135 );
SE011 = playSeVer2( spep_0 + 1154, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE011, 184 );
SE012 = playSeVer2( spep_0 + 1162, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1162, SE012, 186 );

--ベジータ気ダメ
SE013 = playSeVer2( spep_0 + 1290, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1290, SE013, 90 );
SE014 = playSeVer2( spep_0 + 1290, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1290, SE014, 58 );

--オーラ
SE015 = playSeVer2( spep_0 + 1291, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1291, SE015, 50 );
SE016 = playSeVer2( spep_0 + 1315, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1315, SE016, 50 );
SE017 = playSeVer2( spep_0 + 1339, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1339, SE017, 50 );
SE018 = playSeVer2( spep_0 + 1363, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1363, SE018, 50 );

--仲間気ダメ
SE019 = playSeVer2( spep_0 + 1367, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1367, SE019, 81 );
SE020 = playSeVer2( spep_0 + 1367, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1367, SE020, 72 );

--オーラ
SE021 = playSeVer2( spep_0 + 1387, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1387, SE021, 50 );
SE022 = playSeVer2( spep_0 + 1411, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1411, SE022, 50 );

--ラスト決め
SE023 = playSeVer2( spep_0 + 1416, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1416, SE023, 71 );
SE024 = playSeVer2( spep_0 + 1416, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1416, SE024, 71 );
SE025 = playSeVer2( spep_0 + 1416, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1416, SE025, 71 );

--オーラ
SE026 = playSeVer2( spep_0 + 1435, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1435, SE026, 79 );
SE027 = playSeVer2( spep_0 + 1459, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1459, SE027, 79 );
SE028 = playSeVer2( spep_0 + 1483, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1483, SE028, 79 );




---------------------------------------------
--ボイス
---------------------------------------------
-- 「げ、元気を…みんなの元気をくれ…このままじゃ、オラ死ねねえんだ…」
playVoice( spep_0 + 10, 573 );
setVoiceVolume( spep_0 + 10, 573, 120 );

-- 「くっそー…！」
playVoice( spep_0 + 648, 574 );
setVoiceVolume( spep_0 + 648, 574, 100 );

-- 「頼むぜカカロット…オレに、このオレに力をくれ！」
playVoice( spep_0 + 785, 575 );
setVoiceVolume( spep_0 + 785, 575, 100 );

-- 「おまえら…」
playVoice( spep_0 + 1177, 576 );
setVoiceVolume( spep_0 + 1177, 576, 100 );

-- 「はあっ！！」
playVoice( spep_0 + 1251, 577 );
setVoiceVolume( spep_0 + 1251, 577, 136 );

-- 「はっ！」
playVoice( spep_0 + 1356, 578 );
setVoiceVolume( spep_0 + 1356, 578, 168 );


endPhase( spep_0 + 1512 -10 );

else end
