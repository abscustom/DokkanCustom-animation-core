--4027130:LR_超サイヤ人ゴッドSSベジット_超必殺技：ベジットスペシャル
--sp_effect_b2_00055
--sp2602

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 162182;  --ef_001 ベジットが気玉を生成〜ホッパー気弾が敵を攻撃
SP_02 = 162184;  --ef_002 ソードを構えて正面突進〜フィニッシュ

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
-- ベジットが気玉を生成〜ホッパー気弾が敵を攻撃(310f)
-------------------------------------------------
MAX_FRAME_0 = 310;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 ベジットが気玉を生成〜ホッパー気弾が敵を攻撃
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 170 + OFFSET_X, 1, 203.7, -94.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 202.9, -94.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 202.1, -94.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 201.3, -93.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 200.5, -93.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 199.7, -93.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 199.7, -93.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 197.5, -84.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 196.1, -79.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 195.1, -76.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 194.4, -74 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 193.7, -71.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 193.2, -70.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 192.8, -68.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 192.4, -67.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 192, -66.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 191.7, -65.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 191.5, -64.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 191.2, -63.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 191, -62.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 190.9, -62.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 190.7, -61.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 190.6, -61.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 190.5, -60.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 190.3, -60.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 190.3, -60.6 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 248 + OFFSET_X, 1, 103 );
changeAnime( spep_0 + 252 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 248 + OFFSET_X, 1, 278.1, -7.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 278.1, -7.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 192.5, 2.7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 98.7, 13.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -3.2, 25.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -13.6, 30.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 17.6, 22.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 27.6, 22.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 36.7, 7.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 43.9, 7.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 49.5, 7.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 53.5, 7.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 55.9, 7.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 56.7, 7.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -25.3, 50.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -28, 52.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -26, 48.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -27.9, 49.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -29.4, 51.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -30.4, 52.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -31, 52.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -31.2, 53 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -31.2, 53.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -9.1, 45.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 30.7, 4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 36.2, 43.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 41.1, 45.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 42.5, 37.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 45.4, 39.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 47.3, 40.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 48.3, 41.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 48.5, 41.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -37.8, 27.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -45.2, 35.9 , 0 );

setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 248 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -75 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -75 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -30 );

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1296, "",spep_0 + 140, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1265, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1056, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1224, "",spep_0 + 104, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 140 );

--腕あげる
SE006 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);

--気弾身体のまわり回転
SE007 = playSeVer2( spep_0 + 72, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 138 );
SE008 = playSeVer2( spep_0 + 80, 1119, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1277, "",spep_0 + 158, 0, 28, -1);

--手にオーラまとう
SE010 = playSeVer2( spep_0 + 114, 8, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 88 );
SE012 = playSeVer2( spep_0 + 120, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 103 );

--気弾身体のまわり回転
SE013 = playSeVer2( spep_0 + 140, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE013, 120 );

--気弾飛んでいく１
SE014 = playSeVer2( spep_0 + 182, 1254, "",spep_0 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 72 );
SE015 = playSeVer2( spep_0 + 182, 1290, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--気弾飛んでいく２
SE016 = playSeVer2( spep_0 + 220, 1177, "",spep_0 + 324, 0, 12, -1);
SE017 = playSeVer2( spep_0 + 220, 1184, "",spep_0 + 314, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 220, SE017, 69 );
SE018 = playSeVer2( spep_0 + 220, 1021, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 220, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE019, 80 );

--気弾ヒット
SE020 = playSeVer2( spep_0 + 258, 1011, "",spep_0 + 298, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 258, 1110, "",spep_0 + 318, 0, 8, -1);
SE022 = playSeVer2( spep_0 + 274, 1023, "",spep_0 + 320, 0, 12, -1);
SE023 = playSeVer2( spep_0 + 274, 1110, "",spep_0 + 334, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 274, SE023, 82 );
SE024 = playSeVer2( spep_0 + 284, 1024, "",spep_0 + 342, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 310f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--手前向かってくる
SE026 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 92, 9, "", 0, 0, 0, -1);

-------------------------------------------------
-- ソードを構えて正面突進〜フィニッシュ(984f)
-------------------------------------------------
MAX_FRAME_2 = 984;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 ソードを構えて正面突進〜フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 46 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 46 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, 108.5, 97.5 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 108.5, 97.5 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 101.6, 86.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 101.6, 86.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 95.4, 76 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 95.4, 76 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 89.9, 66.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 89.9, 66.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 89.8, 45.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 89.8, 45.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 85.8, 38.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 85.8, 38.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 82.4, 31.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 82.4, 31.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 79.7, 26.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 79.7, 26.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 77.5, 22.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 77.5, 22.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 76, 19.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 76, 19.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 53.6, 35.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 53.6, 35.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 53.2, 35.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 53.2, 35.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 53.5, 35.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 53.5, 35.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 65.5, 28.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 65.5, 28.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 68.1, 35.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 68.1, 35.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 149.8, -10.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 149.8, -10.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 135.8, -10.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 135.8, -10.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 135.8, -10.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 135.8, -10.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 119.5, -14.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 119.5, -14.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 126.6, -7.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 126.6, -7.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 43, 19.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 43, 19.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 52.6, 17.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 52.6, 17.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 52.8, 17.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 52.8, 17.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 72, 22.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 72, 22.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 72.2, 22.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 72.2, 22.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 164, 56.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 164, 56.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 152.3, 59.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 152.3, 59.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 152.3, 59.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 152.3, 59.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 152.3, 59.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 152.3, 59.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 138.3, 64.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 138.3, 64.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 138.3, 64.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 138.3, 64.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 56.4, 41.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 56.4, 41.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 56.6, 41.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 56.6, 41.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 56.9, 41.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 56.9, 41.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 69, 37 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 69, 37 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 71.6, 41.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 71.6, 41.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 128.7, 16.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 128.7, 16.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 128.9, 16.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 128.9, 16.4 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.68, 1.68 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -10 );

--敵の動き2
setDisp( spep_2 + 304 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 304 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 304 + OFFSET_X, 1, 0, -216.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 0, -216.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 0, -87.1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 0, -87.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 0, -26.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 0, -26.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 0, -10.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 0, -10.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 0, -2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 0, -2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0, 8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0, 8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 0, 11.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 0, 11.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 0, 13.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 0, 13.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 0, 15.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 0, 15.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 0, 16.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 0, 16.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 0, 17.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 0, 17.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 0, 19.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 0, 19.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 0, 20 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 0, 20 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 0, 20.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 0, 20.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 0, 20.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 0, 20.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 0, 21.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 0, 21.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 0, 21.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 0, 21.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 0, 21.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 0, 21.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 0, 21.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 0, 21.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 21.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 0, 21.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 0, 21.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 0, 21.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 0, 23.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 0, 23.9 , 0 );

setScaleKey( spep_2 + 304 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 43.6 );

--敵の動き3
setDisp( spep_2 + 756 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 782 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 756 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 770 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 756 + OFFSET_X, 1, 112.6, -39.3 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, 112.6, -39.3 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, 122.6, -37.7 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, 122.6, -37.7 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 129.8, -36.6 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 129.8, -36.6 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 134.2, -35.9 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 134.2, -35.9 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 135.6, -35.7 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 135.6, -35.7 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 161.6, -34.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 161.6, -34.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 194.5, -30.6 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 194.5, -30.6 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 221.6, -27 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 221.6, -27 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 242.2, -24.3 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 242.2, -24.3 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 255.8, -22.5 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 261.6, -21.8 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 261.6, -21.8 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 281.6, -21.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 301.6, -21.8 , 0 );

setScaleKey( spep_2 + 756 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 756 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 776 + OFFSET_X, 1, 3, 0.898, 0.796, 0.458, 1.0 );
setBlendColor( spep_2 + 780 + OFFSET_X, 1, 3, 1.000, 0.964, 0.674, 1.0 );
setBlendColor( spep_2 + 782 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手前向かってくる
SE028 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE028, 65 );
setTimeStretch( SE028, 1.24, 30, 4 );

--連続斬り
SE029 = playSeVer2( spep_2 + 60, 1141, "",spep_2 + 86, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 60, SE029, 102 );
SE030 = playSeVer2( spep_2 + 62, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 72, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 72, 1141, "",spep_2 + 98, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 72, SE032, 109 );
setPitch( spep_2 + 72, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_2 + 80, 1031, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 80, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE034, 101 );
SE035 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 88, 1141, "",spep_2 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 88, SE036, 103 );
setPitch( spep_2 + 88, SE036, -100 );
setTimeStretch( SE036, 0.93, 30, 4 );
SE037 = playSeVer2( spep_2 + 96, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 100, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE038, 111 );
SE039 = playSeVer2( spep_2 + 104, 1032, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 106, 1141, "",spep_2 + 134, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 106, SE040, 104 );
SE041 = playSeVer2( spep_2 + 108, 1031, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 114, 1032, "", 0, 0, 0, -1);

--正面斬り１
SE043 = playSeVer2( spep_2 + 120, 1141, "",spep_2 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 120, SE043, 100 );
SE044 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 120, 1122, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 124, 1032, "", 0, 0, 0, -1);

--正面斬り２
SE047 = playSeVer2( spep_2 + 142, 1141, "",spep_2 + 172, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 142, SE047, 105 );
SE048 = playSeVer2( spep_2 + 142, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 146, 1032, "", 0, 0, 0, -1);

--正面斬り３
SE050 = playSeVer2( spep_2 + 160, 1141, "",spep_2 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 160, SE050, 108 );
SE051 = playSeVer2( spep_2 + 160, 1110, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 164, 1032, "", 0, 0, 0, -1);

--正面斬り４
SE053 = playSeVer2( spep_2 + 176, 1141, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 176, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 178, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE056 = playSeVer2( spep_2 + 186, 1116, "",spep_2 + 238, 0, 18, -1);

--斬りとばす
SE057 = playSeVer2( spep_2 + 222, 1032, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 224, 1172, "", 0, 0, 0, -1);
setPitch( spep_2 + 224, SE059, 200 );
setTimeStretch( SE059, 1.13, 30, 4 );
SE060 = playSeVer2( spep_2 + 224, 1143, "", 0, 0, 0, -1);

--気弾飛び出す
SE061 = playSeVer2( spep_2 + 240, 1179, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 240, 1178, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 242, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE063, 120 );

--気弾向かっていく
SE064 = playSeVer2( spep_2 + 284, 1202, "",spep_2 + 372, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 284, SE064, 176 );
SE065 = playSeVer2( spep_2 + 284, 1290, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 288, 1177, "",spep_2 + 370, 0, 12, -1);
SE067 = playSeVer2( spep_2 + 294, 1390, "",spep_2 + 372, 0, 12, 0.6);

--爆発
SE068 = playSeVer2( spep_2 + 360, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 376, 1024, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 406, 1067, "", 0, 0, 0, -1);

--向かっていく
SE071 = playSeVer2( spep_2 + 456, 1182, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 458, 1117, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 466, 1277, "", 0, 0, 0, -1);

--斬りつける
SE074 = playSeVer2( spep_2 + 502, 1120, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 506, 1046, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_2 + 510, 1141, "", 0, 0, 0, -1);

--画面遷移
SE077 = playSeVer2( spep_2 + 518, 1072, "", 0, 0, 0, -1);

--手のオーラまとめる
SE079 = playSeVer2( spep_2 + 586, 1176, "",spep_2 + 708, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 586, SE079, 79 );
SE080 = playSeVer2( spep_2 + 586, 1043, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_2 + 588, 49, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_2 + 604, 1035, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_2 + 628, 49, "", 0, 0, 0, -1);

--気弾溜め
SE078 = playSeVer2( spep_2 + 660, 1210, "",spep_2 + 812, 48, 22, 0.5);
setStartTimeMs( SE078,  1833 );
SE084 = playSeVer2( spep_2 + 662, 1157, "", spep_2 + 788, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 662, SE084, 136 );
SE085 = playSeVer2( spep_2 + 672, 1356, "",spep_2 + 814, 0, 20, -1);
SE086 = playSeVer2( spep_2 + 694, 1265, "",spep_2 + 812, 0, 18, -1);
SE087 = playSeVer2( spep_2 + 698, 1131, "", spep_2 + 788, 0, 10, -1);
SE088 = playSeVer2( spep_2 + 698, 1311, "", spep_2 + 788, 0, 10, -1);
SE089 = playSeVer2( spep_2 + 706, 1154, "",spep_2 + 812, 0, 18, -1);
SE090 = playSeVer2( spep_2 + 722, 1170, "", spep_2 + 788, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 722, SE090, 132 );

--気弾発射
SE091 = playSeVer2( spep_2 + 790, 1027, "", 0, 0, 0, -1);
SE092 = playSeVer2( spep_2 + 790, 1146, "", 0, 0, 0, -1);
SE093 = playSeVer2( spep_2 + 790, 1258, "", 0, 0, 0, -1);
SE094 = playSeVer2( spep_2 + 790, 1213, "",spep_2 + 970, 0, 100, -1);

--宇宙に気弾抜ける
SE095 = playSeVer2( spep_2 + 854, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 854, SE095, 81 );
SE096 = playSeVer2( spep_2 + 860, 1296, "",spep_2 + 966, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 860, SE096, 132 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 866 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 984f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- ベジットが気玉を生成〜ホッパー気弾が敵を攻撃(310f)
-------------------------------------------------
MAX_FRAME_0 = 310;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 ベジットが気玉を生成〜ホッパー気弾が敵を攻撃
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- セリフカットイン
-----------------------------
--spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 116 );

setMoveKey( spep_0 + 170 + OFFSET_X, 1, -203.7, -94.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -202.9, -94.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -202.1, -94.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -201.3, -93.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -200.5, -93.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -199.7, -93.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -199.7, -93.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -197.5, -84.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -196.1, -79.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -195.1, -76.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -194.4, -74 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -193.7, -71.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -193.2, -70.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -192.8, -68.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -192.4, -67.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -192, -66.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -191.7, -65.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -191.5, -64.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -191.2, -63.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -191, -62.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -190.9, -62.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -190.7, -61.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -190.6, -61.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -190.5, -60.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -190.3, -60.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -190.3, -60.6 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 248 + OFFSET_X, 1, 3 );
changeAnime( spep_0 + 252 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 248 + OFFSET_X, 1, -278.1, -7.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -278.1, -7.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -192.5, 2.7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -98.7, 13.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 3.2, 25.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 13.6, 30.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -17.6, 22.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -27.6, 22.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -36.7, 7.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -43.9, 7.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -49.5, 7.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -53.5, 7.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -55.9, 7.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -56.7, 7.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 25.3, 50.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 28, 52.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 26, 48.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 27.9, 49.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 29.4, 51.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 30.4, 52.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 31, 52.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 31.2, 53 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 31.2, 53.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 9.1, 45.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -30.7, 4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -36.2, 43.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -41.1, 45.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -42.5, 37.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -45.4, 39.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -47.3, 40.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -48.3, 41.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -48.5, 41.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 37.8, 27.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 45.2, 35.9 , 0 );

setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 248 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 75 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 75 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 30 );

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1296, "",spep_0 + 140, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1265, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1056, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1224, "",spep_0 + 104, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 140 );

--腕あげる
SE006 = playSeVer2( spep_0 + 42, 1004, "", 0, 0, 0, -1);

--気弾身体のまわり回転
SE007 = playSeVer2( spep_0 + 72, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 138 );
SE008 = playSeVer2( spep_0 + 80, 1119, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1277, "",spep_0 + 158, 0, 28, -1);

--手にオーラまとう
SE010 = playSeVer2( spep_0 + 114, 8, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 88 );
SE012 = playSeVer2( spep_0 + 120, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 103 );

--気弾身体のまわり回転
SE013 = playSeVer2( spep_0 + 140, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE013, 120 );

--気弾飛んでいく１
SE014 = playSeVer2( spep_0 + 182, 1254, "",spep_0 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 72 );
SE015 = playSeVer2( spep_0 + 182, 1290, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--気弾飛んでいく２
SE016 = playSeVer2( spep_0 + 220, 1177, "",spep_0 + 324, 0, 12, -1);
SE017 = playSeVer2( spep_0 + 220, 1184, "",spep_0 + 314, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 220, SE017, 69 );
SE018 = playSeVer2( spep_0 + 220, 1021, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 220, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE019, 80 );

--気弾ヒット
SE020 = playSeVer2( spep_0 + 258, 1011, "",spep_0 + 298, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 258, 1110, "",spep_0 + 318, 0, 8, -1);
SE022 = playSeVer2( spep_0 + 274, 1023, "",spep_0 + 320, 0, 12, -1);
SE023 = playSeVer2( spep_0 + 274, 1110, "",spep_0 + 334, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 274, SE023, 82 );
SE024 = playSeVer2( spep_0 + 284, 1024, "",spep_0 + 342, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 310f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--手前向かってくる
SE026 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 92, 9, "", 0, 0, 0, -1);

-------------------------------------------------
-- ソードを構えて正面突進〜フィニッシュ(984f)
-------------------------------------------------
MAX_FRAME_2 = 984;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 ソードを構えて正面突進〜フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 46 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 46 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, -108.5, 97.5 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -108.5, 97.5 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -101.6, 86.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -101.6, 86.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -95.4, 76 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -95.4, 76 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -89.9, 66.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -89.9, 66.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -89.8, 45.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -89.8, 45.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -85.8, 38.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -85.8, 38.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -82.4, 31.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -82.4, 31.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -79.7, 26.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -79.7, 26.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -77.5, 22.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -77.5, 22.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -76, 19.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -76, 19.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -53.6, 35.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -53.6, 35.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -53.2, 35.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -53.2, 35.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -53.5, 35.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -53.5, 35.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -65.5, 28.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -65.5, 28.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -68.1, 35.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -68.1, 35.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -149.8, -10.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -149.8, -10.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -135.8, -10.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -135.8, -10.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -135.8, -10.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -135.8, -10.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -119.5, -14.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -119.5, -14.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -126.6, -7.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -126.6, -7.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -43, 19.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -43, 19.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -52.6, 17.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -52.6, 17.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -52.8, 17.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -52.8, 17.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -72, 22.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -72, 22.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -72.2, 22.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -72.2, 22.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -164, 56.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -164, 56.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -152.3, 59.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -152.3, 59.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -152.3, 59.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -152.3, 59.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -152.3, 59.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -152.3, 59.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -138.3, 64.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -138.3, 64.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -138.3, 64.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -138.3, 64.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -56.4, 41.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -56.4, 41.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -56.6, 41.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -56.6, 41.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -56.9, 41.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -56.9, 41.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -69, 37 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -69, 37 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -71.6, 41.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -71.6, 41.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -128.7, 16.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -128.7, 16.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -128.9, 16.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -128.9, 16.4 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.68, 1.68 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 10 );

--敵の動き2
setDisp( spep_2 + 304 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 304 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 304 + OFFSET_X, 1, 0, -216.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 0, -216.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 0, -87.1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 0, -87.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 0, -26.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 0, -26.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 0, -10.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 0, -10.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 0, -2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 0, -2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 0, 3.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0, 8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0, 8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 0, 11.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 0, 11.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 0, 13.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 0, 13.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 0, 15.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 0, 15.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 0, 16.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 0, 16.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 0, 17.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 0, 17.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 0, 19.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 0, 19.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 0, 20 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 0, 20 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 0, 20.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 0, 20.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 0, 20.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 0, 20.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 0, 21.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 0, 21.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 0, 21.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 0, 21.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 0, 21.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 0, 21.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 0, 21.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 0, 21.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 21.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 0, 21.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 0, 21.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 0, 21.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 0, 23.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 0, 23.9 , 0 );

setScaleKey( spep_2 + 304 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -43.6 );

--敵の動き3
setDisp( spep_2 + 756 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 782 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 756 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 770 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 756 + OFFSET_X, 1, -112.6, -39.3 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, -112.6, -39.3 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, -122.6, -37.7 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, -122.6, -37.7 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, -129.8, -36.6 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -129.8, -36.6 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -134.2, -35.9 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -134.2, -35.9 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -135.6, -35.7 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -135.6, -35.7 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -161.6, -34.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -161.6, -34.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -194.5, -30.6 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -194.5, -30.6 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -221.6, -27 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -221.6, -27 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -242.2, -24.3 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -242.2, -24.3 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -255.8, -22.5 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -261.6, -21.8 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -261.6, -21.8 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -281.6, -21.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -301.6, -21.8 , 0 );

setScaleKey( spep_2 + 756 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 756 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 776 + OFFSET_X, 1, 3, 0.898, 0.796, 0.458, 1.0 );
setBlendColor( spep_2 + 780 + OFFSET_X, 1, 3, 1.000, 0.964, 0.674, 1.0 );
setBlendColor( spep_2 + 782 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手前向かってくる
SE028 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE028, 65 );
setTimeStretch( SE028, 1.24, 30, 4 );

--連続斬り
SE029 = playSeVer2( spep_2 + 60, 1141, "",spep_2 + 86, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 60, SE029, 102 );
SE030 = playSeVer2( spep_2 + 62, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 72, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 72, 1141, "",spep_2 + 98, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 72, SE032, 109 );
setPitch( spep_2 + 72, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_2 + 80, 1031, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 80, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE034, 101 );
SE035 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 88, 1141, "",spep_2 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 88, SE036, 103 );
setPitch( spep_2 + 88, SE036, -100 );
setTimeStretch( SE036, 0.93, 30, 4 );
SE037 = playSeVer2( spep_2 + 96, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 100, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE038, 111 );
SE039 = playSeVer2( spep_2 + 104, 1032, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 106, 1141, "",spep_2 + 134, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 106, SE040, 104 );
SE041 = playSeVer2( spep_2 + 108, 1031, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 114, 1032, "", 0, 0, 0, -1);

--正面斬り１
SE043 = playSeVer2( spep_2 + 120, 1141, "",spep_2 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 120, SE043, 100 );
SE044 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 120, 1122, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 124, 1032, "", 0, 0, 0, -1);

--正面斬り２
SE047 = playSeVer2( spep_2 + 142, 1141, "",spep_2 + 172, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 142, SE047, 105 );
SE048 = playSeVer2( spep_2 + 142, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 146, 1032, "", 0, 0, 0, -1);

--正面斬り３
SE050 = playSeVer2( spep_2 + 160, 1141, "",spep_2 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 160, SE050, 108 );
SE051 = playSeVer2( spep_2 + 160, 1110, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 164, 1032, "", 0, 0, 0, -1);

--正面斬り４
SE053 = playSeVer2( spep_2 + 176, 1141, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 176, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 178, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE056 = playSeVer2( spep_2 + 186, 1116, "",spep_2 + 238, 0, 18, -1);

--斬りとばす
SE057 = playSeVer2( spep_2 + 222, 1032, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 224, 1172, "", 0, 0, 0, -1);
setPitch( spep_2 + 224, SE059, 200 );
setTimeStretch( SE059, 1.13, 30, 4 );
SE060 = playSeVer2( spep_2 + 224, 1143, "", 0, 0, 0, -1);

--気弾飛び出す
SE061 = playSeVer2( spep_2 + 240, 1179, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 240, 1178, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 242, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE063, 120 );

--気弾向かっていく
SE064 = playSeVer2( spep_2 + 284, 1202, "",spep_2 + 372, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 284, SE064, 176 );
SE065 = playSeVer2( spep_2 + 284, 1290, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 288, 1177, "",spep_2 + 370, 0, 12, -1);
SE067 = playSeVer2( spep_2 + 294, 1390, "",spep_2 + 372, 0, 12, 0.6);

--爆発
SE068 = playSeVer2( spep_2 + 360, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 376, 1024, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 406, 1067, "", 0, 0, 0, -1);

--向かっていく
SE071 = playSeVer2( spep_2 + 456, 1182, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 458, 1117, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 466, 1277, "", 0, 0, 0, -1);

--斬りつける
SE074 = playSeVer2( spep_2 + 502, 1120, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 506, 1046, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_2 + 510, 1141, "", 0, 0, 0, -1);

--画面遷移
SE077 = playSeVer2( spep_2 + 518, 1072, "", 0, 0, 0, -1);

--手のオーラまとめる
SE079 = playSeVer2( spep_2 + 586, 1176, "",spep_2 + 708, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 586, SE079, 79 );
SE080 = playSeVer2( spep_2 + 586, 1043, "", 0, 0, 0, -1);
SE081 = playSeVer2( spep_2 + 588, 49, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_2 + 604, 1035, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_2 + 628, 49, "", 0, 0, 0, -1);

--気弾溜め
SE078 = playSeVer2( spep_2 + 660, 1210, "",spep_2 + 812, 48, 22, 0.5);
setStartTimeMs( SE078,  1833 );
SE084 = playSeVer2( spep_2 + 662, 1157, "", spep_2 + 788, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 662, SE084, 136 );
SE085 = playSeVer2( spep_2 + 672, 1356, "",spep_2 + 814, 0, 20, -1);
SE086 = playSeVer2( spep_2 + 694, 1265, "",spep_2 + 812, 0, 18, -1);
SE087 = playSeVer2( spep_2 + 698, 1131, "", spep_2 + 788, 0, 10, -1);
SE088 = playSeVer2( spep_2 + 698, 1311, "", spep_2 + 788, 0, 10, -1);
SE089 = playSeVer2( spep_2 + 706, 1154, "",spep_2 + 812, 0, 18, -1);
SE090 = playSeVer2( spep_2 + 722, 1170, "", spep_2 + 788, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 722, SE090, 132 );

--気弾発射
SE091 = playSeVer2( spep_2 + 790, 1027, "", 0, 0, 0, -1);
SE092 = playSeVer2( spep_2 + 790, 1146, "", 0, 0, 0, -1);
SE093 = playSeVer2( spep_2 + 790, 1258, "", 0, 0, 0, -1);
SE094 = playSeVer2( spep_2 + 790, 1213, "",spep_2 + 970, 0, 100, -1);

--宇宙に気弾抜ける
SE095 = playSeVer2( spep_2 + 854, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 854, SE095, 81 );
SE096 = playSeVer2( spep_2 + 860, 1296, "",spep_2 + 966, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 860, SE096, 132 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 866 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 984f -4

end
