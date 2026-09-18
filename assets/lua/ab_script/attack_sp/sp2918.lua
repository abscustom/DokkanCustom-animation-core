--1032050:UR_トランクス(GT)(寄生)_必殺技：バスターキャノン
--sp_effect_a1_00504
--sp2918

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164096;  -- 気弾溜め ef_001
SP_02 = 164098;  -- 発射→瞬間移動→トドメ→爆発 ef_002
SP_02b = 164099;  -- 発射→瞬間移動→トドメ→爆発 ef_002b


--エフェクト(敵)
SP_01r = 164097;  -- 気弾溜め ef_001r
SP_02r = 164100;  -- 発射→瞬間移動→トドメ→爆発 ef_002r
SP_02br = 164101;  -- 発射→瞬間移動→トドメ→爆発 ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 気弾溜め(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 32;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -60, 515.5 , 0 );
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

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--笑う
SE003 = playSeVer2( spep_0 + 4, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 71 );
SE004 = playSeVer2( spep_0 + 28, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 72 );
SE005 = playSeVer2( spep_0 + 50, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 73 );
SE006 = playSeVer2( spep_0 + 74, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射→瞬間移動→トドメ→爆発
-------------------------------------------------
MAX_FRAME_2 = 438;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射→瞬間移動→トドメ→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 発射→瞬間移動→トドメ→爆発(ef_002b)
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

setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 84 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 362.8, 10.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 362.8, 10.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 320.4, 36.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 320.4, 36.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 302.7, 11.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 302.7, 11.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 265.2, 22.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 265.2, 22.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 247.5, -2.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 247.5, -2.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 204.8, -2.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 204.8, -2.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 216.4, 31.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 216.4, 31.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 239.7, 21.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 239.7, 21.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 192.8, 72.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 192.8, 72.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 193.4, 51.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 193.4, 51.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 320.8, 181.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 320.8, 181.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 296.8, 212.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 296.8, 212.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 297.5, 191.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 297.5, 191.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 340.8, 97.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 340.8, 97.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 316.9, 128.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 316.9, 128.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -327.2, -146.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -327.2, -146.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -310.3, -139.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -310.3, -139.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -305.4, -125.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -305.4, -125.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -292.8, -115.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -292.8, -115.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -288.6, -102.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -288.6, -102.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -276, -93.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -276, -93.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -271.3, -81.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -271.3, -81.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -258, -74.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -258, -74.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -252.5, -63.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -252.5, -63.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -238.3, -58.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -238.3, -58.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -231.7, -49.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -231.7, -49.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -216.2, -45.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -216.2, -45.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -208.4, -39.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -208.4, -39.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -191.5, -38.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -191.5, -38.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -182.1, -34.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -182.1, -34.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -163.6, -36 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -163.6, -36 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -122, -56.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -122, -56.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -80.7, -111 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -80.7, -111 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -52.3, -164.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -52.3, -164.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -11.6, -214 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -11.6, -214 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -2.9, -181.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -2.9, -181.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 53.5, -164.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 53.5, -164.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 71.9, -189.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 71.9, -189.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 102.4, -192 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 102.4, -192 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 131.6, -194.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 131.6, -194.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 160.1, -196.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 160.1, -196.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 188.2, -198.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 188.2, -198.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 216.1, -200 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 216.1, -200 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 243.8, -201.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 243.8, -201.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 271.3, -203.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 271.3, -203.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 298.8, -206 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 298.8, -206 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 326.4, -208.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 326.4, -208.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 95.6, -384.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 95.6, -384.5 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.1, 3.1 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 14.6 );

-- ** 音 ** --

--構える
SE008 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE009, 204 );
SE010 = playSeVer2( spep_2 + 22, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE010, 123 );

--気弾発射
SE011 = playSeVer2( spep_2 + 36, 1145, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1213, "",spep_2 + 310, 0, 110, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 45 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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

--気弾ヒット
SE013 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_2 + 196, 1400, "",spep_2 + 328, 4, 26, -1);
setStartTimeMs( SE014, 1900 );


--敵地面バウンド
SE015 = playSeVer2( spep_2 + 154, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE015, 224 );
SE016 = playSeVer2( spep_2 + 154, 1008, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 168, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE017, 115 );

--気弾溜め
SE018 = playSeVer2( spep_2 + 198, 1370, "",spep_2 + 332, 0, 26, -1);
SE019 = playSeVer2( spep_2 + 198, 1224, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 198, 1361, "",spep_2 + 322, 0, 48, -1);
setPitch( spep_2 + 198, SE020, 1200 );
setTimeStretch( SE020, 0.9, 30, 4 );

--気弾大きくなる
SE021 = playSeVer2( spep_2 + 262, 1328, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1440, "",spep_2 + 324, 0, 24, -1);

--気弾発射
SE023 = playSeVer2( spep_2 + 300, 1133, "",spep_2 + 398, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 300, SE023, 126 );
setPitch( spep_2 + 300, SE023, -100 );
setTimeStretch( SE023, 0.93, 30, 4 );

--爆発
SE024 = playSeVer2( spep_2 + 316, 1160, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 324); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 438F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 気弾溜め(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 32;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -60, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--笑う
SE003 = playSeVer2( spep_0 + 4, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 71 );
SE004 = playSeVer2( spep_0 + 28, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 72 );
SE005 = playSeVer2( spep_0 + 50, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 73 );
SE006 = playSeVer2( spep_0 + 74, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --116F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射→瞬間移動→トドメ→爆発
-------------------------------------------------
MAX_FRAME_2 = 438;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 発射→瞬間移動→トドメ→爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 発射→瞬間移動→トドメ→爆発(ef_002br)
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

setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 84 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 362.8, 10.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 362.8, 10.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 320.4, 36.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 320.4, 36.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 302.7, 11.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 302.7, 11.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 307.6, -3.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 265.2, 22.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 265.2, 22.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 247.5, -2.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 247.5, -2.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 204.8, -2.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 204.8, -2.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 228.1, -12.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 204.2, 18.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 216.4, 31.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 216.4, 31.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 239.7, 21.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 239.7, 21.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 192.8, 72.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 192.8, 72.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 193.4, 51.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 193.4, 51.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 320.8, 181.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 320.8, 181.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 296.8, 212.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 296.8, 212.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 297.5, 191.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 297.5, 191.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 340.8, 97.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 340.8, 97.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 316.9, 128.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 316.9, 128.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 374.7, 212.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 375.4, 191.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 398.7, 181.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -327.2, -146.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -327.2, -146.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -310.3, -139.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -310.3, -139.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -305.4, -125.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -305.4, -125.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -292.8, -115.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -292.8, -115.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -288.6, -102.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -288.6, -102.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -276, -93.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -276, -93.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -271.3, -81.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -271.3, -81.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -258, -74.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -258, -74.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -252.5, -63.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -252.5, -63.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -238.3, -58.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -238.3, -58.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -231.7, -49.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -231.7, -49.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -216.2, -45.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -216.2, -45.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -208.4, -39.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -208.4, -39.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -191.5, -38.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -191.5, -38.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -182.1, -34.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -182.1, -34.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -163.6, -36 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -163.6, -36 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -122, -56.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -122, -56.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -80.7, -111 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -80.7, -111 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -52.3, -164.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -52.3, -164.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -11.6, -214 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -11.6, -214 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -2.9, -181.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -2.9, -181.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 53.5, -164.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 53.5, -164.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 71.9, -189.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 71.9, -189.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 102.4, -192 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 102.4, -192 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 131.6, -194.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 131.6, -194.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 160.1, -196.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 160.1, -196.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 188.2, -198.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 188.2, -198.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 216.1, -200 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 216.1, -200 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 243.8, -201.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 243.8, -201.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 271.3, -203.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 271.3, -203.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 298.8, -206 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 298.8, -206 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 326.4, -208.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 326.4, -208.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 95.6, -384.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 95.6, -384.5 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.1, 3.1 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 14.6 );

-- ** 音 ** --

--構える
SE008 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE009, 204 );
SE010 = playSeVer2( spep_2 + 22, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE010, 123 );

--気弾発射
SE011 = playSeVer2( spep_2 + 36, 1145, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1213, "",spep_2 + 310, 0, 110, -1);
setSeVolumeByWorkId( spep_2 + 40, SE012, 45 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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

--気弾ヒット
SE013 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--気弾溜め
SE014 = playSeVer2( spep_2 + 196, 1400, "",spep_2 + 328, 4, 26, -1);
setStartTimeMs( SE014, 1900 );


--敵地面バウンド
SE015 = playSeVer2( spep_2 + 154, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE015, 224 );
SE016 = playSeVer2( spep_2 + 154, 1008, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 168, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE017, 115 );

--気弾溜め
SE018 = playSeVer2( spep_2 + 198, 1370, "",spep_2 + 332, 0, 26, -1);
SE019 = playSeVer2( spep_2 + 198, 1224, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 198, 1361, "",spep_2 + 322, 0, 48, -1);
setPitch( spep_2 + 198, SE020, 1200 );
setTimeStretch( SE020, 0.9, 30, 4 );

--気弾大きくなる
SE021 = playSeVer2( spep_2 + 262, 1328, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1440, "",spep_2 + 324, 0, 24, -1);

--気弾発射
SE023 = playSeVer2( spep_2 + 300, 1133, "",spep_2 + 398, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 300, SE023, 126 );
setPitch( spep_2 + 300, SE023, -100 );
setTimeStretch( SE023, 0.93, 30, 4 );

--爆発
SE024 = playSeVer2( spep_2 + 316, 1160, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 324); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 438F


end
