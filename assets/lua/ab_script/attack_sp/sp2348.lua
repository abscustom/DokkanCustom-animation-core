--1024010:UR_ベジータ(幼年期)_ギガブラスター
--sp_effect_a1_00345
--sp2348

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


-- ** エフェクト(味方) ** --
SP_01 = 159436;	--登場～カットイン～瞬間移動	ef_001	86	反転なし
SP_02 = 159437;	--ベジータが殴る蹴る	ef_002_front	80	味方用(ef_002_front とef_002_back同時再生)
SP_02b = 159438;	--ベジータが殴る蹴る	ef_002_back	80	味方用(ef_002_front とef_002_back同時再生)
SP_03 = 159441;	--気をため、放つベジータ	ef_003	63	反転なし
SP_04 = 159442;	--気弾が当たる　フィニッシュ	ef_004_front	99	反転なし(ef_004_front とef_004_back同時再生)
SP_04b = 159443;	--気弾が当たる　フィニッシュ	ef_004_back	99	反転なし(ef_004_front とef_004_back同時再生)

-- ** エフェクト(敵) ** --
SP_02r = 159439;	--ベジータが殴る蹴る　敵側	ef_002_r_front	80	敵用(ef_002_r_front とef_002_r_back同時再生)
SP_02br = 159440;	--ベジータが殴る蹴る　敵側	ef_002_r_back	80	敵用(ef_002_r_front とef_002_r_back同時再生)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 登場～カットイン～瞬間移動
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --登場～カットイン～瞬間移動	ef_001	86	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 172 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 172 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 172 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 172 -5, base_1, 255);
setEffAlphaKey( spep_1 + 172 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 30;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE001, 71 );

--集中線
SE002 = playSeVer2( spep_1 + 34, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 34, SE002, 91 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 42, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_1 + 150, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 172 -4;

-------------------------------------------------
-- ベジータが殴る蹴る
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --ベジータが殴る蹴る	ef_002_front	80	味方用(ef_002_front とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 160 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 160 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 160 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 160 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 160 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --ベジータが殴る蹴る	ef_002_back	80	味方用(ef_002_front とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 160 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 160 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 160 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 160 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 160 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );

--setMoveKey( spep_2 -3 + 0, 1, 54.1, -73.8 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 69.6, -68.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 85.1, -63.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 92, -61.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 99, -58.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 102.1, -57.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 105.2, -56.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 108.3, -55.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 108.5, -55.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 108.8, -55.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 109.1, -55.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 109.3, -55.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 109.5, -55.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 109.8, -55.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 110.1, -55.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 110.3, -55 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 110.6, -54.9 , 0 );

--setScaleKey( spep_2 -3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 -2 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 4, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 14, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 16, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 18, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 20, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 22, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 24, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 26, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 28, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 30, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 32, 1, 2.86, 2.86 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE005 = playSeVer2( spep_2 + 4, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える(敵キャラは+8Fまで上に分割)

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 160, 1, 0 );

changeAnime( spep_2 -3 + 40, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );

setMoveKey( spep_2 -3 + 34, 1, 110.8, -54.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 111.1, -54.8 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 111.4, -54.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 50, 47.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 51.3, 8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 71, -18.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 61.2, 11.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 25.8, 14.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 80.9, 18.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 117.1, 31.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 81.4, 28.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 81.6, 35.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 81.9, 36.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 82.2, 44.7 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 82.4, 45.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.6, 51.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 82.2, 54.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 81.9, 56.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 81.5, 59.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 81.1, 61.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 80.6, 63.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 80.3, 64.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 79.9, 66.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 79.5, 67.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 79, 68.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 78.7, 69.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 78.3, 70.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 77.8, 70.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 77.4, 71.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 77, 71.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 76.6, 71.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 76.1, 70.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 75.7, 70.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 75.2, 69.6 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 74.8, 68.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 138.8, 296.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 78.5, 217.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 138.1, 277.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 81.5, 261.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 136.8, 245.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 56, 272.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 78.5, 244.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 68.9, 276.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 67.2, 231.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 97.4, 226.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 75.5, 229.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 93.5, 220.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 126.7, 296 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 223.9, 520.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 227.6, 533.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 230.9, 544.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 233.8, 553.7 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 236.3, 561.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 238.4, 567.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 240.2, 572.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 241.5, 575.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 242.5, 576.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 243.1, 576.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 243.3, 575.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 243.2, 572.7 , 0 );
setMoveKey( spep_2 -4 + 160, 1, 243.2, 572.7 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 36, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 39, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 40, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 44, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 46, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 48, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 50, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 52, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 54, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 56, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 58, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 60, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 62, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 64, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 66, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 68, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 70, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 72, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 74, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 76, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 78, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 80, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 82, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 84, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 86, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 88, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 90, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 92, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 94, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 96, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 98, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 100, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 103, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 104, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 106, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 108, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 110, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 112, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 114, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 116, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 118, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 120, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 122, 1, 2.41, 2.41 );
setScaleKey( spep_2 -3 + 124, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 124, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 128, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 130, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 132, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 134, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 136, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 138, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 140, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 146, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 148, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 150, 1, 0.16, 0.16 );
setScaleKey( spep_2 -4 + 160, 1, 0.16, 0.16 );

setRotateKey( spep_2 -3 + 39, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, -51.2 );
setRotateKey( spep_2 -3 + 50, 1, -51.2 );
setRotateKey( spep_2 -3 + 52, 1, -50.8 );
setRotateKey( spep_2 -3 + 54, 1, -50.6 );
setRotateKey( spep_2 -3 + 56, 1, -50.3 );
setRotateKey( spep_2 -3 + 58, 1, -50 );
setRotateKey( spep_2 -3 + 60, 1, -49.8 );
setRotateKey( spep_2 -3 + 62, 1, -49.5 );
setRotateKey( spep_2 -3 + 64, 1, -49.3 );
setRotateKey( spep_2 -3 + 66, 1, -49.1 );
setRotateKey( spep_2 -3 + 68, 1, -48.8 );
setRotateKey( spep_2 -3 + 70, 1, -48.6 );
setRotateKey( spep_2 -3 + 72, 1, -48.5 );
setRotateKey( spep_2 -3 + 74, 1, -48.3 );
setRotateKey( spep_2 -3 + 76, 1, -48.1 );
setRotateKey( spep_2 -3 + 78, 1, -48 );
setRotateKey( spep_2 -3 + 80, 1, -47.8 );
setRotateKey( spep_2 -3 + 82, 1, -47.7 );
setRotateKey( spep_2 -3 + 84, 1, -47.6 );
setRotateKey( spep_2 -3 + 86, 1, -47.5 );
setRotateKey( spep_2 -3 + 88, 1, -47.4 );
setRotateKey( spep_2 -3 + 90, 1, -47.3 );
setRotateKey( spep_2 -3 + 92, 1, -47.3 );
setRotateKey( spep_2 -3 + 94, 1, -47.2 );
setRotateKey( spep_2 -3 + 96, 1, -47.2 );
setRotateKey( spep_2 -3 + 98, 1, -47.1 );
setRotateKey( spep_2 -3 + 103, 1, -47.1 );
setRotateKey( spep_2 -3 + 104, 1, -48.1 );
setRotateKey( spep_2 -3 + 124, 1, -48.1 );
setRotateKey( spep_2 -3 + 128, 1, -48.2 );
setRotateKey( spep_2 -4 + 160, 1, -48.2 );


-- ** 音 ** --
--アッパー
SE006 = playSeVer2( spep_2 + 40, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);

--蹴り上げる
SE009 = playSeVer2( spep_2 + 98, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 104, 1187, "",spep_2 + 164, 0, 8, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 160 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
--playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 96;

-------------------------------------------------
-- 気をため、放つベジータ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --気をため、放つベジータ	ef_003	63	反転なし
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 124 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3, 0);


-- ** 音 ** --
--気弾溜め
SE012 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 0, 1296, "",spep_3 + 88, 0, 10, -1);
SE014 = playSeVer2( spep_3 + 0, 1282, "",spep_3 + 88, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 85 );

--気弾発射
SE015 = playSeVer2( spep_3 + 76, 1022, "",spep_3 + 170, 0, 8, -1);
SE016 = playSeVer2( spep_3 + 76, 1177, "",spep_3 + 170, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 76, 1027, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- 気弾が当たる　フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --気弾が当たる　フィニッシュ	ef_004_front	99	反転なし(ef_004_front とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 196 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 196 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --気弾が当たる　フィニッシュ	ef_004_back	99	反転なし(ef_004_front とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 196 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 196 -4, base_4b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, -49.7, -180.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -27.8, -119.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -5.9, -58.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 16.1, 2.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 16.3, 4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 16.5, 5.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 16.7, 7.5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 16.9, 9.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 17.2, 11 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 17.4, 12.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 17.6, 14.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 17.8, 16.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 18, 18 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 18.2, 19.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 18.4, 21.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 18.6, 23.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 18.8, 25.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 19.1, 26.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 19.3, 28.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 19.5, 30.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 19.7, 32.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 19.9, 33.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 4.5, 8.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 4.5, 8.1 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 6, 6 );
setScaleKey( spep_4 -2 + 2, 1, 4.91, 4.91 );
setScaleKey( spep_4 -3 + 4, 1, 3.83, 3.83 );
setScaleKey( spep_4 -3 + 6, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 8, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 10, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 14, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 16, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 20, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 22, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 36, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 40, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_4 -3 + 48, 1, 0.32, 0.32 );

setRotateKey( spep_4 + 0, 1, -61.7 );
setRotateKey( spep_4 -3 + 48, 1, -61.7 );


-- ** 音 ** --
--気弾飛んでいく
SE018 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

--気弾弾ける
SE019 = playSeVer2( spep_4 + 38, 1017, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_4 + 44, 1179, "", 0, 0, 0, 0.6);

--爆発
SE021 = playSeVer2( spep_4 + 72, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 72, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 72); -- ダメージ表示フレーム
endPhase( spep_4 + 196 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 登場～カットイン～瞬間移動
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --登場～カットイン～瞬間移動	ef_001	86	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 172 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 172 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 172 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 172 -5, base_1, 255);
setEffAlphaKey( spep_1 + 172 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 30;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE001, 71 );

--集中線
SE002 = playSeVer2( spep_1 + 34, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 34, SE002, 91 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 42, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_1 + 150, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 172 -4;

-------------------------------------------------
-- ベジータが殴る蹴る
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --ベジータが殴る蹴る	ef_002_front	80	味方用(ef_002_front とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 160 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 160 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 160 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 160 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 160 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --ベジータが殴る蹴る	ef_002_back	80	味方用(ef_002_front とef_002_back同時再生)
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 160 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 160 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 160 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 160 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 160 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 100 );

--setMoveKey( spep_2 -3 + 0, 1, 54.1, -73.8 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 69.6, -68.6 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 85.1, -63.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 92, -61.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 99, -58.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 102.1, -57.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 105.2, -56.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 108.3, -55.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 108.5, -55.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 108.8, -55.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 109.1, -55.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 109.3, -55.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 109.5, -55.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 109.8, -55.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 110.1, -55.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 110.3, -55 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 110.6, -54.9 , 0 );

--setScaleKey( spep_2 -3 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 -2 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 4, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 8, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 14, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 16, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 18, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 20, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 22, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 24, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 26, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 28, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 30, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 32, 1, 2.86, 2.86 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE005 = playSeVer2( spep_2 + 4, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 160, 1, 0 );

changeAnime( spep_2 -3 + 40, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );

setMoveKey( spep_2 -3 + 34, 1, 110.8, -54.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 111.1, -54.8 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 111.4, -54.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 50, 47.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 51.3, 8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 71, -18.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 61.2, 11.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 25.8, 14.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 80.9, 18.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 117.1, 31.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 81.4, 28.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 81.6, 35.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 81.9, 36.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 82.2, 44.7 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 82.4, 45.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.6, 51.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 82.2, 54.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 81.9, 56.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 81.5, 59.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 81.1, 61.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 80.6, 63.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 80.3, 64.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 79.9, 66.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 79.5, 67.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 79, 68.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 78.7, 69.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 78.3, 70.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 77.8, 70.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 77.4, 71.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 77, 71.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 76.6, 71.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 76.1, 70.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 75.7, 70.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 75.2, 69.6 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 74.8, 68.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 138.8, 296.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 78.5, 217.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 138.1, 277.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 81.5, 261.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 136.8, 245.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 56, 272.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 78.5, 244.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 68.9, 276.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 67.2, 231.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 97.4, 226.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 75.5, 229.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 93.5, 220.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 126.7, 296 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 223.9, 520.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 227.6, 533.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 230.9, 544.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 233.8, 553.7 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 236.3, 561.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 238.4, 567.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 240.2, 572.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 241.5, 575.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 242.5, 576.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 243.1, 576.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 243.3, 575.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 243.2, 572.7 , 0 );
setMoveKey( spep_2 -4 + 160, 1, 243.2, 572.7 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 36, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 39, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 40, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 44, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 46, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 48, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 50, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 52, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 54, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 56, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 58, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 60, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 62, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 64, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 66, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 68, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 70, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 72, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 74, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 76, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 78, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 80, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 82, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 84, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 86, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 88, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 90, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 92, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 94, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 96, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 98, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 100, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 103, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 104, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 106, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 108, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 110, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 112, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 114, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 116, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 118, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 120, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 122, 1, 2.41, 2.41 );
setScaleKey( spep_2 -3 + 124, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 124, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 128, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 130, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 132, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 134, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 136, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 138, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 140, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 146, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 148, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 150, 1, 0.16, 0.16 );
setScaleKey( spep_2 -4 + 160, 1, 0.16, 0.16 );

setRotateKey( spep_2 -3 + 39, 1, 0 );
setRotateKey( spep_2 -3 + 40, 1, -51.2 );
setRotateKey( spep_2 -3 + 50, 1, -51.2 );
setRotateKey( spep_2 -3 + 52, 1, -50.8 );
setRotateKey( spep_2 -3 + 54, 1, -50.6 );
setRotateKey( spep_2 -3 + 56, 1, -50.3 );
setRotateKey( spep_2 -3 + 58, 1, -50 );
setRotateKey( spep_2 -3 + 60, 1, -49.8 );
setRotateKey( spep_2 -3 + 62, 1, -49.5 );
setRotateKey( spep_2 -3 + 64, 1, -49.3 );
setRotateKey( spep_2 -3 + 66, 1, -49.1 );
setRotateKey( spep_2 -3 + 68, 1, -48.8 );
setRotateKey( spep_2 -3 + 70, 1, -48.6 );
setRotateKey( spep_2 -3 + 72, 1, -48.5 );
setRotateKey( spep_2 -3 + 74, 1, -48.3 );
setRotateKey( spep_2 -3 + 76, 1, -48.1 );
setRotateKey( spep_2 -3 + 78, 1, -48 );
setRotateKey( spep_2 -3 + 80, 1, -47.8 );
setRotateKey( spep_2 -3 + 82, 1, -47.7 );
setRotateKey( spep_2 -3 + 84, 1, -47.6 );
setRotateKey( spep_2 -3 + 86, 1, -47.5 );
setRotateKey( spep_2 -3 + 88, 1, -47.4 );
setRotateKey( spep_2 -3 + 90, 1, -47.3 );
setRotateKey( spep_2 -3 + 92, 1, -47.3 );
setRotateKey( spep_2 -3 + 94, 1, -47.2 );
setRotateKey( spep_2 -3 + 96, 1, -47.2 );
setRotateKey( spep_2 -3 + 98, 1, -47.1 );
setRotateKey( spep_2 -3 + 103, 1, -47.1 );
setRotateKey( spep_2 -3 + 104, 1, -48.1 );
setRotateKey( spep_2 -3 + 124, 1, -48.1 );
setRotateKey( spep_2 -3 + 128, 1, -48.2 );
setRotateKey( spep_2 -4 + 160, 1, -48.2 );


-- ** 音 ** --
--アッパー
SE006 = playSeVer2( spep_2 + 40, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);

--蹴り上げる
SE009 = playSeVer2( spep_2 + 98, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 104, 1187, "",spep_2 + 164, 0, 8, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 160 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_3 = spep_c + 96;

-------------------------------------------------
-- 気をため、放つベジータ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --気をため、放つベジータ	ef_003	63	反転なし
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 124 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3, 0);


-- ** 音 ** --
--気弾溜め
SE012 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 0, 1296, "",spep_3 + 88, 0, 10, -1);
SE014 = playSeVer2( spep_3 + 0, 1282, "",spep_3 + 88, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 85 );

--気弾発射
SE015 = playSeVer2( spep_3 + 76, 1022, "",spep_3 + 170, 0, 8, -1);
SE016 = playSeVer2( spep_3 + 76, 1177, "",spep_3 + 170, 0, 8, -1);
SE017 = playSeVer2( spep_3 + 76, 1027, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- 気弾が当たる　フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --気弾が当たる　フィニッシュ	ef_004_front	99	反転なし(ef_004_front とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 196 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 196 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --気弾が当たる　フィニッシュ	ef_004_back	99	反転なし(ef_004_front とef_004_back同時再生)
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 196 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 196 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 196 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 196 -4, base_4b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, -49.7, -180.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -27.8, -119.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -5.9, -58.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 16.1, 2.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 16.3, 4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 16.5, 5.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 16.7, 7.5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 16.9, 9.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 17.2, 11 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 17.4, 12.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 17.6, 14.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 17.8, 16.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 18, 18 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 18.2, 19.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 18.4, 21.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 18.6, 23.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 18.8, 25.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 19.1, 26.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 19.3, 28.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 19.5, 30.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 19.7, 32.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 19.9, 33.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 4.5, 8.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 4.5, 8.1 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 6, 6 );
setScaleKey( spep_4 -2 + 2, 1, 4.91, 4.91 );
setScaleKey( spep_4 -3 + 4, 1, 3.83, 3.83 );
setScaleKey( spep_4 -3 + 6, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 8, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 10, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 14, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 16, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 18, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 20, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 22, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 36, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_4 -3 + 40, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_4 -3 + 48, 1, 0.32, 0.32 );

setRotateKey( spep_4 + 0, 1, -61.7 );
setRotateKey( spep_4 -3 + 48, 1, -61.7 );


-- ** 音 ** --
--気弾飛んでいく
SE018 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

--気弾弾ける
SE019 = playSeVer2( spep_4 + 38, 1017, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_4 + 44, 1179, "", 0, 0, 0, 0.6);

--爆発
SE021 = playSeVer2( spep_4 + 72, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 72, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 72); -- ダメージ表示フレーム
endPhase( spep_4 + 196 -8); -- 終了フレーム

end
