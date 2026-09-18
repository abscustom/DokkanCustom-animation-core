--1028760:UR_カトペスラ_必殺技：カトペスラ・ザ・ファイナルミッション
--sp_effect_b4_00323
--sp2694

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162816;  --ef_001  開幕～カードカットインまで
SP_02  = 162817;  --ef_002  カードカットイン～フィニッシュまで
SP_02b = 162818;  --ef_002_b  カードカットイン～フィニッシュまで

--エフェクト(敵)
SP_02r  = 162819;  --ef_002r  カードカットイン～フィニッシュまで
SP_02br = 162820;  --ef_002_br  カードカットイン～フィニッシュまで


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕～カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 324;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--右手引く
SE003 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, -1);

--３本指たてる
SE004 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1052, "",spep_0 + 86, 0, 44, -1);

--ポーズとる
SE006 = playSeVer2( spep_0 + 50, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 50, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 50, 1222, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 50, 1270, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 58, 1445, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 134, 1437, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE002, 45 );
setStartTimeMs( SE002,  2333 );

--光広がる
SE011 = playSeVer2( spep_0 + 124, 1443, "", 0, 0, 0, -1);

--変身ベルトアップ
SE012 = playSeVer2( spep_0 + 178, 1435, "",spep_0 + 296, 10, 52, -1);
setStartTimeMs( SE012,  900 );
setPitch( spep_0 + 178, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );
SE013 = playSeVer2( spep_0 + 176, 1438, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE013, 129 );
setStartTimeMs( SE013,  267 );
SE014 = playSeVer2( spep_0 + 188, 1264, "",spep_0 + 380, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 188, SE014, 56 );
SE015 = playSeVer2( spep_0 + 188, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE015, 63 );

--ピポ音
SE016 = playSeVer2( spep_0 + 202, 99, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 202, SE016, 174 );
setPitch( spep_0 + 202, SE016, 900 );
setTimeStretch( SE016, 1.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 210, 99, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 210, SE017, 138 );
setPitch( spep_0 + 210, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );

--変身完了
SE018 = playSeVer2( spep_0 + 240, 1360, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 250, 1269, "",spep_0 + 444, 0, 22, -1);

--決めポーズ
SE021 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 348, 1062, "",spep_0 + 448, 0, 22, -1);
SE023 = playSeVer2( spep_0 + 352, 20, "",spep_0 + 446, 0, 22, -1);
SE024 = playSeVer2( spep_0 + 352, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --428f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--腕光る
SE026 = playSeVer2( spep_1 + 26, 1442, "",spep_1 + 150, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 26, SE026, 243 );
SE027 = playSeVer2( spep_1 + 78, 1255, "",spep_1 + 154, 18, 22, -1);
setStartTimeMs( SE027,  533 );
SE028 = playSeVer2( spep_1 + 76, 1265, "",spep_1 + 170, 0, 28, -1);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 572;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 103, -108.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 103, -108.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 103.5, -111.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 103.5, -111.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 104, -114.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 104, -114.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 104.3, -117.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 104.3, -117.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 104.5, -119.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 104.5, -119.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 104.7, -121.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 104.7, -121.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 104.7, -124 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 104.7, -124 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 104.7, -125.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 104.7, -125.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 104.5, -127.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 104.5, -127.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 104.3, -128.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 104.3, -128.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 103.9, -130 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 103.9, -130 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 103.5, -131.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 103.5, -131.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 102.9, -131.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 102.9, -131.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 102.3, -132.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 102.3, -132.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 101.5, -132.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 101.5, -132.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 100.7, -133 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 100.7, -133 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 103, -112.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 103, -112.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 91.2, -99.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 91.2, -99.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 115.6, -129.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 115.6, -129.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 82.5, -129.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 82.5, -129.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 117.1, -108.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 117.1, -108.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 112.4, -129.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 112.4, -129.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 115.4, -133.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 115.4, -133.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 118.4, -137.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 118.4, -137.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 119.5, -140.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 119.5, -140.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 118.6, -140.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 118.6, -140.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 117.7, -141.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 117.7, -141.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 116.8, -142.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 116.8, -142.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 115.9, -143.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 115.9, -143.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 96.5, -145.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 96.5, -145.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 88.6, -129.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 88.6, -129.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 117, -156.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 117, -156.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 87.8, -153.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 87.8, -153.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 124.6, -128.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 124.6, -128.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 118.3, -127 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 118.3, -127 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 145.5, -151.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 145.5, -151.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 114.3, -147.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 114.3, -147.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 148.4, -120.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 148.4, -120.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 142.4, -135.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 142.4, -135.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 143.4, -134.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 143.4, -134.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 143.7, -133.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 143.7, -133.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 143.3, -132.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 143.3, -132.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 142.3, -132.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 142.3, -132.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 140.5, -131.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 140.5, -131.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 138.1, -131.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 138.1, -131.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 159.1, -32.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 159.1, -32.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 159.4, -31.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 159.4, -31.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 159.7, -30 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 159.7, -30 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 160, -28.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 160, -28.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 160.4, -27.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 160.4, -27.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 160.7, -26.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 160.7, -26.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 161, -25.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 161, -25.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 161.3, -24.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 161.3, -24.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 161.7, -23.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 161.7, -23.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 162, -21.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 162, -21.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 162.3, -20.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 162.3, -20.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 162.6, -19.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 162.6, -19.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 163, -18.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 163, -18.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 163.3, -17.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 163.3, -17.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 158.7, -33.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 158.7, -33.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 93.3, 28.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 93.3, 28.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 105.9, 49.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 105.9, 49.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 111.4, 60 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 111.4, 60 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 113.2, 66 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 113.2, 66 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 144.1, 125.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 144.1, 125.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 198.6, 117.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 198.6, 117.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 198.9, 149.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 198.9, 149.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 199, 117.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 199, 117.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 199.3, 133.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 199.3, 133.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 199.3, 118.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 199.3, 118.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 199.6, 126.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 199.6, 126.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 199.6, 118.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 199.6, 118.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 199.7, 121.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 199.7, 121.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 199.8, 118.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 199.8, 118.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 199.9, 120.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 199.9, 120.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 200, 118.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 200, 118.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 200.1, 118.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 200.1, 118.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 200.1, 118.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 200.1, 118.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 200.2, 118.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 200.2, 118.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 200.3, 118.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 200.3, 118.8 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 50.2 );

--敵の動き2
setDisp( spep_2 + 422 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 464 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 422 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 422 + OFFSET_X, 1, -734.4, -326.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -734.4, -326.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -400.5, -213.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -400.5, -213.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -169.6, -130.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -169.6, -130.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -31.6, -89.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -31.6, -89.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 11.2, -69 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 11.2, -69 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 34.9, -63.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 34.9, -63.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 54.8, -49.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 54.8, -49.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 66.3, -42.1 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 66.3, -42.1 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 82.3, -39 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 82.3, -39 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 96.5, -33.7 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 96.5, -33.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 113.8, -25.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 113.8, -25.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 120.4, -17.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 120.4, -17.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 132.2, -21.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 132.2, -21.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 133.2, -13.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 133.2, -13.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 142.9, -18 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 142.9, -18 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 148.3, -11.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 148.3, -11.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 144.8, -14.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 144.8, -14.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 148.4, -10.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 148.4, -10.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 151.2, -9.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 151.2, -9.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 151.6, -11.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 151.6, -11.3 , 0 );

setScaleKey( spep_2 + 422 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 422 + OFFSET_X, 1, 74.4 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 74.4 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 84.9 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 84.9 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 85.1 );

-- ** 音 ** --
--飛び降りる
SE029 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
pauseAll( SP_dodge, 67);

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
--チャージ音
SE031 = playSeVer2( spep_2 + 334, 1228, "",spep_2 + 440, 4, 22, -1);
setStartTimeMs( SE031,  4933 );
setTimeStretch( SE031, 0.77, 30, 4 );

--パンチ
SE032 = playSeVer2( spep_2 + 88, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);

--連続パンチ
SE034 = playSeVer2( spep_2 + 118, 1110, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 118, 1009, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 126, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 126, 1010, "", 0, 0, 0, -1);

--殴り飛ばす
SE038 = playSeVer2( spep_2 + 148, 1116, "",spep_2 + 196, 0, 24, -1);
SE039 = playSeVer2( spep_2 + 172, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 178, 1120, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 178, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE041, 63 );

--画面遷移
SE042 = playSeVer2( spep_2 + 224, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE042, 73 );

--腕オーラ音
SE043 = playSeVer2( spep_2 + 222, 1307, "",spep_2 + 346, 0, 44, -1);
setPitch( spep_2 + 222, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );

--腕前に出す
SE044 = playSeVer2( spep_2 + 264, 1003, "", 0, 0, 0, -1);

--チャージ音
SE045 = playSeVer2( spep_2 + 264, 1209, "",spep_2 + 356, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 264, SE045, 48 );
SE046 = playSeVer2( spep_2 + 266, 1136, "",spep_2 + 348, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 266, SE046, 85 );

--気弾発射
SE047 = playSeVer2( spep_2 + 326, 1146, "",spep_2 + 504, 0, 22, -1);
SE048 = playSeVer2( spep_2 + 326, 1179, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 326, 1312, "", 0, 0, 0, -1);

--気弾飛んでいく
SE050 = playSeVer2( spep_2 + 364, 1212, "",spep_2 + 486, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 364, SE050, 65 );

--爆発
SE051 = playSeVer2( spep_2 + 460, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE051, 71 );
SE052 = playSeVer2( spep_2 + 462, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 468 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --572f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕～カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 324;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--右手引く
SE003 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, -1);

--３本指たてる
SE004 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1052, "",spep_0 + 86, 0, 44, -1);

--ポーズとる
SE006 = playSeVer2( spep_0 + 50, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 50, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 50, 1222, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 50, 1270, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 58, 1445, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 134, 1437, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE002, 45 );
setStartTimeMs( SE002,  2333 );

--光広がる
SE011 = playSeVer2( spep_0 + 124, 1443, "", 0, 0, 0, -1);

--変身ベルトアップ
SE012 = playSeVer2( spep_0 + 178, 1435, "",spep_0 + 296, 10, 52, -1);
setStartTimeMs( SE012,  900 );
setPitch( spep_0 + 178, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );
SE013 = playSeVer2( spep_0 + 176, 1438, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE013, 129 );
setStartTimeMs( SE013,  267 );
SE014 = playSeVer2( spep_0 + 188, 1264, "",spep_0 + 380, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 188, SE014, 56 );
SE015 = playSeVer2( spep_0 + 188, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE015, 63 );

--ピポ音
SE016 = playSeVer2( spep_0 + 202, 99, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 202, SE016, 174 );
setPitch( spep_0 + 202, SE016, 900 );
setTimeStretch( SE016, 1.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 210, 99, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 210, SE017, 138 );
setPitch( spep_0 + 210, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );

--変身完了
SE018 = playSeVer2( spep_0 + 240, 1360, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 250, 1269, "",spep_0 + 444, 0, 22, -1);

--決めポーズ
SE021 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 348, 1062, "",spep_0 + 448, 0, 22, -1);
SE023 = playSeVer2( spep_0 + 352, 20, "",spep_0 + 446, 0, 22, -1);
SE024 = playSeVer2( spep_0 + 352, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --428f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--腕光る
SE026 = playSeVer2( spep_1 + 26, 1442, "",spep_1 + 150, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 26, SE026, 243 );
SE027 = playSeVer2( spep_1 + 78, 1255, "",spep_1 + 154, 18, 22, -1);
setStartTimeMs( SE027,  533 );
SE028 = playSeVer2( spep_1 + 76, 1265, "",spep_1 + 170, 0, 28, -1);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 572;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002_br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 103, -108.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 103, -108.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 103.5, -111.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 103.5, -111.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 104, -114.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 104, -114.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 104.3, -117.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 104.3, -117.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 104.5, -119.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 104.5, -119.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 104.7, -121.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 104.7, -121.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 104.7, -124 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 104.7, -124 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 104.7, -125.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 104.7, -125.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 104.5, -127.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 104.5, -127.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 104.3, -128.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 104.3, -128.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 103.9, -130 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 103.9, -130 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 103.5, -131.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 103.5, -131.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 102.9, -131.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 102.9, -131.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 102.3, -132.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 102.3, -132.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 101.5, -132.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 101.5, -132.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 100.7, -133 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 100.7, -133 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 103, -112.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 103, -112.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 91.2, -99.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 91.2, -99.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 115.6, -129.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 115.6, -129.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 82.5, -129.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 82.5, -129.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 117.1, -108.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 117.1, -108.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 112.4, -129.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 112.4, -129.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 115.4, -133.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 115.4, -133.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 118.4, -137.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 118.4, -137.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 119.5, -140.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 119.5, -140.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 118.6, -140.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 118.6, -140.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 117.7, -141.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 117.7, -141.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 116.8, -142.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 116.8, -142.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 115.9, -143.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 115.9, -143.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 96.5, -145.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 96.5, -145.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 88.6, -129.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 88.6, -129.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 117, -156.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 117, -156.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 87.8, -153.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 87.8, -153.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 124.6, -128.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 124.6, -128.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 118.3, -127 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 118.3, -127 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 145.5, -151.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 145.5, -151.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 114.3, -147.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 114.3, -147.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 148.4, -120.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 148.4, -120.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 142.4, -135.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 142.4, -135.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 143.4, -134.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 143.4, -134.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 143.7, -133.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 143.7, -133.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 143.3, -132.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 143.3, -132.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 142.3, -132.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 142.3, -132.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 140.5, -131.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 140.5, -131.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 138.1, -131.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 138.1, -131.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 159.1, -32.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 159.1, -32.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 159.4, -31.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 159.4, -31.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 159.7, -30 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 159.7, -30 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 160, -28.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 160, -28.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 160.4, -27.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 160.4, -27.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 160.7, -26.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 160.7, -26.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 161, -25.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 161, -25.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 161.3, -24.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 161.3, -24.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 161.7, -23.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 161.7, -23.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 162, -21.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 162, -21.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 162.3, -20.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 162.3, -20.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 162.6, -19.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 162.6, -19.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 163, -18.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 163, -18.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 163.3, -17.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 163.3, -17.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 158.7, -33.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 158.7, -33.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 93.3, 28.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 93.3, 28.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 105.9, 49.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 105.9, 49.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 111.4, 60 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 111.4, 60 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 113.2, 66 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 113.2, 66 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 144.1, 125.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 144.1, 125.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 198.6, 117.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 198.6, 117.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 198.9, 149.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 198.9, 149.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 199, 117.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 199, 117.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 199.3, 133.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 199.3, 133.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 199.3, 118.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 199.3, 118.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 199.6, 126.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 199.6, 126.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 199.6, 118.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 199.6, 118.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 199.7, 121.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 199.7, 121.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 199.8, 118.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 199.8, 118.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 199.9, 120.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 199.9, 120.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 200, 118.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 200, 118.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 200.1, 118.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 200.1, 118.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 200.1, 118.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 200.1, 118.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 200.2, 118.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 200.2, 118.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 200.3, 118.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 200.3, 118.8 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 50.2 );

--敵の動き2
setDisp( spep_2 + 422 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 464 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 422 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 422 + OFFSET_X, 1, -734.4, -326.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -734.4, -326.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -400.5, -213.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -400.5, -213.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -169.6, -130.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -169.6, -130.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -31.6, -89.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -31.6, -89.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 11.2, -69 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 11.2, -69 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 34.9, -63.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 34.9, -63.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 54.8, -49.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 54.8, -49.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 66.3, -42.1 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 66.3, -42.1 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 82.3, -39 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 82.3, -39 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 96.5, -33.7 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 96.5, -33.7 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 113.8, -25.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 113.8, -25.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 120.4, -17.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 120.4, -17.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 132.2, -21.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 132.2, -21.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 133.2, -13.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 133.2, -13.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 142.9, -18 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 142.9, -18 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 148.3, -11.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 148.3, -11.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 144.8, -14.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 144.8, -14.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 148.4, -10.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 148.4, -10.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 151.2, -9.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 151.2, -9.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 151.6, -11.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 151.6, -11.3 , 0 );

setScaleKey( spep_2 + 422 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 422 + OFFSET_X, 1, 74.4 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 74.4 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 84.9 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 84.9 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 85.1 );

-- ** 音 ** --
--飛び降りる
SE029 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
pauseAll( SP_dodge, 67);

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
--チャージ音
SE031 = playSeVer2( spep_2 + 334, 1228, "",spep_2 + 440, 4, 22, -1);
setStartTimeMs( SE031,  4933 );
setTimeStretch( SE031, 0.77, 30, 4 );

--パンチ
SE032 = playSeVer2( spep_2 + 88, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);

--連続パンチ
SE034 = playSeVer2( spep_2 + 118, 1110, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 118, 1009, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 126, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 126, 1010, "", 0, 0, 0, -1);

--殴り飛ばす
SE038 = playSeVer2( spep_2 + 148, 1116, "",spep_2 + 196, 0, 24, -1);
SE039 = playSeVer2( spep_2 + 172, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 178, 1120, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 178, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE041, 63 );

--画面遷移
SE042 = playSeVer2( spep_2 + 224, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE042, 73 );

--腕オーラ音
SE043 = playSeVer2( spep_2 + 222, 1307, "",spep_2 + 346, 0, 44, -1);
setPitch( spep_2 + 222, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );

--腕前に出す
SE044 = playSeVer2( spep_2 + 264, 1003, "", 0, 0, 0, -1);

--チャージ音
SE045 = playSeVer2( spep_2 + 264, 1209, "",spep_2 + 356, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 264, SE045, 48 );
SE046 = playSeVer2( spep_2 + 266, 1136, "",spep_2 + 348, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 266, SE046, 85 );

--気弾発射
SE047 = playSeVer2( spep_2 + 326, 1146, "",spep_2 + 504, 0, 22, -1);
SE048 = playSeVer2( spep_2 + 326, 1179, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 326, 1312, "", 0, 0, 0, -1);

--気弾飛んでいく
SE050 = playSeVer2( spep_2 + 364, 1212, "",spep_2 + 486, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 364, SE050, 65 );

--爆発
SE051 = playSeVer2( spep_2 + 460, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE051, 71 );
SE052 = playSeVer2( spep_2 + 462, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 468 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --572f -4


end
