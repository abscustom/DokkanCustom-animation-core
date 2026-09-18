--1026610：LR_ブルマ(少女期)_いでよ神龍！(アクティブ)
--sp_effect_b4_00285
--bs0036


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
SP_01 = 161847;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);

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

changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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
------------------------------------------------------
--開幕～フィニッシュ(1456f)
------------------------------------------------------

--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1456, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1456, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1456, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1456, active, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1456 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--石どける
SE001 = playSeVer2( spep_0 + 8, 1220, "",spep_0 + 33, 2, 5, -1);
setStartTimeMs( SE001,  67 );
SE002 = playSeVer2( spep_0 + 11, 409, "", 0, 0, 0, -1);
setPitch( spep_0 + 11, SE002, -800 );
setTimeStretch( SE002, 0.47, 30, 4 );
SE003 = playSeVer2( spep_0 + 13, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 13, SE003, 153 );

--ドラゴンボール光る
SE004 = playSeVer2( spep_0 + 19, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 19, SE004, 65 );
SE007 = playSeVer2( spep_0 + 185, 33, "", spep_0 + 185 + 44, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 185, SE007, 82 );

--画面遷移
SE005 = playSeVer2( spep_0 + 94, 1072, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE006, 76 );
setTimeStretch( SE006, 1.24, 30, 4 );

--顔カットイン
SE008 = playSeVer2( spep_0 + 212, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE008, 63 );

--ドラゴンボールから光あふれる
SE009 = playSeVer2( spep_0 + 292, 1157, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 292, 1215, "",spep_0 + 443, 0, 61, -1);
SE011 = playSeVer2( spep_0 + 292, 1241, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 292, 1265, "",spep_0 + 446, 0, 66, -1);

--暗雲たちこめる
SE013 = playSeVer2( spep_0 + 364, 1229, "", 0, 0, 0, -1);

--ドラゴンボールから光あふれる2
SE014 = playSeVer2( spep_0 + 460, 1390, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 460, 1127, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 460, 1265, "",spep_0 + 614, 0, 66, -1);
SE017 = playSeVer2( spep_0 + 460, 33, "",spep_0 + 546, 0, 0, -1);

--光立ち上る
SE018 = playSeVer2( spep_0 + 528, 1022, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 528, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 528, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE020, 174 );
SE021 = playSeVer2( spep_0 + 528, 1320, "", 0, 0, 0, -1);
setPitch( spep_0 + 528, SE021, 500 );
setTimeStretch( SE021, 1.43, 30, 4 );

--龍になり立ち昇る
SE022 = playSeVer2( spep_0 + 593, 1232, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 593, 1161, "",spep_0 + 842, 0, 142, -1);
setSeVolumeByWorkId( spep_0 + 593, SE023, 146 );

--龍まわる
SE024 = playSeVer2( spep_0 + 653, 1116, "",spep_0 + 768, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 653, SE024, 150 );

--神龍登場する
SE025 = playSeVer2( spep_0 + 695, 1397, "",spep_0 + 860, 0, 80, -1);
SE026 = playSeVer2( spep_0 + 700, 1240, "",spep_0 + 790, 0, 24, -1);

--画面遷移
SE027 = playSeVer2( spep_0 + 772, 1072, "", 0, 0, 0, -1);

--環境音
SE028 = playSeVer2( spep_0 + 762, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE028, 25 );

--目光る
SE029 = playSeVer2( spep_0 + 946, 1185, "", 0, 5, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE029, 188 );
setStartTimeMs( SE029,  1567 );
setPitch( spep_0 + 946, SE029, -1200 );
setTimeStretch( SE029, 0.5, 30, 4 );
SE030 = playSeVer2( spep_0 + 946, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE030, 56 );

--光になって立ち昇る
SE031 = playSeVer2( spep_0 + 1279, 1265, "",spep_0 + 1367, 0, 27, -1);
SE032 = playSeVer2( spep_0 + 1279, 1275, "",spep_0 + 1367, 0, 27, -1);
SE033 = playSeVer2( spep_0 + 1279, 1191, "",spep_0 + 1367, 0, 27, -1);
SE034 = playSeVer2( spep_0 + 1293, 1222, "",spep_0 + 1359, 0, 13, -1);

--弾けて散る
SE035 = playSeVer2( spep_0 + 1344, 1026, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1344, 1338, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1346, 1021, "",spep_0 + 1395, 0, 21, -1);

--ラスト決め
SE038 = playSeVer2( spep_0 + 1395, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「いでよ神龍！　そして願いを叶えたまえ！」
playVoice( spep_0 + 204, 636 );
setVoiceVolume( spep_0 + 204, 636, 100 );

--「願いは叶えてやった、　ではさらばだ」
playVoice( spep_0 + 1008, 637 );
setVoiceVolume( spep_0 + 1008, 637, 100 );


endPhase( spep_0 + 1456 );

else end
