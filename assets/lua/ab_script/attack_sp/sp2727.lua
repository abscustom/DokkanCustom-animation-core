-- 1029020: UR_ディスポ_必殺技：サークルフラッシュ
-- sp_effect_b4_00339
-- sp2727

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162991;  -- 登場、連続攻撃 ef_001
SP_001b = 162992;  -- 登場、連続攻撃　奥側 ef_001b
SP_002 = 162995;  -- 必殺技 ef_002
SP_002b = 162996;  -- 必殺技　裏側 ef_002b

-- 敵側
SP_001r = 162993;  -- 登場、連続攻撃　敵側 ef_001r
SP_001br = 162994;  -- 登場、連続攻撃　敵側裏側 ef_001br
SP_002r = 162997;  -- 必殺技　敵側 ef_002r
SP_002br = 162998;  -- 必殺技　敵側裏側 ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場、連続攻撃 ef_001
------------------------------------------------------
MAX_FRAME_0 = 494;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );    -- 登場、連続攻撃 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );   -- 登場、連続攻撃　奥側 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 358;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 117 );

setMoveKey( spep_0 + 0 , 1, 152.7, 0 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 153.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 153.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 154.4, 0 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 154.4, 0 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 155.3, 0 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 155.3, 0 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 156.1, 0 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 156.1, 0 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 157, 0 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 157, 0 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 157.8, 0 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 157.8, 0 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 158.7, 0 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 158.7, 0 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 159.5, 0 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 159.5, 0 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 160.4, 0 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 160.4, 0 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 161.2, 0 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 161.2, 0 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 162.1, 0 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 162.1, 0 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 162.9, 0 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 162.9, 0 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 163.8, 0 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 163.8, 0 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 164.6, 0 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 164.6, 0 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 165.5, 0 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 165.5, 0 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 166.3, 0 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 166.3, 0 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 167.2, 0 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 167.2, 0 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 168, 0 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 168, 0 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 168.9, 0 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 168.9, 0 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 169.7, 0 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 169.7, 0 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 170.6, 0 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 170.6, 0 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 171.4, 0 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 171.4, 0 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 172.3, 0 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 172.3, 0 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 173.1, 0 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 173.1, 0 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 174, 0 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 174, 0 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 174.8, 0 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 174.8, 0 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 175.7, 0 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 175.7, 0 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 176.5, 0 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 176.5, 0 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 177.4, 0 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 177.4, 0 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 178.2, 0 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 178.2, 0 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 179.1, 0 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 179.1, 0 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 180, 0 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 180, 0 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 180.8, 0 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 180.8, 0 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 181.7, 0 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 181.7, 0 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 182.5, 0 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 182.5, 0 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 183.4, 0 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 183.4, 0 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 184.2, 0 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 184.2, 0 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 185.1, 0 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 185.1, 0 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 185.9, 0 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 185.9, 0 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 154 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 154 + OFFSET_X, 1, 100.2, -27.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 100.2, -27.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 207.8, -144.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 207.8, -144.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 82.7, -22.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 82.7, -22.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 82.7, -25.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 82.7, -25.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 82.7, -27.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 82.7, -27.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 82.7, -29.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 82.7, -29.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 82.7, -31.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 82.7, -31.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 82.7, -33.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 82.7, -33.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 82.7, -35 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 82.7, -35 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 82.7, -36.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 82.7, -36.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 82.7, -37.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 82.7, -37.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 82.7, -39 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 82.7, -39 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 82.7, -40 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 82.7, -40 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 82.7, -40.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 82.7, -40.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 82.7, -41.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 82.7, -41.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 82.7, -42.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 82.7, -42.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 82.7, -42.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 82.7, -42.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 82.7, -42.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 82.7, -42.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 82.7, -42.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 82.7, -42.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -67.7, -44.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -67.7, -44.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -60.1, -46.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -60.1, -46.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -91.7, -12.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -91.7, -12.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -131.2, -14.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -131.2, -14.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -93, -40.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -93, -40.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -229.2, -49.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -229.2, -49.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -330.1, -22.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -330.1, -22.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -408.4, -47.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -408.4, -47.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -528, -62.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -528, -62.9 , 0 );

setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.87, 3.87 );

setRotateKey( spep_0 + 154 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -53.4 );

-- 敵の動き3
setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, 401.3, -11.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 401.3, -11.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 127.6, -11.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 127.6, -11.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 25.2, -12.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 25.2, -12.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 0.3, -12.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 0.3, -12.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -3, -13.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -3, -13.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -4.7, -13.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -4.7, -13.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 86.9, -2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 86.9, -2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 102.5, -2.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 102.5, -2.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 136.5, -15.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 136.5, -15.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 204.7, 49.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 204.7, 49.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 286.5, 33.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 286.5, 33.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 409.6, 84.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 409.6, 84.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 460.7, 117.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 460.7, 117.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 568.4, 117.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 568.4, 117.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 635.3, 152.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 635.3, 152.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 174.5, -305.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 174.5, -305.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 231.4, -322.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 231.4, -322.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 270.6, -322.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 270.6, -322.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 313, -326.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 313, -326.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 355.4, -331.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 355.4, -331.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 397.8, -336 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 397.8, -336 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 440.2, -340.6 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 440.2, -340.6 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 482.9, -345.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 482.9, -345.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 526.7, -351.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 526.7, -351.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 573.2, -359.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 573.2, -359.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 623.4, -371.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 623.4, -371.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 678.7, -388.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 678.7, -388.3 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.94, 0.94 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 516, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE003 = playSeVer2( spep_0 + 90, 1003, "", 0, 0, 0, -1);

--走り出す
SE004 = playSeVer2( spep_0 + 130, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1326, "",spep_0 + 240, 0, 82, -1);
setPitch( spep_0 + 130, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_0 + 156, 1245, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 186, 1245, "", 0, 0, 0, -1);

--背後からパンチ
SE008 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 238, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 238, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE011 = playSeVer2( spep_0 + 254, 1245, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 280, 1187, "", 0, 0, 0, -1);

--ジャンプ
SE013 = playSeVer2( spep_0 + 310, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 310, SE013, 71 );
SE014 = playSeVer2( spep_0 + 312, 1000, "", 0, 0, 0, 0.6);
SE015 = playSeVer2( spep_0 + 312, 1117, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_0 + 318, 1277, "", 0, 0, 0, 0.6);

--気弾溜め
SE018 = playSeVer2( spep_0 + 400, 1147, "",spep_0 + 512, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 400, SE018, 56 );
SE019 = playSeVer2( spep_0 + 400, 1203, "",spep_0 + 512, 0, 14, -1);
SE020 = playSeVer2( spep_0 + 400, 1296, "",spep_0 + 520, 0, 22, -1);
setPitch( spep_0 + 400, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );
SE021 = playSeVer2( spep_0 + 406, 1240, "",spep_0 + 502, 0, 18, -1);
SE022 = playSeVer2( spep_0 + 418, 1227, "",spep_0 + 516, 0, 16, -1);

--振りかぶる
SE023 = playSeVer2( spep_0 + 434, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 494

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE024 = playSeVer2( spep_1 + 82, 1296, "",spep_2 + 50, 6, 16, -1);
setStartTimeMs( SE024,  1600 );
setPitch( spep_1 + 82, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE026 = playSeVer2( spep_1 + 86, 1147, "",spep_2 + 52, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 86, SE026, 56 );

------------------------------------------------------
-- 必殺技 ef_002
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- 必殺技 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 必殺技　裏側 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 346 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 96.3, -876.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 96.3, -876.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 87.7, -711 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 87.7, -711 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 80, -566.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 80, -566.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 73.5, -442 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 73.5, -442 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 67.8, -335.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 67.8, -335.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 63, -246.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 63, -246.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 59, -171.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 59, -171.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 55.8, -111.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 55.8, -111.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 53.1, -63.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 53.1, -63.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 51.1, -26.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 51.1, -26.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 49.6, 0.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 49.6, 0.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 48.5, 20.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 48.5, 20.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 47.7, 32.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 47.7, 32.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 47.3, 40.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 47.3, 40.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 47.1, 44.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 47.1, 44.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 47, 45.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 47, 45.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 47, 46 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 47, 46 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -168.9, -158.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -168.9, -158.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -148.9, -179.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -148.9, -179.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -173.1, -158.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -173.1, -158.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -161.5, -182.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -161.5, -182.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -155.5, -153.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -155.5, -153.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -151.9, -190.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -151.9, -190.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -175.9, -152.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -175.9, -152.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -143.9, -159.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -143.9, -159.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -171.3, -173.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -171.3, -173.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -170.5, -158.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -170.5, -158.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -152.9, -179.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -152.9, -179.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -153.5, -160.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -153.5, -160.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -166.7, -176.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -166.7, -176.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -153.7, -163.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -153.7, -163.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -161.5, -175.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -161.5, -175.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -164.9, -160.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -164.9, -160.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -165.9, -172.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -165.9, -172.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -153.3, -166.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -153.3, -166.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -169.5, -165.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -169.5, -165.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -165.9, -177.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -165.9, -177.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -159.5, -160.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -159.5, -160.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -158.7, -172.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -158.7, -172.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -158.9, -164.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -158.9, -164.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -161.9, -168.9 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -77.7 );

-- ** 音 ** --
--気弾発射
SE027 = playSeVer2( spep_2 + 20, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 20, 1193, "",spep_2 + 174, 0, 78, -1);
SE029 = playSeVer2( spep_2 + 20, 1142, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 24, 1241, "", 0, 0, 0, -1);

--気弾締め付ける
SE031 = playSeVer2( spep_2 + 90, 1179, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 98, 1153, "", 0, 0, 0, -1);

--着地
SE033 = playSeVer2( spep_2 + 118, 63, "",spep_2 + 164, 0, 14, -1);
SE034 = playSeVer2( spep_2 + 142, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE034, 162 );
SE035 = playSeVer2( spep_2 + 148, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE035, 164 );

--決めポーズ
SE036 = playSeVer2( spep_2 + 188, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE036, 119 );
SE037 = playSeVer2( spep_2 + 192, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE037, 74 );

--爆発
SE038 = playSeVer2( spep_2 + 222, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 250 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 358

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場、連続攻撃 ef_001
------------------------------------------------------
MAX_FRAME_0 = 494;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );    -- 登場、連続攻撃 ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );   -- 登場、連続攻撃　奥側 ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 358;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 117 );

setMoveKey( spep_0 + 0 , 1, 152.7, 0 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 153.6, 0 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 153.6, 0 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 154.4, 0 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 154.4, 0 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 155.3, 0 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 155.3, 0 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 156.1, 0 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 156.1, 0 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 157, 0 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 157, 0 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 157.8, 0 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 157.8, 0 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 158.7, 0 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 158.7, 0 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 159.5, 0 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 159.5, 0 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 160.4, 0 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 160.4, 0 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 161.2, 0 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 161.2, 0 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 162.1, 0 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 162.1, 0 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 162.9, 0 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 162.9, 0 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 163.8, 0 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 163.8, 0 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 164.6, 0 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 164.6, 0 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 165.5, 0 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 165.5, 0 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 166.3, 0 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 166.3, 0 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 167.2, 0 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 167.2, 0 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 168, 0 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 168, 0 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 168.9, 0 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 168.9, 0 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 169.7, 0 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 169.7, 0 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 170.6, 0 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 170.6, 0 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 171.4, 0 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 171.4, 0 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 172.3, 0 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 172.3, 0 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 173.1, 0 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 173.1, 0 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 174, 0 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 174, 0 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 174.8, 0 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 174.8, 0 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 175.7, 0 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 175.7, 0 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 176.5, 0 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 176.5, 0 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 177.4, 0 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 177.4, 0 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 178.2, 0 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 178.2, 0 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 179.1, 0 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 179.1, 0 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 180, 0 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 180, 0 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 180.8, 0 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 180.8, 0 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 181.7, 0 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 181.7, 0 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 182.5, 0 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 182.5, 0 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 183.4, 0 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 183.4, 0 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 184.2, 0 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 184.2, 0 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 185.1, 0 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 185.1, 0 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 185.9, 0 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 185.9, 0 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 154 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 154 + OFFSET_X, 1, 100.2, -27.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 100.2, -27.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 207.8, -144.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 207.8, -144.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 82.7, -22.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 82.7, -22.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 82.7, -25.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 82.7, -25.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 82.7, -27.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 82.7, -27.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 82.7, -29.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 82.7, -29.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 82.7, -31.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 82.7, -31.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 82.7, -33.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 82.7, -33.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 82.7, -35 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 82.7, -35 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 82.7, -36.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 82.7, -36.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 82.7, -37.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 82.7, -37.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 82.7, -39 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 82.7, -39 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 82.7, -40 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 82.7, -40 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 82.7, -40.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 82.7, -40.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 82.7, -41.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 82.7, -41.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 82.7, -42.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 82.7, -42.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 82.7, -42.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 82.7, -42.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 82.7, -42.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 82.7, -42.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 82.7, -42.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 82.7, -42.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -67.7, -44.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -67.7, -44.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -60.1, -46.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -60.1, -46.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -91.7, -12.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -91.7, -12.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -131.2, -14.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -131.2, -14.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -93, -40.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -93, -40.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -229.2, -49.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -229.2, -49.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -330.1, -22.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -330.1, -22.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -408.4, -47.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -408.4, -47.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -528, -62.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -528, -62.9 , 0 );

setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.87, 3.87 );

setRotateKey( spep_0 + 154 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -53.4 );

-- 敵の動き3
setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, 401.3, -11.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 401.3, -11.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 127.6, -11.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 127.6, -11.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 25.2, -12.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 25.2, -12.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 0.3, -12.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 0.3, -12.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -3, -13.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -3, -13.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -4.7, -13.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -4.7, -13.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 86.9, -2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 86.9, -2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 102.5, -2.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 102.5, -2.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 136.5, -15.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 136.5, -15.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 204.7, 49.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 204.7, 49.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 286.5, 33.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 286.5, 33.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 409.6, 84.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 409.6, 84.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 460.7, 117.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 460.7, 117.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 568.4, 117.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 568.4, 117.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 635.3, 152.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 635.3, 152.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 174.5, -305.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 174.5, -305.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 231.4, -322.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 231.4, -322.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 270.6, -322.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 270.6, -322.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 313, -326.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 313, -326.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 355.4, -331.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 355.4, -331.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 397.8, -336 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 397.8, -336 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 440.2, -340.6 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 440.2, -340.6 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 482.9, -345.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 482.9, -345.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 526.7, -351.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 526.7, -351.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 573.2, -359.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 573.2, -359.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 623.4, -371.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 623.4, -371.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 678.7, -388.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 678.7, -388.3 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.94, 0.94 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 516, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE003 = playSeVer2( spep_0 + 90, 1003, "", 0, 0, 0, -1);

--走り出す
SE004 = playSeVer2( spep_0 + 130, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1326, "",spep_0 + 240, 0, 82, -1);
setPitch( spep_0 + 130, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_0 + 156, 1245, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 186, 1245, "", 0, 0, 0, -1);

--背後からパンチ
SE008 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 238, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 238, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE011 = playSeVer2( spep_0 + 254, 1245, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 280, 1187, "", 0, 0, 0, -1);

--ジャンプ
SE013 = playSeVer2( spep_0 + 310, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 310, SE013, 71 );
SE014 = playSeVer2( spep_0 + 312, 1000, "", 0, 0, 0, 0.6);
SE015 = playSeVer2( spep_0 + 312, 1117, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_0 + 318, 1277, "", 0, 0, 0, 0.6);

--気弾溜め
SE018 = playSeVer2( spep_0 + 400, 1147, "",spep_0 + 512, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 400, SE018, 56 );
SE019 = playSeVer2( spep_0 + 400, 1203, "",spep_0 + 512, 0, 14, -1);
SE020 = playSeVer2( spep_0 + 400, 1296, "",spep_0 + 520, 0, 22, -1);
setPitch( spep_0 + 400, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );
SE021 = playSeVer2( spep_0 + 406, 1240, "",spep_0 + 502, 0, 18, -1);
SE022 = playSeVer2( spep_0 + 418, 1227, "",spep_0 + 516, 0, 16, -1);

--振りかぶる
SE023 = playSeVer2( spep_0 + 434, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 494

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE024 = playSeVer2( spep_1 + 82, 1296, "",spep_2 + 50, 6, 16, -1);
setStartTimeMs( SE024,  1600 );
setPitch( spep_1 + 82, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE026 = playSeVer2( spep_1 + 86, 1147, "",spep_2 + 52, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 86, SE026, 56 );

------------------------------------------------------
-- 必殺技 ef_002
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );    -- 必殺技 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 必殺技　裏側 ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 346 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 96.3, -876.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 96.3, -876.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 87.7, -711 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 87.7, -711 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 80, -566.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 80, -566.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 73.5, -442 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 73.5, -442 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 67.8, -335.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 67.8, -335.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 63, -246.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 63, -246.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 59, -171.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 59, -171.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 55.8, -111.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 55.8, -111.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 53.1, -63.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 53.1, -63.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 51.1, -26.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 51.1, -26.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 49.6, 0.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 49.6, 0.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 48.5, 20.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 48.5, 20.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 47.7, 32.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 47.7, 32.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 47.3, 40.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 47.3, 40.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 47.1, 44.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 47.1, 44.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 47, 45.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 47, 45.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 47, 46 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 47, 46 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 42, 46 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 50, 46 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 44, 46 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 49, 46 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -168.9, -158.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -168.9, -158.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -148.9, -179.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -148.9, -179.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -173.1, -158.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -173.1, -158.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -161.5, -182.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -161.5, -182.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -155.5, -153.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -155.5, -153.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -151.9, -190.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -151.9, -190.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -175.9, -152.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -175.9, -152.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -143.9, -159.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -143.9, -159.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -171.1, -163.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -167.5, -182.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -159.5, -153.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -145.9, -190.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -173.9, -152.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -150.9, -161.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -166.9, -178.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -167.9, -164.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -146.9, -173.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -171.3, -173.9 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -171.3, -173.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -170.5, -158.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -170.5, -158.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -152.9, -179.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -152.9, -179.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -153.5, -160.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -153.5, -160.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -166.7, -176.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -166.7, -176.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -153.7, -163.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -153.7, -163.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -161.5, -175.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -161.5, -175.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -164.9, -160.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -164.9, -160.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -165.9, -172.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -165.9, -172.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -153.3, -166.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -153.3, -166.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -169.5, -165.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -169.5, -165.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -165.9, -177.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -165.9, -177.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -159.5, -160.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -159.5, -160.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -158.7, -172.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -158.7, -172.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -158.9, -164.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -158.9, -164.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -161.9, -168.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -166.7, -167.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -159.5, -167.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -161.9, -170.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -161.9, -168.9 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -77.7 );

-- ** 音 ** --
--気弾発射
SE027 = playSeVer2( spep_2 + 20, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 20, 1193, "",spep_2 + 174, 0, 78, -1);
SE029 = playSeVer2( spep_2 + 20, 1142, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 24, 1241, "", 0, 0, 0, -1);

--気弾締め付ける
SE031 = playSeVer2( spep_2 + 90, 1179, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 98, 1153, "", 0, 0, 0, -1);

--着地
SE033 = playSeVer2( spep_2 + 118, 63, "",spep_2 + 164, 0, 14, -1);
SE034 = playSeVer2( spep_2 + 142, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE034, 162 );
SE035 = playSeVer2( spep_2 + 148, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE035, 164 );

--決めポーズ
SE036 = playSeVer2( spep_2 + 188, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE036, 119 );
SE037 = playSeVer2( spep_2 + 192, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE037, 74 );

--爆発
SE038 = playSeVer2( spep_2 + 222, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 250 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 358

end
