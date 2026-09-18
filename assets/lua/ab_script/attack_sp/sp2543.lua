-- 1021310: UR_天津飯_四身の拳
-- sp_effect_a1_00396

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_01 = 161783;  -- カードカットインまで　味方側　前面 ef_001_front
SP_02 = 161784;  -- カードカットインまで　味方側　背面 ef_001_back
SP_03 = 161787;  -- フィニッシュまで　味方側　前面 ef_002_front
SP_04 = 161788;  -- フィニッシュまで 味方側 背面 ef_002_back

-- 敵側
SP_01r = 161785;  -- カードカットインまで　敵側　前面 ef_001_re_front
SP_02r = 161786;  -- カードカットインまで　敵側　背面 ef_001_re_back
SP_03r = 161789;  -- フィニッシュまで 敵側 前面 ef_002_re_front
SP_04r = 161790;  -- フィニッシュまで 敵側 背面 ef_002_re_back

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カードカットインまで (486F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + 486, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + 486, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + 486, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + 486, entry_SP_01, 255 );

entry_SP_02 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + 486, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + 486, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_0 + 486, entry_SP_02, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_0 + 486, entry_SP_02, 255 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 16;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 敵キャラクター ** --
offset_0 = -1;

setDisp( spep_0 + 78 + offset_0, 1, 1 );
setDisp( spep_0 + 316 + offset_0, 1, 0 );

changeAnime( spep_0 + 78 + offset_0, 1, 102 );
changeAnime( spep_0 + 148 + offset_0, 1, 104 );
changeAnime( spep_0 + 196 + offset_0, 1, 1 );
changeAnime( spep_0 + 214 + offset_0, 1, 101 );
changeAnime( spep_0 + 232 + offset_0, 1, 1 );

setMoveKey( spep_0 + 78 + offset_0, 1, 135.4, -2862.5 , 0 );
setMoveKey( spep_0 + 79 + offset_0, 1, 135.4, -2862.5 , 0 );
setMoveKey( spep_0 + 80 + offset_0, 1, 132.3, -2655.1 , 0 );
setMoveKey( spep_0 + 81 + offset_0, 1, 132.3, -2655.1 , 0 );
setMoveKey( spep_0 + 82 + offset_0, 1, 129.1, -2453.5 , 0 );
setMoveKey( spep_0 + 83 + offset_0, 1, 129.1, -2453.5 , 0 );
setMoveKey( spep_0 + 84 + offset_0, 1, 125.9, -2257.6 , 0 );
setMoveKey( spep_0 + 85 + offset_0, 1, 125.9, -2257.6 , 0 );
setMoveKey( spep_0 + 86 + offset_0, 1, 122.8, -2067.5 , 0 );
setMoveKey( spep_0 + 87 + offset_0, 1, 122.8, -2067.5 , 0 );
setMoveKey( spep_0 + 88 + offset_0, 1, 119.6, -1883 , 0 );
setMoveKey( spep_0 + 89 + offset_0, 1, 119.6, -1883 , 0 );
setMoveKey( spep_0 + 90 + offset_0, 1, 110.5, -1755.3 , 0 );
setMoveKey( spep_0 + 91 + offset_0, 1, 110.5, -1755.3 , 0 );
setMoveKey( spep_0 + 92 + offset_0, 1, 101.4, -1627.5 , 0 );
setMoveKey( spep_0 + 93 + offset_0, 1, 101.4, -1627.5 , 0 );
setMoveKey( spep_0 + 94 + offset_0, 1, 92.3, -1499.7 , 0 );
setMoveKey( spep_0 + 95 + offset_0, 1, 92.3, -1499.7 , 0 );
setMoveKey( spep_0 + 96 + offset_0, 1, 83.2, -1371.9 , 0 );
setMoveKey( spep_0 + 97 + offset_0, 1, 83.2, -1371.9 , 0 );
setMoveKey( spep_0 + 98 + offset_0, 1, 74.1, -1244 , 0 );
setMoveKey( spep_0 + 99 + offset_0, 1, 74.1, -1244 , 0 );
setMoveKey( spep_0 + 100 + offset_0, 1, 65, -1116.3 , 0 );
setMoveKey( spep_0 + 101 + offset_0, 1, 65, -1116.3 , 0 );
setMoveKey( spep_0 + 102 + offset_0, 1, 56, -988.5 , 0 );
setMoveKey( spep_0 + 103 + offset_0, 1, 56, -988.5 , 0 );
setMoveKey( spep_0 + 104 + offset_0, 1, 46.9, -860.6 , 0 );
setMoveKey( spep_0 + 105 + offset_0, 1, 46.9, -860.6 , 0 );
setMoveKey( spep_0 + 106 + offset_0, 1, 37.7, -732.9 , 0 );
setMoveKey( spep_0 + 107 + offset_0, 1, 37.7, -732.9 , 0 );
setMoveKey( spep_0 + 108 + offset_0, 1, 28.7, -605.1 , 0 );
setMoveKey( spep_0 + 109 + offset_0, 1, 28.7, -605.1 , 0 );
setMoveKey( spep_0 + 110 + offset_0, 1, 19.6, -477.3 , 0 );
setMoveKey( spep_0 + 111 + offset_0, 1, 19.6, -477.3 , 0 );
setMoveKey( spep_0 + 112 + offset_0, 1, 10.5, -349.5 , 0 );
setMoveKey( spep_0 + 113 + offset_0, 1, 10.5, -349.5 , 0 );
setMoveKey( spep_0 + 114 + offset_0, 1, 1.3, -221.6 , 0 );
setMoveKey( spep_0 + 115 + offset_0, 1, 1.3, -221.6 , 0 );
setMoveKey( spep_0 + 116 + offset_0, 1, -7.7, -93.9 , 0 );
setMoveKey( spep_0 + 147 + offset_0, 1, -7.7, -93.9 , 0 );
setMoveKey( spep_0 + 148 + offset_0, 1, -10, -90.1 , 0 );
setMoveKey( spep_0 + 195 + offset_0, 1, -10, -90.1 , 0 );
setMoveKey( spep_0 + 196 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 212 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 213 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 214 + offset_0, 1, -34.8, -82.2 , 0 );
setMoveKey( spep_0 + 231 + offset_0, 1, -34.8, -82.2 , 0 );
setMoveKey( spep_0 + 232 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 244 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 245 + offset_0, 1, 4.7, -85.2 , 0 );
setMoveKey( spep_0 + 246 + offset_0, 1, 4.7, 79 , 0 );
setMoveKey( spep_0 + 250 + offset_0, 1, 4.7, 79 , 0 );
setMoveKey( spep_0 + 251 + offset_0, 1, 4.7, 79 , 0 );
setMoveKey( spep_0 + 252 + offset_0, 1, 4.7, 78.9 , 0 );
setMoveKey( spep_0 + 253 + offset_0, 1, 4.7, 78.9 , 0 );
setMoveKey( spep_0 + 254 + offset_0, 1, 4.7, 78.8 , 0 );
setMoveKey( spep_0 + 256 + offset_0, 1, 4.7, 78.8 , 0 );
setMoveKey( spep_0 + 257 + offset_0, 1, 4.7, 78.8 , 0 );
setMoveKey( spep_0 + 258 + offset_0, 1, 4.6, 78.7 , 0 );
setMoveKey( spep_0 + 260 + offset_0, 1, 4.6, 78.7 , 0 );
setMoveKey( spep_0 + 261 + offset_0, 1, 4.6, 78.7 , 0 );
setMoveKey( spep_0 + 262 + offset_0, 1, 4.6, 78.6 , 0 );
setMoveKey( spep_0 + 263 + offset_0, 1, 4.6, 78.6 , 0 );
setMoveKey( spep_0 + 264 + offset_0, 1, 4.6, 78.5 , 0 );
setMoveKey( spep_0 + 266 + offset_0, 1, 4.6, 78.5 , 0 );
setMoveKey( spep_0 + 267 + offset_0, 1, 4.6, 78.5 , 0 );
setMoveKey( spep_0 + 268 + offset_0, 1, 4.6, 78.4 , 0 );
setMoveKey( spep_0 + 269 + offset_0, 1, 4.6, 78.4 , 0 );
setMoveKey( spep_0 + 270 + offset_0, 1, 4.6, 78.3 , 0 );
setMoveKey( spep_0 + 272 + offset_0, 1, 4.6, 78.3 , 0 );
setMoveKey( spep_0 + 273 + offset_0, 1, 4.6, 78.3 , 0 );
setMoveKey( spep_0 + 274 + offset_0, 1, 4.6, 78.2 , 0 );
setMoveKey( spep_0 + 275 + offset_0, 1, 4.6, 78.2 , 0 );
setMoveKey( spep_0 + 276 + offset_0, 1, 4.5, 78.2 , 0 );
setMoveKey( spep_0 + 277 + offset_0, 1, 4.5, 78.2 , 0 );
setMoveKey( spep_0 + 278 + offset_0, 1, 4.6, 78.2 , 0 );
setMoveKey( spep_0 + 279 + offset_0, 1, 4.6, 78.2 , 0 );
setMoveKey( spep_0 + 280 + offset_0, 1, 4.5, 78.1 , 0 );
setMoveKey( spep_0 + 281 + offset_0, 1, 4.5, 78.1 , 0 );
setMoveKey( spep_0 + 282 + offset_0, 1, 4.5, 78 , 0 );
setMoveKey( spep_0 + 283 + offset_0, 1, 4.5, 78 , 0 );
setMoveKey( spep_0 + 284 + offset_0, 1, 4.6, 77.9 , 0 );
setMoveKey( spep_0 + 285 + offset_0, 1, 4.6, 77.9 , 0 );
setMoveKey( spep_0 + 286 + offset_0, 1, 4.5, 77.9 , 0 );
setMoveKey( spep_0 + 287 + offset_0, 1, 4.5, 77.9 , 0 );
setMoveKey( spep_0 + 288 + offset_0, 1, 4.5, 77.8 , 0 );
setMoveKey( spep_0 + 290 + offset_0, 1, 4.5, 77.8 , 0 );
setMoveKey( spep_0 + 291 + offset_0, 1, 4.5, 77.8 , 0 );
setMoveKey( spep_0 + 292 + offset_0, 1, 4.5, 77.7 , 0 );
setMoveKey( spep_0 + 293 + offset_0, 1, 4.5, 77.7 , 0 );
setMoveKey( spep_0 + 294 + offset_0, 1, 4.4, 77.6 , 0 );
setMoveKey( spep_0 + 296 + offset_0, 1, 4.4, 77.6 , 0 );
setMoveKey( spep_0 + 297 + offset_0, 1, 4.4, 77.6 , 0 );
setMoveKey( spep_0 + 298 + offset_0, 1, 4.4, 77.5 , 0 );
setMoveKey( spep_0 + 300 + offset_0, 1, 4.4, 77.5 , 0 );
setMoveKey( spep_0 + 301 + offset_0, 1, 4.4, 77.5 , 0 );
setMoveKey( spep_0 + 302 + offset_0, 1, 4.4, 77.4 , 0 );
setMoveKey( spep_0 + 303 + offset_0, 1, 4.4, 77.4 , 0 );
setMoveKey( spep_0 + 304 + offset_0, 1, 4.4, 77.3 , 0 );
setMoveKey( spep_0 + 308 + offset_0, 1, 4.4, 77.3 , 0 );
setMoveKey( spep_0 + 309 + offset_0, 1, 4.4, 77.3 , 0 );
setMoveKey( spep_0 + 310 + offset_0, 1, 4.4, 77.2 , 0 );
setMoveKey( spep_0 + 311 + offset_0, 1, 4.4, 77.2 , 0 );
setMoveKey( spep_0 + 312 + offset_0, 1, 4.3, 77.1 , 0 );
setMoveKey( spep_0 + 313 + offset_0, 1, 4.3, 77.1 , 0 );
setMoveKey( spep_0 + 314 + offset_0, 1, 4.3, 77 , 0 );

setScaleKey( spep_0 + 78 + offset_0, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 79 + offset_0, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 80 + offset_0, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 81 + offset_0, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 82 + offset_0, 1, 6.37, 6.37 );
setScaleKey( spep_0 + 83 + offset_0, 1, 6.37, 6.37 );
setScaleKey( spep_0 + 84 + offset_0, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 85 + offset_0, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 86 + offset_0, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 87 + offset_0, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 88 + offset_0, 1, 6, 6 );
setScaleKey( spep_0 + 89 + offset_0, 1, 6, 6 );
setScaleKey( spep_0 + 90 + offset_0, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 91 + offset_0, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 92 + offset_0, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 93 + offset_0, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 94 + offset_0, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 95 + offset_0, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 96 + offset_0, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 97 + offset_0, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 98 + offset_0, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 99 + offset_0, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 100 + offset_0, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 101 + offset_0, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 102 + offset_0, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 103 + offset_0, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 104 + offset_0, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 105 + offset_0, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 106 + offset_0, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 107 + offset_0, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 108 + offset_0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 109 + offset_0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 110 + offset_0, 1, 2, 2 );
setScaleKey( spep_0 + 111 + offset_0, 1, 2, 2 );
setScaleKey( spep_0 + 112 + offset_0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 113 + offset_0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 114 + offset_0, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 115 + offset_0, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 116 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 148 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 196 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 212 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 214 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 232 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 244 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 245 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 246 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 262 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 263 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 264 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 290 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 291 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 292 + offset_0, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 316 + offset_0, 1, 0.52, 0.52 );

setRotateKey( spep_0 + 78 + offset_0, 1, 0 );
setRotateKey( spep_0 + 148 + offset_0, 1, 0 );
setRotateKey( spep_0 + 196 + offset_0, 1, 0 );
setRotateKey( spep_0 + 212 + offset_0, 1, 0 );
setRotateKey( spep_0 + 214 + offset_0, 1, 0 );
setRotateKey( spep_0 + 232 + offset_0, 1, 0 );
setRotateKey( spep_0 + 314 + offset_0, 1, 0 );

setAlphaKey( spep_0 + 78 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 148 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 196 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 212 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 214 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 232 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 314 + offset_0, 1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 78, 1072, "", 0, 0, 0, -1);

--四散する
SE004 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE005, 65 );

--走る音
SE006 = playSeVer2( spep_0 + 138, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 178 );
SE007 = playSeVer2( spep_0 + 146, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE007, 158 );
SE008 = playSeVer2( spep_0 + 154, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE008, 178 );
SE009 = playSeVer2( spep_0 + 162, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE009, 178 );
SE010 = playSeVer2( spep_0 + 170, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 158 );
SE011 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE011, 178 );

--敵驚く
SE012 = playSeVer2( spep_0 + 198, 48, "", 0, 0, 0, -1);

--敵振り向く
SE013 = playSeVer2( spep_0 + 212, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE013, 71 );

--静寂
SE014 = playSeVer2( spep_0 + 230, 1229, "", 0, 0, 0, -1);

--腕前に出す
SE015 = playSeVer2( spep_0 + 334, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE015, 74 );

--敵振り向く
SE016 = playSeVer2( spep_0 + 232, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE016, 79 );

--腕前に出す
SE017 = playSeVer2( spep_0 + 342, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE017, 89 );

--気弾溜め
SE018 = playSeVer2( spep_0 + 366, 1243, "", 486 + 28, 0, 16, -1);
SE019 = playSeVer2( spep_0 + 366, 1265, "", 486 + 28, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 366, SE019, 124 );
SE020 = playSeVer2( spep_0 + 366, 1360, "", 486 + 28, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 366, SE020, 112 );
SE021 = playSeVer2( spep_0 + 366, 1204, "", 486 + 28, 0, 16, -1);

--画面遷移
SE022 = playSeVer2( spep_0 + 416, 8, "", 0, 0, 0, -1);

--画面遷移2
SE023 = playSeVer2( spep_0 + 450, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 486 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 486;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- フィニッシュまで (396F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_03 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 396, entry_SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 396, entry_SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_03, 0 );
setEffRotateKey( spep_2 + 396, entry_SP_03, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_03, 255 );
setEffAlphaKey( spep_2 + 396, entry_SP_03, 255 );

entry_SP_04 = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 396, entry_SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 396, entry_SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_04, 0 );
setEffRotateKey( spep_2 + 396, entry_SP_04, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_04, 255 );
setEffAlphaKey( spep_2 + 396, entry_SP_04, 255 );

-- ** 音 ** --
--気弾発射１
SE025 = playSeVer2( spep_2 + 0, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE025, 71 );
SE026 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 85 );
SE027 = playSeVer2( spep_2 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE027, 89 );

--気弾発射２
SE028 = playSeVer2( spep_2 + 34, 1178, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 34, 1177, "", 0, 0, 0, -1);

--気弾発射３
SE030 = playSeVer2( spep_2 + 76, 1178, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 76, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 90, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 119;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE025, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    stopSe( SP_dodge - 12, SE028, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    stopSe( SP_dodge - 12, SE032, 0 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
offset_2 = -1;

setDisp( spep_2 + 130 + offset_2, 1, 1 );
setDisp( spep_2 + 190 + offset_2, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 130 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 131 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 132 + offset_2, 1, -7.8, -98.2 , 0 );
setMoveKey( spep_2 + 133 + offset_2, 1, -7.8, -98.2 , 0 );
setMoveKey( spep_2 + 134 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 135 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 136 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 137 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 138 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 139 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 140 + offset_2, 1, -6.3, -79.1 , 0 );
setMoveKey( spep_2 + 141 + offset_2, 1, -6.3, -79.1 , 0 );
setMoveKey( spep_2 + 142 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 143 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 144 + offset_2, 1, -6.3, -78.8 , 0 );
setMoveKey( spep_2 + 145 + offset_2, 1, -6.3, -78.8 , 0 );
setMoveKey( spep_2 + 146 + offset_2, 1, -6.2, -78.7 , 0 );
setMoveKey( spep_2 + 147 + offset_2, 1, -6.2, -78.7 , 0 );
setMoveKey( spep_2 + 148 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 149 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 150 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 151 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 152 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 153 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 154 + offset_2, 1, -6.2, -78.2 , 0 );
setMoveKey( spep_2 + 155 + offset_2, 1, -6.2, -78.2 , 0 );
setMoveKey( spep_2 + 156 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 157 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 158 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 159 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 160 + offset_2, 1, -6.2, -77.8 , 0 );
setMoveKey( spep_2 + 161 + offset_2, 1, -6.2, -77.8 , 0 );
setMoveKey( spep_2 + 162 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 163 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 164 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 165 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 166 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 167 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 168 + offset_2, 1, -6.1, -77.3 , 0 );
setMoveKey( spep_2 + 169 + offset_2, 1, -6.1, -77.3 , 0 );
setMoveKey( spep_2 + 170 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 171 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 172 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 173 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 174 + offset_2, 1, -6.1, -76.9 , 0 );
setMoveKey( spep_2 + 175 + offset_2, 1, -6.1, -76.9 , 0 );
setMoveKey( spep_2 + 176 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 177 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 178 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 179 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 180 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 181 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 182 + offset_2, 1, -6.1, -76.4 , 0 );
setMoveKey( spep_2 + 183 + offset_2, 1, -6.1, -76.4 , 0 );
setMoveKey( spep_2 + 184 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 185 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 186 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 187 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 188 + offset_2, 1, -6, -76 , 0 );

setScaleKey( spep_2 + 130 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 131 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 132 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 133 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 134 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 135 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 136 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 144 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 145 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 146 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 160 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 161 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 162 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 176 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 177 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 178 + offset_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 190 + offset_2, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 130 + offset_2, 1, 0 );
setRotateKey( spep_2 + 188 + offset_2, 1, 0 );

setAlphaKey( spep_2 + 130 + offset_2, 1, 255 );
setAlphaKey( spep_2 + 188 + offset_2, 1, 255 );

-- ** 音 ** --
--全員気弾発射
SE033 = playSeVer2( spep_2 + 130, 1284, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 130, 1177, "", 0, 0, 0, -1);

--敵ヒット
SE035 = playSeVer2( spep_2 + 194, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 194, 1067, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_2 + 248, 1188, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 248, 1068, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 248, 1226, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 396 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 255 );
endPhase( spep_2 + 396 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カードカットインまで (486F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + 486, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + 486, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + 486, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + 486, entry_SP_01, 255 );

entry_SP_02 = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + 486, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + 486, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_0 + 486, entry_SP_02, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_0 + 486, entry_SP_02, 255 );

-- ** 顔カットイン ** --
-- spep_x = spep_0 + 16;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 敵キャラクター ** --
offset_0 = -1;

setDisp( spep_0 + 78 + offset_0, 1, 1 );
setDisp( spep_0 + 316 + offset_0, 1, 0 );

changeAnime( spep_0 + 78 + offset_0, 1, 2 );
changeAnime( spep_0 + 148 + offset_0, 1, 4 );
changeAnime( spep_0 + 196 + offset_0, 1, 101 );
changeAnime( spep_0 + 214 + offset_0, 1, 1 );
changeAnime( spep_0 + 232 + offset_0, 1, 101 );

setMoveKey( spep_0 + 78 + offset_0, 1,  -135.4, -2862.5 , 0 );
setMoveKey( spep_0 + 79 + offset_0, 1,  -135.4, -2862.5 , 0 );
setMoveKey( spep_0 + 80 + offset_0, 1,  -132.3, -2655.1 , 0 );
setMoveKey( spep_0 + 81 + offset_0, 1,  -132.3, -2655.1 , 0 );
setMoveKey( spep_0 + 82 + offset_0, 1,  -129.1, -2453.5 , 0 );
setMoveKey( spep_0 + 83 + offset_0, 1,  -129.1, -2453.5 , 0 );
setMoveKey( spep_0 + 84 + offset_0, 1,  -125.9, -2257.6 , 0 );
setMoveKey( spep_0 + 85 + offset_0, 1,  -125.9, -2257.6 , 0 );
setMoveKey( spep_0 + 86 + offset_0, 1,  -122.8, -2067.5 , 0 );
setMoveKey( spep_0 + 87 + offset_0, 1,  -122.8, -2067.5 , 0 );
setMoveKey( spep_0 + 88 + offset_0, 1,  -119.6, -1883 , 0 );
setMoveKey( spep_0 + 89 + offset_0, 1,  -119.6, -1883 , 0 );
setMoveKey( spep_0 + 90 + offset_0, 1,  -110.5, -1755.3 , 0 );
setMoveKey( spep_0 + 91 + offset_0, 1,  -110.5, -1755.3 , 0 );
setMoveKey( spep_0 + 92 + offset_0, 1,  -101.4, -1627.5 , 0 );
setMoveKey( spep_0 + 93 + offset_0, 1,  -101.4, -1627.5 , 0 );
setMoveKey( spep_0 + 94 + offset_0, 1,  -92.3, -1499.7 , 0 );
setMoveKey( spep_0 + 95 + offset_0, 1,  -92.3, -1499.7 , 0 );
setMoveKey( spep_0 + 96 + offset_0, 1,  -83.2, -1371.9 , 0 );
setMoveKey( spep_0 + 97 + offset_0, 1,  -83.2, -1371.9 , 0 );
setMoveKey( spep_0 + 98 + offset_0, 1,  -74.1, -1244 , 0 );
setMoveKey( spep_0 + 99 + offset_0, 1,  -74.1, -1244 , 0 );
setMoveKey( spep_0 + 100 + offset_0, 1, -65, -1116.3 , 0 );
setMoveKey( spep_0 + 101 + offset_0, 1, -65, -1116.3 , 0 );
setMoveKey( spep_0 + 102 + offset_0, 1, -56, -988.5 , 0 );
setMoveKey( spep_0 + 103 + offset_0, 1, -56, -988.5 , 0 );
setMoveKey( spep_0 + 104 + offset_0, 1, -46.9, -860.6 , 0 );
setMoveKey( spep_0 + 105 + offset_0, 1, -46.9, -860.6 , 0 );
setMoveKey( spep_0 + 106 + offset_0, 1, -37.7, -732.9 , 0 );
setMoveKey( spep_0 + 107 + offset_0, 1, -37.7, -732.9 , 0 );
setMoveKey( spep_0 + 108 + offset_0, 1, -28.7, -605.1 , 0 );
setMoveKey( spep_0 + 109 + offset_0, 1, -28.7, -605.1 , 0 );
setMoveKey( spep_0 + 110 + offset_0, 1, -19.6, -477.3 , 0 );
setMoveKey( spep_0 + 111 + offset_0, 1, -19.6, -477.3 , 0 );
setMoveKey( spep_0 + 112 + offset_0, 1, -10.5, -349.5 , 0 );
setMoveKey( spep_0 + 113 + offset_0, 1, -10.5, -349.5 , 0 );
setMoveKey( spep_0 + 114 + offset_0, 1, -1.3, -221.6 , 0 );
setMoveKey( spep_0 + 115 + offset_0, 1, -1.3, -221.6 , 0 );
setMoveKey( spep_0 + 116 + offset_0, 1, 7.7, -93.9 , 0 );
setMoveKey( spep_0 + 147 + offset_0, 1, 7.7, -93.9 , 0 );
setMoveKey( spep_0 + 148 + offset_0, 1, 10, -90.1 , 0 );
setMoveKey( spep_0 + 195 + offset_0, 1, 10, -90.1 , 0 );
setMoveKey( spep_0 + 196 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 212 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 213 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 214 + offset_0, 1, 34.8, -82.2 , 0 );
setMoveKey( spep_0 + 231 + offset_0, 1, 34.8, -82.2 , 0 );
setMoveKey( spep_0 + 232 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 244 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 245 + offset_0, 1, -4.7, -85.2 , 0 );
setMoveKey( spep_0 + 246 + offset_0, 1, -4.7, 79 , 0 );
setMoveKey( spep_0 + 250 + offset_0, 1, -4.7, 79 , 0 );
setMoveKey( spep_0 + 251 + offset_0, 1, -4.7, 79 , 0 );
setMoveKey( spep_0 + 252 + offset_0, 1, -4.7, 78.9 , 0 );
setMoveKey( spep_0 + 253 + offset_0, 1, -4.7, 78.9 , 0 );
setMoveKey( spep_0 + 254 + offset_0, 1, -4.7, 78.8 , 0 );
setMoveKey( spep_0 + 256 + offset_0, 1, -4.7, 78.8 , 0 );
setMoveKey( spep_0 + 257 + offset_0, 1, -4.7, 78.8 , 0 );
setMoveKey( spep_0 + 258 + offset_0, 1, -4.6, 78.7 , 0 );
setMoveKey( spep_0 + 260 + offset_0, 1, -4.6, 78.7 , 0 );
setMoveKey( spep_0 + 261 + offset_0, 1, -4.6, 78.7 , 0 );
setMoveKey( spep_0 + 262 + offset_0, 1, -4.6, 78.6 , 0 );
setMoveKey( spep_0 + 263 + offset_0, 1, -4.6, 78.6 , 0 );
setMoveKey( spep_0 + 264 + offset_0, 1, -4.6, 78.5 , 0 );
setMoveKey( spep_0 + 266 + offset_0, 1, -4.6, 78.5 , 0 );
setMoveKey( spep_0 + 267 + offset_0, 1, -4.6, 78.5 , 0 );
setMoveKey( spep_0 + 268 + offset_0, 1, -4.6, 78.4 , 0 );
setMoveKey( spep_0 + 269 + offset_0, 1, -4.6, 78.4 , 0 );
setMoveKey( spep_0 + 270 + offset_0, 1, -4.6, 78.3 , 0 );
setMoveKey( spep_0 + 272 + offset_0, 1, -4.6, 78.3 , 0 );
setMoveKey( spep_0 + 273 + offset_0, 1, -4.6, 78.3 , 0 );
setMoveKey( spep_0 + 274 + offset_0, 1, -4.6, 78.2 , 0 );
setMoveKey( spep_0 + 275 + offset_0, 1, -4.6, 78.2 , 0 );
setMoveKey( spep_0 + 276 + offset_0, 1, -4.5, 78.2 , 0 );
setMoveKey( spep_0 + 277 + offset_0, 1, -4.5, 78.2 , 0 );
setMoveKey( spep_0 + 278 + offset_0, 1, -4.6, 78.2 , 0 );
setMoveKey( spep_0 + 279 + offset_0, 1, -4.6, 78.2 , 0 );
setMoveKey( spep_0 + 280 + offset_0, 1, -4.5, 78.1 , 0 );
setMoveKey( spep_0 + 281 + offset_0, 1, -4.5, 78.1 , 0 );
setMoveKey( spep_0 + 282 + offset_0, 1, -4.5, 78 , 0 );
setMoveKey( spep_0 + 283 + offset_0, 1, -4.5, 78 , 0 );
setMoveKey( spep_0 + 284 + offset_0, 1, -4.6, 77.9 , 0 );
setMoveKey( spep_0 + 285 + offset_0, 1, -4.6, 77.9 , 0 );
setMoveKey( spep_0 + 286 + offset_0, 1, -4.5, 77.9 , 0 );
setMoveKey( spep_0 + 287 + offset_0, 1, -4.5, 77.9 , 0 );
setMoveKey( spep_0 + 288 + offset_0, 1, -4.5, 77.8 , 0 );
setMoveKey( spep_0 + 290 + offset_0, 1, -4.5, 77.8 , 0 );
setMoveKey( spep_0 + 291 + offset_0, 1, -4.5, 77.8 , 0 );
setMoveKey( spep_0 + 292 + offset_0, 1, -4.5, 77.7 , 0 );
setMoveKey( spep_0 + 293 + offset_0, 1, -4.5, 77.7 , 0 );
setMoveKey( spep_0 + 294 + offset_0, 1, -4.4, 77.6 , 0 );
setMoveKey( spep_0 + 296 + offset_0, 1, -4.4, 77.6 , 0 );
setMoveKey( spep_0 + 297 + offset_0, 1, -4.4, 77.6 , 0 );
setMoveKey( spep_0 + 298 + offset_0, 1, -4.4, 77.5 , 0 );
setMoveKey( spep_0 + 300 + offset_0, 1, -4.4, 77.5 , 0 );
setMoveKey( spep_0 + 301 + offset_0, 1, -4.4, 77.5 , 0 );
setMoveKey( spep_0 + 302 + offset_0, 1, -4.4, 77.4 , 0 );
setMoveKey( spep_0 + 303 + offset_0, 1, -4.4, 77.4 , 0 );
setMoveKey( spep_0 + 304 + offset_0, 1, -4.4, 77.3 , 0 );
setMoveKey( spep_0 + 308 + offset_0, 1, -4.4, 77.3 , 0 );
setMoveKey( spep_0 + 309 + offset_0, 1, -4.4, 77.3 , 0 );
setMoveKey( spep_0 + 310 + offset_0, 1, -4.4, 77.2 , 0 );
setMoveKey( spep_0 + 311 + offset_0, 1, -4.4, 77.2 , 0 );
setMoveKey( spep_0 + 312 + offset_0, 1, -4.3, 77.1 , 0 );
setMoveKey( spep_0 + 313 + offset_0, 1, -4.3, 77.1 , 0 );
setMoveKey( spep_0 + 314 + offset_0, 1, -4.3, 77 , 0 );

setScaleKey( spep_0 + 78 + offset_0, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 79 + offset_0, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 80 + offset_0, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 81 + offset_0, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 82 + offset_0, 1, 6.37, 6.37 );
setScaleKey( spep_0 + 83 + offset_0, 1, 6.37, 6.37 );
setScaleKey( spep_0 + 84 + offset_0, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 85 + offset_0, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 86 + offset_0, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 87 + offset_0, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 88 + offset_0, 1, 6, 6 );
setScaleKey( spep_0 + 89 + offset_0, 1, 6, 6 );
setScaleKey( spep_0 + 90 + offset_0, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 91 + offset_0, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 92 + offset_0, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 93 + offset_0, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 94 + offset_0, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 95 + offset_0, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 96 + offset_0, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 97 + offset_0, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 98 + offset_0, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 99 + offset_0, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 100 + offset_0, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 101 + offset_0, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 102 + offset_0, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 103 + offset_0, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 104 + offset_0, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 105 + offset_0, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 106 + offset_0, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 107 + offset_0, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 108 + offset_0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 109 + offset_0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 110 + offset_0, 1, 2, 2 );
setScaleKey( spep_0 + 111 + offset_0, 1, 2, 2 );
setScaleKey( spep_0 + 112 + offset_0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 113 + offset_0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 114 + offset_0, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 115 + offset_0, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 116 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 148 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 196 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 212 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 214 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 232 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 244 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 245 + offset_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 246 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 262 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 263 + offset_0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 264 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 290 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 291 + offset_0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 292 + offset_0, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 316 + offset_0, 1, 0.52, 0.52 );

setRotateKey( spep_0 + 78 + offset_0, 1, 0 );
setRotateKey( spep_0 + 148 + offset_0, 1, 0 );
setRotateKey( spep_0 + 196 + offset_0, 1, 0 );
setRotateKey( spep_0 + 212 + offset_0, 1, 0 );
setRotateKey( spep_0 + 214 + offset_0, 1, 0 );
setRotateKey( spep_0 + 232 + offset_0, 1, 0 );
setRotateKey( spep_0 + 314 + offset_0, 1, 0 );

setAlphaKey( spep_0 + 78 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 148 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 196 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 212 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 214 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 232 + offset_0, 1, 255 );
setAlphaKey( spep_0 + 314 + offset_0, 1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 78, 1072, "", 0, 0, 0, -1);

--四散する
SE004 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE005, 65 );

--走る音
SE006 = playSeVer2( spep_0 + 138, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 178 );
SE007 = playSeVer2( spep_0 + 146, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE007, 158 );
SE008 = playSeVer2( spep_0 + 154, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE008, 178 );
SE009 = playSeVer2( spep_0 + 162, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE009, 178 );
SE010 = playSeVer2( spep_0 + 170, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 158 );
SE011 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE011, 178 );

--敵驚く
SE012 = playSeVer2( spep_0 + 198, 48, "", 0, 0, 0, -1);

--敵振り向く
SE013 = playSeVer2( spep_0 + 212, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE013, 71 );

--静寂
SE014 = playSeVer2( spep_0 + 230, 1229, "", 0, 0, 0, -1);

--腕前に出す
SE015 = playSeVer2( spep_0 + 334, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE015, 74 );

--敵振り向く
SE016 = playSeVer2( spep_0 + 232, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE016, 79 );

--腕前に出す
SE017 = playSeVer2( spep_0 + 342, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE017, 89 );

--気弾溜め
SE018 = playSeVer2( spep_0 + 366, 1243, "", 486 + 28, 0, 16, -1);
SE019 = playSeVer2( spep_0 + 366, 1265, "", 486 + 28, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 366, SE019, 124 );
SE020 = playSeVer2( spep_0 + 366, 1360, "", 486 + 28, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 366, SE020, 112 );
SE021 = playSeVer2( spep_0 + 366, 1204, "", 486 + 28, 0, 16, -1);

--画面遷移
SE022 = playSeVer2( spep_0 + 416, 8, "", 0, 0, 0, -1);

--画面遷移2
SE023 = playSeVer2( spep_0 + 450, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 486 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 486;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- フィニッシュまで (396F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_03 = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 396, entry_SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 396, entry_SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_03, 0 );
setEffRotateKey( spep_2 + 396, entry_SP_03, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_03, 255 );
setEffAlphaKey( spep_2 + 396, entry_SP_03, 255 );

entry_SP_04 = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 396, entry_SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 396, entry_SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_04, 0 );
setEffRotateKey( spep_2 + 396, entry_SP_04, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_04, 255 );
setEffAlphaKey( spep_2 + 396, entry_SP_04, 255 );

-- ** 音 ** --
--気弾発射１
SE025 = playSeVer2( spep_2 + 0, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE025, 71 );
SE026 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 85 );
SE027 = playSeVer2( spep_2 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE027, 89 );

--気弾発射２
SE028 = playSeVer2( spep_2 + 34, 1178, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 34, 1177, "", 0, 0, 0, -1);

--気弾発射３
SE030 = playSeVer2( spep_2 + 76, 1178, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 76, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 90, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 119;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE025, 0 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    stopSe( SP_dodge - 12, SE028, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    stopSe( SP_dodge - 12, SE032, 0 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
offset_2 = -1;

setDisp( spep_2 + 130 + offset_2, 1, 1 );
setDisp( spep_2 + 190 + offset_2, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 130 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 131 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 132 + offset_2, 1, -7.8, -98.2 , 0 );
setMoveKey( spep_2 + 133 + offset_2, 1, -7.8, -98.2 , 0 );
setMoveKey( spep_2 + 134 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 135 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 136 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 137 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 138 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 139 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 140 + offset_2, 1, -6.3, -79.1 , 0 );
setMoveKey( spep_2 + 141 + offset_2, 1, -6.3, -79.1 , 0 );
setMoveKey( spep_2 + 142 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 143 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 144 + offset_2, 1, -6.3, -78.8 , 0 );
setMoveKey( spep_2 + 145 + offset_2, 1, -6.3, -78.8 , 0 );
setMoveKey( spep_2 + 146 + offset_2, 1, -6.2, -78.7 , 0 );
setMoveKey( spep_2 + 147 + offset_2, 1, -6.2, -78.7 , 0 );
setMoveKey( spep_2 + 148 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 149 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 150 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 151 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 152 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 153 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 154 + offset_2, 1, -6.2, -78.2 , 0 );
setMoveKey( spep_2 + 155 + offset_2, 1, -6.2, -78.2 , 0 );
setMoveKey( spep_2 + 156 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 157 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 158 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 159 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 160 + offset_2, 1, -6.2, -77.8 , 0 );
setMoveKey( spep_2 + 161 + offset_2, 1, -6.2, -77.8 , 0 );
setMoveKey( spep_2 + 162 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 163 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 164 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 165 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 166 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 167 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 168 + offset_2, 1, -6.1, -77.3 , 0 );
setMoveKey( spep_2 + 169 + offset_2, 1, -6.1, -77.3 , 0 );
setMoveKey( spep_2 + 170 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 171 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 172 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 173 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 174 + offset_2, 1, -6.1, -76.9 , 0 );
setMoveKey( spep_2 + 175 + offset_2, 1, -6.1, -76.9 , 0 );
setMoveKey( spep_2 + 176 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 177 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 178 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 179 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 180 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 181 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 182 + offset_2, 1, -6.1, -76.4 , 0 );
setMoveKey( spep_2 + 183 + offset_2, 1, -6.1, -76.4 , 0 );
setMoveKey( spep_2 + 184 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 185 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 186 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 187 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 188 + offset_2, 1, -6, -76 , 0 );

setScaleKey( spep_2 + 130 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 131 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 132 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 133 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 134 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 135 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 136 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 144 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 145 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 146 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 160 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 161 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 162 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 176 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 177 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 178 + offset_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 190 + offset_2, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 130 + offset_2, 1, 0 );
setRotateKey( spep_2 + 188 + offset_2, 1, 0 );

setAlphaKey( spep_2 + 130 + offset_2, 1, 255 );
setAlphaKey( spep_2 + 188 + offset_2, 1, 255 );

-- ** 音 ** --
--全員気弾発射
SE033 = playSeVer2( spep_2 + 130, 1284, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 130, 1177, "", 0, 0, 0, -1);

--敵ヒット
SE035 = playSeVer2( spep_2 + 194, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 194, 1067, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_2 + 248, 1188, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 248, 1068, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 248, 1226, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 396 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 255 );
endPhase( spep_2 + 396 );

end
