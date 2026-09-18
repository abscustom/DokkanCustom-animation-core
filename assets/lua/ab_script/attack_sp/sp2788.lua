--1030180:UR_大界王神_必殺技：大界王神烈斬
--sp_effect_a7_00070
--sp2788

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163439;  -- セルフカットイン〜ラッシュ〜殴る ef_001
SP_01b = 163441;  -- セルフカットイン〜ラッシュ〜殴る ef_001b
SP_02 = 163442;  -- 口から気弾発射〜着弾〜爆発 ef_002
SP_02b = 163444;  -- 口から気弾発射〜着弾〜爆発 ef_002b

--エフェクト(敵)
SP_01r = 163440;  -- セルフカットイン〜ラッシュ〜殴るef_001r
SP_02r = 163443;  -- 口から気弾発射〜着弾〜爆発 ef_002r


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
-- セルフカットイン〜ラッシュ〜殴る
-------------------------------------------------
MAX_FRAME_0 = 348;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セルフカットイン〜ラッシュ〜殴る(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- セルフカットイン〜ラッシュ〜殴る(ef_001b)
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
spep_x = spep_0 + 4;

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

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 166 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 6.5, 5.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 6.5, 5.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 159.7, 87.7 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 159.7, 87.7 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 131.7, 85.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 131.7, 85.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 143.7, 119.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 143.7, 119.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 143.7, 118.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 143.7, 118.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 143.7, 116.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 143.7, 116.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 143.7, 115.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 143.7, 115.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 143.7, 114 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 143.7, 114 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 143.7, 112.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 143.7, 112.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 143.7, 111.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 143.7, 111.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 157.2, 102.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 157.2, 102.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 94.8, 59.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 94.8, 59.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 133.7, 24.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 133.7, 24.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 137.8, 23.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 137.8, 23.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 54.5, 93.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 54.5, 93.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 64.7, 49.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 64.7, 49.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 51.5, 86.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 51.5, 86.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 50.7, 84.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 50.7, 84.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 182.7, 14.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 182.7, 14.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 103.2, 39 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 103.2, 39 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 106.7, 10.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 106.7, 10.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 109.2, 13 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 109.2, 13 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 110.7, 14.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 110.7, 14.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 106.5, 83.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 106.5, 83.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 156.5, 179.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 156.5, 179.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 111.8, 118 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 111.8, 118 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 105.8, 138.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 105.8, 138.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.5, 137.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 106.5, 137.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 77.2, 86.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 77.2, 86.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 85.1, 84 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 85.1, 84 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 171.2, 97.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 171.2, 97.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 103.6, 56.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 103.6, 56.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 138.3, 23.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 138.3, 23.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 86.5, 61.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 86.5, 61.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 53, 90 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 53, 90 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 63.9, 47.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 63.9, 47.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 51.1, 85.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 51.1, 85.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 50.6, 84 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 50.6, 84 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 182, 13.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 182, 13.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 102, 37.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 102, 37.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 105.3, 9.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 105.3, 9.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 107.9, 11.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 107.9, 11.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 109.7, 13.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 109.7, 13.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 110.8, 14.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 110.8, 14.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 154.5, 171.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 154.5, 171.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 106.5, 115.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 106.5, 115.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 108.5, 123.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 108.5, 123.6 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -10.7 );

--敵の動き2--

setDisp( spep_0 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 348 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 280 + OFFSET_X, 1, 392.8, 41 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 392.8, 41 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 257.8, 65.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 257.8, 65.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 223.7, -16.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 223.7, -16.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 245.5, -16.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 245.5, -16.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 231, -60.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 231, -60.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 225, 30.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 225, 30.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 225, -30.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 225, -30.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 225.6, 1.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 225.6, 1.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 234.3, -30 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 234.3, -30 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 202.9, 10.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 202.9, 10.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 211.5, -1.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 211.5, -1.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 192.1, 18.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 192.1, 18.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 184.8, -17.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 184.8, -17.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 250.2, -2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 250.2, -2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 286.7, -10.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 286.7, -10.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 322.6, 11.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 322.6, 11.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 354.5, -5.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 354.5, -5.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 374.7, -3.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 374.7, -3.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 391.7, -2.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 391.7, -2.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 405.7, -0.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 405.7, -0.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 417.2, 0.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 417.2, 0.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 426.5, 1.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 426.5, 1.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 433.9, 2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 433.9, 2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 439.6, 2.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 439.6, 2.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 444, 3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 444, 3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 447.2, 3.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 447.2, 3.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 449.6, 3.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 449.6, 3.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 451.2, 3.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 451.2, 3.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 452.2, 3.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 452.2, 3.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 452.8, 3.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 452.8, 3.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 453.2, 3.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 453.2, 3.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 453.4, 3.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 453.4, 3.9 , 0 );

setScaleKey( spep_0 + 280 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 280 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -15.3 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

--連打
SE004 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 98, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 126, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 126, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 136, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 154, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 65 );
SE011 = playSeVer2( spep_0 + 154, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 182, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 194, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 206, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 224, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 224, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE019, 68 );

--振りかぶる
SE020 = playSeVer2( spep_0 + 224, 1072, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 264, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE022 = playSeVer2( spep_0 + 276, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 276, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE024 = playSeVer2( spep_0 + 304, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 348F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--のけぞる
SE026 = playSeVer2( spep_1 + 86, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 86, 1119, "",spep_1 + 150, 0, 28, -1);
SE028 = playSeVer2( spep_1 + 86, 63, "",spep_1 + 160, 0, 32, -1);
SE029 = playSeVer2( spep_1 + 86, 1222, "",spep_1 + 158, 0, 24, -1);

-------------------------------------------------
-- 口から気弾発射〜着弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 388;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 口から気弾発射〜着弾〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 口から気弾発射〜着弾〜爆発(ef_002b)
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

setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -86.4, -0.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -86.4, -0.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -66.9, -2.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -66.9, -2.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -49.2, -4.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -49.2, -4.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -33, -5.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -33, -5.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -18.4, -7.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -18.4, -7.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -5.3, -8.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -5.3, -8.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 6.6, -9.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 6.6, -9.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 17.2, -10.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 17.2, -10.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 26.6, -11.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 26.6, -11.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 34.9, -12.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 34.9, -12.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 42.3, -13.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 42.3, -13.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 48.8, -13.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 48.8, -13.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 54.5, -14.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 54.5, -14.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 59.4, -14.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 59.4, -14.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 67.2, -15.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 67.2, -15.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 70.2, -15.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 70.2, -15.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 72.8, -16.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 72.8, -16.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 74.9, -16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 74.9, -16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 76.6, -16.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 76.6, -16.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 78, -16.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 78, -16.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 79.2, -16.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 79.2, -16.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 80, -16.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 80, -16.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 80.7, -16.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 80.7, -16.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 81.2, -17 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 81.2, -17 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 81.5, -17 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 81.5, -17 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 81.8, -17 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 81.8, -17 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 81.9, -17 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 81.9, -17 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 82.1, -17 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 82.1, -17 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 82, -17 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--気弾吐く
SE030 = playSeVer2( spep_2 + 36, 1225, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 36, 1326, "",spep_2 + 146, 0, 26, -1);
setPitch( spep_2 + 36, SE031, 1000 );
setTimeStretch( SE031, 1.67, 30, 4 );
SE032 = playSeVer2( spep_2 + 36, 1021, "", 0, 0, 0, -1);

--細切れに
SE033 = playSeVer2( spep_2 + 118, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 118, 1201, "", 0, 0, 0, -1);

--気弾中
SE035 = playSeVer2( spep_2 + 118, 1204, "",spep_2 + 298, 0, 32, -1);
SE036 = playSeVer2( spep_2 + 118, 1215, "",spep_2 + 300, 0, 36, -1);

--細切れに
SE037 = playSeVer2( spep_2 + 128, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 128, 1201, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 140, 1032, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 140, 1201, "", 0, 0, 0, -1);

--敵飲みこまれる
SE041 = playSeVer2( spep_2 + 204, 1178, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 204, 1188, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_2 + 266, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 282, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 286); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 388F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セルフカットイン〜ラッシュ〜殴る
-------------------------------------------------
MAX_FRAME_0 = 348;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- セルフカットイン〜ラッシュ〜殴る(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- セルフカットイン〜ラッシュ〜殴る(ef_001b)
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
spep_x = spep_0 + 4;

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

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 166 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 6.5, 5.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 6.5, 5.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 159.7, 87.7 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 159.7, 87.7 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 131.7, 85.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 131.7, 85.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 143.7, 119.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 143.7, 119.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 143.7, 118.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 143.7, 118.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 143.7, 116.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 143.7, 116.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 143.7, 115.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 143.7, 115.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 143.7, 114 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 143.7, 114 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 143.7, 112.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 143.7, 112.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 143.7, 111.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 143.7, 111.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 157.2, 102.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 157.2, 102.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 94.8, 59.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 94.8, 59.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 133.7, 24.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 133.7, 24.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 137.8, 23.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 137.8, 23.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 54.5, 93.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 54.5, 93.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 64.7, 49.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 64.7, 49.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 51.5, 86.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 51.5, 86.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 50.7, 84.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 50.7, 84.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 182.7, 14.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 182.7, 14.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 103.2, 39 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 103.2, 39 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 106.7, 10.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 106.7, 10.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 109.2, 13 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 109.2, 13 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 110.7, 14.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 110.7, 14.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 106.5, 83.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 106.5, 83.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 156.5, 179.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 156.5, 179.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 111.8, 118 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 111.8, 118 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 105.8, 138.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 105.8, 138.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.5, 137.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 106.5, 137.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 143.7, 109.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 77.2, 86.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 77.2, 86.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 85.1, 84 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 85.1, 84 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 171.2, 97.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 171.2, 97.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 103.6, 56.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 103.6, 56.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 138.3, 23.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 138.3, 23.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 139.2, 22.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 86.5, 61.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 86.5, 61.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 53, 90 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 53, 90 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 63.9, 47.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 63.9, 47.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 51.1, 85.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 51.1, 85.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 50.6, 84 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 50.6, 84 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 50.5, 83.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 93.2, 29 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 182, 13.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 182, 13.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 102, 37.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 102, 37.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 105.3, 9.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 105.3, 9.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 107.9, 11.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 107.9, 11.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 109.7, 13.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 109.7, 13.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 110.8, 14.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 110.8, 14.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 111.2, 15 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 154.5, 171.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 154.5, 171.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 106.5, 115.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 106.5, 115.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 108.5, 123.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 108.5, 123.6 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -10.7 );

--敵の動き2--

setDisp( spep_0 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 348 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 280 + OFFSET_X, 1, 392.8, 41 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 392.8, 41 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 257.8, 65.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 257.8, 65.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 223.7, -16.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 223.7, -16.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 245.5, -16.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 245.5, -16.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 231, -60.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 231, -60.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 225, 30.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 225, 30.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 225, -30.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 225, -30.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 225.6, 1.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 225.6, 1.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 234.3, -30 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 234.3, -30 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 202.9, 10.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 202.9, 10.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 211.5, -1.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 211.5, -1.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 192.1, 18.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 192.1, 18.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 184.8, -17.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 184.8, -17.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 250.2, -2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 250.2, -2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 286.7, -10.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 286.7, -10.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 322.6, 11.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 322.6, 11.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 354.5, -5.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 354.5, -5.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 374.7, -3.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 374.7, -3.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 391.7, -2.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 391.7, -2.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 405.7, -0.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 405.7, -0.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 417.2, 0.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 417.2, 0.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 426.5, 1.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 426.5, 1.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 433.9, 2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 433.9, 2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 439.6, 2.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 439.6, 2.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 444, 3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 444, 3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 447.2, 3.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 447.2, 3.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 449.6, 3.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 449.6, 3.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 451.2, 3.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 451.2, 3.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 452.2, 3.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 452.2, 3.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 452.8, 3.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 452.8, 3.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 453.2, 3.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 453.2, 3.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 453.4, 3.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 453.4, 3.9 , 0 );

setScaleKey( spep_0 + 280 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 280 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -15.3 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 94; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

--連打
SE004 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 98, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 126, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 126, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 136, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 154, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 65 );
SE011 = playSeVer2( spep_0 + 154, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 182, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 194, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 206, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 224, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 224, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE019, 68 );

--振りかぶる
SE020 = playSeVer2( spep_0 + 224, 1072, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 264, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE022 = playSeVer2( spep_0 + 276, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 276, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE024 = playSeVer2( spep_0 + 304, 1027, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 348F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--のけぞる
SE026 = playSeVer2( spep_1 + 86, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 86, 1119, "",spep_1 + 150, 0, 28, -1);
SE028 = playSeVer2( spep_1 + 86, 63, "",spep_1 + 160, 0, 32, -1);
SE029 = playSeVer2( spep_1 + 86, 1222, "",spep_1 + 158, 0, 24, -1);

-------------------------------------------------
-- 口から気弾発射〜着弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 388;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 口から気弾発射〜着弾〜爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 口から気弾発射〜着弾〜爆発(ef_002b)
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

setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -86.4, -0.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -86.4, -0.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -66.9, -2.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -66.9, -2.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -49.2, -4.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -49.2, -4.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -33, -5.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -33, -5.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -18.4, -7.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -18.4, -7.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -5.3, -8.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -5.3, -8.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 6.6, -9.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 6.6, -9.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 17.2, -10.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 17.2, -10.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 26.6, -11.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 26.6, -11.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 34.9, -12.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 34.9, -12.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 42.3, -13.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 42.3, -13.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 48.8, -13.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 48.8, -13.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 54.5, -14.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 54.5, -14.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 59.4, -14.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 59.4, -14.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 67.2, -15.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 67.2, -15.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 70.2, -15.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 70.2, -15.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 72.8, -16.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 72.8, -16.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 74.9, -16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 74.9, -16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 76.6, -16.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 76.6, -16.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 78, -16.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 78, -16.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 79.2, -16.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 79.2, -16.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 80, -16.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 80, -16.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 80.7, -16.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 80.7, -16.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 81.2, -17 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 81.2, -17 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 81.5, -17 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 81.5, -17 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 81.8, -17 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 81.8, -17 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 81.9, -17 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 81.9, -17 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 82.1, -17 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 82.1, -17 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 82, -17 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 82, -17 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--気弾吐く
SE030 = playSeVer2( spep_2 + 36, 1225, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 36, 1326, "",spep_2 + 146, 0, 26, -1);
setPitch( spep_2 + 36, SE031, 1000 );
setTimeStretch( SE031, 1.67, 30, 4 );
SE032 = playSeVer2( spep_2 + 36, 1021, "", 0, 0, 0, -1);

--細切れに
SE033 = playSeVer2( spep_2 + 118, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 118, 1201, "", 0, 0, 0, -1);

--気弾中
SE035 = playSeVer2( spep_2 + 118, 1204, "",spep_2 + 298, 0, 32, -1);
SE036 = playSeVer2( spep_2 + 118, 1215, "",spep_2 + 300, 0, 36, -1);

--細切れに
SE037 = playSeVer2( spep_2 + 128, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 128, 1201, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 140, 1032, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 140, 1201, "", 0, 0, 0, -1);

--敵飲みこまれる
SE041 = playSeVer2( spep_2 + 204, 1178, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 204, 1188, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_2 + 266, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 282, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 286); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 388F

end
