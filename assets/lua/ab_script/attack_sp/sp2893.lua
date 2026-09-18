--1031760:UR_ゴクウブラック(超サイヤ人ロゼ)(分身)[速]_必殺技A：混沌の円舞曲
--sp_effect_a1_00498
--sp2893

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163957; --登場 ef_001
SP_02  = 163958; --攻撃 ef_002
SP_02b = 163959; --攻撃_裏 ef_002b


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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 158, 0, 16, -1);
SE002 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 156, 0, 16, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE005 = playSeVer2( spep_0 + 22, 1373, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_1 + 94, 1271, "",spep_2 + 78, 8, 24, -1);
setStartTimeMs( SE007,  467 );
SE008 = playSeVer2( spep_1 + 94, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 94, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 攻撃
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃_裏(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 174 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 23.4, -44.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 23.4, -44.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 23.5, -44.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 23.5, -44.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 23.6, -44.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 23.6, -44.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 23.8, -44.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 23.8, -44.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 23.9, -45 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 23.9, -45 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 24, -45.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 24, -45.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 24.1, -45.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 24.1, -45.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 24.3, -45.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 24.3, -45.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 24.4, -45.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 24.4, -45.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 49.2, 63.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 49.2, 63.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -8.8, 10 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -8.8, 10 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 10.8, 54.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 10.8, 54.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 21.7, 46.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 21.7, 46.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 33.1, 28.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 33.1, 28.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 48.6, 40.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 48.6, 40.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 46.1, 37 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 46.1, 37 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 35.7, 47.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 35.7, 47.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 50.3, 34.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 50.3, 34.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 60.9, 40.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 60.9, 40.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 60.5, 37.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 60.5, 37.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 64.1, 37.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 64.1, 37.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 23.7, 49.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 23.7, 49.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -30.6, 36.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -30.6, 36.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 35.1, 63.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 35.1, 63.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 51.6, 57.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 51.6, 57.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 66.7, 82.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 66.7, 82.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 123.8, 77.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 123.8, 77.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 122.9, 37.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 122.9, 37.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 120.9, 57.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 120.9, 57.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 146.9, 56.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 146.9, 56.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 151.6, 45.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 151.6, 45.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 159.4, 42.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 159.4, 42.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 166.4, 40.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 166.4, 40.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 172.9, 38.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 172.9, 38.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 179, 36.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 179, 36.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 184.8, 35.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 184.8, 35.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 190.4, 33.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 190.4, 33.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 195.7, 32.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 195.7, 32.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -181.6, 75.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -181.6, 75.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -176.6, 74.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -176.6, 74.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -167.7, 71.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -167.7, 71.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -155.3, 67.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -155.3, 67.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -139.4, 63.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -139.4, 63.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -120.1, 57.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -120.1, 57.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -97.4, 51.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -97.4, 51.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -71.3, 44.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -71.3, 44.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -41.7, 36.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -41.7, 36.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -8.5, 27.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.5, 27.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.5, 27.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -8.5, 27.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -90.4, -0.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -90.4, -0.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -46.8, 51.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -46.8, 51.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -35.2, 1.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -35.2, 1.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -69.5, 31.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -69.5, 31.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -19.8, 40.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -19.8, 40.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -43.8, 26 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -43.8, 26 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -27.4, 87.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -27.4, 87.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 5.1, 62 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 5.1, 62 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -8.1, 74.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -8.1, 74.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 6.8, 91.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 6.8, 91.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 9.8, 95.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 9.8, 95.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 10.9, 97.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 10.9, 97.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 184.7, 117.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 184.7, 117.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 122.7, 135.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 122.7, 135.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 126.7, 101.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 126.7, 101.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 148.7, 139.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 148.7, 139.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 186.7, 84.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 186.7, 84.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 178.2, 115.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 178.2, 115.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 216.5, 101.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 216.5, 101.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 192.8, 84.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 192.8, 84.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 210.4, 101.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 210.4, 101.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 214, 92.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 214, 92.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 214, 89.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 214, 89.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 212.7, 86.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 212.7, 86.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 210.2, 82.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 210.2, 82.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 206.5, 79.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 206.5, 79.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 201.7, 76 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 201.7, 76 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 195.9, 72.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 195.9, 72.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 189.2, 68.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 189.2, 68.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -336.1, 77.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -336.1, 77.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -329.7, 74.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -329.7, 74.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -322.8, 71.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -322.8, 71.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -315.3, 68.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -315.3, 68.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -307.3, 65.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -307.3, 65.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -298.5, 61.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -298.5, 61.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -289, 58.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -289, 58.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -278.4, 54 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -278.4, 54 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -266.6, 49.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -266.6, 49.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -253.5, 44.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -253.5, 44.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -238.6, 38.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -238.6, 38.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -221.7, 32.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -221.7, 32.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -202.3, 25.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -202.3, 25.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -180.1, 17.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -180.1, 17.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -154.8, 8.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -154.8, 8.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -126.8, -0.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -126.8, -0.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -96.6, -11.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -96.6, -11.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -91.7, -11.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -91.7, -11.2 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.47, 2.47 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 1.8 );


--敵の動き2
setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 362 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 286 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, 109.5, 98.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 109.5, 98.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 109.4, 98.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 109.4, 98.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 109.4, 98.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 109.4, 98.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 109.3, 98.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 109.3, 98.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 133.4, 230.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 133.4, 230.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 67.2, 194.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 67.2, 194.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 72.9, 247.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 72.9, 247.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 102.6, 190.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 102.6, 190.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 104.2, 211.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 104.2, 211.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 59.9, 170.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 59.9, 170.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 71.3, 126.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 71.3, 126.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 11.9, 46.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 11.9, 46.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 25.5, 7.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 25.5, 7.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -0.9, 25.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -0.9, 25.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 10.5, -3.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 10.5, -3.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 27.9, 12.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 27.9, 12.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 17.2, 4.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 17.2, 4.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 18.4, 0.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 18.4, 0.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 19.6, -3.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 19.6, -3.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 20.8, -7.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 20.8, -7.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 22.1, -10.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 22.1, -10.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 23.3, -14.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 23.3, -14.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 24.5, -18 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 24.5, -18 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 25.8, -21.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 25.8, -21.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 27.1, -24.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 27.1, -24.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 28.4, -28.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 28.4, -28.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 29.7, -31.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 29.7, -31.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 31, -35.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 31, -35.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 32.4, -38.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 32.4, -38.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 33.8, -42.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 33.8, -42.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 35.2, -45.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 35.2, -45.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 36.6, -49.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 36.6, -49.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 38, -52.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 38, -52.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 39.4, -56.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 39.4, -56.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 40.8, -59.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 40.8, -59.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 42.1, -63.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 42.1, -63.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 43.4, -66.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 43.4, -66.5 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -4.2 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--ラッシュ
SE010 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE010, 127 );
SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 140, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 142, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 168, 1153, "", 0, 0, 0, -1);

--顔アップ
SE020 = playSeVer2( spep_2 + 224, 1215, "",spep_2 + 310, 54, 18, -1);
setStartTimeMs( SE020,  467 );
SE021 = playSeVer2( spep_2 + 198, 8, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 228, 1179, "", 0, 0, 0, -1);

--蹴り飛ばす
SE023 = playSeVer2( spep_2 + 272, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 286, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 286, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_2 + 312, 1121, "",spep_2 + 418, 0, 54, -1);

--地面激突
SE027 = playSeVer2( spep_2 + 362, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); --478f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 158, 0, 16, -1);
SE002 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 156, 0, 16, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE005 = playSeVer2( spep_0 + 22, 1373, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_1 + 94, 1271, "",spep_2 + 78, 8, 24, -1);
setStartTimeMs( SE007,  467 );
SE008 = playSeVer2( spep_1 + 94, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 94, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 攻撃
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃_裏(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 174 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -23.4, -44.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -23.4, -44.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -23.5, -44.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -23.5, -44.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -23.6, -44.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -23.6, -44.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -23.8, -44.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -23.8, -44.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -23.9, -45 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -23.9, -45 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -24, -45.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -24, -45.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -24.1, -45.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -24.1, -45.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -24.3, -45.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -24.3, -45.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -24.4, -45.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -24.4, -45.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -49.2, 63.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -49.2, 63.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 8.8, 10 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 8.8, 10 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -10.8, 54.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -10.8, 54.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -42.2, 20.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -42.2, 20.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -21.7, 46.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -21.7, 46.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -33.1, 28.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -33.1, 28.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -48.6, 40.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -48.6, 40.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -46.1, 37 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -46.1, 37 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -35.7, 47.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -35.7, 47.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -50.3, 34.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -50.3, 34.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -60.9, 40.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -60.9, 40.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -60.5, 37.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -60.5, 37.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -64.1, 37.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -64.1, 37.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -23.7, 49.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -23.7, 49.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 30.6, 36.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 30.6, 36.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -35.1, 63.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -35.1, 63.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -51.6, 57.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -51.6, 57.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -66.7, 82.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -66.7, 82.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -123.8, 77.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -123.8, 77.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -122.9, 37.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -122.9, 37.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -120.9, 57.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -120.9, 57.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -146.9, 56.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -146.9, 56.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -151.6, 45.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -151.6, 45.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -159.4, 42.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -159.4, 42.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -166.4, 40.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -166.4, 40.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -172.9, 38.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -172.9, 38.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -179, 36.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -179, 36.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -184.8, 35.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -184.8, 35.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -190.4, 33.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -190.4, 33.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -195.7, 32.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -195.7, 32.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 181.6, 75.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 181.6, 75.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 176.6, 74.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 176.6, 74.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 167.7, 71.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 167.7, 71.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 155.3, 67.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 155.3, 67.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 139.4, 63.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 139.4, 63.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 120.1, 57.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 120.1, 57.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 97.4, 51.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 97.4, 51.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 71.3, 44.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 71.3, 44.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 41.7, 36.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 41.7, 36.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 8.5, 27.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 8.5, 27.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 8.5, 27.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 8.5, 27.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 90.4, -0.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 90.4, -0.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 46.8, 51.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 46.8, 51.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 35.2, 1.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 35.2, 1.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 69.5, 31.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 69.5, 31.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 19.8, 40.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 19.8, 40.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 43.8, 26 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 43.8, 26 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 27.4, 87.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 27.4, 87.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -5.1, 62 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -5.1, 62 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 8.1, 74.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 8.1, 74.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -6.8, 91.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -6.8, 91.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -9.8, 95.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -9.8, 95.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -10.9, 97.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -10.9, 97.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -184.7, 117.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -184.7, 117.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -122.7, 135.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -122.7, 135.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -126.7, 101.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -126.7, 101.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -148.7, 139.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -148.7, 139.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -186.7, 84.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -186.7, 84.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -178.2, 115.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -178.2, 115.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -216.5, 101.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -216.5, 101.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -192.8, 84.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -192.8, 84.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -210.4, 101.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -210.4, 101.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -214, 92.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -214, 92.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -214, 89.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -214, 89.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -212.7, 86.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -212.7, 86.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -210.2, 82.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -210.2, 82.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -206.5, 79.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -206.5, 79.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -201.7, 76 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -201.7, 76 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -195.9, 72.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -195.9, 72.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -189.2, 68.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -189.2, 68.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 336.1, 77.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 336.1, 77.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 329.7, 74.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 329.7, 74.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 322.8, 71.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 322.8, 71.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 315.3, 68.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 315.3, 68.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 307.3, 65.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 307.3, 65.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 298.5, 61.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 298.5, 61.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 289, 58.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 289, 58.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 278.4, 54 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 278.4, 54 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 266.6, 49.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 266.6, 49.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 253.5, 44.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 253.5, 44.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 238.6, 38.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 238.6, 38.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 221.7, 32.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 221.7, 32.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 202.3, 25.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 202.3, 25.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 180.1, 17.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 180.1, 17.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 154.8, 8.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 154.8, 8.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 126.8, -0.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 126.8, -0.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 96.6, -11.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 96.6, -11.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 91.7, -11.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 91.7, -11.2 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.51, 6.51 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.47, 2.47 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -1.8 );


--敵の動き2
setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 362 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 286 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, -109.5, 98.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -109.5, 98.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -109.4, 98.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -109.4, 98.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -109.4, 98.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -109.4, 98.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -109.3, 98.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -109.3, 98.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -133.4, 230.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -133.4, 230.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -67.2, 194.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -67.2, 194.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -72.9, 247.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -72.9, 247.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -102.6, 190.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -102.6, 190.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -104.2, 211.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -104.2, 211.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -59.9, 170.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -59.9, 170.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -71.3, 126.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -71.3, 126.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -11.9, 46.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -11.9, 46.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -25.5, 7.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -25.5, 7.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 0.9, 25.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 0.9, 25.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -10.5, -3.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -10.5, -3.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -27.9, 12.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -27.9, 12.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -17.2, 4.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -17.2, 4.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -18.4, 0.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -18.4, 0.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -19.6, -3.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -19.6, -3.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -20.8, -7.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -20.8, -7.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -22.1, -10.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -22.1, -10.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -23.3, -14.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -23.3, -14.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -24.5, -18 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -24.5, -18 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -25.8, -21.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -25.8, -21.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -27.1, -24.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -27.1, -24.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -28.4, -28.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -28.4, -28.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -29.7, -31.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -29.7, -31.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -31, -35.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -31, -35.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -32.4, -38.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -32.4, -38.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -33.8, -42.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -33.8, -42.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -35.2, -45.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -35.2, -45.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -36.6, -49.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -36.6, -49.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -38, -52.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -38, -52.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -39.4, -56.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -39.4, -56.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -40.8, -59.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -40.8, -59.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -42.1, -63.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -42.1, -63.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -43.4, -66.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -43.4, -66.5 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 6.91, 6.91 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 4.2 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--ラッシュ
SE010 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE010, 127 );
SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 140, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 142, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 168, 1153, "", 0, 0, 0, -1);

--顔アップ
SE020 = playSeVer2( spep_2 + 224, 1215, "",spep_2 + 310, 54, 18, -1);
setStartTimeMs( SE020,  467 );
SE021 = playSeVer2( spep_2 + 198, 8, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 228, 1179, "", 0, 0, 0, -1);

--蹴り飛ばす
SE023 = playSeVer2( spep_2 + 272, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 286, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 286, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_2 + 312, 1121, "",spep_2 + 418, 0, 54, -1);

--地面激突
SE027 = playSeVer2( spep_2 + 362, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); --478f

end