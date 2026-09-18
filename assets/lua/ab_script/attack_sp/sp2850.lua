--4030980:LR_パイクーハン_超必殺技：サンダーフラッシュ
--sp_effect_a9_00141
--sp2850

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163726;  -- 舞う 敵味方共通 ef_001
SP_02 = 163727;  -- 回り込み～フィニッシュ 味方手前 ef_002
SP_02b = 163728;  -- 回り込み～フィニッシュ 味方背面 ef_002b

--エフェクト(敵)
SP_02r = 163729;  -- 回り込み～フィニッシュ 敵側手前 ef_002r
SP_02br = 163730;  -- 回り込み～フィニッシュ 敵側背面 ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 舞う 敵味方共通
-------------------------------------------------
MAX_FRAME_0 = 244;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 舞う 敵味方共通(ef_001)
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
spep_x = spep_0 + 64;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--妖艶な動き
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 254, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 53 );
SE002 = playSeVer2( spep_0 + 0, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 61 );
SE004 = playSeVer2( spep_0 + 4, 1215, "",spep_0 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 46 );
SE005 = playSeVer2( spep_0 + 54, 1497, "", 0, 0, 0, -1);

--構える
SE007 = playSeVer2( spep_0 + 174, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE007, 62 );

--拳あわせる
SE008 = playSeVer2( spep_0 + 198, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE008, 150 );
SE009 = playSeVer2( spep_0 + 198, 1043, "",spep_0 + 258, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 198, SE009, 120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --244F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--カメラパン
SE011 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 132, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 90, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE012, 48 );

-------------------------------------------------
-- 回り込み～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 424;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 回り込み～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 回り込み～フィニッシュ(ef_002b)
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

setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 302.4, -177.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 302.4, -177.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 294.6, -182.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 294.6, -182.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 286.8, -186.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 286.8, -186.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 278.9, -187 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 278.9, -187 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 271.1, -199.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 271.1, -199.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 267.3, -199.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 267.3, -199.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 259.3, -199.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 259.3, -199.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 267.2, -195.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 267.2, -195.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 263.1, -203.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 263.1, -203.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 263, -200 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 263, -200 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 266.8, -196.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 266.8, -196.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 262.6, -200.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 262.6, -200.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 258.4, -204.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 258.4, -204.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 262.1, -200.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 262.1, -200.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 265.7, -192.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 265.7, -192.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 257, -205.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 257, -205.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 260.5, -201.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 260.5, -201.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 264, -197.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 264, -197.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 259.5, -202 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 259.5, -202 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 254.9, -206.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 254.9, -206.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 258.3, -202.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 258.3, -202.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 261.7, -199 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 261.7, -199 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 257, -203.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 257, -203.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 256.3, -207.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 256.3, -207.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 255.5, -204.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 255.5, -204.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 258.7, -200.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 258.7, -200.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 253.9, -205.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 253.9, -205.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 249, -209.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 249, -209.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 252.1, -206.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 252.1, -206.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 255.1, -202.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 255.1, -202.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 250.2, -207.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 250.2, -207.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 245.1, -211.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 245.1, -211.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 248.1, -204.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 248.1, -204.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 246.9, -209.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 246.9, -209.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 21, -189 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 21, -189 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 25, -193 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 25, -193 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 17, -185 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 17, -185 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 25, -185 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 25, -185 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 17, -197 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 17, -197 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 25, -185 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 25, -185 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 9, -205 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 9, -205 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 29, -177 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 29, -177 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 13, -201 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 13, -201 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 25, -181 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 25, -181 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 21, -197 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 29, -185 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 29, -185 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 13, -197 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 13, -197 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 25, -181 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 25, -181 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 33.1, 14.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 33.1, 14.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 33.1, -13.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 33.1, -13.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 1.1, 2.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 1.1, 2.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 37.1, 34.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 37.1, 34.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 13, 27.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 13, 27.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 25, 55.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 25, 55.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 32.8, 92.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 32.8, 92.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 16.8, 120.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 16.8, 120.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 12.6, 155 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 12.6, 155 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 44.6, 199 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 44.6, 199 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 12.4, 256.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 12.4, 256.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 44.4, 292.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 44.4, 292.6 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.48, 4.48 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 184 + OFFSET_X, 1, 3, 0, 0, 0, 0.05 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 188 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 196 + OFFSET_X, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_2 + 198 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--カメラパン
SE013 = playSeVer2( spep_2 + 2, 1072, "", 0, 0, 0, -1);

--サンダーフラッシュ発射
SE014 = playSeVer2( spep_2 + 44, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE014, 78 );
SE015 = playSeVer2( spep_2 + 52, 1177, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 52, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE016, 160 );
SE017 = playSeVer2( spep_2 + 52, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE017, 66 );
setTimeStretch( SE017, 1.25, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 170; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
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

--気弾向かってくる
SE018 = playSeVer2( spep_2 + 172, 1479, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 172, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE020 = playSeVer2( spep_2 + 212, 1024, "", 0, 0, 0, -1);

--爆発
SE021 = playSeVer2( spep_2 + 242, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム 422F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 舞う 敵味方共通
-------------------------------------------------
MAX_FRAME_0 = 244;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 舞う 敵味方共通(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 64;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--妖艶な動き
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 254, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 53 );
SE002 = playSeVer2( spep_0 + 0, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 61 );
SE004 = playSeVer2( spep_0 + 4, 1215, "",spep_0 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 46 );
SE005 = playSeVer2( spep_0 + 54, 1497, "", 0, 0, 0, -1);

--構える
SE007 = playSeVer2( spep_0 + 174, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE007, 62 );

--拳あわせる
SE008 = playSeVer2( spep_0 + 198, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE008, 150 );
SE009 = playSeVer2( spep_0 + 198, 1043, "",spep_0 + 258, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 198, SE009, 120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --244F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--カメラパン
SE011 = playSeVer2( spep_1 + 86, 1116, "",spep_1 + 132, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 90, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE012, 48 );

-------------------------------------------------
-- 回り込み～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 424;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 回り込み～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 回り込み～フィニッシュ(ef_002br)
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

setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 302.4, -177.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 302.4, -177.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 294.6, -182.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 294.6, -182.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 286.8, -186.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 286.8, -186.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 278.9, -187 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 278.9, -187 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 271.1, -199.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 271.1, -199.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 267.3, -199.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 267.3, -199.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 259.3, -199.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 259.3, -199.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 267.2, -195.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 267.2, -195.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 263.1, -203.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 263.1, -203.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 263, -200 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 263, -200 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 266.8, -196.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 266.8, -196.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 262.6, -200.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 262.6, -200.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 258.4, -204.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 258.4, -204.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 262.1, -200.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 262.1, -200.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 265.7, -192.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 265.7, -192.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 257, -205.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 257, -205.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 260.5, -201.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 260.5, -201.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 264, -197.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 264, -197.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 259.5, -202 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 259.5, -202 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 254.9, -206.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 254.9, -206.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 258.3, -202.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 258.3, -202.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 261.7, -199 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 261.7, -199 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 257, -203.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 257, -203.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 256.3, -207.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 256.3, -207.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 255.5, -204.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 255.5, -204.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 258.7, -200.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 258.7, -200.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 253.9, -205.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 253.9, -205.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 249, -209.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 249, -209.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 252.1, -206.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 252.1, -206.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 255.1, -202.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 255.1, -202.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 250.2, -207.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 250.2, -207.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 245.1, -211.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 245.1, -211.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 248.1, -204.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 248.1, -204.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 246.9, -209.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 246.9, -209.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -21, -189 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -21, -189 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -25, -193 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -25, -193 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -17, -185 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -17, -185 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -25, -185 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -25, -185 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -17, -197 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -17, -197 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -25, -185 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -25, -185 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -9, -205 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -9, -205 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -29, -177 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -29, -177 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -13, -201 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -13, -201 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -25, -181 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -25, -181 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -21, -197 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -29, -185 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -29, -185 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -13, -197 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -13, -197 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -25, -181 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -25, -181 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -33.1, 14.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -33.1, 14.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -33.1, -13.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -33.1, -13.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1.1, 2.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1.1, 2.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -37.1, 34.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -37.1, 34.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -13, 27.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -13, 27.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -25, 55.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -25, 55.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -32.8, 92.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -32.8, 92.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -16.8, 120.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -16.8, 120.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -12.6, 155 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -12.6, 155 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -44.6, 199 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -44.6, 199 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -12.4, 256.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -12.4, 256.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -44.4, 292.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -44.4, 292.6 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.48, 4.48 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 184 + OFFSET_X, 1, 3, 0, 0, 0, 0.05 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 188 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 196 + OFFSET_X, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_2 + 198 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--カメラパン
SE013 = playSeVer2( spep_2 + 2, 1072, "", 0, 0, 0, -1);

--サンダーフラッシュ発射
SE014 = playSeVer2( spep_2 + 44, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE014, 78 );
SE015 = playSeVer2( spep_2 + 52, 1177, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 52, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE016, 160 );
SE017 = playSeVer2( spep_2 + 52, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE017, 66 );
setTimeStretch( SE017, 1.25, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 170; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
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

--気弾向かってくる
SE018 = playSeVer2( spep_2 + 172, 1479, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 172, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE020 = playSeVer2( spep_2 + 212, 1024, "", 0, 0, 0, -1);

--爆発
SE021 = playSeVer2( spep_2 + 242, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 272, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム 422F

end
