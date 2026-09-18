--4030350:LR_超サイヤ人4孫悟空_超必殺技：怒りのかめはめ波
--sp_effect_b4_00368
--sp2830

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163551;  -- 開幕～カットイン ef_001
SP_01b = 163552;  -- 開幕～カットイン ef_001b
SP_02 = 163553;  -- かめはめ発射〜フィニッシュまで ef_002
SP_02b = 163554;  -- かめはめ発射〜フィニッシュまで ef_002b



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, -4.6, 3.3 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, -4.6, 3.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -4.6, 1.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -4.6, 1.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -4.6, -0.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -4.6, -0.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -4.6, -2.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -4.6, -2.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -4.6, -3.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -4.6, -3.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -4.6, -5.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -4.6, -5.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -4.6, -7.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -4.6, -7.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -4.6, -8.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -4.6, -8.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -4.6, -10.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -4.6, -10.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -4.6, -12 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -4.6, -12 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -4.6, -13.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -4.6, -13.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -4.6, -15.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -4.6, -15.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -4.6, -16.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -4.6, -16.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -4.6, -18 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -4.6, -18 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -4.6, -19.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -4.6, -19.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -4.6, -20.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -4.6, -20.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -4.6, -22.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -4.6, -22.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -4.6, -23.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -4.6, -23.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -4.6, -24.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -4.6, -24.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -4.6, -25.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -4.6, -25.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -4.6, -27 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -4.6, -27 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -4.6, -28.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -4.6, -28.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -4.6, -29.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -4.6, -29.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -4.6, -30.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -4.6, -30.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -4.6, -31.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -4.6, -31.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -4.6, -32.5 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -4.6, -32.5 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -4.6, -33.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -4.6, -33.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -4.6, -34.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -4.6, -34.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -4.6, -35.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -4.6, -35.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -4.6, -36.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -4.6, -36.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -4.6, -37.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -4.6, -37.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -4.6, -38 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -4.6, -38 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -4.6, -38.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -4.6, -38.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -4.6, -39.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -4.6, -39.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -4.6, -40.3 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -4.6, -40.3 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -4.6, -41 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -4.6, -41 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -4.6, -41.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -4.6, -41.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -4.6, -42.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -4.6, -42.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -4.6, -42.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -4.6, -42.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -4.6, -43.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -4.6, -43.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -4.6, -43.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -4.6, -43.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -4.6, -44.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -4.6, -44.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -4.6, -44.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -4.6, -44.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -4.6, -45.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -4.6, -45.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -4.6, -45.7 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -4.6, -45.7 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -4.6, -46 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -4.6, -46 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -4.6, -46.3 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -4.6, -46.3 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -4.6, -46.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -4.6, -46.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -4.6, -46.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -4.6, -46.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -4.6, -47.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -4.6, -47.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -4.6, -47.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -4.6, -47.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -4.6, -47.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -4.6, -47.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -4.6, -47.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -4.6, -47.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -4.6, -47.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -4.6, -47.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -4.6, -47.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -4.6, -47.7 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--おりてくる
SE002 = playSeVer2( spep_0 + 2, 63, "",spep_0 + 96, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 67 );
SE003 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 71 );

--右手溜め
SE005 = playSeVer2( spep_0 + 136, 1209, "",spep_0 + 300, 0, 10, -1);

--溜め音
SE006 = playSeVer2( spep_0 + 136, 1210, "",spep_0 + 484, 0, 28, -1);
SE007 = playSeVer2( spep_0 + 136, 1356, "",spep_0 + 484, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 77 );
SE008 = playSeVer2( spep_0 + 180, 1239, "",spep_0 + 482, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 180, SE008, 126 );

--左手溜め
SE009 = playSeVer2( spep_0 + 180, 1209, "",spep_0 + 320, 0, 10, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 288, 1232, "", 0, 0, 0, -1);

--合わせたかめはめ波大きくなる
SE013 = playSeVer2( spep_0 + 346, 1415, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE013, 126 );
setStartTimeMs( SE013,  333 );
SE015 = playSeVer2( spep_0 + 348, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE015, 78 );
SE016 = playSeVer2( spep_0 + 348, 1405, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE016, 153 );

--顔アップ
SE017 = playSeVer2( spep_0 + 384, 1116, "",spep_0 + 438, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 384, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --456F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE010 = playSeVer2( spep_1 + 80, 1210, "", 0, 14, 0, -1);
setStartTimeMs( SE010,  5767 );
SE012 = playSeVer2( spep_1 + 80, 1356, "",spep_1 + 186, 20, 28, -1);
setSeVolumeByWorkId( spep_1 + 80, SE012, 78 );
setStartTimeMs( SE012,  4067 );
SE014 = playSeVer2( spep_1 + 78, 1239, "",spep_1 + 184, 18, 26, -1);
setSeVolumeByWorkId( spep_1 + 78, SE014, 135 );
setStartTimeMs( SE014,  3300 );
SE020 = playSeVer2( spep_1 + 56, 1468, "",spep_1 + 180, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 56, SE020, 85 );

-------------------------------------------------
-- かめはめ発射〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ発射〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ発射〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, 126.2, -7.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 126.2, -7.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 119.5, -6.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 119.5, -6.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 125.7, -11.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 125.7, -11.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 128, -7.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 128, -7.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 124.3, -8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 124.3, -8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 133.6, -14.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 133.6, -14.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 137.1, -21.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 137.1, -21.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 149.1, 5.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 149.1, 5.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 125.4, -14.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 125.4, -14.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 129.9, 4.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 129.9, 4.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 152.8, -13.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 152.8, -13.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 150, 8.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 150, 8.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 139.4, -11.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 139.4, -11.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 145.2, 12.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 145.2, 12.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 216.4, 26.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 216.4, 26.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 261.7, 67.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 261.7, 67.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 280.2, 88.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 280.2, 88.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 324.6, 107.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 324.6, 107.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 367.4, 135.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 367.4, 135.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 417.2, 152.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 417.2, 152.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 462.5, 196.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 462.5, 196.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 508.6, 204.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 508.6, 204.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 544.7, 234.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 544.7, 234.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 588.7, 257.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 588.7, 257.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 608.5, 272.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 608.5, 272.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 642.5, 281.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 642.5, 281.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 656.9, 300.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 656.9, 300.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 686, 310.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 686, 310.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 690.2, 322.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 690.2, 322.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 705.7, 323.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 705.7, 323.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 720.7, 326.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 720.7, 326.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 733.6, 339.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 733.6, 339.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 732.6, 343.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 732.6, 343.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 730.2, 354.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 730.2, 354.1 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.87, 2.87 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -11.2 );

setBlendColor( spep_2 + 144 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--かめはめ波発射
SE021 = playSeVer2( spep_2 + 50, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE021, 158 );
SE022 = playSeVer2( spep_2 + 54, 1284, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 54, 1285, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 54, 1213, "",spep_2 + 246, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 54, SE024, 71 );

--かめはめ波中
SE025 = playSeVer2( spep_2 + 92, 1211, "",spep_2 + 244, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 92, SE025, 224 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 144; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--かめはめ波飛んでいく
SE026 = playSeVer2( spep_2 + 144, 1258, "",spep_2 + 240, 0, 26, -1);

--爆発
SE027 = playSeVer2( spep_2 + 210, 1159, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 210, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 71 );
SE029 = playSeVer2( spep_2 + 216, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 210); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 332F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 112;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, 4.6, 3.3 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, 4.6, 3.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 4.6, 1.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 4.6, 1.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 4.6, -0.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 4.6, -0.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 4.6, -2.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 4.6, -2.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 4.6, -3.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 4.6, -3.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 4.6, -5.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 4.6, -5.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 4.6, -7.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 4.6, -7.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 4.6, -8.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 4.6, -8.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 4.6, -10.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 4.6, -10.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 4.6, -12 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 4.6, -12 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 4.6, -13.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 4.6, -13.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 4.6, -15.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 4.6, -15.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 4.6, -16.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 4.6, -16.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 4.6, -18 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 4.6, -18 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 4.6, -19.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 4.6, -19.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 4.6, -20.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 4.6, -20.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 4.6, -22.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 4.6, -22.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 4.6, -23.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 4.6, -23.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 4.6, -24.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 4.6, -24.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 4.6, -25.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 4.6, -25.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 4.6, -27 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 4.6, -27 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 4.6, -28.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 4.6, -28.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 4.6, -29.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 4.6, -29.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 4.6, -30.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 4.6, -30.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 4.6, -31.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 4.6, -31.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 4.6, -32.5 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 4.6, -32.5 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 4.6, -33.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 4.6, -33.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 4.6, -34.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 4.6, -34.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 4.6, -35.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 4.6, -35.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 4.6, -36.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 4.6, -36.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 4.6, -37.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 4.6, -37.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 4.6, -38 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 4.6, -38 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 4.6, -38.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 4.6, -38.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 4.6, -39.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 4.6, -39.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 4.6, -40.3 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 4.6, -40.3 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 4.6, -41 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 4.6, -41 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 4.6, -41.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 4.6, -41.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 4.6, -42.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 4.6, -42.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 4.6, -42.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 4.6, -42.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 4.6, -43.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 4.6, -43.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 4.6, -43.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 4.6, -43.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 4.6, -44.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 4.6, -44.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 4.6, -44.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 4.6, -44.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 4.6, -45.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 4.6, -45.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 4.6, -45.7 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 4.6, -45.7 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 4.6, -46 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 4.6, -46 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 4.6, -46.3 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 4.6, -46.3 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 4.6, -46.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 4.6, -46.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 4.6, -46.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 4.6, -46.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 4.6, -47.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 4.6, -47.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 4.6, -47.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 4.6, -47.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 4.6, -47.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 4.6, -47.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 4.6, -47.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 4.6, -47.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 4.6, -47.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 4.6, -47.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 4.6, -47.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 4.6, -47.7 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--おりてくる
SE002 = playSeVer2( spep_0 + 2, 63, "",spep_0 + 96, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 67 );
SE003 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 71 );

--右手溜め
SE005 = playSeVer2( spep_0 + 136, 1209, "",spep_0 + 300, 0, 10, -1);

--溜め音
SE006 = playSeVer2( spep_0 + 136, 1210, "",spep_0 + 484, 0, 28, -1);
SE007 = playSeVer2( spep_0 + 136, 1356, "",spep_0 + 484, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 77 );
SE008 = playSeVer2( spep_0 + 180, 1239, "",spep_0 + 482, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 180, SE008, 126 );

--左手溜め
SE009 = playSeVer2( spep_0 + 180, 1209, "",spep_0 + 320, 0, 10, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 288, 1232, "", 0, 0, 0, -1);

--合わせたかめはめ波大きくなる
SE013 = playSeVer2( spep_0 + 346, 1415, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE013, 126 );
setStartTimeMs( SE013,  333 );
SE015 = playSeVer2( spep_0 + 348, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE015, 78 );
SE016 = playSeVer2( spep_0 + 348, 1405, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE016, 153 );

--顔アップ
SE017 = playSeVer2( spep_0 + 384, 1116, "",spep_0 + 438, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 384, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --456F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE010 = playSeVer2( spep_1 + 80, 1210, "", 0, 14, 0, -1);
setStartTimeMs( SE010,  5767 );
SE012 = playSeVer2( spep_1 + 80, 1356, "",spep_1 + 186, 20, 28, -1);
setSeVolumeByWorkId( spep_1 + 80, SE012, 78 );
setStartTimeMs( SE012,  4067 );
SE014 = playSeVer2( spep_1 + 78, 1239, "",spep_1 + 184, 18, 26, -1);
setSeVolumeByWorkId( spep_1 + 78, SE014, 135 );
setStartTimeMs( SE014,  3300 );
SE020 = playSeVer2( spep_1 + 56, 1468, "",spep_1 + 180, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 56, SE020, 85 );

-------------------------------------------------
-- かめはめ発射〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ発射〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ発射〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, -126.2, -7.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -126.2, -7.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -119.5, -6.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -119.5, -6.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -125.7, -11.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -125.7, -11.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -128, -7.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -128, -7.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -124.3, -8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -124.3, -8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -133.6, -14.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -133.6, -14.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -137.1, -21.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -137.1, -21.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -149.1, 5.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -149.1, 5.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -125.4, -14.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -125.4, -14.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -129.9, 4.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -129.9, 4.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -152.8, -13.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -152.8, -13.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -150, 8.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -150, 8.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -139.4, -11.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -139.4, -11.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -145.2, 12.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -145.2, 12.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -216.4, 26.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -216.4, 26.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -261.7, 67.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -261.7, 67.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -280.2, 88.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -280.2, 88.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -324.6, 107.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -324.6, 107.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -367.4, 135.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -367.4, 135.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -417.2, 152.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -417.2, 152.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -462.5, 196.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -462.5, 196.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -508.6, 204.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -508.6, 204.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -544.7, 234.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -544.7, 234.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -588.7, 257.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -588.7, 257.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -608.5, 272.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -608.5, 272.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -642.5, 281.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -642.5, 281.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -656.9, 300.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -656.9, 300.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -686, 310.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -686, 310.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -690.2, 322.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -690.2, 322.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -705.7, 323.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -705.7, 323.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -720.7, 326.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -720.7, 326.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -733.6, 339.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -733.6, 339.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -732.6, 343.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -732.6, 343.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -730.2, 354.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -730.2, 354.1 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.87, 2.87 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 11.2 );

setBlendColor( spep_2 + 144 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--かめはめ波発射
SE021 = playSeVer2( spep_2 + 50, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE021, 158 );
SE022 = playSeVer2( spep_2 + 54, 1284, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 54, 1285, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 54, 1213, "",spep_2 + 246, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 54, SE024, 71 );

--かめはめ波中
SE025 = playSeVer2( spep_2 + 92, 1211, "",spep_2 + 244, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 92, SE025, 224 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 144; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--かめはめ波飛んでいく
SE026 = playSeVer2( spep_2 + 144, 1258, "",spep_2 + 240, 0, 26, -1);

--爆発
SE027 = playSeVer2( spep_2 + 210, 1159, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 210, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 71 );
SE029 = playSeVer2( spep_2 + 216, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 210); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 332F


end
