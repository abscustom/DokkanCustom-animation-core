-- 1021270: SSR_天津飯_四身の拳
-- sp_effect_a1_00395

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
SP_001 = 161778;  -- カードカットインまで　敵味方共通 ef_001
SP_002_front = 161779;  -- フィニッシュまで　味方側　前面 ef_002_front
SP_002_back = 161780;  -- フィニッシュまで 味方側 背面 ef_002_back

-- 敵側
SP_002_re_front = 161781;  -- フィニッシュまで 敵側 前面 ef_002_re_front
SP_002_re_back = 161782;  -- フィニッシュまで 敵側 背面 ef_002_re_back

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カードカットインまで　敵味方共通 ef_001 (110F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 110, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 110, entry_SP_001, 255 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 18;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 110;

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
-- フィニッシュまで　味方側　前面 ef_002_front (592F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002_front = entryEffect( spep_2 + 0, SP_002_front, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_front, 0, 0 , 0 );
setEffMoveKey( spep_2 + 592, entry_SP_002_front, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_front, 1.0, 1.0 );
setEffScaleKey( spep_2 + 592, entry_SP_002_front, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_front, 0 );
setEffRotateKey( spep_2 + 592, entry_SP_002_front, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_front, 255 );
setEffAlphaKey( spep_2 + 592, entry_SP_002_front, 255 );

entry_SP_002_back = entryEffect( spep_2 + 0, SP_002_back, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + 592, entry_SP_002_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + 592, entry_SP_002_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_back, 0 );
setEffRotateKey( spep_2 + 592, entry_SP_002_back, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_back, 255 );
setEffAlphaKey( spep_2 + 592, entry_SP_002_back, 255 );

-- ** 敵キャラクター ** --
offset_2 = -1

setDisp( spep_2 + 20 + offset_2, 1, 1 );
setDisp( spep_2 + 258 + offset_2, 1, 0 );
setDisp( spep_2 + 379 + offset_2, 1, 1 );
setDisp( spep_2 + 440 + offset_2, 1, 0 );

changeAnime( spep_2 + 20 + offset_2, 1, 102 );
changeAnime( spep_2 + 90 + offset_2, 1, 104 );
changeAnime( spep_2 + 138 + offset_2, 1, 1 );
changeAnime( spep_2 + 156 + offset_2, 1, 101 );
changeAnime( spep_2 + 174 + offset_2, 1, 1 );
changeAnime( spep_2 + 380 + offset_2, 1, 104 );

setMoveKey( spep_2 + 20 + offset_2, 1, 156, -3204.4 , 0 );
setMoveKey( spep_2 + 21 + offset_2, 1, 156, -3204.4 , 0 );
setMoveKey( spep_2 + 22 + offset_2, 1, 149.1, -2915.2 , 0 );
setMoveKey( spep_2 + 23 + offset_2, 1, 149.1, -2915.2 , 0 );
setMoveKey( spep_2 + 24 + offset_2, 1, 142.1, -2638.5 , 0 );
setMoveKey( spep_2 + 25 + offset_2, 1, 142.1, -2638.5 , 0 );
setMoveKey( spep_2 + 26 + offset_2, 1, 135.2, -2374.2 , 0 );
setMoveKey( spep_2 + 27 + offset_2, 1, 135.2, -2374.2 , 0 );
setMoveKey( spep_2 + 28 + offset_2, 1, 128.3, -2122.5 , 0 );
setMoveKey( spep_2 + 29 + offset_2, 1, 128.3, -2122.5 , 0 );
setMoveKey( spep_2 + 30 + offset_2, 1, 121.3, -1883.3 , 0 );
setMoveKey( spep_2 + 31 + offset_2, 1, 121.3, -1883.3 , 0 );
setMoveKey( spep_2 + 32 + offset_2, 1, 112.2, -1755.5 , 0 );
setMoveKey( spep_2 + 33 + offset_2, 1, 112.2, -1755.5 , 0 );
setMoveKey( spep_2 + 34 + offset_2, 1, 103, -1627.7 , 0 );
setMoveKey( spep_2 + 35 + offset_2, 1, 103, -1627.7 , 0 );
setMoveKey( spep_2 + 36 + offset_2, 1, 93.9, -1500 , 0 );
setMoveKey( spep_2 + 37 + offset_2, 1, 93.9, -1500 , 0 );
setMoveKey( spep_2 + 38 + offset_2, 1, 84.8, -1372.1 , 0 );
setMoveKey( spep_2 + 39 + offset_2, 1, 84.8, -1372.1 , 0 );
setMoveKey( spep_2 + 40 + offset_2, 1, 75.6, -1244.2 , 0 );
setMoveKey( spep_2 + 41 + offset_2, 1, 75.6, -1244.2 , 0 );
setMoveKey( spep_2 + 42 + offset_2, 1, 66.5, -1116.5 , 0 );
setMoveKey( spep_2 + 43 + offset_2, 1, 66.5, -1116.5 , 0 );
setMoveKey( spep_2 + 44 + offset_2, 1, 57.4, -988.7 , 0 );
setMoveKey( spep_2 + 45 + offset_2, 1, 57.4, -988.7 , 0 );
setMoveKey( spep_2 + 46 + offset_2, 1, 48.3, -860.8 , 0 );
setMoveKey( spep_2 + 47 + offset_2, 1, 48.3, -860.8 , 0 );
setMoveKey( spep_2 + 48 + offset_2, 1, 39.2, -733.1 , 0 );
setMoveKey( spep_2 + 49 + offset_2, 1, 39.2, -733.1 , 0 );
setMoveKey( spep_2 + 50 + offset_2, 1, 30.1, -605.2 , 0 );
setMoveKey( spep_2 + 51 + offset_2, 1, 30.1, -605.2 , 0 );
setMoveKey( spep_2 + 52 + offset_2, 1, 20.9, -477.4 , 0 );
setMoveKey( spep_2 + 53 + offset_2, 1, 20.9, -477.4 , 0 );
setMoveKey( spep_2 + 54 + offset_2, 1, 11.8, -349.6 , 0 );
setMoveKey( spep_2 + 55 + offset_2, 1, 11.8, -349.6 , 0 );
setMoveKey( spep_2 + 56 + offset_2, 1, 2.6, -221.8 , 0 );
setMoveKey( spep_2 + 57 + offset_2, 1, 2.6, -221.8 , 0 );
setMoveKey( spep_2 + 58 + offset_2, 1, -6.5, -94.1 , 0 );
setMoveKey( spep_2 + 89 + offset_2, 1, -6.5, -94.1 , 0 );
setMoveKey( spep_2 + 90 + offset_2, 1, -8.7, -90.2 , 0 );
setMoveKey( spep_2 + 137 + offset_2, 1, -8.7, -90.2 , 0 );
setMoveKey( spep_2 + 138 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 154 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 155 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 156 + offset_2, 1, -33.5, -82.4 , 0 );
setMoveKey( spep_2 + 173 + offset_2, 1, -33.5, -82.4 , 0 );
setMoveKey( spep_2 + 174 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 186 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 187 + offset_2, 1, 5.9, -85.4 , 0 );
setMoveKey( spep_2 + 188 + offset_2, 1, 6, 78.9 , 0 );
setMoveKey( spep_2 + 189 + offset_2, 1, 6, 78.9 , 0 );
setMoveKey( spep_2 + 190 + offset_2, 1, 5.9, 78.9 , 0 );
setMoveKey( spep_2 + 191 + offset_2, 1, 5.9, 78.9 , 0 );
setMoveKey( spep_2 + 192 + offset_2, 1, 5.9, 78.8 , 0 );
setMoveKey( spep_2 + 193 + offset_2, 1, 5.9, 78.8 , 0 );
setMoveKey( spep_2 + 194 + offset_2, 1, 5.9, 78.7 , 0 );
setMoveKey( spep_2 + 198 + offset_2, 1, 5.9, 78.7 , 0 );
setMoveKey( spep_2 + 199 + offset_2, 1, 5.9, 78.7 , 0 );
setMoveKey( spep_2 + 200 + offset_2, 1, 5.8, 78.6 , 0 );
setMoveKey( spep_2 + 201 + offset_2, 1, 5.8, 78.6 , 0 );
setMoveKey( spep_2 + 202 + offset_2, 1, 5.9, 78.6 , 0 );
setMoveKey( spep_2 + 203 + offset_2, 1, 5.9, 78.6 , 0 );
setMoveKey( spep_2 + 204 + offset_2, 1, 5.9, 78.4 , 0 );
setMoveKey( spep_2 + 205 + offset_2, 1, 5.9, 78.4 , 0 );
setMoveKey( spep_2 + 206 + offset_2, 1, 5.8, 78.4 , 0 );
setMoveKey( spep_2 + 208 + offset_2, 1, 5.8, 78.4 , 0 );
setMoveKey( spep_2 + 209 + offset_2, 1, 5.8, 78.4 , 0 );
setMoveKey( spep_2 + 210 + offset_2, 1, 5.8, 78.3 , 0 );
setMoveKey( spep_2 + 211 + offset_2, 1, 5.8, 78.3 , 0 );
setMoveKey( spep_2 + 212 + offset_2, 1, 5.8, 78.2 , 0 );
setMoveKey( spep_2 + 213 + offset_2, 1, 5.8, 78.2 , 0 );
setMoveKey( spep_2 + 214 + offset_2, 1, 5.8, 78.1 , 0 );
setMoveKey( spep_2 + 218 + offset_2, 1, 5.8, 78.1 , 0 );
setMoveKey( spep_2 + 219 + offset_2, 1, 5.8, 78.1 , 0 );
setMoveKey( spep_2 + 220 + offset_2, 1, 5.8, 78 , 0 );
setMoveKey( spep_2 + 222 + offset_2, 1, 5.8, 78 , 0 );
setMoveKey( spep_2 + 223 + offset_2, 1, 5.8, 78 , 0 );
setMoveKey( spep_2 + 224 + offset_2, 1, 5.8, 77.8 , 0 );
setMoveKey( spep_2 + 226 + offset_2, 1, 5.8, 77.8 , 0 );
setMoveKey( spep_2 + 227 + offset_2, 1, 5.8, 77.8 , 0 );
setMoveKey( spep_2 + 228 + offset_2, 1, 5.7, 77.8 , 0 );
setMoveKey( spep_2 + 229 + offset_2, 1, 5.7, 77.8 , 0 );
setMoveKey( spep_2 + 230 + offset_2, 1, 5.7, 77.7 , 0 );
setMoveKey( spep_2 + 232 + offset_2, 1, 5.7, 77.7 , 0 );
setMoveKey( spep_2 + 233 + offset_2, 1, 5.7, 77.7 , 0 );
setMoveKey( spep_2 + 234 + offset_2, 1, 5.7, 77.5 , 0 );
setMoveKey( spep_2 + 238 + offset_2, 1, 5.7, 77.5 , 0 );
setMoveKey( spep_2 + 239 + offset_2, 1, 5.7, 77.5 , 0 );
setMoveKey( spep_2 + 240 + offset_2, 1, 5.6, 77.4 , 0 );
setMoveKey( spep_2 + 241 + offset_2, 1, 5.6, 77.4 , 0 );
setMoveKey( spep_2 + 242 + offset_2, 1, 5.7, 77.3 , 0 );
setMoveKey( spep_2 + 244 + offset_2, 1, 5.7, 77.3 , 0 );
setMoveKey( spep_2 + 245 + offset_2, 1, 5.7, 77.3 , 0 );
setMoveKey( spep_2 + 246 + offset_2, 1, 5.6, 77.2 , 0 );
setMoveKey( spep_2 + 378 + offset_2, 1, 5.6, 77.2 , 0 );

setScaleKey( spep_2 + 20 + offset_2, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 21 + offset_2, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 22 + offset_2, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 23 + offset_2, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 24 + offset_2, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 25 + offset_2, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 26 + offset_2, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 27 + offset_2, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 28 + offset_2, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 29 + offset_2, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 30 + offset_2, 1, 6, 6 );
setScaleKey( spep_2 + 31 + offset_2, 1, 6, 6 );
setScaleKey( spep_2 + 32 + offset_2, 1, 5.63, 5.63 );
setScaleKey( spep_2 + 33 + offset_2, 1, 5.63, 5.63 );
setScaleKey( spep_2 + 34 + offset_2, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 35 + offset_2, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 36 + offset_2, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 37 + offset_2, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 38 + offset_2, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 39 + offset_2, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 40 + offset_2, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 41 + offset_2, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 42 + offset_2, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 43 + offset_2, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 44 + offset_2, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 45 + offset_2, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 46 + offset_2, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 47 + offset_2, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 48 + offset_2, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 49 + offset_2, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 50 + offset_2, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 51 + offset_2, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 52 + offset_2, 1, 2, 2 );
setScaleKey( spep_2 + 53 + offset_2, 1, 2, 2 );
setScaleKey( spep_2 + 54 + offset_2, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 55 + offset_2, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 56 + offset_2, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 57 + offset_2, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 58 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 90 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 138 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 154 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 156 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 174 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 186 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 187 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 188 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 204 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 205 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 206 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 232 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 233 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 234 + offset_2, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 378 + offset_2, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 20 + offset_2, 1, 0 );
setRotateKey( spep_2 + 90 + offset_2, 1, 0 );
setRotateKey( spep_2 + 138 + offset_2, 1, 0 );
setRotateKey( spep_2 + 154 + offset_2, 1, 0 );
setRotateKey( spep_2 + 156 + offset_2, 1, 0 );
setRotateKey( spep_2 + 174 + offset_2, 1, 0 );
setRotateKey( spep_2 + 378 + offset_2, 1, 0 );

setAlphaKey( spep_2 + 20 + offset_2, 1, 255 );

-- ** 音 ** --
--画面遷移
SE004 = playSeVer2( spep_2 + 16, 1072, "", 0, 0, 0, 0.6);

--四散する
SE005 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 68, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE006, 65 );

--走る音
SE007 = playSeVer2( spep_2 + 76, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE007, 178 );
SE008 = playSeVer2( spep_2 + 84, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE008, 158 );
SE009 = playSeVer2( spep_2 + 92, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE009, 178 );
SE010 = playSeVer2( spep_2 + 100, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE010, 178 );
SE011 = playSeVer2( spep_2 + 106, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE011, 158 );
SE012 = playSeVer2( spep_2 + 116, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 178 );

--敵驚く
SE013 = playSeVer2( spep_2 + 136, 48, "", 0, 0, 0, -1);

--敵振り向く
SE014 = playSeVer2( spep_2 + 156, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE014, 71 );

--静寂
SE015 = playSeVer2( spep_2 + 166, 1229, "", 0, 0, 0, -1);

--敵振り向く
SE016 = playSeVer2( spep_2 + 176, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE016, 79 );

--気弾溜め
SE017 = playSeVer2( spep_2 + 256, 1243, "",spep_2 + 342, 0, 16, -1);
SE018 = playSeVer2( spep_2 + 256, 1265, "",spep_2 + 342, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 256, SE018, 124 );
SE019 = playSeVer2( spep_2 + 256, 1360, "",spep_2 + 342, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 256, SE019, 112 );
SE020 = playSeVer2( spep_2 + 256, 1204, "",spep_2 + 342, 0, 16, -1);

--気弾発射３
SE021 = playSeVer2( spep_2 + 326, 1178, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 326, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 340, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 368;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );

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
setMoveKey( spep_2 + 379 + offset_2, 1, 5.6, 77.2 , 0 );
setMoveKey( spep_2 + 380 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 381 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 382 + offset_2, 1, -7.8, -98.3 , 0 );
setMoveKey( spep_2 + 383 + offset_2, 1, -7.8, -98.3 , 0 );
setMoveKey( spep_2 + 384 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 385 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 386 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 387 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 388 + offset_2, 1, -6.3, -79.3 , 0 );
setMoveKey( spep_2 + 389 + offset_2, 1, -6.3, -79.3 , 0 );
setMoveKey( spep_2 + 390 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 391 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 392 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 393 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 394 + offset_2, 1, -6.3, -78.9 , 0 );
setMoveKey( spep_2 + 395 + offset_2, 1, -6.3, -78.9 , 0 );
setMoveKey( spep_2 + 396 + offset_2, 1, -6.2, -78.8 , 0 );
setMoveKey( spep_2 + 397 + offset_2, 1, -6.2, -78.8 , 0 );
setMoveKey( spep_2 + 398 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 399 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 400 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 401 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 402 + offset_2, 1, -6.2, -78.4 , 0 );
setMoveKey( spep_2 + 403 + offset_2, 1, -6.2, -78.4 , 0 );
setMoveKey( spep_2 + 404 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 405 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 406 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 407 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 408 + offset_2, 1, -6.2, -78 , 0 );
setMoveKey( spep_2 + 409 + offset_2, 1, -6.2, -78 , 0 );
setMoveKey( spep_2 + 410 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 411 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 412 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 413 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 414 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 415 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 416 + offset_2, 1, -6.1, -77.5 , 0 );
setMoveKey( spep_2 + 417 + offset_2, 1, -6.1, -77.5 , 0 );
setMoveKey( spep_2 + 418 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 419 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 420 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 421 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 422 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 423 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 424 + offset_2, 1, -6.1, -77 , 0 );
setMoveKey( spep_2 + 425 + offset_2, 1, -6.1, -77 , 0 );
setMoveKey( spep_2 + 426 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 427 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 428 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 429 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 430 + offset_2, 1, -6.1, -76.6 , 0 );
setMoveKey( spep_2 + 431 + offset_2, 1, -6.1, -76.6 , 0 );
setMoveKey( spep_2 + 432 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 433 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 434 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 435 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 436 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 437 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 438 + offset_2, 1, -6, -76.1 , 0 );
setMoveKey( spep_2 + 592, 1, -6, -76.1 , 0 );

setScaleKey( spep_2 + 379 + offset_2, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 380 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 381 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 382 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 383 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 384 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 385 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 386 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 394 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 395 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 396 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 410 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 411 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 412 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 426 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 427 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 428 + offset_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 592, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 380 + offset_2, 1, 0 );
setRotateKey( spep_2 + 592, 1, 0 );

setAlphaKey( spep_2 + 592, 1, 255 );

-- ** 音 ** --
--全員気弾発射
SE024 = playSeVer2( spep_2 + 380, 1284, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 380, 1177, "", 0, 0, 0, -1);

--敵ヒット
SE026 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 444, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 592 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 440 );
endPhase( spep_2 + 592 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カードカットインまで　敵味方共通 ef_001 (110F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 110, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 110, entry_SP_001, 255 );

-- ** 顔カットイン ** --
-- spep_x = spep_0 + 18;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 110;

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
-- フィニッシュまで　味方側　前面 ef_002_front (592F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002_front = entryEffect( spep_2 + 0, SP_002_re_front, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_front, 0, 0 , 0 );
setEffMoveKey( spep_2 + 592, entry_SP_002_front, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_front, 1.0, 1.0 );
setEffScaleKey( spep_2 + 592, entry_SP_002_front, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_front, 0 );
setEffRotateKey( spep_2 + 592, entry_SP_002_front, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_front, 255 );
setEffAlphaKey( spep_2 + 592, entry_SP_002_front, 255 );

entry_SP_002_back = entryEffect( spep_2 + 0, SP_002_re_back, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + 592, entry_SP_002_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + 592, entry_SP_002_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_back, 0 );
setEffRotateKey( spep_2 + 592, entry_SP_002_back, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_back, 255 );
setEffAlphaKey( spep_2 + 592, entry_SP_002_back, 255 );

-- ** 敵キャラクター ** --
offset_2 = -1

setDisp( spep_2 + 20 + offset_2, 1, 1 );
setDisp( spep_2 + 258 + offset_2, 1, 0 );
setDisp( spep_2 + 379 + offset_2, 1, 1 );
setDisp( spep_2 + 440 + offset_2, 1, 0 );

changeAnime( spep_2 + 20 + offset_2, 1, 2 );
changeAnime( spep_2 + 90 + offset_2, 1, 4 );
changeAnime( spep_2 + 138 + offset_2, 1, 101 );
changeAnime( spep_2 + 156 + offset_2, 1, 1 );
changeAnime( spep_2 + 174 + offset_2, 1, 101 );
changeAnime( spep_2 + 380 + offset_2, 1, 104 );

setMoveKey( spep_2 + 20 + offset_2, 1,  -156, -3204.4 , 0 );
setMoveKey( spep_2 + 21 + offset_2, 1,  -156, -3204.4 , 0 );
setMoveKey( spep_2 + 22 + offset_2, 1,  -149.1, -2915.2 , 0 );
setMoveKey( spep_2 + 23 + offset_2, 1,  -149.1, -2915.2 , 0 );
setMoveKey( spep_2 + 24 + offset_2, 1,  -142.1, -2638.5 , 0 );
setMoveKey( spep_2 + 25 + offset_2, 1,  -142.1, -2638.5 , 0 );
setMoveKey( spep_2 + 26 + offset_2, 1,  -135.2, -2374.2 , 0 );
setMoveKey( spep_2 + 27 + offset_2, 1,  -135.2, -2374.2 , 0 );
setMoveKey( spep_2 + 28 + offset_2, 1,  -128.3, -2122.5 , 0 );
setMoveKey( spep_2 + 29 + offset_2, 1,  -128.3, -2122.5 , 0 );
setMoveKey( spep_2 + 30 + offset_2, 1,  -121.3, -1883.3 , 0 );
setMoveKey( spep_2 + 31 + offset_2, 1,  -121.3, -1883.3 , 0 );
setMoveKey( spep_2 + 32 + offset_2, 1,  -112.2, -1755.5 , 0 );
setMoveKey( spep_2 + 33 + offset_2, 1,  -112.2, -1755.5 , 0 );
setMoveKey( spep_2 + 34 + offset_2, 1,  -103, -1627.7 , 0 );
setMoveKey( spep_2 + 35 + offset_2, 1,  -103, -1627.7 , 0 );
setMoveKey( spep_2 + 36 + offset_2, 1,  -93.9, -1500 , 0 );
setMoveKey( spep_2 + 37 + offset_2, 1,  -93.9, -1500 , 0 );
setMoveKey( spep_2 + 38 + offset_2, 1,  -84.8, -1372.1 , 0 );
setMoveKey( spep_2 + 39 + offset_2, 1,  -84.8, -1372.1 , 0 );
setMoveKey( spep_2 + 40 + offset_2, 1,  -75.6, -1244.2 , 0 );
setMoveKey( spep_2 + 41 + offset_2, 1,  -75.6, -1244.2 , 0 );
setMoveKey( spep_2 + 42 + offset_2, 1,  -66.5, -1116.5 , 0 );
setMoveKey( spep_2 + 43 + offset_2, 1,  -66.5, -1116.5 , 0 );
setMoveKey( spep_2 + 44 + offset_2, 1,  -57.4, -988.7 , 0 );
setMoveKey( spep_2 + 45 + offset_2, 1,  -57.4, -988.7 , 0 );
setMoveKey( spep_2 + 46 + offset_2, 1,  -48.3, -860.8 , 0 );
setMoveKey( spep_2 + 47 + offset_2, 1,  -48.3, -860.8 , 0 );
setMoveKey( spep_2 + 48 + offset_2, 1,  -39.2, -733.1 , 0 );
setMoveKey( spep_2 + 49 + offset_2, 1,  -39.2, -733.1 , 0 );
setMoveKey( spep_2 + 50 + offset_2, 1,  -30.1, -605.2 , 0 );
setMoveKey( spep_2 + 51 + offset_2, 1,  -30.1, -605.2 , 0 );
setMoveKey( spep_2 + 52 + offset_2, 1,  -20.9, -477.4 , 0 );
setMoveKey( spep_2 + 53 + offset_2, 1,  -20.9, -477.4 , 0 );
setMoveKey( spep_2 + 54 + offset_2, 1,  -11.8, -349.6 , 0 );
setMoveKey( spep_2 + 55 + offset_2, 1,  -11.8, -349.6 , 0 );
setMoveKey( spep_2 + 56 + offset_2, 1,  -2.6, -221.8 , 0 );
setMoveKey( spep_2 + 57 + offset_2, 1,  -2.6, -221.8 , 0 );
setMoveKey( spep_2 + 58 + offset_2, 1,  6.5, -94.1 , 0 );
setMoveKey( spep_2 + 89 + offset_2, 1,  6.5, -94.1 , 0 );
setMoveKey( spep_2 + 90 + offset_2, 1,  8.7, -90.2 , 0 );
setMoveKey( spep_2 + 137 + offset_2, 1, 8.7, -90.2 , 0 );
setMoveKey( spep_2 + 138 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 154 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 155 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 156 + offset_2, 1, 33.5, -82.4 , 0 );
setMoveKey( spep_2 + 173 + offset_2, 1, 33.5, -82.4 , 0 );
setMoveKey( spep_2 + 174 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 186 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 187 + offset_2, 1, -5.9, -85.4 , 0 );
setMoveKey( spep_2 + 188 + offset_2, 1, -6, 78.9 , 0 );
setMoveKey( spep_2 + 189 + offset_2, 1, -6, 78.9 , 0 );
setMoveKey( spep_2 + 190 + offset_2, 1, -5.9, 78.9 , 0 );
setMoveKey( spep_2 + 191 + offset_2, 1, -5.9, 78.9 , 0 );
setMoveKey( spep_2 + 192 + offset_2, 1, -5.9, 78.8 , 0 );
setMoveKey( spep_2 + 193 + offset_2, 1, -5.9, 78.8 , 0 );
setMoveKey( spep_2 + 194 + offset_2, 1, -5.9, 78.7 , 0 );
setMoveKey( spep_2 + 198 + offset_2, 1, -5.9, 78.7 , 0 );
setMoveKey( spep_2 + 199 + offset_2, 1, -5.9, 78.7 , 0 );
setMoveKey( spep_2 + 200 + offset_2, 1, -5.8, 78.6 , 0 );
setMoveKey( spep_2 + 201 + offset_2, 1, -5.8, 78.6 , 0 );
setMoveKey( spep_2 + 202 + offset_2, 1, -5.9, 78.6 , 0 );
setMoveKey( spep_2 + 203 + offset_2, 1, -5.9, 78.6 , 0 );
setMoveKey( spep_2 + 204 + offset_2, 1, -5.9, 78.4 , 0 );
setMoveKey( spep_2 + 205 + offset_2, 1, -5.9, 78.4 , 0 );
setMoveKey( spep_2 + 206 + offset_2, 1, -5.8, 78.4 , 0 );
setMoveKey( spep_2 + 208 + offset_2, 1, -5.8, 78.4 , 0 );
setMoveKey( spep_2 + 209 + offset_2, 1, -5.8, 78.4 , 0 );
setMoveKey( spep_2 + 210 + offset_2, 1, -5.8, 78.3 , 0 );
setMoveKey( spep_2 + 211 + offset_2, 1, -5.8, 78.3 , 0 );
setMoveKey( spep_2 + 212 + offset_2, 1, -5.8, 78.2 , 0 );
setMoveKey( spep_2 + 213 + offset_2, 1, -5.8, 78.2 , 0 );
setMoveKey( spep_2 + 214 + offset_2, 1, -5.8, 78.1 , 0 );
setMoveKey( spep_2 + 218 + offset_2, 1, -5.8, 78.1 , 0 );
setMoveKey( spep_2 + 219 + offset_2, 1, -5.8, 78.1 , 0 );
setMoveKey( spep_2 + 220 + offset_2, 1, -5.8, 78 , 0 );
setMoveKey( spep_2 + 222 + offset_2, 1, -5.8, 78 , 0 );
setMoveKey( spep_2 + 223 + offset_2, 1, -5.8, 78 , 0 );
setMoveKey( spep_2 + 224 + offset_2, 1, -5.8, 77.8 , 0 );
setMoveKey( spep_2 + 226 + offset_2, 1, -5.8, 77.8 , 0 );
setMoveKey( spep_2 + 227 + offset_2, 1, -5.8, 77.8 , 0 );
setMoveKey( spep_2 + 228 + offset_2, 1, -5.7, 77.8 , 0 );
setMoveKey( spep_2 + 229 + offset_2, 1, -5.7, 77.8 , 0 );
setMoveKey( spep_2 + 230 + offset_2, 1, -5.7, 77.7 , 0 );
setMoveKey( spep_2 + 232 + offset_2, 1, -5.7, 77.7 , 0 );
setMoveKey( spep_2 + 233 + offset_2, 1, -5.7, 77.7 , 0 );
setMoveKey( spep_2 + 234 + offset_2, 1, -5.7, 77.5 , 0 );
setMoveKey( spep_2 + 238 + offset_2, 1, -5.7, 77.5 , 0 );
setMoveKey( spep_2 + 239 + offset_2, 1, -5.7, 77.5 , 0 );
setMoveKey( spep_2 + 240 + offset_2, 1, -5.6, 77.4 , 0 );
setMoveKey( spep_2 + 241 + offset_2, 1, -5.6, 77.4 , 0 );
setMoveKey( spep_2 + 242 + offset_2, 1, -5.7, 77.3 , 0 );
setMoveKey( spep_2 + 244 + offset_2, 1, -5.7, 77.3 , 0 );
setMoveKey( spep_2 + 245 + offset_2, 1, -5.7, 77.3 , 0 );
setMoveKey( spep_2 + 246 + offset_2, 1, -5.6, 77.2 , 0 );
setMoveKey( spep_2 + 378 + offset_2, 1, -5.6, 77.2 , 0 );

setScaleKey( spep_2 + 20 + offset_2, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 21 + offset_2, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 22 + offset_2, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 23 + offset_2, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 24 + offset_2, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 25 + offset_2, 1, 6.81, 6.81 );
setScaleKey( spep_2 + 26 + offset_2, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 27 + offset_2, 1, 6.54, 6.54 );
setScaleKey( spep_2 + 28 + offset_2, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 29 + offset_2, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 30 + offset_2, 1, 6, 6 );
setScaleKey( spep_2 + 31 + offset_2, 1, 6, 6 );
setScaleKey( spep_2 + 32 + offset_2, 1, 5.63, 5.63 );
setScaleKey( spep_2 + 33 + offset_2, 1, 5.63, 5.63 );
setScaleKey( spep_2 + 34 + offset_2, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 35 + offset_2, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 36 + offset_2, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 37 + offset_2, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 38 + offset_2, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 39 + offset_2, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 40 + offset_2, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 41 + offset_2, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 42 + offset_2, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 43 + offset_2, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 44 + offset_2, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 45 + offset_2, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 46 + offset_2, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 47 + offset_2, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 48 + offset_2, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 49 + offset_2, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 50 + offset_2, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 51 + offset_2, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 52 + offset_2, 1, 2, 2 );
setScaleKey( spep_2 + 53 + offset_2, 1, 2, 2 );
setScaleKey( spep_2 + 54 + offset_2, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 55 + offset_2, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 56 + offset_2, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 57 + offset_2, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 58 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 90 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 138 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 154 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 156 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 174 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 186 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 187 + offset_2, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 188 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 204 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 205 + offset_2, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 206 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 232 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 233 + offset_2, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 234 + offset_2, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 378 + offset_2, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 20 + offset_2, 1, 0 );
setRotateKey( spep_2 + 90 + offset_2, 1, 0 );
setRotateKey( spep_2 + 138 + offset_2, 1, 0 );
setRotateKey( spep_2 + 154 + offset_2, 1, 0 );
setRotateKey( spep_2 + 156 + offset_2, 1, 0 );
setRotateKey( spep_2 + 174 + offset_2, 1, 0 );
setRotateKey( spep_2 + 378 + offset_2, 1, 0 );

setAlphaKey( spep_2 + 20 + offset_2, 1, 255 );

-- ** 音 ** --
--画面遷移
SE004 = playSeVer2( spep_2 + 16, 1072, "", 0, 0, 0, 0.6);

--四散する
SE005 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 68, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE006, 65 );

--走る音
SE007 = playSeVer2( spep_2 + 76, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE007, 178 );
SE008 = playSeVer2( spep_2 + 84, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE008, 158 );
SE009 = playSeVer2( spep_2 + 92, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE009, 178 );
SE010 = playSeVer2( spep_2 + 100, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE010, 178 );
SE011 = playSeVer2( spep_2 + 106, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE011, 158 );
SE012 = playSeVer2( spep_2 + 116, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 178 );

--敵驚く
SE013 = playSeVer2( spep_2 + 136, 48, "", 0, 0, 0, -1);

--敵振り向く
SE014 = playSeVer2( spep_2 + 156, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE014, 71 );

--静寂
SE015 = playSeVer2( spep_2 + 166, 1229, "", 0, 0, 0, -1);

--敵振り向く
SE016 = playSeVer2( spep_2 + 176, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE016, 79 );

--気弾溜め
SE017 = playSeVer2( spep_2 + 256, 1243, "",spep_2 + 342, 0, 16, -1);
SE018 = playSeVer2( spep_2 + 256, 1265, "",spep_2 + 342, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 256, SE018, 124 );
SE019 = playSeVer2( spep_2 + 256, 1360, "",spep_2 + 342, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 256, SE019, 112 );
SE020 = playSeVer2( spep_2 + 256, 1204, "",spep_2 + 342, 0, 16, -1);

--気弾発射３
SE021 = playSeVer2( spep_2 + 326, 1178, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 326, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 340, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 368;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );

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
setMoveKey( spep_2 + 379 + offset_2, 1, 5.6, 77.2 , 0 );
setMoveKey( spep_2 + 380 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 381 + offset_2, 1, -8.6, -107.7 , 0 );
setMoveKey( spep_2 + 382 + offset_2, 1, -7.8, -98.3 , 0 );
setMoveKey( spep_2 + 383 + offset_2, 1, -7.8, -98.3 , 0 );
setMoveKey( spep_2 + 384 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 385 + offset_2, 1, -7.1, -88.8 , 0 );
setMoveKey( spep_2 + 386 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 387 + offset_2, 1, -6.3, -79.4 , 0 );
setMoveKey( spep_2 + 388 + offset_2, 1, -6.3, -79.3 , 0 );
setMoveKey( spep_2 + 389 + offset_2, 1, -6.3, -79.3 , 0 );
setMoveKey( spep_2 + 390 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 391 + offset_2, 1, -6.3, -79.2 , 0 );
setMoveKey( spep_2 + 392 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 393 + offset_2, 1, -6.3, -79 , 0 );
setMoveKey( spep_2 + 394 + offset_2, 1, -6.3, -78.9 , 0 );
setMoveKey( spep_2 + 395 + offset_2, 1, -6.3, -78.9 , 0 );
setMoveKey( spep_2 + 396 + offset_2, 1, -6.2, -78.8 , 0 );
setMoveKey( spep_2 + 397 + offset_2, 1, -6.2, -78.8 , 0 );
setMoveKey( spep_2 + 398 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 399 + offset_2, 1, -6.2, -78.6 , 0 );
setMoveKey( spep_2 + 400 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 401 + offset_2, 1, -6.2, -78.5 , 0 );
setMoveKey( spep_2 + 402 + offset_2, 1, -6.2, -78.4 , 0 );
setMoveKey( spep_2 + 403 + offset_2, 1, -6.2, -78.4 , 0 );
setMoveKey( spep_2 + 404 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 405 + offset_2, 1, -6.2, -78.3 , 0 );
setMoveKey( spep_2 + 406 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 407 + offset_2, 1, -6.2, -78.1 , 0 );
setMoveKey( spep_2 + 408 + offset_2, 1, -6.2, -78 , 0 );
setMoveKey( spep_2 + 409 + offset_2, 1, -6.2, -78 , 0 );
setMoveKey( spep_2 + 410 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 411 + offset_2, 1, -6.2, -77.9 , 0 );
setMoveKey( spep_2 + 412 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 413 + offset_2, 1, -6.2, -77.7 , 0 );
setMoveKey( spep_2 + 414 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 415 + offset_2, 1, -6.1, -77.6 , 0 );
setMoveKey( spep_2 + 416 + offset_2, 1, -6.1, -77.5 , 0 );
setMoveKey( spep_2 + 417 + offset_2, 1, -6.1, -77.5 , 0 );
setMoveKey( spep_2 + 418 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 419 + offset_2, 1, -6.1, -77.4 , 0 );
setMoveKey( spep_2 + 420 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 421 + offset_2, 1, -6.1, -77.2 , 0 );
setMoveKey( spep_2 + 422 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 423 + offset_2, 1, -6.1, -77.1 , 0 );
setMoveKey( spep_2 + 424 + offset_2, 1, -6.1, -77 , 0 );
setMoveKey( spep_2 + 425 + offset_2, 1, -6.1, -77 , 0 );
setMoveKey( spep_2 + 426 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 427 + offset_2, 1, -6.1, -76.8 , 0 );
setMoveKey( spep_2 + 428 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 429 + offset_2, 1, -6.1, -76.7 , 0 );
setMoveKey( spep_2 + 430 + offset_2, 1, -6.1, -76.6 , 0 );
setMoveKey( spep_2 + 431 + offset_2, 1, -6.1, -76.6 , 0 );
setMoveKey( spep_2 + 432 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 433 + offset_2, 1, -6.1, -76.5 , 0 );
setMoveKey( spep_2 + 434 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 435 + offset_2, 1, -6, -76.3 , 0 );
setMoveKey( spep_2 + 436 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 437 + offset_2, 1, -6, -76.2 , 0 );
setMoveKey( spep_2 + 438 + offset_2, 1, -6, -76.1 , 0 );
setMoveKey( spep_2 + 592, 1, -6, -76.1 , 0 );

setScaleKey( spep_2 + 379 + offset_2, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 380 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 381 + offset_2, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 382 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 383 + offset_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 384 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 385 + offset_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 386 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 394 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 395 + offset_2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 396 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 410 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 411 + offset_2, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 412 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 426 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 427 + offset_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 428 + offset_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 592, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 380 + offset_2, 1, 0 );
setRotateKey( spep_2 + 592, 1, 0 );

setAlphaKey( spep_2 + 592, 1, 255 );

-- ** 音 ** --
--全員気弾発射
SE024 = playSeVer2( spep_2 + 380, 1284, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 380, 1177, "", 0, 0, 0, -1);

--敵ヒット
SE026 = playSeVer2( spep_2 + 444, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 444, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 592 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 440 );
endPhase( spep_2 + 592 );

end
