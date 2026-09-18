-- 1028850: UR_魔人ブウ（純粋悪）_かめはめ波
-- sp_effect_a1_00439
-- sp2709

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162858;  -- 敵と見つめあう～かめはめ波前の移動 ef_001
SP_01b = 162859;  -- 敵と見つめあう～かめはめ波前の移動 ef_001b
SP_02 = 162862;  -- ブゥがかめはめ波を構える～敵に命中 ef_002
SP_02b = 162863;  -- ブゥがかめはめ波を構える～敵に命中 ef_002b

-- 敵側
SP_01br = 162860;  -- 敵と見つめあう～かめはめ波前の移動 ef_001br
SP_01r = 162861;  -- 敵と見つめあう～かめはめ波前の移動 ef_001r
SP_02br = 162864;  -- ブゥがかめはめ波を構える～敵に命中 ef_002br
SP_02r = 162865;  -- ブゥがかめはめ波を構える～敵に命中 ef_002r

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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);
------------------------------------------------------
-- 敵と見つめあう～かめはめ波前の移動 ef_001
------------------------------------------------------
MAX_FRAME_0 = 458;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 敵と見つめあう～かめはめ波前の移動 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 66;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 151.4, -94 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 152.1, -94 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 152.1, -94 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 152.9, -94 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 152.9, -94 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 153.7, -94 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 153.7, -94 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 154.5, -94 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 154.5, -94 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 155.3, -94 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 155.3, -94 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 156.1, -94 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 156.1, -94 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 156.9, -94 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 156.9, -94 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 157.6, -94 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 157.6, -94 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 158.4, -94 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 158.4, -94 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 159.2, -94 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 159.2, -94 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 160, -94 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 160, -94 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 160.8, -94 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 160.8, -94 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 161.6, -94 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 161.6, -94 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 162.4, -94 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 162.4, -94 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 163.1, -94 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 163.1, -94 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 163.9, -94 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 163.9, -94 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 164.7, -94 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 164.7, -94 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 165.5, -94 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 165.5, -94 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 166.3, -94 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 166.3, -94 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 167.1, -94 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 167.1, -94 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 167.9, -94 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 167.9, -94 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 168.6, -94 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 168.6, -94 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.4, -94 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.4, -94 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 170.2, -94 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 170.2, -94 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 171, -94 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 171, -94 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 171.8, -94 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 171.8, -94 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 172.6, -94 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 172.6, -94 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 173.4, -94 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 173.4, -94 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 174.2, -94 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 174.2, -94 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 142.3, -41.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 142.3, -41.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 289.4, 22.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 289.4, 22.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 223.7, -64.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 223.7, -64.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 477, -64 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 477, -64 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 706.2, -115.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 706.2, -115.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 933.9, -165.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 933.9, -165.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 1180.4, -221.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 1180.4, -221.4 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 8.28, 8.28 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 8.28, 8.28 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -27 );

-- 敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -90.7, -26.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -90.7, -26.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -68.3, -37.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -68.3, -37.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -53, -46.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -53, -46.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -41.5, -53.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -41.5, -53.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -32.5, -59 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -32.5, -59 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -25.4, -64.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -25.4, -64.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -19.9, -68.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -19.9, -68.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -16, -72.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -16, -72.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -15.6, -72.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -15.6, -72.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -15.2, -71.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -15.2, -71.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -14.8, -71.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -14.8, -71.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -14.4, -70.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -14.4, -70.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -14, -70.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -14, -70.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -13.6, -70.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -13.6, -70.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -13.2, -69.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -13.2, -69.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -12.9, -69.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -12.9, -69.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -12.5, -68.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -12.5, -68.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -12.1, -68.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -12.1, -68.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -11.7, -68 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -11.7, -68 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 11.65, 11.65 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 11.65, 11.65 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 6.62, 6.6 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 6.62, 6.6 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.83, 4.82 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.83, 4.82 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.81, 0.8 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.81, 0.8 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.67, 0.66 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.67, 0.66 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.4, 0.39 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.4, 0.39 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.31, 0.3 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.31, 0.3 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 300 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, 300.5, -245.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 300.5, -245.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 300.4, -252.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 300.4, -252.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 255.9, -220.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 255.9, -220.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 395.9, -190.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 395.9, -190.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 218.9, -340.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 218.9, -340.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 345.6, -237.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 345.6, -237.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 129.2, -130.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 129.2, -130.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 54.7, -29.8 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 54.7, -29.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 63.8, 17.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 63.8, 17.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 24.3, -1.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 24.3, -1.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 29, 49.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 29, 49.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 41, 20 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 41, 20 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 41.7, 27.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 41.7, 27.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 44.1, 35.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 44.1, 35.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 48.3, 45.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 48.3, 45.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 54.6, 56.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 54.6, 56.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 62.8, 69.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 62.8, 69.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 73, 83.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 73, 83.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 85.2, 98.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 85.2, 98.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 99.5, 115.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 99.5, 115.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 96.7, 116.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 96.7, 116.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 95.8, 119.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 95.8, 119.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 97, 123.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 97, 123.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 100.4, 128.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 100.4, 128.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 105.7, 135.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 105.7, 135.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 113.2, 143.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 113.2, 143.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 122.6, 152.6 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 122.6, 152.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 134.1, 163.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 134.1, 163.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 147.6, 175.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 147.6, 175.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 163.2, 189.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 163.2, 189.5 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.94, 1.93 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.94, 1.93 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 17 );

-- 敵の動き4
setDisp( spep_0 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 460 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 390 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 390 + OFFSET_X, 1, 850.6, 43 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 850.6, 43 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 851.1, 42.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 851.1, 42.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 851.5, 42.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 851.5, 42.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 812, 41 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 812, 41 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 772.5, 39.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 772.5, 39.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 733, 37.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 733, 37.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 693.4, 35.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 693.4, 35.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 653.8, 33.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 653.8, 33.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 614.1, 31.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 614.1, 31.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 574.5, 29.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 574.5, 29.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 534.8, 27.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 534.8, 27.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 495.1, 25.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 495.1, 25.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 455.3, 24 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 455.3, 24 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 415.5, 22.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 415.5, 22.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 375.7, 20.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 375.7, 20.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 335.8, 18.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 335.8, 18.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 295.9, 16.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 295.9, 16.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 256, 14.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 256, 14.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 255.2, 14.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 255.2, 14.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 254.4, 14.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 254.4, 14.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 253.6, 14.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 253.6, 14.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 252.8, 14.3 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 252.8, 14.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 252, 14.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 252, 14.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 251.2, 14.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 251.2, 14.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 250.3, 14.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 250.3, 14.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 249.5, 14.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 249.5, 14.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 248.8, 14 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 248.8, 14 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 247.9, 14 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 247.9, 14 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 247.1, 13.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 247.1, 13.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 246.3, 13.8 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 246.3, 13.8 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 245.5, 13.8 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 245.5, 13.8 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 244.7, 13.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 244.7, 13.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 243.8, 13.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 243.8, 13.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 243, 13.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 243, 13.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 242.2, 13.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 242.2, 13.6 , 0 );

setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 390 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -47 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 484, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 44;  -- エンドフェイズのフレーム数を置き換える
    
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
    
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
--蹴る
SE004 = playSeVer2( spep_0 + 148, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 132 );
SE005 = playSeVer2( spep_0 + 156, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 156, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE007 = playSeVer2( spep_0 + 194, 1121, "",spep_0 + 288, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 194, SE007, 61 );

--追いかける
SE008 = playSeVer2( spep_0 + 228, 1117, "",spep_0 + 300, 0, 34, -1);
SE009 = playSeVer2( spep_0 + 228, 1182, "", 0, 0, 0, -1);

--追いつく
SE010 = playSeVer2( spep_0 + 254, 1007, "", 0, 0, 0, -1);

--振りかぶる
SE011 = playSeVer2( spep_0 + 274, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 294, 1359, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);

--敵飛んでいく２
SE014 = playSeVer2( spep_0 + 310, 1183, "",spep_0 + 424, 0, 62, -1);

--追いかける２
SE015 = playSeVer2( spep_0 + 362, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 362, 1167, "",spep_0 + 416, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 362, SE016, 65 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 392, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 458

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ブゥがかめはめ波を構える～敵に命中 ef_002
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- ブゥがかめはめ波を構える～敵に命中 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 249.5, -8.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 249.5, -8.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 249.6, -8.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 249.6, -8.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 249.7, -8.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 249.7, -8.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 249.9, -8.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 249.9, -8.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 250, -8.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 250, -8.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 250.2, -8.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 250.2, -8.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 250.3, -8.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 250.3, -8.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 250.5, -8.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 250.5, -8.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 250.6, -8.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 250.6, -8.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 248, -8.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 248, -8.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 252, -9.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 252, -9.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 251.1, -7.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 251.1, -7.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 250.2, -8.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 250.2, -8.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 251.4, -7.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 251.4, -7.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 252.5, -9.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 252.5, -9.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 251.6, -7.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 251.6, -7.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 253.7, -10.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 253.7, -10.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 251.9, -7.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 251.9, -7.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 253.7, -5.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 253.7, -5.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 250, -5.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 250, -5.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 254.3, -10.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 254.3, -10.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 252.5, -7.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 252.5, -7.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 252.7, -6.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 252.7, -6.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 251.6, -10 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 251.6, -10 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 254.1, -5.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 254.1, -5.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 252.3, -5.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 252.3, -5.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 254.5, -10.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 254.5, -10.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 252.6, -5.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 252.6, -5.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 253.5, -6.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 253.5, -6.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 252.5, -10 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 252.5, -10 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 255, -5.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 255, -5.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 253.2, -5.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 253.2, -5.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 255.3, -10.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 255.3, -10.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 253.5, -5.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 253.5, -5.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 255.6, -10.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 255.6, -10.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 255.5, -10 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 255.5, -10 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 255.3, -9.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 255.3, -9.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 255.2, -8.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 255.2, -8.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 255, -7.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 255, -7.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 242.3, -1.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 242.3, -1.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 274, 2.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 274, 2.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 238.9, -22.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 238.9, -22.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 255, 13.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 255, 13.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 270.9, -23.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 270.9, -23.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 244.4, 2.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 244.4, 2.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 266.5, -9.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 266.5, -9.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 300.7, 17.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 300.7, 17.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 231.1, -11.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 231.1, -11.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 247.2, 2.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 247.2, 2.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 264.5, -11.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 264.5, -11.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 257.9, -12.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 257.9, -12.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 260.8, -2.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 260.8, -2.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 254.2, -8.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 254.2, -8.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 265.5, -8.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 265.5, -8.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 269.4, -11.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 269.4, -11.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 262.9, -12.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 262.9, -12.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 265.8, -2.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 265.8, -2.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 259.1, -8.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 259.1, -8.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 270.5, -8.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 270.5, -8.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 266.8, -12.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 266.8, -12.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -42 );

-- 敵の動き2
setDisp( spep_2 + 260 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 356 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 260 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 101.5, -444.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 95.3, -442.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 101.9, -440.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 99.1, -445.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 99.5, -442.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 97.7, -439 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 101.7, -441.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 104.6, -445.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 99.5, -442.4 , 0 );

setScaleKey( spep_2 + 260 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 8.38, 8.38 );

setRotateKey( spep_2 + 260 + OFFSET_X, 1, -72.5 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -72.5 );

-- ** 音 ** --
--構える
SE019 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 62, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 4, SE019, 78 );
SE020 = playSeVer2( spep_2 + 4, 1278, "",spep_2 + 118, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 4, SE020, 63 );
SE021 = playSeVer2( spep_2 + 12, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE021, 1.24, 30, 4 );

--かめはめ波溜め
SE022 = playSeVer2( spep_2 + 90, 1131, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 90, 1132, "",spep_2 + 188, 0, 22, -1);
SE024 = playSeVer2( spep_2 + 90, 1184, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 90, SE024, 58 );

--かめはめ波発射
SE025 = playSeVer2( spep_2 + 156, 1284, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 156, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 156, 1213, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 156, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE028, 240 );

--気弾中
SE029 = playSeVer2( spep_2 + 244, 1215, "", 0, 54, 0, -1);
setStartTimeMs( SE029,  1200 );
SE030 = playSeVer2( spep_2 + 172, 1161, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 258 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 358

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

------------------------------------------------------
-- 敵と見つめあう～かめはめ波前の移動 ef_001r
------------------------------------------------------
MAX_FRAME_0 = 458;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 敵と見つめあう～かめはめ波前の移動 ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 66;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, -151.4, -94 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -152.1, -94 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -152.1, -94 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -152.9, -94 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -152.9, -94 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -153.7, -94 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -153.7, -94 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -154.5, -94 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -154.5, -94 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -155.3, -94 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -155.3, -94 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -156.1, -94 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -156.1, -94 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -156.9, -94 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -156.9, -94 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -157.6, -94 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -157.6, -94 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -158.4, -94 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -158.4, -94 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -159.2, -94 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -159.2, -94 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -160, -94 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -160, -94 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -160.8, -94 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -160.8, -94 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -161.6, -94 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -161.6, -94 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -162.4, -94 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -162.4, -94 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -163.1, -94 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -163.1, -94 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -163.9, -94 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -163.9, -94 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -164.7, -94 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -164.7, -94 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -165.5, -94 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -165.5, -94 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -166.3, -94 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -166.3, -94 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -167.1, -94 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -167.1, -94 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -167.9, -94 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -167.9, -94 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -168.6, -94 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -168.6, -94 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -169.4, -94 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -169.4, -94 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -170.2, -94 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -170.2, -94 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -171, -94 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -171, -94 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -171.8, -94 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -171.8, -94 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -172.6, -94 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -172.6, -94 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -173.4, -94 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -173.4, -94 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -174.2, -94 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -174.2, -94 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, -142.3, -41.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -142.3, -41.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -289.4, 22.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -289.4, 22.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -223.7, -64.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -223.7, -64.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -477, -64 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -477, -64 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -706.2, -115.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -706.2, -115.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -933.9, -165.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -933.9, -165.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -1180.4, -221.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -1180.4, -221.4 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 8.28, 8.28 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 8.28, 8.28 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 27 );

-- 敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, 152.1, -0.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 152.1, -0.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 90.7, -26.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 90.7, -26.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 68.3, -37.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 68.3, -37.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 53, -46.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 53, -46.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 41.5, -53.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 41.5, -53.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 32.5, -59 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 32.5, -59 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 25.4, -64.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 25.4, -64.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 19.9, -68.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 19.9, -68.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 16, -72.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 16, -72.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 15.6, -72.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 15.6, -72.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 15.2, -71.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 15.2, -71.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 14.8, -71.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 14.8, -71.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 14.4, -70.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 14.4, -70.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 14, -70.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 14, -70.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 13.6, -70.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 13.6, -70.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 13.2, -69.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 13.2, -69.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 12.9, -69.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 12.9, -69.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 12.5, -68.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 12.5, -68.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 12.1, -68.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 12.1, -68.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 11.7, -68 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 11.7, -68 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 11.65, 11.65 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 11.65, 11.65 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 6.62, 6.6 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 6.62, 6.6 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.83, 4.82 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.83, 4.82 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.81, 0.8 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.81, 0.8 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.72, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.67, 0.66 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.67, 0.66 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.58, 0.57 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.49, 0.48 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.4, 0.39 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.4, 0.39 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.31, 0.3 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.31, 0.3 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 300 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, -300.5, -245.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -300.5, -245.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -300.4, -252.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -300.4, -252.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -255.9, -220.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -255.9, -220.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -395.9, -190.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -395.9, -190.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -218.9, -340.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -218.9, -340.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -345.6, -237.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -345.6, -237.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -129.2, -130.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -129.2, -130.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -54.7, -29.8 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -54.7, -29.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -63.8, 17.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -63.8, 17.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -24.3, -1.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -24.3, -1.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -29, 49.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -29, 49.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -41, 20 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -41, 20 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -41.7, 27.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -41.7, 27.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -44.1, 35.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -44.1, 35.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -48.3, 45.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -48.3, 45.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -54.6, 56.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -54.6, 56.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -62.8, 69.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -62.8, 69.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -73, 83.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -73, 83.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -85.2, 98.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -85.2, 98.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -99.5, 115.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -99.5, 115.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -96.7, 116.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -96.7, 116.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -95.8, 119.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -95.8, 119.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -97, 123.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -97, 123.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -100.4, 128.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -100.4, 128.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -105.7, 135.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -105.7, 135.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -113.2, 143.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -113.2, 143.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -122.6, 152.6 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -122.6, 152.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -134.1, 163.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -134.1, 163.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -147.6, 175.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -147.6, 175.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -163.2, 189.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -163.2, 189.5 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.66, 6.66 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.94, 1.93 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.94, 1.93 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -17 );

-- 敵の動き4
setDisp( spep_0 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 460 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 390 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 390 + OFFSET_X, 1, -850.6, 43 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -850.6, 43 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -851.1, 42.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -851.1, 42.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -851.5, 42.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -851.5, 42.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -812, 41 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -812, 41 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -772.5, 39.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -772.5, 39.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -733, 37.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -733, 37.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -693.4, 35.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -693.4, 35.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -653.8, 33.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -653.8, 33.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -614.1, 31.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -614.1, 31.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -574.5, 29.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -574.5, 29.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -534.8, 27.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -534.8, 27.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -495.1, 25.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -495.1, 25.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -455.3, 24 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -455.3, 24 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -415.5, 22.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -415.5, 22.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -375.7, 20.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -375.7, 20.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -335.8, 18.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -335.8, 18.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -295.9, 16.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -295.9, 16.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -256, 14.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -256, 14.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -255.2, 14.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -255.2, 14.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -254.4, 14.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -254.4, 14.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -253.6, 14.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -253.6, 14.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -252.8, 14.3 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -252.8, 14.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -252, 14.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -252, 14.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -251.2, 14.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -251.2, 14.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -250.3, 14.1 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -250.3, 14.1 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -249.5, 14.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -249.5, 14.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -248.8, 14 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -248.8, 14 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -247.9, 14 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -247.9, 14 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -247.1, 13.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -247.1, 13.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -246.3, 13.8 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -246.3, 13.8 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -245.5, 13.8 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -245.5, 13.8 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -244.7, 13.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -244.7, 13.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -243.8, 13.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -243.8, 13.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -243, 13.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -243, 13.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -242.2, 13.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -242.2, 13.6 , 0 );

setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 390 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 47 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 484, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 44;  -- エンドフェイズのフレーム数を置き換える
    
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
    
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
--蹴る
SE004 = playSeVer2( spep_0 + 148, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 132 );
SE005 = playSeVer2( spep_0 + 156, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 156, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE007 = playSeVer2( spep_0 + 194, 1121, "",spep_0 + 288, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 194, SE007, 61 );

--追いかける
SE008 = playSeVer2( spep_0 + 228, 1117, "",spep_0 + 300, 0, 34, -1);
SE009 = playSeVer2( spep_0 + 228, 1182, "", 0, 0, 0, -1);

--追いつく
SE010 = playSeVer2( spep_0 + 254, 1007, "", 0, 0, 0, -1);

--振りかぶる
SE011 = playSeVer2( spep_0 + 274, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 294, 1359, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);

--敵飛んでいく２
SE014 = playSeVer2( spep_0 + 310, 1183, "",spep_0 + 424, 0, 62, -1);

--追いかける２
SE015 = playSeVer2( spep_0 + 362, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 362, 1167, "",spep_0 + 416, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 362, SE016, 65 );

--瞬間移動
SE017 = playSeVer2( spep_0 + 392, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 458

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ブゥがかめはめ波を構える～敵に命中 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- ブゥがかめはめ波を構える～敵に命中 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, -249.5, -8.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -249.5, -8.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -249.6, -8.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -249.6, -8.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -249.7, -8.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -249.7, -8.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -249.9, -8.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -249.9, -8.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -250, -8.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -250, -8.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -250.2, -8.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -250.2, -8.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -250.3, -8.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -250.3, -8.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -250.5, -8.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -250.5, -8.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -250.6, -8.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -250.6, -8.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -248, -8.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -248, -8.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -252, -9.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -252, -9.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -251.1, -7.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -251.1, -7.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -250.2, -8.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -250.2, -8.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -251.4, -7.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -251.4, -7.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -252.5, -9.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -252.5, -9.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -251.6, -7.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -251.6, -7.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -253.7, -10.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -253.7, -10.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -251.9, -7.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -251.9, -7.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -253.7, -5.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -253.7, -5.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -250, -5.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -250, -5.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -254.3, -10.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -254.3, -10.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -252.5, -7.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -252.5, -7.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -252.7, -6.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -252.7, -6.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -251.6, -10 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -251.6, -10 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -254.1, -5.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -254.1, -5.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -252.3, -5.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -252.3, -5.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -254.5, -10.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -254.5, -10.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -252.6, -5.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -252.6, -5.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -253.5, -6.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -253.5, -6.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -252.5, -10 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -252.5, -10 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -255, -5.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -255, -5.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -253.2, -5.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -253.2, -5.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -255.3, -10.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -255.3, -10.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -253.5, -5.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -253.5, -5.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -255.6, -10.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -255.6, -10.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -255.5, -10 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -255.5, -10 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -255.3, -9.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -255.3, -9.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -255.2, -8.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -255.2, -8.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -255, -7.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -255, -7.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -242.3, -1.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -242.3, -1.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -274, 2.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -274, 2.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -238.9, -22.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -238.9, -22.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -255, 13.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -255, 13.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -270.9, -23.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -270.9, -23.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -244.4, 2.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -244.4, 2.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -266.5, -9.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -266.5, -9.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -300.7, 17.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -300.7, 17.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -231.1, -11.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -231.1, -11.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -247.2, 2.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -247.2, 2.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -264.5, -11.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -264.5, -11.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -257.9, -12.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -257.9, -12.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -260.8, -2.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -260.8, -2.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -254.2, -8.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -254.2, -8.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -265.5, -8.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -265.5, -8.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -269.4, -11.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -269.4, -11.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -262.9, -12.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -262.9, -12.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -265.8, -2.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -265.8, -2.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -259.1, -8.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -259.1, -8.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -270.5, -8.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -270.5, -8.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -266.8, -12.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -266.8, -12.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 42 );

-- 敵の動き2
setDisp( spep_2 + 260 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 356 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 260 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -101.5, -444.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -95.3, -442.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -101.9, -440.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -99.1, -445.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -99.5, -442.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -97.7, -439 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -101.7, -441.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -104.6, -445.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -99.5, -442.4 , 0 );

setScaleKey( spep_2 + 260 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 8.38, 8.38 );

setRotateKey( spep_2 + 260 + OFFSET_X, 1, 72.5 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 72.5 );

-- ** 音 ** --
--構える
SE019 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 62, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 4, SE019, 78 );
SE020 = playSeVer2( spep_2 + 4, 1278, "",spep_2 + 118, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 4, SE020, 63 );
SE021 = playSeVer2( spep_2 + 12, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE021, 1.24, 30, 4 );

--かめはめ波溜め
SE022 = playSeVer2( spep_2 + 90, 1131, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 90, 1132, "",spep_2 + 188, 0, 22, -1);
SE024 = playSeVer2( spep_2 + 90, 1184, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 90, SE024, 58 );

--かめはめ波発射
SE025 = playSeVer2( spep_2 + 156, 1284, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 156, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 156, 1213, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 156, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE028, 240 );

--気弾中
SE029 = playSeVer2( spep_2 + 244, 1215, "", 0, 54, 0, -1);
setStartTimeMs( SE029,  1200 );
SE030 = playSeVer2( spep_2 + 172, 1161, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 258 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 358

end
