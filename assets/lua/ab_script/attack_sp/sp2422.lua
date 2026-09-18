-- 1024090：UR_孫悟飯(じいちゃん)_亀仙流風林火山
-- sp_effect_b1_00207
-- sp2422

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

--エフェクト(味方)
SP_01 = 160267;	-- 登場（共通）	ef_001	72	共通　そのまま反転
SP_02 = 160268;	-- 連打	ef_002_front	65	ef_002_front、ef_002_back　同時再生
SP_02b = 160269;	-- 連打	ef_002_back	65	ef_002_front、ef_002_back　同時再生
SP_03 = 160272;	-- スライディングパンチ、ジャンプ	ef_003_front	91	ef_003_front、ef_003_back　同時再生
SP_03b = 160273;	-- スライディングパンチ、ジャンプ	ef_003_back	91	ef_003_front、ef_003_back　同時再生
SP_04 = 160276;	-- 飛び上がり、敵を蹴り落とす	ef_004_front	69	ef_004_front、ef_004_back　同時再生
SP_04b = 160277;	-- 飛び上がり、敵を蹴り落とす	ef_004_back	69	ef_004_front、ef_004_back　同時再生
SP_05 = 160280;	-- フィニッシュ（共通）	ef_005	67	共通　反転なし

--エフェクト(てき)
SP_02r = 160270;	-- 連打（敵側）	ef_002_re_front	65	そのまま反転（ef_002_re_front、ef_002_re_back　同時再生）
SP_02br = 160271;	-- 連打（敵側）	ef_002_re_back	65	そのまま反転（ef_002_re_front、ef_002_re_back　同時再生）
SP_03r = 160274;	-- スライディングパンチ、ジャンプ（敵側）	ef_003_re_front	91	そのまま反転（ef_003_re_front、ef_003_re_back　同時再生）
SP_03br = 160275;	-- スライディングパンチ、ジャンプ（敵側）	ef_003_re_back	91	そのまま反転（ef_003_re_front、ef_003_re_back　同時再生）
SP_04r = 160278;	-- 飛び上がり、敵を蹴り落とす（敵側）	ef_004_re_front	69	そのまま反転（ef_004_re_front、ef_004_re_back　同時再生）
SP_04br = 160279;	-- 飛び上がり、敵を蹴り落とす（敵側）	ef_004_re_back	69	そのまま反転（ef_004_re_front、ef_004_re_back　同時再生）

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


spep_0 = 0;


-------------------------------------------------
-- 登場（共通）
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場（共通）	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 144 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 144 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 144 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 144 -5, base_0, 255);
setEffAlphaKey( spep_0 + 144 -4, base_0, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 100;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
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
SE001 = playSeVer2( spep_0 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 79 );

--顔カットイン
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 120, 44, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 144 -4;

-------------------------------------------------
-- 連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連打	ef_002_front
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 128 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 128 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 128 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 128 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 128 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連打	ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 128 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 128 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 128 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 128 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 128 -4, base_1b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 101 );

-- setMoveKey( spep_1 -3 + 0, 1, 558.9, 20.3 , 0 );
setMoveKey( spep_1 -2 + 2, 1, 506, 20.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 453, 20.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 400.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 347.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 294.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 241.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 188.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 135.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 82.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 82.3, 20.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 21, 1, 1.56, 1.56 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 10; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 10, 1042);
stopSe( SP_dodge - 10, SE001, 0);
stopSe( SP_dodge - 10, SE002, 0);
stopSe( SP_dodge - 10, SE003, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-10, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
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
setDisp( spep_1 + 110 -3, 1, 0 );

changeAnime( spep_1 -3 + 22, 1, 106 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 106 );

setMoveKey( spep_1 -3 + 22, 1, 82.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 94.5, 43 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 111.9, 65.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 132.4, 83.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 120.9, 57.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 132.4, 65.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 147.9, 65.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 373.4, 58.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 430.2, 50.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 461.3, 43 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 468, 36.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 451.1, 31.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 411.9, 26.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 471.3, 22.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 514.4, 19.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 541.3, 17.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 552, 15.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 546.4, 13.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 524.6, 13 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 486.5, 12.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 440.4, 12.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 394.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 348, 12.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 301.9, 12.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 255.7, 12.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 209.6, 12.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 163.4, 12.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 117.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 112.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 107.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 102.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 128, 53.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 117.8, 41.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 125.6, 61 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 146.3, 52.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 164.4, 87.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 176.3, 95.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 220.2, 128 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 236.1, 151.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 287.8, 178.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 438.2, 276.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 552.7, 335.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 641.3, 390.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 699.7, 425.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 730.5, 443.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 734.6, 447.3 , 0 );

setScaleKey( spep_1 -3 + 22, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 23, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 32, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 34, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 38, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 44, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 46, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 48, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 50, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 52, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 81, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 82, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 84, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 86, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 90, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 92, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 94, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 96, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 98, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 100, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 102, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 104, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 108, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 110, 1, 2.42, 2.42 );

setRotateKey( spep_1 -3 + 22, 1, -54.7 );
setRotateKey( spep_1 -3 + 23, 1, -54.7 );
setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 81, 1, 0 );
setRotateKey( spep_1 -3 + 82, 1, -20.5 );
setRotateKey( spep_1 -3 + 84, 1, -20.4 );
setRotateKey( spep_1 -3 + 86, 1, -20 );
setRotateKey( spep_1 -3 + 88, 1, -19.2 );
setRotateKey( spep_1 -3 + 90, 1, -18.2 );
setRotateKey( spep_1 -3 + 92, 1, -16.9 );
setRotateKey( spep_1 -3 + 94, 1, -15.3 );
setRotateKey( spep_1 -3 + 96, 1, -13.5 );
setRotateKey( spep_1 -3 + 98, 1, -11.3 );
setRotateKey( spep_1 -3 + 110, 1, -11.3 );


-- ** 音 ** --
--パンチ
SE004 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 18, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 18, 1110, "", 0, 0, 0, -1);

--追いかける
SE007 = playSeVer2( spep_1 + 56, 1003, "", 0, 0, 0, -1);

--アッパー
SE008 = playSeVer2( spep_1 + 80, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 80, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 128 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
-- setEffReplaceTexture( speff2, 1, 1);
-- setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
-- playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- スライディングパンチ、ジャンプ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- スライディングパンチ、ジャンプ	ef_003_front
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 180 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 180 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- スライディングパンチ、ジャンプ	ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 180 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 180 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 54 -3, 1, 1 );
setDisp( spep_2 + 82 -3, 1, 0 );

changeAnime( spep_2 -3 + 54, 1, 107 );

setMoveKey( spep_2 -3 + 54, 1, 148.9, 240.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 170.3, 272.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 105.8, 194.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 180.8, 268.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 154.7, 222.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 154.6, 243.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 172.9, 219.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 140.7, 277.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 163.6, 229.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 154.3, 260.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 154.2, 268.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 169.2, 345.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 170.9, 296.0 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 233.8, 327.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 424.3, 627.1 , 0 );

setScaleKey( spep_2 -3 + 54, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 78, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 80, 1, 1.80, 1.80 );
setScaleKey( spep_2 -3 + 82, 1, 2.83, 2.83 );

setRotateKey( spep_2 -3 + 54, 1, -26.4 );
setRotateKey( spep_2 -3 + 76, 1, -26.4 );
setRotateKey( spep_2 -3 + 78, 1, -28.2 );
setRotateKey( spep_2 -3 + 80, 1, -33.6 );
setRotateKey( spep_2 -3 + 82, 1, -42.6 );


-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

--強アッパー
SE013 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_2 + 130, 1207, "", 0, 0, 0, 0.6);


-- ** 次の準備 ** --
spep_3 = spep_2 + 180 -4;

-------------------------------------------------
-- 飛び上がり、敵を蹴り落とす
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- 飛び上がり、敵を蹴り落とす	ef_004_front
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 136 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 136 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 136 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 136 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 136 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- 飛び上がり、敵を蹴り落とす	ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 136 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 136 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 136 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 136 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 136 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0);

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 84, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 129.4, -380.3 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 129.3, -365.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 129.2, -350.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 129.1, -335.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 129, -321.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 128.9, -307.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 128.8, -294.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 128.7, -281.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 128.6, -268.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128.5, -256.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 128.3, -244.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 128.2, -232.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 128.1, -221.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 128, -210.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 127.9, -200 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 127.8, -189.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 127.7, -176.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 127.6, -170.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 127.5, -161.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 127.4, -153.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 127.2, -145.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 127.1, -137.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 127.1, -130.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 126.9, -123.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 126.8, -116.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 126.7, -110.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 126.7, -105 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 126.5, -99.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 126.4, -94.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 126.3, -90.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 126.2, -86.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 126.1, -83.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 126, -80.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 125.9, -77.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.7, -75.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 125.7, -73.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 125.6, -72.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 125.4, -71.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 125.3, -71.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 125.2, -70.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 125.1, -70.4 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 125, -69.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 97.6, -152.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 97.5, -238.4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 122.1, -126.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 56.7, -166.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 96.9, -129.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 99.8, -194.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 77.7, -150.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 43.4, -154.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 100.9, -168 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 80.2, -136.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 77.6, -190.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 48, -109.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 95.3, -174.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 115.8, -112.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 66.7, -155.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 64, -159 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 80.8, -168.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 81.7, -173.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 104.1, -124.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 78, -159.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 94, -357.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 93.8, -453.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 93.7, -740.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 93.5, -1221.9 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 2.33, 2.33 );
setScaleKey( spep_3 -2 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_3 -3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 6, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 10, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 12, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 14, 1, 2.38, 2.38 );
setScaleKey( spep_3 -3 + 16, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 22, 1, 2.41, 2.41 );
setScaleKey( spep_3 -3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 26, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 28, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 30, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 32, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 34, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 36, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 38, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 40, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 42, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 44, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 46, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 48, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 50, 1, 2.51, 2.51 );
setScaleKey( spep_3 -3 + 52, 1, 2.51, 2.51 );
setScaleKey( spep_3 -3 + 54, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 56, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 58, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 60, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 64, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 66, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 68, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 70, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 72, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 74, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 76, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 78, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 80, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 83, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 84, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 86, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 88, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 90, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 92, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 94, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 96, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 98, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 100, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 102, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 104, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 108, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 110, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 116, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 118, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 120, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 122, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 124, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 126, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 128, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 130, 1, 2.68, 2.68 );

setRotateKey( spep_3 + 0, 1, -29.9 );
setRotateKey( spep_3 -3 + 83, 1, -29.9 );
setRotateKey( spep_3 -3 + 84, 1, 162.5 );
setRotateKey( spep_3 -3 + 130, 1, 162.5 );


-- ** 音 ** --
--振りかぶる
SE015 = playSeVer2( spep_3 + 38, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_3 + 78, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 136 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- フィニッシュ（共通）	ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 110 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 110 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 110 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 110 -4, base_4, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

-- setMoveKey( spep_4 -3 + 0, 1, -0.6, -8.6 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 2.9, -15.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 7.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 12.8, -36.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 19.4, -49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 26.8, -64.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 35.2, -82.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 62.1, -207.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 62.1, -207.8 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 -2 + 2, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 4, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 10, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 24, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 110, 1, 1.79, 1.79 );

r_4 = 30;
-- setRotateKey( spep_4 -3 + 0, 1, 0 +r_4 );
setRotateKey( spep_4 -2 + 2, 1, 105 +r_4 );
setRotateKey( spep_4 -3 + 4, 1, 240 +r_4 );
setRotateKey( spep_4 -3 + 6, 1, 405 +r_4 );
setRotateKey( spep_4 -3 + 8, 1, 600 +r_4 );
setRotateKey( spep_4 -3 + 10, 1, 825 +r_4 );
setRotateKey( spep_4 -3 + 12, 1, 1080 +r_4 );
setRotateKey( spep_4 -3 + 110, 1, 1080 +r_4 );


-- ** 音 ** --
--画面割れる
SE017 = playSeVer2( spep_4 + 12, 1025, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_4 + 12, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12); -- ダメージ表示フレーム
endPhase( spep_4 + 110 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場（共通）
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場（共通）	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 144 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 144 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 144 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 144 -5, base_0, 255);
setEffAlphaKey( spep_0 + 144 -4, base_0, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 100;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -(cx+40), 525 , 0);
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
SE001 = playSeVer2( spep_0 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 79 );

--顔カットイン
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 120, 44, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 144 -4;

-------------------------------------------------
-- 連打
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連打	ef_002_front
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 128 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 128 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 128 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 128 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 128 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連打	ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 128 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 128 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 128 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 128 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 128 -4, base_1b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 101 );

-- setMoveKey( spep_1 -3 + 0, 1, 558.9, 20.3 , 0 );
setMoveKey( spep_1 -2 + 2, 1, 506, 20.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 453, 20.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 400.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 347.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 294.1, 20.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 241.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 188.2, 20.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 135.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 82.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 82.3, 20.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 21, 1, 1.56, 1.56 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 10; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 10, 1042);
stopSe( SP_dodge - 10, SE001, 0);
stopSe( SP_dodge - 10, SE002, 0);
stopSe( SP_dodge - 10, SE003, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-10, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
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
setDisp( spep_1 + 110 -3, 1, 0 );

changeAnime( spep_1 -3 + 22, 1, 106 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 106 );

setMoveKey( spep_1 -3 + 22, 1, 82.3, 20.3 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 94.5, 43 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 111.9, 65.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 132.4, 83.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 120.9, 57.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 132.4, 65.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 147.9, 65.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 373.4, 58.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 430.2, 50.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 461.3, 43 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 468, 36.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 451.1, 31.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 411.9, 26.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 471.3, 22.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 514.4, 19.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 541.3, 17.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 552, 15.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 546.4, 13.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 524.6, 13 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 486.5, 12.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 440.4, 12.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 394.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 348, 12.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 301.9, 12.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 255.7, 12.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 209.6, 12.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 163.4, 12.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 117.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 112.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 107.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 102.2, 12.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 128, 53.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 117.8, 41.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 125.6, 61 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 146.3, 52.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 164.4, 87.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 176.3, 95.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 220.2, 128 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 236.1, 151.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 287.8, 178.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 438.2, 276.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 552.7, 335.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 641.3, 390.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 699.7, 425.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 730.5, 443.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 734.6, 447.3 , 0 );

setScaleKey( spep_1 -3 + 22, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 23, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 24, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 32, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 34, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 38, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 44, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 46, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 48, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 50, 1, 1.74, 1.74 );
setScaleKey( spep_1 -3 + 52, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 81, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 82, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 84, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 86, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 88, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 90, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 92, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 94, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 96, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 98, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 100, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 102, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 104, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 108, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 110, 1, 2.42, 2.42 );

setRotateKey( spep_1 -3 + 22, 1, -54.7 );
setRotateKey( spep_1 -3 + 23, 1, -54.7 );
setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 81, 1, 0 );
setRotateKey( spep_1 -3 + 82, 1, -20.5 );
setRotateKey( spep_1 -3 + 84, 1, -20.4 );
setRotateKey( spep_1 -3 + 86, 1, -20 );
setRotateKey( spep_1 -3 + 88, 1, -19.2 );
setRotateKey( spep_1 -3 + 90, 1, -18.2 );
setRotateKey( spep_1 -3 + 92, 1, -16.9 );
setRotateKey( spep_1 -3 + 94, 1, -15.3 );
setRotateKey( spep_1 -3 + 96, 1, -13.5 );
setRotateKey( spep_1 -3 + 98, 1, -11.3 );
setRotateKey( spep_1 -3 + 110, 1, -11.3 );


-- ** 音 ** --
--パンチ
SE004 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 18, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 18, 1110, "", 0, 0, 0, -1);

--追いかける
SE007 = playSeVer2( spep_1 + 56, 1003, "", 0, 0, 0, -1);

--アッパー
SE008 = playSeVer2( spep_1 + 80, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 80, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 128 -4;

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
spep_2 = spep_c + 96;

-------------------------------------------------
-- スライディングパンチ、ジャンプ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- スライディングパンチ、ジャンプ	ef_003_front
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 180 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 180 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- スライディングパンチ、ジャンプ	ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 180 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 180 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 180 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 180 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 180 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 54 -3, 1, 1 );
setDisp( spep_2 + 82 -3, 1, 0 );

changeAnime( spep_2 -3 + 54, 1, 107 );

setMoveKey( spep_2 -3 + 54, 1, 148.9, 240.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 170.3, 272.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 105.8, 194.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 180.8, 268.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 154.7, 222.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 154.6, 243.7 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 172.9, 219.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 140.7, 277.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 163.6, 229.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 154.3, 260.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 154.2, 268.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 169.2, 345.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 170.9, 296.0 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 233.8, 327.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 424.3, 627.1 , 0 );

setScaleKey( spep_2 -3 + 54, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 78, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 80, 1, 1.80, 1.80 );
setScaleKey( spep_2 -3 + 82, 1, 2.83, 2.83 );

setRotateKey( spep_2 -3 + 54, 1, -26.4 );
setRotateKey( spep_2 -3 + 76, 1, -26.4 );
setRotateKey( spep_2 -3 + 78, 1, -28.2 );
setRotateKey( spep_2 -3 + 80, 1, -33.6 );
setRotateKey( spep_2 -3 + 82, 1, -42.6 );


-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

--強アッパー
SE013 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_2 + 130, 1207, "", 0, 0, 0, 0.6);


-- ** 次の準備 ** --
spep_3 = spep_2 + 180 -4;

-------------------------------------------------
-- 飛び上がり、敵を蹴り落とす
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- 飛び上がり、敵を蹴り落とす	ef_004_front
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 136 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 136 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 136 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 136 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 136 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04br, 0x80, -1, 0, 0, 0); -- 飛び上がり、敵を蹴り落とす	ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 136 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 136 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 136 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 136 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 136 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0);

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 84, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 129.4, -380.3 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 129.3, -365.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 129.2, -350.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 129.1, -335.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 129, -321.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 128.9, -307.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 128.8, -294.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 128.7, -281.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 128.6, -268.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 128.5, -256.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 128.3, -244.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 128.2, -232.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 128.1, -221.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 128, -210.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 127.9, -200 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 127.8, -189.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 127.7, -176.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 127.6, -170.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 127.5, -161.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 127.4, -153.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 127.2, -145.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 127.1, -137.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 127.1, -130.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 126.9, -123.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 126.8, -116.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 126.7, -110.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 126.7, -105 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 126.5, -99.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 126.4, -94.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 126.3, -90.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 126.2, -86.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 126.1, -83.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 126, -80.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 125.9, -77.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.7, -75.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 125.7, -73.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 125.6, -72.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 125.4, -71.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 125.3, -71.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 125.2, -70.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 125.1, -70.4 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 125, -69.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 97.6, -152.1 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 97.5, -238.4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 122.1, -126.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 56.7, -166.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 96.9, -129.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 99.8, -194.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 77.7, -150.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 43.4, -154.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 100.9, -168 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 80.2, -136.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 77.6, -190.1 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 48, -109.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 95.3, -174.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 115.8, -112.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 66.7, -155.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 64, -159 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 80.8, -168.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 81.7, -173.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 104.1, -124.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 78, -159.7 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 94, -357.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 93.8, -453.1 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 93.7, -740.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 93.5, -1221.9 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 2.33, 2.33 );
setScaleKey( spep_3 -2 + 2, 1, 2.34, 2.34 );
setScaleKey( spep_3 -3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 6, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 10, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 12, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 14, 1, 2.38, 2.38 );
setScaleKey( spep_3 -3 + 16, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 20, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 22, 1, 2.41, 2.41 );
setScaleKey( spep_3 -3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 26, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 28, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 30, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 32, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 34, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 36, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 38, 1, 2.46, 2.46 );
setScaleKey( spep_3 -3 + 40, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 42, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 44, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 46, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 48, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 50, 1, 2.51, 2.51 );
setScaleKey( spep_3 -3 + 52, 1, 2.51, 2.51 );
setScaleKey( spep_3 -3 + 54, 1, 2.52, 2.52 );
setScaleKey( spep_3 -3 + 56, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 58, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 60, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 64, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 66, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 68, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 70, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 72, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 74, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 76, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 78, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 80, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 83, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 84, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 86, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 88, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 90, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 92, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 94, 1, 2.56, 2.56 );
setScaleKey( spep_3 -3 + 96, 1, 2.57, 2.57 );
setScaleKey( spep_3 -3 + 98, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 100, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 102, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 104, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 108, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 110, 1, 2.61, 2.61 );
setScaleKey( spep_3 -3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 116, 1, 2.63, 2.63 );
setScaleKey( spep_3 -3 + 118, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 120, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 122, 1, 2.65, 2.65 );
setScaleKey( spep_3 -3 + 124, 1, 2.66, 2.66 );
setScaleKey( spep_3 -3 + 126, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 128, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 130, 1, 2.68, 2.68 );

setRotateKey( spep_3 + 0, 1, -29.9 );
setRotateKey( spep_3 -3 + 83, 1, -29.9 );
setRotateKey( spep_3 -3 + 84, 1, 162.5 );
setRotateKey( spep_3 -3 + 130, 1, 162.5 );


-- ** 音 ** --
--振りかぶる
SE015 = playSeVer2( spep_3 + 38, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_3 + 78, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 136 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- フィニッシュ（共通）	ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 110 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 110 -4, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 110 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 110 -4, base_4, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

-- setMoveKey( spep_4 -3 + 0, 1, -0.6, -8.6 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 2.9, -15.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 7.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 12.8, -36.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 19.4, -49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 26.8, -64.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 35.2, -82.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 62.1, -207.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 62.1, -207.8 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 -2 + 2, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 4, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 10, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 18, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 24, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 110, 1, 1.79, 1.79 );

r_4 = 30;
-- setRotateKey( spep_4 -3 + 0, 1, 0 +r_4 );
setRotateKey( spep_4 -2 + 2, 1, 105 +r_4 );
setRotateKey( spep_4 -3 + 4, 1, 240 +r_4 );
setRotateKey( spep_4 -3 + 6, 1, 405 +r_4 );
setRotateKey( spep_4 -3 + 8, 1, 600 +r_4 );
setRotateKey( spep_4 -3 + 10, 1, 825 +r_4 );
setRotateKey( spep_4 -3 + 12, 1, 1080 +r_4 );
setRotateKey( spep_4 -3 + 110, 1, 1080 +r_4 );


-- ** 音 ** --
--画面割れる
SE017 = playSeVer2( spep_4 + 12, 1025, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_4 + 12, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 12); -- ダメージ表示フレーム
endPhase( spep_4 + 110 -8); -- 終了フレーム

end
