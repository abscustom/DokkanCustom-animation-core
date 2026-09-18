--1030340:LR_超サイヤ人3孫悟空(GT)(黄金大猿)_超必殺技：かめはめ波
--sp_effect_b1_00306
--sp2820

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163535; --構え~気弾ため ef_001
SP_02  = 163536; --かめはめ波~宇宙に飛ばす ef_002

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
-- 構え~気弾ため
-------------------------------------------------
MAX_FRAME_0 = 260;

setupMovie(spep_0+0, SP_01, 0, 0);

-- ** エフェクト等 ** --
start_base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え~気弾ため(ef_001)
setEffMoveKey( spep_0 + 0, start_base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_base, 0);
setEffAlphaKey( spep_0 + 0, start_base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_base, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -56, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -56, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );

--気ダメ
SE002 = playSeVer2( spep_0 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 84 );
SE003 = playSeVer2( spep_0 + 14, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 120 );

--構える
SE004 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 77 );

--オーラ
SE006 = playSeVer2( spep_0 + 28, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 34, 1176, "",spep_0 + 284, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 63 );
SE008 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);

--両手合わせる
SE012 = playSeVer2( spep_0 + 118, 1116, "",spep_0 + 170, 0, 24, -1);

--かめはめ波溜め
SE014 = playSeVer2( spep_0 + 170, 1210, "",spep_0 + 274, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 170, SE014, 120 );
setStartTimeMs( SE014,  533 );

--オーラ
SE015 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);

--両手合わせる
SE016 = playSeVer2( spep_0 + 156, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE016, 83 );

--オーラ
SE017 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);

--かめはめ波溜め
SE018 = playSeVer2( spep_0 + 170, 1209, "",spep_0 + 272, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 170, 1043, "",spep_0 + 276, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 170, SE019, 140 );

--オーラ
SE020 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --260f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

entryFade(spep_1+92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--発射前溜め
SE013 = playSeVer2( spep_1 + 76, 1210, "",spep_2 + 108, 8, 14, -1);
setSeVolumeByWorkId( spep_1 + 76, SE013, 126 );
setStartTimeMs( SE013,  3500 );

--オーラ
SE024 = playSeVer2( spep_1 + 78, 1176, "",spep_2 + 234, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE024, 73 );
SE025 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 79 );


-------------------------------------------------
-- かめはめ波~宇宙に飛ばす
-------------------------------------------------
MAX_FRAME_2 = 354;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波~宇宙に飛ばす(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 293.8, 236 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 293.8, 236 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 285.8, 245 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 285.8, 245 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 283.9, 218 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 283.9, 218 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 277.9, 238 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 277.9, 238 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 262.7, 228 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 262.7, 228 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 272.7, 228 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 272.7, 228 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 266.7, 220 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 266.7, 220 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 256.7, 228 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 256.7, 228 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 72 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 74 + OFFSET_X, 1, 3, 0.188, 0.137, 0, 0.36 );
setBlendColor( spep_2 + 92 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 96 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 96 + OFFSET_X, 1, 275.1, 229.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 275.1, 229.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 283.1, 240.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 283.1, 240.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 271.5, 240.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 271.5, 240.7 , 0 );

setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 3, 0.56, 0.905, 1.0, 1.0 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 0.56, 0.917, 1.0, 1.0 );
setBlendColor( spep_2 + 100 + OFFSET_X, 1, 3, 0.73, 0.996, 1.0, 1.0 );
setBlendColor( spep_2 + 102 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, 94.7, 88.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 94.7, 88.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 94.7, 68.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 94.7, 68.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 94.7, 108.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 94.7, 108.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 104.7, 92.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 104.7, 92.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 134.4, 121.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 134.4, 121.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 215.8, 238.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 215.8, 238.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 223.2, 239.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 223.2, 239.2 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -4 );

setBlendColor( spep_2 + 132 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0.505, 0.925, 1.0, 1.0 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0.78, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--オーラ
SE026 = playSeVer2( spep_2 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE026, 79 );

--画面手前に
SE027 = playSeVer2( spep_2 + 18, 8, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE028, 79 );
SE029 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE029, 79 );
SE030 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_2 + 84; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 4, SE030, 0);
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
--かめはめ波発射
SE031 = playSeVer2( spep_2 + 86, 1213, "",spep_2 + 362, 0, 120, -1);
setSeVolumeByWorkId( spep_2 + 86, SE031, 77 );
SE032 = playSeVer2( spep_2 + 86, 1133, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 86, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE033, 83 );

--かめはめ波敵ヒット
SE034 = playSeVer2( spep_2 + 136, 1146, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE035 = playSeVer2( spep_2 + 136, 1442, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 220, 1305, "",spep_2 + 364, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 220, SE036, 124 );
SE037 = playSeVer2( spep_2 + 220, 1223, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 222, 1296, "",spep_2 + 338, 0, 84, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 236); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 354f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え~気弾ため
-------------------------------------------------
MAX_FRAME_0 = 260;

setupMovie(spep_0+0, SP_01, 0, 0);

-- ** エフェクト等 ** --
start_base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え~気弾ため(ef_001)
setEffMoveKey( spep_0 + 0, start_base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_base, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_base, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_base, 0);
setEffAlphaKey( spep_0 + 0, start_base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_base, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -56, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -56, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );

--気ダメ
SE002 = playSeVer2( spep_0 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 84 );
SE003 = playSeVer2( spep_0 + 14, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 120 );

--構える
SE004 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 77 );

--オーラ
SE006 = playSeVer2( spep_0 + 28, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 34, 1176, "",spep_0 + 284, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 63 );
SE008 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);

--両手合わせる
SE012 = playSeVer2( spep_0 + 118, 1116, "",spep_0 + 170, 0, 24, -1);

--かめはめ波溜め
SE014 = playSeVer2( spep_0 + 170, 1210, "",spep_0 + 274, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 170, SE014, 120 );
setStartTimeMs( SE014,  533 );

--オーラ
SE015 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);

--両手合わせる
SE016 = playSeVer2( spep_0 + 156, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE016, 83 );

--オーラ
SE017 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);

--かめはめ波溜め
SE018 = playSeVer2( spep_0 + 170, 1209, "",spep_0 + 272, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 170, 1043, "",spep_0 + 276, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 170, SE019, 140 );

--オーラ
SE020 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --260f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);
entryFade(spep_1+92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
--発射前溜め
SE013 = playSeVer2( spep_1 + 76, 1210, "",spep_2 + 108, 8, 14, -1);
setSeVolumeByWorkId( spep_1 + 76, SE013, 126 );
setStartTimeMs( SE013,  3500 );

--オーラ
SE024 = playSeVer2( spep_1 + 78, 1176, "",spep_2 + 234, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE024, 73 );
SE025 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 79 );


-------------------------------------------------
-- かめはめ波~宇宙に飛ばす
-------------------------------------------------
MAX_FRAME_2 = 354;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波~宇宙に飛ばす(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -293.8, 236 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -293.8, 236 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -285.8, 245 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -285.8, 245 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -283.9, 218 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -283.9, 218 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -277.9, 238 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -277.9, 238 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -262.7, 228 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -262.7, 228 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -272.7, 228 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -272.7, 228 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -266.7, 220 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -266.7, 220 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -256.7, 228 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -256.7, 228 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 72 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 74 + OFFSET_X, 1, 3, 0.188, 0.137, 0, 0.36 );
setBlendColor( spep_2 + 92 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 96 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 96 + OFFSET_X, 1, -275.1, 229.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -275.1, 229.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -283.1, 240.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -283.1, 240.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -271.5, 240.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -271.5, 240.7 , 0 );

setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 96 + OFFSET_X, 1, 3, 0.56, 0.905, 1.0, 1.0 );
setBlendColor( spep_2 + 98 + OFFSET_X, 1, 3, 0.56, 0.917, 1.0, 1.0 );
setBlendColor( spep_2 + 100 + OFFSET_X, 1, 3, 0.73, 0.996, 1.0, 1.0 );
setBlendColor( spep_2 + 102 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, -94.7, 88.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -94.7, 88.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -94.7, 68.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -94.7, 68.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -94.7, 108.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -94.7, 108.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -104.7, 92.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -104.7, 92.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -134.4, 121.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -134.4, 121.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -215.8, 238.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -215.8, 238.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -223.2, 239.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -223.2, 239.2 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4 );

setBlendColor( spep_2 + 132 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0.505, 0.925, 1.0, 1.0 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 3, 0.78, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--オーラ
SE026 = playSeVer2( spep_2 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE026, 79 );

--画面手前に
SE027 = playSeVer2( spep_2 + 18, 8, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE028, 79 );
SE029 = playSeVer2( spep_2 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE029, 79 );
SE030 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_2 + 84; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 4, SE030, 0);
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
--かめはめ波発射
SE031 = playSeVer2( spep_2 + 86, 1213, "",spep_2 + 362, 0, 120, -1);
setSeVolumeByWorkId( spep_2 + 86, SE031, 77 );
SE032 = playSeVer2( spep_2 + 86, 1133, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 86, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE033, 83 );

--かめはめ波敵ヒット
SE034 = playSeVer2( spep_2 + 136, 1146, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE035 = playSeVer2( spep_2 + 136, 1442, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 220, 1305, "",spep_2 + 364, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 220, SE036, 124 );
SE037 = playSeVer2( spep_2 + 220, 1223, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 222, 1296, "",spep_2 + 338, 0, 84, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 236); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 354f -4

end