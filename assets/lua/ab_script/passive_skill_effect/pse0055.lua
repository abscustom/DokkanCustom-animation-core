--1028920:LR_孫悟空(少年期)&クリリン(少年期)&ブルマ(少女期)_登場時演出
--sp_effect_b4_00324
--pse0055

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162891;  -- 開幕〜フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.8);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 706;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 414, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE007 = playSeVer2( spep_0 + 242, 1175, "",spep_0 + 490, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 242, SE007, 25 );
SE031 = playSeVer2( spep_0 + 384, 1269, "",spep_0 + 542, 30, 56, -1);
setSeVolumeByWorkId( spep_0 + 384, SE031, 25 );

--宝石の妄想
SE002 = playSeVer2( spep_0 + 0, 1288, "",spep_0 + 186, 0, 94, -1);
SE003 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 70 );

--ブルマセリフカットイン
SE005 = playSeVer2( spep_0 + 134, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1048, "", 0, 0, 0, -1);

--クリリンセリフカットイン
SE008 = playSeVer2( spep_0 + 238, 44, "", 0, 0, 0, -1);

--悟空セリフカットイン
SE009 = playSeVer2( spep_0 + 346, 1003, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 442, 93, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 450, 8, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 472, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE012, 72 );

--足しまう
SE013 = playSeVer2( spep_0 + 520, 1411, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 526, 1389, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE014, 59 );
SE015 = playSeVer2( spep_0 + 526, 1033, "",spep_0 + 562, 0, 16, -1);

--飛び立つ
SE016 = playSeVer2( spep_0 + 540, 1116, "",spep_0 + 648, 0, 80, -1);
SE017 = playSeVer2( spep_0 + 540, 1334, "",spep_0 + 698, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 540, SE017, 78 );
SE018 = playSeVer2( spep_0 + 544, 1019, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 566, 1182, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE019, 79 );
SE020 = playSeVer2( spep_0 + 578, 17, "", 0, 42, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE020, 65 );
setTimeStretch( SE020, 1.1, 30, 4 );
SE021 = playSeVer2( spep_0 + 608, 1019, "",spep_0 + 676, 0, 20, -1);
SE022 = playSeVer2( spep_0 + 622, 1072, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 656, 1052, "",spep_0 + 708, 0, 32, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --706f

else end
