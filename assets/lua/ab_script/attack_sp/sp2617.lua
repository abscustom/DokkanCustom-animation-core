--4027460:LR_リブリアン(巨大化)_ラブシャイニング
--sp_effect_a3_00105
--sp2617

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162300;  --ef_001  開始ビーム準備
SP_01b = 162301;  --ef_001b 開始ビーム準備
SP_02  = 162304;  --ef_002  セリフカットイン～フィニッシュ
SP_02b = 162305;  --ef_002b セリフカットイン～フィニッシュ

--エフェクト(敵)
SP_01r  = 162302;  --ef_001r  開始ビーム準備 敵側
SP_01br = 162303;  --ef_001br 開始ビーム準備 敵側
SP_02r  = 162306;  --ef_002r  セリフカットイン～フィニッシュ 敵側
SP_02br = 162307;  --ef_002br セリフカットイン～フィニッシュ 敵側


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
]]--

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始ビーム準備
-------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001  開始ビーム準備
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b  開始ビーム準備
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 96.2, -84.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 99.6, -89.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 99.6, -89.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 103, -95.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 103, -95.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 106.3, -100.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 106.3, -100.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 109.7, -105.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 113.1, -111.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 116.5, -116.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 119.9, -122 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 123.3, -127.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 126.7, -132.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 130.2, -138.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 133.6, -143.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 137.1, -149.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 140.5, -154.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 144, -160.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 147.5, -165.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 151, -171.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 154.5, -177 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 158, -182.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 161.5, -188.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 165, -193.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 168.5, -199.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 172.1, -205.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 175.7, -210.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 179.2, -216.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 182.8, -222.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 182.8, -222.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 255.9, -325.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 255.9, -325.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 352.1, -467.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 352.1, -467.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 478.5, -658.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 478.5, -658.8 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 642.3, -911.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 642.3, -911.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.09, 4.09 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 8 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 10 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 12 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 14 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 16 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 18 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 20 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 22 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 24 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 26 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 28 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 32 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 34 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 36 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 46 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 53 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 54 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 5.7 );

--敵の動き２
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 202 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 336 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 86.1, -154.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 86.1, -154.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 46.1, -94.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 46.1, -94.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 82.1, -114.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 82.1, -114.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 46.1, -162.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 46.1, -162.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 94.1, -86.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 94.1, -86.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 58.1, -158.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 58.1, -158.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 102.1, -118.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 102.1, -118.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 78.1, -82.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 78.1, -82.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 98.1, -122.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 98.1, -122.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 58.1, -98.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 58.1, -98.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 58.1, -154.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 58.1, -154.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 38.1, -122.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 38.1, -122.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 94.1, -94.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 94.1, -94.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 82.1, -94.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 82.1, -94.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 42.1, -122.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 42.1, -122.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 58.1, -102.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 58.1, -102.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 86.1, -122.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 86.1, -122.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 74.1, -150.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 74.1, -150.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 66.1, -98.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 66.1, -98.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 40.1, -123.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 40.1, -123.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 62.2, -124.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 62.2, -124.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 76.2, -101 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 76.2, -101 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 66.2, -125.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 66.2, -125.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 44.2, -126.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 44.2, -126.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 70.2, -127.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 70.2, -127.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 84.2, -100.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 84.2, -100.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.2, -129 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.2, -129 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 60.2, -113.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 60.2, -113.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 78.2, -130.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 78.2, -130.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 88.2, -107.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 88.2, -107.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 82.2, -132.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 82.2, -132.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 84.2, -157 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 84.2, -157 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 86.2, -133.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 86.2, -133.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 112.2, -110.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 112.2, -110.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 90.2, -135.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 90.2, -135.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 64.3, -136.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 64.3, -136.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 94.3, -137.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 94.3, -137.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 120.3, -113.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 120.3, -113.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 98.3, -138.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 98.3, -138.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 76.3, -139.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 76.3, -139.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 102.3, -140.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 102.3, -140.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 136.3, -153.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 136.3, -153.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 106.3, -141.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 106.3, -141.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 108.3, -122.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 108.3, -122.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 110.3, -143.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 110.3, -143.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 88.3, -144.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 88.3, -144.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 114.3, -145.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 114.3, -145.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 124.3, -169.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 124.3, -169.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 118.3, -146.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 118.3, -146.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 13.5, 63 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 19.9, 56.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 38.6, 36.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 80.1, -10.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 115.6, -49.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 160.3, -106.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 247.9, -198.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 353.5, -295 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 439.1, -414.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 549.8, -574.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 692.7, -700.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 692.7, -700.7 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 3.53, 3.53 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 37.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 136, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSeVer2( spep_0 + 0, 1288, "",spep_0 + 140, 0, 38, -1);

--すごむ
SE004 = playSeVer2( spep_0 + 60, 1116, "",spep_0 + 100, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 66, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE005,  100 );

--口光線溜める
SE006 = playSeVer2( spep_0 + 94, 1124, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
setPitch( spep_0 + 94, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1144, "",spep_0 + 206, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE007, 61 );
SE008 = playSeVer2( spep_0 + 98, 1191, "",spep_0 + 200, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE008, 141 );
SE009 = playSeVer2( spep_0 + 98, 1374, "",spep_0 + 202, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 98, SE009, 75 );
SE010 = playSeVer2( spep_0 + 98, 1320, "",spep_0 + 204, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE010, 89 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--口から光線撃つ
SE011 = playSeVer2( spep_0 + 186, 1212, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 186, 1213, "",spep_0 + 478, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 186, SE012, 75 );
SE013 = playSeVer2( spep_0 + 186, 1145, "",spep_0 + 322, 0, 34, -1);

--敵ヒット
SE014 = playSeVer2( spep_0 + 210, 1021, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 210, 1011, "", 0, 0, 0, -1);

--光線中
SE016 = playSeVer2( spep_0 + 210, 1409, "",spep_0 + 454, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 210, SE016, 207 );
SE017 = playSeVer2( spep_0 + 218, 1161, "",spep_0 + 454, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 218, SE017, 89 );
setTimeStretch( SE017, 1.11, 30, 4 );

--敵吹き飛ぶ
SE018 = playSeVer2( spep_0 + 340, 1145, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 340, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 340, 1296, "",spep_0 + 470, 0, 78, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --456

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE022 = playSeVer2( spep_1 + 82, 1072, "", 0, 0, 0, -1);

-------------------------------------------------
-- セリフカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 296;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_2 + 2;

-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 158 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 158 + OFFSET_X, 1, 28.4, 5.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 28.4, 5.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 29.2, 5.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 28.3, 5.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 28.3, 5.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 46.2, 13.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 46.2, 13.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 41, -51.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 41, -51.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 7.8, 10.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 7.8, 10.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 8.6, -16.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 8.6, -16.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 43.3, 9.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 43.3, 9.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 10.1, -11.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 10.1, -11.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 32.9, -33.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 32.9, -33.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 19.7, 5.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 19.7, 5.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 52.4, -12.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 52.4, -12.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 17.2, -37.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 17.2, -37.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 56, 6.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 56, 6.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 22.7, -0.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 22.7, -0.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 51.5, -2.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 51.5, -2.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 38.3, 0.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 38.3, 0.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 29, -9.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 29, -9.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 51.8, -58.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 51.8, -58.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 18.5, 3.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 18.5, 3.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 19.3, -23.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 19.3, -23.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 54, 2.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 54, 2.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 20.8, -18.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 20.8, -18.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 43.5, -40.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 43.5, -40.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 30.3, -1.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 30.3, -1.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 63, -19.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 63, -19.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 27.8, -44.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 27.8, -44.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 66.5, -0.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 66.5, -0.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 33.2, -7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 33.2, -7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 62, -9.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 62, -9.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 48.7, -6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 48.7, -6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 39.4, -16.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 39.4, -16.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 62.2, -65.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 62.2, -65.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 28.9, -3.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 28.9, -3.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 64.3, -4.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 64.3, -4.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 31.1, -24.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 31.1, -24.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 53.8, -47.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 53.8, -47.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 40.5, -7.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 40.5, -7.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 73.2, -26.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 73.2, -26.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 37.9, -50.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 37.9, -50.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 76.6, -7.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 76.6, -7.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 43.4, -13.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 43.4, -13.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 72.1, -16.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 72.1, -16.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 58.8, -12.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 58.8, -12.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 49.5, -23 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 49.5, -23 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 72.2, -71.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 72.2, -71.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 38.8, -9.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 38.8, -9.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 39.6, -36.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 39.6, -36.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 74.3, -10.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 74.3, -10.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 41, -31.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 41, -31.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 63.7, -53.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 63.7, -53.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 50.4, -14.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 50.4, -14.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 83, -32.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 83, -32.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 47.8, -57.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 47.8, -57.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 86.4, -13.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 86.4, -13.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 53.1, -20 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 53.1, -20 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 81.8, -22.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 81.8, -22.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 47.1, -15.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 47.1, -15.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 47.8, -41.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 47.8, -41.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 82.5, -16.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 82.5, -16.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 49.2, -36.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 49.2, -36.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 71.9, -59.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 71.9, -59.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 58.5, -19.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 58.5, -19.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 91.2, -38 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 91.2, -38 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 55.9, -62.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 55.9, -62.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 94.5, -18.9 , 0 );

setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_2 + 158 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 9.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--口から光線溜める２
SE024 = playSeVer2( spep_2 + 38, 1124, "",spep_2 + 132, 0, 20, -1);
SE025 = playSeVer2( spep_2 + 44, 1144, "",spep_2 + 128, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE025, 72 );
setPitch( spep_2 + 44, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_2 + 44, 1191, "",spep_2 + 134, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE026, 178 );
SE027 = playSeVer2( spep_2 + 44, 1374, "",spep_2 + 134, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 44, SE027, 71 );
SE028 = playSeVer2( spep_2 + 44, 1320, "",spep_2 + 140, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE028, 75 );
setPitch( spep_2 + 44, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );

--口から光線撃つ
SE029 = playSeVer2( spep_2 + 110, 1213, "",spep_2 + 402, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 75 );
SE030 = playSeVer2( spep_2 + 110, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE030, 79 );
SE031 = playSeVer2( spep_2 + 110, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE031, 151 );
SE032 = playSeVer2( spep_2 + 112, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE032, 126 );
SE033 = playSeVer2( spep_2 + 112, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE033, 75 );
SE034 = playSeVer2( spep_2 + 148, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE034, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  296 -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始ビーム準備
-------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001  開始ビーム準備
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b  開始ビーム準備
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 96.2, -84.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 99.6, -89.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 99.6, -89.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 103, -95.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 103, -95.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 106.3, -100.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 106.3, -100.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 109.7, -105.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 113.1, -111.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 116.5, -116.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 119.9, -122 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 123.3, -127.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 126.7, -132.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 130.2, -138.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 133.6, -143.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 137.1, -149.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 140.5, -154.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 144, -160.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 147.5, -165.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 151, -171.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 154.5, -177 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 158, -182.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 161.5, -188.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 165, -193.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 168.5, -199.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 172.1, -205.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 175.7, -210.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 179.2, -216.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 182.8, -222.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 182.8, -222.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 255.9, -325.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 255.9, -325.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 352.1, -467.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 352.1, -467.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 478.5, -658.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 478.5, -658.8 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 642.3, -911.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 642.3, -911.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.09, 4.09 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 8 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 10 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 12 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 14 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 16 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 18 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 20 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 22 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 24 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 26 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 28 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 32 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 34 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 36 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 46 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 53 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_0 + 54 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 5.7 );

--敵の動き２
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 202 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 336 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 86.1, -154.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 86.1, -154.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 46.1, -94.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 46.1, -94.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 82.1, -114.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 82.1, -114.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 46.1, -162.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 46.1, -162.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 94.1, -86.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 94.1, -86.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 58.1, -158.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 58.1, -158.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 102.1, -118.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 102.1, -118.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 22.1, -122.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 78.1, -82.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 78.1, -82.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 98.1, -122.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 98.1, -122.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 58.1, -98.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 58.1, -98.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 58.1, -154.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 58.1, -154.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 38.1, -122.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 38.1, -122.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 94.1, -94.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 94.1, -94.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 58.1, -150.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 30.1, -122.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 82.1, -94.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 82.1, -94.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 42.1, -122.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 42.1, -122.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 58.1, -102.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 58.1, -102.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 86.1, -122.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 86.1, -122.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 74.1, -150.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 74.1, -150.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 66.1, -98.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 66.1, -98.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 58.1, -122.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 40.1, -123.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 40.1, -123.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 62.2, -124.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 62.2, -124.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 76.2, -101 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 76.2, -101 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 66.2, -125.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 66.2, -125.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 44.2, -126.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 44.2, -126.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 70.2, -127.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 70.2, -127.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 84.2, -100.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 84.2, -100.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.2, -129 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.2, -129 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 60.2, -113.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 60.2, -113.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 78.2, -130.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 78.2, -130.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 88.2, -107.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 88.2, -107.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 82.2, -132.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 82.2, -132.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 84.2, -157 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 84.2, -157 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 86.2, -133.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 86.2, -133.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 112.2, -110.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 112.2, -110.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 90.2, -135.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 90.2, -135.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 64.3, -136.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 64.3, -136.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 94.3, -137.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 94.3, -137.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 120.3, -113.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 120.3, -113.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 98.3, -138.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 98.3, -138.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 76.3, -139.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 76.3, -139.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 102.3, -140.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 102.3, -140.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 136.3, -153.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 136.3, -153.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 106.3, -141.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 106.3, -141.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 108.3, -122.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 108.3, -122.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 110.3, -143.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 110.3, -143.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 88.3, -144.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 88.3, -144.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 114.3, -145.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 114.3, -145.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 124.3, -169.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 124.3, -169.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 118.3, -146.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 118.3, -146.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 13.5, 63 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 19.9, 56.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 38.6, 36.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 80.1, -10.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 115.6, -49.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 160.3, -106.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 247.9, -198.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 353.5, -295 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 439.1, -414.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 549.8, -574.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 692.7, -700.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 692.7, -700.7 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 3.53, 3.53 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 37.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 136, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSeVer2( spep_0 + 0, 1288, "",spep_0 + 140, 0, 38, -1);

--すごむ
SE004 = playSeVer2( spep_0 + 60, 1116, "",spep_0 + 100, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 66, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE005,  100 );

--口光線溜める
SE006 = playSeVer2( spep_0 + 94, 1124, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
setPitch( spep_0 + 94, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1144, "",spep_0 + 206, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE007, 61 );
SE008 = playSeVer2( spep_0 + 98, 1191, "",spep_0 + 200, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE008, 141 );
SE009 = playSeVer2( spep_0 + 98, 1374, "",spep_0 + 202, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 98, SE009, 75 );
SE010 = playSeVer2( spep_0 + 98, 1320, "",spep_0 + 204, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 98, SE010, 89 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--口から光線撃つ
SE011 = playSeVer2( spep_0 + 186, 1212, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 186, 1213, "",spep_0 + 478, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 186, SE012, 75 );
SE013 = playSeVer2( spep_0 + 186, 1145, "",spep_0 + 322, 0, 34, -1);

--敵ヒット
SE014 = playSeVer2( spep_0 + 210, 1021, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 210, 1011, "", 0, 0, 0, -1);

--光線中
SE016 = playSeVer2( spep_0 + 210, 1409, "",spep_0 + 454, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 210, SE016, 207 );
SE017 = playSeVer2( spep_0 + 218, 1161, "",spep_0 + 454, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 218, SE017, 89 );
setTimeStretch( SE017, 1.11, 30, 4 );

--敵吹き飛ぶ
SE018 = playSeVer2( spep_0 + 340, 1145, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 340, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 340, 1296, "",spep_0 + 470, 0, 78, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --456

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE022 = playSeVer2( spep_1 + 82, 1072, "", 0, 0, 0, -1);

-------------------------------------------------
-- セリフカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 296;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_2 + 2;

-- ** セリフカットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 158 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 158 + OFFSET_X, 1, 28.4, 5.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 28.4, 5.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 29.2, 5.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 28.3, 5.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 28.3, 5.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 46.2, 13.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 46.2, 13.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 41, -51.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 41, -51.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 7.8, 10.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 7.8, 10.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 8.6, -16.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 8.6, -16.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 43.3, 9.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 43.3, 9.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 10.1, -11.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 10.1, -11.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 32.9, -33.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 32.9, -33.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 19.7, 5.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 19.7, 5.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 52.4, -12.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 52.4, -12.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 17.2, -37.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 17.2, -37.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 56, 6.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 56, 6.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 22.7, -0.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 22.7, -0.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 51.5, -2.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 51.5, -2.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 38.3, 0.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 38.3, 0.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 29, -9.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 29, -9.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 51.8, -58.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 51.8, -58.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 18.5, 3.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 18.5, 3.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 19.3, -23.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 19.3, -23.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 54, 2.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 54, 2.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 20.8, -18.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 20.8, -18.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 43.5, -40.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 43.5, -40.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 30.3, -1.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 30.3, -1.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 63, -19.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 63, -19.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 27.8, -44.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 27.8, -44.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 66.5, -0.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 66.5, -0.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 33.2, -7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 33.2, -7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 62, -9.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 62, -9.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 48.7, -6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 48.7, -6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 39.4, -16.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 39.4, -16.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 62.2, -65.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 62.2, -65.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 28.9, -3.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 28.9, -3.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 29.6, -29.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 64.3, -4.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 64.3, -4.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 31.1, -24.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 31.1, -24.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 53.8, -47.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 53.8, -47.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 40.5, -7.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 40.5, -7.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 73.2, -26.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 73.2, -26.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 37.9, -50.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 37.9, -50.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 76.6, -7.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 76.6, -7.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 43.4, -13.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 43.4, -13.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 72.1, -16.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 72.1, -16.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 58.8, -12.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 58.8, -12.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 49.5, -23 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 49.5, -23 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 72.2, -71.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 72.2, -71.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 38.8, -9.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 38.8, -9.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 39.6, -36.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 39.6, -36.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 74.3, -10.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 74.3, -10.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 41, -31.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 41, -31.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 63.7, -53.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 63.7, -53.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 50.4, -14.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 50.4, -14.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 83, -32.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 83, -32.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 47.8, -57.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 47.8, -57.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 86.4, -13.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 86.4, -13.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 53.1, -20 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 53.1, -20 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 81.8, -22.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 81.8, -22.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 47.1, -15.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 47.1, -15.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 47.8, -41.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 47.8, -41.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 82.5, -16.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 82.5, -16.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 49.2, -36.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 49.2, -36.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 71.9, -59.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 71.9, -59.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 58.5, -19.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 58.5, -19.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 91.2, -38 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 91.2, -38 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 55.9, -62.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 55.9, -62.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 94.5, -18.9 , 0 );

setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_2 + 158 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 9.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--口から光線溜める２
SE024 = playSeVer2( spep_2 + 38, 1124, "",spep_2 + 132, 0, 20, -1);
SE025 = playSeVer2( spep_2 + 44, 1144, "",spep_2 + 128, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE025, 72 );
setPitch( spep_2 + 44, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_2 + 44, 1191, "",spep_2 + 134, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE026, 178 );
SE027 = playSeVer2( spep_2 + 44, 1374, "",spep_2 + 134, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 44, SE027, 71 );
SE028 = playSeVer2( spep_2 + 44, 1320, "",spep_2 + 140, 0, 22, 0.6);
setSeVolumeByWorkId( spep_2 + 44, SE028, 75 );
setPitch( spep_2 + 44, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );

--口から光線撃つ
SE029 = playSeVer2( spep_2 + 110, 1213, "",spep_2 + 402, 0, 96, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 75 );
SE030 = playSeVer2( spep_2 + 110, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE030, 79 );
SE031 = playSeVer2( spep_2 + 110, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE031, 151 );
SE032 = playSeVer2( spep_2 + 112, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE032, 126 );
SE033 = playSeVer2( spep_2 + 112, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE033, 75 );
SE034 = playSeVer2( spep_2 + 148, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE034, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  296 -4


end
