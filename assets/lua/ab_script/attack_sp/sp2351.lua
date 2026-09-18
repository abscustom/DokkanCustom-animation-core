--1023740:SSRリクーム＆グルド_サイコドライバー
--sp_effect_b4_00219
--sp2351

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
SP_01 = 159369;	--登場	ef_001	45	反転なし
SP_02 = 159370;	--グルド　超能力発動	ef_002	30	反転なし
SP_03 = 159371;	--敵が宙に浮く　手前	ef_003	25	反転なし
SP_03b = 159372;	--敵が宙に浮く　奥	ef_003_b	25	そのまま反転
SP_04 = 159373;	--リクーム　突っ込む	ef_004	25	味方側
SP_05 = 159375;	--リクーム　膝蹴り　手前	ef_005	30	味方側
SP_05b = 159377;	--リクーム　膝蹴り　奥	ef_005_b	30	そのまま反転
SP_06 = 159378;	--リクーム　肘打ち　手前	ef_006	25	味方側
SP_06b = 159380;	--リクーム　肘打ち　奥	ef_006_b	25	そのまま反転
SP_07 = 159381;	--リクーム　蹴り上げ　手前	ef_007	33	味方側
SP_07b = 159383;	--リクーム　蹴り上げ　奥	ef_007_b	33	味方側
SP_08 = 159385;	--リクームが敵を持ち上げる　手前	ef_008	45	味方側
SP_08b = 159387;	--リクームが敵を持ち上げる　奥	ef_008_b	45	味方側
SP_09 = 159389;	--地面に向かう　手前	ef_009	25	味方側
SP_09b = 159391;	--地面に向かう　奥	ef_009_b	25	味方側
SP_10 = 159392;	--地面に激突　手前	ef_010	35	味方側
SP_10b = 159394;	--地面に激突　奥	ef_010_b	35	そのまま反転
SP_11 = 159395;	--フィニッシュ　手前	ef_011	60	反転なし
SP_11b = 159396;	--フィニッシュ　奥	ef_011_b	60	反転なし

-- ** エフェクト(敵) ** --
SP_04r = 159374;	--リクーム　突っ込む	ef_004_r	25	敵側
SP_05r = 159376;	--リクーム　膝蹴り　手前	ef_005_r	30	敵側
SP_06r = 159379;	--リクーム　肘打ち　手前	ef_006_r	25	敵側
SP_07r = 159382;	--リクーム　蹴り上げ　手前	ef_007_r	33	敵側
SP_07br = 159384;	--リクーム　蹴り上げ　奥	ef_007_b_r	33	敵側
SP_08r = 159386;	--リクームが敵を持ち上げる　手前	ef_008_r	45	敵側
SP_08br = 159388;	--リクームが敵を持ち上げる　奥	ef_008_b_r	45	敵側
SP_09r = 159390;	--地面に向かう　手前	ef_009_r	25	敵側
SP_10r = 159393;	--地面に激突　手前	ef_010_r	35	敵側


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
-- 登場
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --登場	ef_001	45	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 89 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 89 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 89 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 89 -5, base_1, 255);
setEffAlphaKey( spep_1 + 89 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 +40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 +40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 +40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_1 + 4, 1018, "", 0, 0, 0, -1);

--振り向く
SE002 = playSeVer2( spep_1 + 12, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 89 -4;

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
-- グルド　超能力発動
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --グルド　超能力発動	ef_002	30	反転なし
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 60 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2, 0);


-- ** 音 ** --
--グルド魔法撃つ
SE004 = playSeVer2( spep_2 + 14, 1237, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_2 + 14, SE004, 107 );
SE005 = playSeVer2( spep_2 + 14, 1024, "",spep_2 + 98, 0, 38, -1);	setSeVolumeByWorkId( spep_2 + 14, SE005, 87 );
SE006 = playSeVer2( spep_2 + 14, 1264, "",spep_2 + 98, 0, 38, -1);	setSeVolumeByWorkId( spep_2 + 14, SE006, 87 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- 敵が宙に浮く　
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --敵が宙に浮く　手前	ef_003	25	反転なし
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 48 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 48 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 48 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --敵が宙に浮く　奥	ef_003_b	25	そのまま反転
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 48 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 48 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 48 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 8, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 7.9, -206.5 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 7.8, -206.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 7.7, -206.7 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 7.6, -206.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 6.5, -134.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 3.2, -127.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -6.1, -123.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -3, -120.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 9.3, -115.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 9.2, -108 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -3.5, -98.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -3.6, -91.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 5.7, -87.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 2.4, -81.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -7.2, -77 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -4.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 2.1, -69.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -4.4, -63.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -22.3, -55.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -27.2, -49.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -9.5, -41.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -4.8, -32.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -24.5, -24.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -31, -17.9 , 0 );
setMoveKey( spep_3 -4 + 48, 1, -14.7, -10.1 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_3 -2 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 7, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 18, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 20, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 26, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 28, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 32, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 36, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 38, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 46, 1, 1.19, 1.19 );
setScaleKey( spep_3 -4 + 48, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -0.2 );
setRotateKey( spep_3 -3 + 7, 1, -0.2 );
setRotateKey( spep_3 -3 + 8, 1, -39.7 );
setRotateKey( spep_3 -4 + 48, 1, -39.7 );


-- ** 音 ** --
--敵痺れる
SE007 = playSeVer2( spep_3 + 0, 1043, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_3 + 6, 1295, "",spep_3 + 66, 0, 12, -1);
SE009 = playSeVer2( spep_3 + 6, 1252, "",spep_3 + 66, 0, 12, -1);
SE010 = playSeVer2( spep_3 + 6, 1243, "",spep_3 + 66, 0, 12, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 48 -4;

-------------------------------------------------
-- リクーム　突っ込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0); --リクーム　突っ込む	ef_004	25	味方側
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 48 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 48 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 48 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 48 -5, base_4, 255);
setEffAlphaKey( spep_4 + 48 -4, base_4, 0);


-- ** 音 ** --
--リクーム突っ込む
SE011 = playSeVer2( spep_4 + 12, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_4 + 12, 9, "",spep_4 + 104, 0, 44, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 48 -4;

-------------------------------------------------
-- リクーム　膝蹴り　
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0); --リクーム　膝蹴り　手前	ef_005	30	味方側
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 60 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 60 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 60 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --リクーム　膝蹴り　奥	ef_005_b	30	そのまま反転
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 60 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 60 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 60 -4, base_5b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -4 + 60, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 68.8, -43.2 , 0 );	--Hit
setMoveKey( spep_5 -3 + 13, 1, 68.8, -43.2 , 0 );	--Hit
setMoveKey( spep_5 -3 + 14, 1, 25.1, -70.4 , 0 );
setMoveKey( spep_5 -3 + 15, 1, 25.1, -70.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 7.8, -54.9 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 7.8, -54.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 77, -29.8 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 77, -29.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 59.4, -55.6 , 0 );
setMoveKey( spep_5 -3 + 21, 1, 59.4, -55.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 92.1, -43.2 , 0 );
setMoveKey( spep_5 -3 + 23, 1, 92.1, -43.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 50.8, -70.4 , 0 );
setMoveKey( spep_5 -3 + 25, 1, 50.8, -70.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 101.5, -46.9 , 0 );
setMoveKey( spep_5 -3 + 27, 1, 101.5, -46.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 83.9, -55.6 , 0 );
setMoveKey( spep_5 -3 + 29, 1, 83.9, -55.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 90.1, -53.1 , 0 );
setMoveKey( spep_5 -3 + 31, 1, 90.1, -53.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 98.6, -55.7 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 98.6, -55.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 102.1, -53.3 , 0 );
setMoveKey( spep_5 -3 + 35, 1, 102.1, -53.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 110.7, -55.9 , 0 );
setMoveKey( spep_5 -3 + 37, 1, 110.7, -55.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 278.2, -51.8 , 0 );
setMoveKey( spep_5 -3 + 39, 1, 278.2, -51.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 285.4, -54.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 289.9, -54.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 289.5, -49.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 297.2, -47.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 304.5, -51.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 303.9, -52.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 311.8, -55.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 314.1, -52.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 322.4, -56.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 326, -55 , 0 );
-- setMoveKey( spep_5 -5 + 60, 1, 326, -55 , 0 );

setScaleKey( spep_5 + 0, 1, 2.03, 2.03 );
setScaleKey( spep_5 -5 + 60, 1, 2.03, 2.03 );

setRotateKey( spep_5 + 0, 1, -30.5 );
setRotateKey( spep_5 -3 + 12, 1, -30.5 );	--Hit
setRotateKey( spep_5 -3 + 13, 1, -30.5 );	--Hit
setRotateKey( spep_5 -3 + 14, 1, -28.3 );
setRotateKey( spep_5 -3 + 15, 1, -28.3 );
setRotateKey( spep_5 -3 + 16, 1, -26.2 );
setRotateKey( spep_5 -3 + 17, 1, -26.2 );
setRotateKey( spep_5 -3 + 18, 1, -24 );
setRotateKey( spep_5 -3 + 19, 1, -24 );
setRotateKey( spep_5 -3 + 20, 1, -23.1 );
setRotateKey( spep_5 -3 + 21, 1, -23.1 );
setRotateKey( spep_5 -3 + 22, 1, -22.2 );
setRotateKey( spep_5 -3 + 23, 1, -22.2 );
setRotateKey( spep_5 -3 + 24, 1, -21.3 );
setRotateKey( spep_5 -3 + 25, 1, -21.3 );
setRotateKey( spep_5 -3 + 26, 1, -20.4 );
setRotateKey( spep_5 -3 + 27, 1, -20.4 );
setRotateKey( spep_5 -3 + 28, 1, -19.6 );
setRotateKey( spep_5 -3 + 29, 1, -19.6 );
setRotateKey( spep_5 -3 + 30, 1, -18.7 );
setRotateKey( spep_5 -3 + 31, 1, -18.7 );
setRotateKey( spep_5 -3 + 32, 1, -17.8 );
setRotateKey( spep_5 -3 + 33, 1, -17.8 );
setRotateKey( spep_5 -3 + 34, 1, -16.9 );
setRotateKey( spep_5 -3 + 35, 1, -16.9 );
setRotateKey( spep_5 -3 + 36, 1, -16 );
setRotateKey( spep_5 -3 + 37, 1, -16 );
setRotateKey( spep_5 -3 + 38, 1, -4 );
setRotateKey( spep_5 -3 + 39, 1, -4 );
setRotateKey( spep_5 -3 + 40, 1, 8 );
setRotateKey( spep_5 -3 + 42, 1, 9.5 );
setRotateKey( spep_5 -3 + 44, 1, 10.9 );
setRotateKey( spep_5 -3 + 46, 1, 12.4 );
setRotateKey( spep_5 -3 + 48, 1, 13.8 );
setRotateKey( spep_5 -3 + 50, 1, 15.3 );
setRotateKey( spep_5 -3 + 52, 1, 16.8 );
setRotateKey( spep_5 -3 + 54, 1, 18.2 );
setRotateKey( spep_5 -3 + 56, 1, 19.7 );
setRotateKey( spep_5 -3 + 58, 1, 21.2 );
setRotateKey( spep_5 -5 + 60, 1, 21.2 );


-- ** 音 ** --
--飛び膝蹴り
SE013 = playSeVer2( spep_5 + 4, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_5 + 10, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_5 + 10, 1153, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 60 -4;

-------------------------------------------------
-- リクーム　肘打ち　
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0); --リクーム　肘打ち　手前	ef_006	25	味方側
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 48 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 48 -4, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 48 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 48 -5, base_6f, 255);
setEffAlphaKey( spep_6 + 48 -4, base_6f, 0);

base_6b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0); --リクーム　肘打ち　奥	ef_006_b	25	そのまま反転
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 48 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 48 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 48 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 48 -5, base_6b, 255);
setEffAlphaKey( spep_6 + 48 -4, base_6b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 12, 1, 108 );

-- setMoveKey( spep_6 -3 + 0, 1, -221.4, 35.5 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -168, 35.2 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -114.4, 35.1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -60.9, 35 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -7.3, 34.9 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 46.2, 21 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 73.6, -13.9 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 85.1, -15.2 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 78.6, -11.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 84.7, -36.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 77.4, -33.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 76.9, -52.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 71, -47.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 82.6, -49.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 82.2, -54.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 81.7, -60.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 81.3, -65.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 80.9, -71.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 81.5, -257.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 82.5, -437.6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 83.5, -617.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.5, -797.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 85.6, -978 , 0 );
-- setMoveKey( spep_6 -5 + 48, 1, 85.6, -978 , 0 );

setScaleKey( spep_6 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 11, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_6 -5 + 48, 1, 1.81, 1.81 );

-- setRotateKey( spep_6 -3 + 0, 1, 5 );
setRotateKey( spep_6 -2 + 2, 1, 7.8 );
setRotateKey( spep_6 -3 + 4, 1, 10.6 );
setRotateKey( spep_6 -3 + 6, 1, 13.4 );
setRotateKey( spep_6 -3 + 8, 1, 16.2 );
setRotateKey( spep_6 -3 + 11, 1, 19 );
setRotateKey( spep_6 -3 + 12, 1, 68 );
setRotateKey( spep_6 -3 + 14, 1, 69 );
setRotateKey( spep_6 -3 + 16, 1, 70 );
setRotateKey( spep_6 -3 + 18, 1, 71 );
setRotateKey( spep_6 -3 + 20, 1, 72 );
setRotateKey( spep_6 -3 + 22, 1, 73 );
setRotateKey( spep_6 -3 + 24, 1, 74 );
setRotateKey( spep_6 -3 + 26, 1, 75 );
setRotateKey( spep_6 -3 + 28, 1, 76 );
setRotateKey( spep_6 -3 + 30, 1, 77 );
setRotateKey( spep_6 -3 + 32, 1, 78 );
setRotateKey( spep_6 -3 + 34, 1, 79 );
setRotateKey( spep_6 -3 + 36, 1, 80 );
setRotateKey( spep_6 -3 + 38, 1, 77.6 );
setRotateKey( spep_6 -3 + 40, 1, 75.2 );
setRotateKey( spep_6 -3 + 42, 1, 72.8 );
setRotateKey( spep_6 -3 + 44, 1, 70.4 );
setRotateKey( spep_6 -3 + 46, 1, 68 );
-- setRotateKey( spep_6 -5 + 48, 1, 68 );


-- ** 音 ** --
--叩き落とす
SE016 = playSeVer2( spep_6 + 4, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_6 + 4, 1187, "",spep_6 + 82, 0, 54, -1);	setSeVolumeByWorkId( spep_6 + 4, SE017, 86 );
SE018 = playSeVer2( spep_6 + 10, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_7 = spep_6 + 48 -4;

-------------------------------------------------
-- リクーム　蹴り上げ
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0); --リクーム　蹴り上げ　手前	ef_007	33	味方側
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 64 -4, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, 1.0, 1.0);
setEffScaleKey( spep_7 + 64 -4, base_7f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 64 -4, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 64 -5, base_7f, 255);
setEffAlphaKey( spep_7 + 64 -4, base_7f, 0);

base_7b = entryEffect( spep_7 + 0, SP_07b, 0x80, -1, 0, 0, 0); --リクーム　蹴り上げ　奥	ef_007_b	33	味方側
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 64 -4, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, 1.0, 1.0);
setEffScaleKey( spep_7 + 64 -4, base_7b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 64 -4, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 64 -5, base_7b, 255);
setEffAlphaKey( spep_7 + 64 -4, base_7b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -4 + 64, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7 -3 + 18, 1, 106 );
changeAnime( spep_7 -3 + 28, 1, 107 );

-- setMoveKey( spep_7 -3 + 0, 1, 116.4, 573 , 0 );
setMoveKey( spep_7 -2 + 2, 1, 111.2, 518.6 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 105.9, 420.5 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 100.7, 315 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 95.4, 205.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 90.2, 93.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 85, 11.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 79.7, -139.4 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 74.5, -242.3 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 122.6, -237.3 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 122.6, -198.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 122.6, -176.2 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 122.6, -154 , 0 );
setMoveKey( spep_7 -3 + 27, 1, 122.6, -131.8 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 53.7, 86.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 100.2, 130 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 68.7, 171 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 72.2, 96.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 118.7, 140.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 87.3, 181.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 90.8, 106.8 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 137.3, 150.5 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 143.5, 153.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 149.6, 157.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 155.8, 160.8 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 162, 164.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 341.8, 305.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 507.4, 436.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 658.5, 556.2 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 795.4, 664.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 917.9, 762.1 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 1026, 848.4 , 0 );
-- setMoveKey( spep_7 -5 + 64, 1, 1119.9, 923.7 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_7 -2 + 2, 1, 1.82, 1.82 );
setScaleKey( spep_7 -3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_7 -3 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 10, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 12, 1, 1.78, 1.78 );
setScaleKey( spep_7 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_7 -3 + 17, 1, 1.76, 1.76 );
setScaleKey( spep_7 -3 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 27, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_7 -3 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_7 -3 + 32, 1, 0.84, 0.84 );
setScaleKey( spep_7 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_7 -3 + 36, 1, 0.89, 0.89 );
setScaleKey( spep_7 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_7 -3 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_7 -3 + 42, 1, 0.97, 0.97 );
setScaleKey( spep_7 -3 + 44, 1, 1, 1 );
setScaleKey( spep_7 -3 + 46, 1, 1.03, 1.03 );
setScaleKey( spep_7 -3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_7 -3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_7 -3 + 52, 1, 1.64, 1.64 );
setScaleKey( spep_7 -3 + 54, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 56, 1, 2.63, 2.63 );
setScaleKey( spep_7 -3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_7 -3 + 60, 1, 3.44, 3.44 );
setScaleKey( spep_7 -3 + 62, 1, 3.78, 3.78 );
-- setScaleKey( spep_7 -5 + 64, 1, 4.08, 4.08 );

setRotateKey( spep_7 -3 + 0, 1, 72.5 );
setRotateKey( spep_7 -3 + 17, 1, 72.5 );
setRotateKey( spep_7 -3 + 18, 1, 26.5 );
setRotateKey( spep_7 -3 + 20, 1, 30.8 );
setRotateKey( spep_7 -3 + 22, 1, 35 );
setRotateKey( spep_7 -3 + 24, 1, 39.3 );
setRotateKey( spep_7 -3 + 27, 1, 43.5 );
setRotateKey( spep_7 -3 + 28, 1, -9.2 );
setRotateKey( spep_7 -3 + 50, 1, -9.2 );
setRotateKey( spep_7 -3 + 52, 1, -12.4 );
setRotateKey( spep_7 -3 + 54, 1, -15.6 );
setRotateKey( spep_7 -3 + 56, 1, -18.8 );
setRotateKey( spep_7 -3 + 58, 1, -22 );
setRotateKey( spep_7 -3 + 60, 1, -25.2 );
setRotateKey( spep_7 -3 + 62, 1, -28.4 );
-- setRotateKey( spep_7 -5 + 64, 1, -31.6 );


-- ** 音 ** --
--着地
SE019 = playSeVer2( spep_7 + 8, 1108, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_7 + 8, SE019, 266 );
SE020 = playSeVer2( spep_7 + 10, 1106, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_7 + 10, SE020, 272 );

--敵落ちる
SE021 = playSeVer2( spep_7 + 12, 1008, "", 0, 0, 0, -1);

--蹴り飛ばす
SE022 = playSeVer2( spep_7 + 22, 1123, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_8 = spep_7 + 64 -4;

-------------------------------------------------
-- リクームが敵を持ち上げる　
-------------------------------------------------
-- ** エフェクト等 ** --
base_8f = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0); --リクームが敵を持ち上げる　手前	ef_008	45	味方側
setEffMoveKey( spep_8 + 0, base_8f, 0, 0 , 0);
setEffMoveKey( spep_8 + 88 -4, base_8f, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8f, 1.0, 1.0);
setEffScaleKey( spep_8 + 88 -4, base_8f, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8f, 0);
setEffRotateKey( spep_8 + 88 -4, base_8f, 0);
setEffAlphaKey( spep_8 + 0, base_8f, 255);
setEffAlphaKey( spep_8 + 88 -5, base_8f, 255);
setEffAlphaKey( spep_8 + 88 -4, base_8f, 0);

base_8b = entryEffect( spep_8 + 0, SP_08b, 0x80, -1, 0, 0, 0); --リクームが敵を持ち上げる　奥	ef_008_b	45	味方側
setEffMoveKey( spep_8 + 0, base_8b, 0, 0 , 0);
setEffMoveKey( spep_8 + 88 -4, base_8b, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8b, 1.0, 1.0);
setEffScaleKey( spep_8 + 88 -4, base_8b, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8b, 0);
setEffRotateKey( spep_8 + 88 -4, base_8b, 0);
setEffAlphaKey( spep_8 + 0, base_8b, 255);
setEffAlphaKey( spep_8 + 88 -5, base_8b, 255);
setEffAlphaKey( spep_8 + 88 -4, base_8b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -4 + 88, 1, 0 );

changeAnime( spep_8 + 0, 1, 5 );
changeAnime( spep_8 -3 + 28, 1, 6 );
changeAnime( spep_8 -3 + 66, 1, 106 );

-- setMoveKey( spep_8 -3 + 0, 1, -388.1, -405.8 , 0 );
setMoveKey( spep_8 -2 + 2, 1, -360.1, -374 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -330.7, -340.5 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -299.7, -305.6 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -267.3, -269.2 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -233.4, -231.4 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -197.9, -192 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -161.1, -151.2 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -122.7, -108.8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -82.8, -64.9 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -41.4, -19.6 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 1.4, 27.3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 45.8, 75.5 , 0 );
setMoveKey( spep_8 -3 + 27, 1, 91.7, 125.4 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 112.9, 163.6 , 0 );	--catch
setMoveKey( spep_8 -3 + 29, 1, 112.9, 163.6 , 0 );	--catch
setMoveKey( spep_8 -3 + 30, 1, 78.1, 145 , 0 );
setMoveKey( spep_8 -3 + 31, 1, 78.1, 145 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 75.3, 197.5 , 0 );
setMoveKey( spep_8 -3 + 33, 1, 75.3, 197.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 122.5, 156.7 , 0 );
setMoveKey( spep_8 -3 + 35, 1, 122.5, 156.7 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 99.4, 213.5 , 0 );
setMoveKey( spep_8 -3 + 37, 1, 99.4, 213.5 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 72.9, 93.2 , 0 );
setMoveKey( spep_8 -3 + 39, 1, 72.9, 93.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 38.3, 60.2 , 0 );
setMoveKey( spep_8 -3 + 41, 1, 38.3, 60.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 32.9, 4.2 , 0 );
setMoveKey( spep_8 -3 + 43, 1, 32.9, 4.2 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 28.3, -55.5 , 0 );
setMoveKey( spep_8 -3 + 45, 1, 28.3, -55.5 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 24.5, -118.9 , 0 );
setMoveKey( spep_8 -3 + 47, 1, 24.5, -118.9 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 20.6, -186.1 , 0 );
setMoveKey( spep_8 -3 + 49, 1, 20.6, -186.1 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 18.9, -256.4 , 0 );
setMoveKey( spep_8 -3 + 51, 1, 18.9, -256.4 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 18.4, -329.5 , 0 );	--turn
setMoveKey( spep_8 -3 + 53, 1, 18.4, -329.5 , 0 );	--turn
setMoveKey( spep_8 -3 + 54, 1, -18.7, -229.4 , 0 );
setMoveKey( spep_8 -3 + 55, 1, -18.7, -229.4 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 9.5, -201.2 , 0 );
setMoveKey( spep_8 -3 + 57, 1, 9.5, -201.2 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 33.1, -170.2 , 0 );
setMoveKey( spep_8 -3 + 59, 1, 33.1, -170.2 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 212.9, -66.9 , 0 );
setMoveKey( spep_8 -3 + 61, 1, 212.9, -66.9 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 246.1, -54.2 , 0 );
setMoveKey( spep_8 -3 + 65, 1, 277.8, -39 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 269.1, 338 , 0 );
setMoveKey( spep_8 -3 + 67, 1, 269.1, 338 , 0 );
setMoveKey( spep_8 -3 + 68, 1, 250.4, 336 , 0 );
setMoveKey( spep_8 -3 + 69, 1, 250.4, 336 , 0 );
setMoveKey( spep_8 -3 + 70, 1, 231.8, 333.9 , 0 );
setMoveKey( spep_8 -3 + 71, 1, 231.8, 333.9 , 0 );
setMoveKey( spep_8 -3 + 72, 1, 213.4, 331.6 , 0 );
setMoveKey( spep_8 -3 + 73, 1, 213.4, 331.6 , 0 );
setMoveKey( spep_8 -3 + 74, 1, 195, 329.1 , 0 );
setMoveKey( spep_8 -3 + 75, 1, 195, 329.1 , 0 );
setMoveKey( spep_8 -3 + 76, 1, 176.9, 326.5 , 0 );
setMoveKey( spep_8 -3 + 77, 1, 176.9, 326.5 , 0 );
setMoveKey( spep_8 -3 + 78, 1, 158.8, 323.6 , 0 );
setMoveKey( spep_8 -3 + 79, 1, 158.8, 323.6 , 0 );
setMoveKey( spep_8 -3 + 80, 1, 140.9, 320.6 , 0 );
setMoveKey( spep_8 -3 + 81, 1, 140.9, 320.6 , 0 );
setMoveKey( spep_8 -3 + 82, 1, 135.5, 301 , 0 );
setMoveKey( spep_8 -3 + 83, 1, 135.5, 301 , 0 );
setMoveKey( spep_8 -3 + 84, 1, 130.1, 281.3 , 0 );
setMoveKey( spep_8 -3 + 85, 1, 130.1, 281.3 , 0 );
setMoveKey( spep_8 -3 + 86, 1, 130.1, 258.6 , 0 );
-- setMoveKey( spep_8 -5 + 88, 1, 130.1, 235.9 , 0 );

-- setScaleKey( spep_8 -3 + 0, 1, 5.45, 5.45 );
setScaleKey( spep_8 -2 + 2, 1, 5.23, 5.23 );
setScaleKey( spep_8 -3 + 4, 1, 4.99, 4.99 );
setScaleKey( spep_8 -3 + 6, 1, 4.75, 4.75 );
setScaleKey( spep_8 -3 + 8, 1, 4.49, 4.49 );
setScaleKey( spep_8 -3 + 10, 1, 4.22, 4.22 );
setScaleKey( spep_8 -3 + 12, 1, 3.94, 3.94 );
setScaleKey( spep_8 -3 + 14, 1, 3.65, 3.65 );
setScaleKey( spep_8 -3 + 16, 1, 3.34, 3.34 );
setScaleKey( spep_8 -3 + 18, 1, 3.02, 3.02 );
setScaleKey( spep_8 -3 + 20, 1, 2.69, 2.69 );
setScaleKey( spep_8 -3 + 22, 1, 2.35, 2.35 );
setScaleKey( spep_8 -3 + 24, 1, 2, 2 );
setScaleKey( spep_8 -3 + 27, 1, 1.63, 1.63 );
setScaleKey( spep_8 -3 + 28, 1, 1.596, 1.596 );	--catch
setScaleKey( spep_8 -3 + 29, 1, 1.596, 1.596 );	--catch
setScaleKey( spep_8 -3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_8 -3 + 31, 1, 1.62, 1.62 );
setScaleKey( spep_8 -3 + 32, 1, 1.644, 1.644 );
setScaleKey( spep_8 -3 + 33, 1, 1.644, 1.644 );
setScaleKey( spep_8 -3 + 34, 1, 1.668, 1.668 );
setScaleKey( spep_8 -3 + 35, 1, 1.668, 1.668 );
setScaleKey( spep_8 -3 + 36, 1, 1.692, 1.692 );
setScaleKey( spep_8 -3 + 37, 1, 1.692, 1.692 );
setScaleKey( spep_8 -3 + 38, 1, 1.956, 1.956 );
setScaleKey( spep_8 -3 + 39, 1, 1.956, 1.956 );
setScaleKey( spep_8 -3 + 40, 1, 2.232, 2.232 );
setScaleKey( spep_8 -3 + 41, 1, 2.232, 2.232 );
setScaleKey( spep_8 -3 + 42, 1, 2.544, 2.544 );
setScaleKey( spep_8 -3 + 43, 1, 2.544, 2.544 );
setScaleKey( spep_8 -3 + 44, 1, 2.868, 2.868 );
setScaleKey( spep_8 -3 + 45, 1, 2.868, 2.868 );
setScaleKey( spep_8 -3 + 46, 1, 3.216, 3.216 );
setScaleKey( spep_8 -3 + 47, 1, 3.216, 3.216 );
setScaleKey( spep_8 -3 + 48, 1, 3.564, 3.564 );
setScaleKey( spep_8 -3 + 49, 1, 3.564, 3.564 );
setScaleKey( spep_8 -3 + 50, 1, 3.936, 3.936 );
setScaleKey( spep_8 -3 + 51, 1, 3.936, 3.936 );
setScaleKey( spep_8 -3 + 52, 1, 4.32, 4.32 );	--turn
setScaleKey( spep_8 -3 + 53, 1, 4.32, 4.32 );	--turn
setScaleKey( spep_8 -3 + 54, 1, 3.792, 3.792 );
setScaleKey( spep_8 -3 + 55, 1, 3.792, 3.792 );
setScaleKey( spep_8 -3 + 56, 1, 3.888, 3.888 );
setScaleKey( spep_8 -3 + 57, 1, 3.888, 3.888 );
setScaleKey( spep_8 -3 + 58, 1, 3.984, 3.984 );
setScaleKey( spep_8 -3 + 59, 1, 3.984, 3.984 );
setScaleKey( spep_8 -3 + 60, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 65, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 66, 1, 4.224, 4.224 );
setScaleKey( spep_8 -3 + 67, 1, 4.224, 4.224 );
setScaleKey( spep_8 -3 + 68, 1, 4.212, 4.212 );
setScaleKey( spep_8 -3 + 69, 1, 4.212, 4.212 );
setScaleKey( spep_8 -3 + 70, 1, 4.188, 4.188 );
setScaleKey( spep_8 -3 + 71, 1, 4.188, 4.188 );
setScaleKey( spep_8 -3 + 72, 1, 4.176, 4.176 );
setScaleKey( spep_8 -3 + 73, 1, 4.176, 4.176 );
setScaleKey( spep_8 -3 + 74, 1, 4.152, 4.152 );
setScaleKey( spep_8 -3 + 75, 1, 4.152, 4.152 );
setScaleKey( spep_8 -3 + 76, 1, 4.14, 4.14 );
setScaleKey( spep_8 -3 + 77, 1, 4.14, 4.14 );
setScaleKey( spep_8 -3 + 78, 1, 4.128, 4.128 );
setScaleKey( spep_8 -3 + 79, 1, 4.128, 4.128 );
setScaleKey( spep_8 -3 + 80, 1, 4.104, 4.104 );
setScaleKey( spep_8 -3 + 81, 1, 4.104, 4.104 );
setScaleKey( spep_8 -3 + 82, 1, 4.092, 4.092 );
setScaleKey( spep_8 -3 + 83, 1, 4.092, 4.092 );
setScaleKey( spep_8 -3 + 84, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 85, 1, 4.068, 4.068 );
setScaleKey( spep_8 -5 + 88, 1, 4.068, 4.068 );

setRotateKey( spep_8 + 0, 1, 56.3 );
setRotateKey( spep_8 -3 + 27, 1, 56.3 );
setRotateKey( spep_8 -3 + 28, 1, 20.1 +54.8 );	--catch
setRotateKey( spep_8 -3 + 29, 1, 20.1 +54.8 );	--catch
setRotateKey( spep_8 -3 + 30, 1, 21.3 +56.8);
setRotateKey( spep_8 -3 + 31, 1, 21.3 +56.8);
setRotateKey( spep_8 -3 + 32, 1, 22.6 +58.7);
setRotateKey( spep_8 -3 + 33, 1, 22.6 +58.7);
setRotateKey( spep_8 -3 + 34, 1, 23.9 +60.6 );
setRotateKey( spep_8 -3 + 35, 1, 23.9 +60.6 );
setRotateKey( spep_8 -3 + 36, 1, 25.2 +62.5 );
setRotateKey( spep_8 -3 + 37, 1, 25.2 +62.5 );
setRotateKey( spep_8 -3 + 38, 1, 26.4 +58.0);
setRotateKey( spep_8 -3 + 39, 1, 26.4 +58.0);
setRotateKey( spep_8 -3 + 40, 1, 27.7 +53.5);
setRotateKey( spep_8 -3 + 41, 1, 27.7 +53.5);
setRotateKey( spep_8 -3 + 42, 1, 29.0 +49.0);
setRotateKey( spep_8 -3 + 43, 1, 29.0 +49.0);
setRotateKey( spep_8 -3 + 44, 1, 30.3 +44.5);
setRotateKey( spep_8 -3 + 45, 1, 30.3 +44.5);
setRotateKey( spep_8 -3 + 46, 1, 31.5 +40.0);
setRotateKey( spep_8 -3 + 47, 1, 31.5 +40.0);
setRotateKey( spep_8 -3 + 48, 1, 31.5 +35.5);
setRotateKey( spep_8 -3 + 49, 1, 31.5 +35.5);
setRotateKey( spep_8 -3 + 50, 1, 31.5 +31.0);
setRotateKey( spep_8 -3 + 51, 1, 31.5 +31.0);
setRotateKey( spep_8 -3 + 52, 1, 31.5 +26.5);	--turn
setRotateKey( spep_8 -3 + 53, 1, 31.5 +26.5);	--turn
setRotateKey( spep_8 -3 + 54, 1, 32.2 );
setRotateKey( spep_8 -3 + 55, 1, 32.2 );
setRotateKey( spep_8 -3 + 56, 1, 18.1 );
setRotateKey( spep_8 -3 + 57, 1, 18.1 );
setRotateKey( spep_8 -3 + 58, 1, 4 );
setRotateKey( spep_8 -3 + 59, 1, 4 );
setRotateKey( spep_8 -3 + 60, 1, -59.2 );
setRotateKey( spep_8 -3 + 61, 1, -59.2 );
setRotateKey( spep_8 -3 + 62, 1, -68.1 );
setRotateKey( spep_8 -3 + 65, 1, -77 );
setRotateKey( spep_8 -3 + 66, 1, 113 );
setRotateKey( spep_8 -3 + 67, 1, 113 );
setRotateKey( spep_8 -3 + 68, 1, 111.8 );
setRotateKey( spep_8 -3 + 69, 1, 111.8 );
setRotateKey( spep_8 -3 + 70, 1, 110.6 );
setRotateKey( spep_8 -3 + 71, 1, 110.6 );
setRotateKey( spep_8 -3 + 72, 1, 109.4 );
setRotateKey( spep_8 -3 + 73, 1, 109.4 );
setRotateKey( spep_8 -3 + 74, 1, 108.3 );
setRotateKey( spep_8 -3 + 75, 1, 108.3 );
setRotateKey( spep_8 -3 + 76, 1, 107.1 );
setRotateKey( spep_8 -3 + 77, 1, 107.1 );
setRotateKey( spep_8 -3 + 78, 1, 105.9 );
setRotateKey( spep_8 -3 + 79, 1, 105.9 );
setRotateKey( spep_8 -3 + 80, 1, 104.7 );
setRotateKey( spep_8 -3 + 81, 1, 104.7 );
setRotateKey( spep_8 -3 + 82, 1, 104.4 );
setRotateKey( spep_8 -3 + 83, 1, 104.4 );
setRotateKey( spep_8 -3 + 84, 1, 104.1 );
setRotateKey( spep_8 -3 + 85, 1, 104.1 );
setRotateKey( spep_8 -5 + 88, 1, 104.1 );


-- ** 音 ** --
--敵掴む
SE023 = playSeVer2( spep_8 + 24, 1006, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_8 + 26, 1012, "", 0, 0, 0, -1);

--持ち上がる
SE025 = playSeVer2( spep_8 + 52, 1116, "",spep_8 + 90, 0, 18, -1);
SE026 = playSeVer2( spep_8 + 52, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_9 = spep_8 + 88 -4;

-------------------------------------------------
-- 地面に向かう　
-------------------------------------------------
-- ** エフェクト等 ** --
base_9f = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0); --地面に向かう　手前	ef_009	25	味方側
setEffMoveKey( spep_9 + 0, base_9f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base_9f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9f, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base_9f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9f, 0);
setEffRotateKey( spep_9 + 48 -4, base_9f, 0);
setEffAlphaKey( spep_9 + 0, base_9f, 255);
setEffAlphaKey( spep_9 + 48 -5, base_9f, 255);
setEffAlphaKey( spep_9 + 48 -4, base_9f, 0);

base_9b = entryEffect( spep_9 + 0, SP_09b, 0x80, -1, 0, 0, 0); --地面に向かう　奥	ef_009_b	25	味方側
setEffMoveKey( spep_9 + 0, base_9b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base_9b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base_9b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9b, 0);
setEffRotateKey( spep_9 + 48 -4, base_9b, 0);
setEffAlphaKey( spep_9 + 0, base_9b, 255);
setEffAlphaKey( spep_9 + 48 -5, base_9b, 255);
setEffAlphaKey( spep_9 + 48 -4, base_9b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 106 );

-- setMoveKey( spep_9 -3 + 0, 1, 109.6, 696.8 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 93.4, 616.2 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 113, 526.4 , 0 );
setMoveKey( spep_9 -3 + 5, 1, 113, 526.4 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 107.6, 436.9 , 0 );
setMoveKey( spep_9 -3 + 7, 1, 107.6, 436.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 111.7, 346.7 , 0 );
setMoveKey( spep_9 -3 + 9, 1, 111.7, 346.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 121.9, 250.5 , 0 );
setMoveKey( spep_9 -3 + 11, 1, 121.9, 250.5 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 125.4, 164.3 , 0 );
setMoveKey( spep_9 -3 + 13, 1, 125.4, 164.3 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 116.6, 96.8 , 0 );
setMoveKey( spep_9 -3 + 15, 1, 116.6, 96.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 117.2, 2.9 , 0 );
setMoveKey( spep_9 -3 + 17, 1, 117.2, 2.9 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 130.1, -84.9 , 0 );
setMoveKey( spep_9 -3 + 19, 1, 130.1, -84.9 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 136.4, -78.9 , 0 );
setMoveKey( spep_9 -3 + 21, 1, 136.4, -78.9 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 124.1, -91.6 , 0 );
setMoveKey( spep_9 -3 + 23, 1, 124.1, -91.6 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 118, -91.7 , 0 );
setMoveKey( spep_9 -3 + 25, 1, 118, -91.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 124.4, -91.8 , 0 );
setMoveKey( spep_9 -3 + 27, 1, 124.4, -91.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 125.9, -95.4 , 0 );
setMoveKey( spep_9 -3 + 29, 1, 125.9, -95.4 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 115, -111.2 , 0 );
setMoveKey( spep_9 -3 + 31, 1, 115, -111.2 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 116.8, -127 , 0 );
setMoveKey( spep_9 -3 + 33, 1, 116.8, -127 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 124.8, -130.5 , 0 );
setMoveKey( spep_9 -3 + 35, 1, 124.8, -130.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 118.6, -133.9 , 0 );
setMoveKey( spep_9 -3 + 37, 1, 118.6, -133.9 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 118.5, -149.6 , 0 );
setMoveKey( spep_9 -3 + 39, 1, 118.5, -149.6 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 126.4, -165.4 , 0 );
setMoveKey( spep_9 -3 + 41, 1, 126.4, -165.4 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 121.8, -168.7 , 0 );
setMoveKey( spep_9 -3 + 43, 1, 121.8, -168.7 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 115.6, -186 , 0 );
setMoveKey( spep_9 -3 + 45, 1, 115.6, -186 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 121.9, -190.9 , 0 );
-- setMoveKey( spep_9 -5 + 48, 1, 123.4, -194.1 , 0 );

-- setScaleKey( spep_9 -3 + 0, 1, 4.96, 4.96 );
setScaleKey( spep_9 -2 + 2, 1, 4.55, 4.54 );
setScaleKey( spep_9 -3 + 4, 1, 4.13, 4.13 );
setScaleKey( spep_9 -3 + 5, 1, 4.13, 4.13 );
setScaleKey( spep_9 -3 + 6, 1, 3.71, 3.71 );
setScaleKey( spep_9 -3 + 7, 1, 3.71, 3.71 );
setScaleKey( spep_9 -3 + 8, 1, 3.28, 3.28 );
setScaleKey( spep_9 -3 + 9, 1, 3.28, 3.28 );
setScaleKey( spep_9 -3 + 10, 1, 2.86, 2.86 );
setScaleKey( spep_9 -3 + 11, 1, 2.86, 2.86 );
setScaleKey( spep_9 -3 + 12, 1, 2.44, 2.44 );
setScaleKey( spep_9 -3 + 13, 1, 2.44, 2.44 );
setScaleKey( spep_9 -3 + 14, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 15, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 16, 1, 1.59, 1.59 );
setScaleKey( spep_9 -3 + 17, 1, 1.59, 1.59 );
setScaleKey( spep_9 -3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 19, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 20, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 21, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 23, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 25, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 27, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 28, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 29, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 31, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 32, 1, 0.82, 0.82 );
setScaleKey( spep_9 -3 + 33, 1, 0.82, 0.82 );
setScaleKey( spep_9 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 35, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 36, 1, 0.73, 0.73 );
setScaleKey( spep_9 -3 + 37, 1, 0.73, 0.73 );
setScaleKey( spep_9 -3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 39, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_9 -3 + 41, 1, 0.63, 0.63 );
setScaleKey( spep_9 -3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 43, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_9 -3 + 45, 1, 0.53, 0.53 );
setScaleKey( spep_9 -3 + 46, 1, 0.48, 0.48 );
-- setScaleKey( spep_9 -5 + 48, 1, 0.43, 0.43 );

-- setRotateKey( spep_9 -3 + 0, 1, 131.2 );
setRotateKey( spep_9 -2 + 2, 1, 130.9 );
setRotateKey( spep_9 -3 + 4, 1, 130.7 );
setRotateKey( spep_9 -3 + 6, 1, 130.5 );
setRotateKey( spep_9 -3 + 8, 1, 130.2 );
setRotateKey( spep_9 -3 + 10, 1, 130 );
setRotateKey( spep_9 -3 + 12, 1, 129.7 );
setRotateKey( spep_9 -3 + 14, 1, 129.5 );
setRotateKey( spep_9 -3 + 16, 1, 129.3 );
setRotateKey( spep_9 -3 + 18, 1, 129 );
setRotateKey( spep_9 -3 + 20, 1, 128.8 );
setRotateKey( spep_9 -3 + 22, 1, 128.5 );
setRotateKey( spep_9 -3 + 24, 1, 128.3 );
setRotateKey( spep_9 -3 + 26, 1, 128.1 );
setRotateKey( spep_9 -3 + 28, 1, 127.8 );
setRotateKey( spep_9 -3 + 30, 1, 127.6 );
setRotateKey( spep_9 -3 + 32, 1, 127.3 );
setRotateKey( spep_9 -3 + 34, 1, 127.1 );
setRotateKey( spep_9 -3 + 36, 1, 126.9 );
setRotateKey( spep_9 -3 + 38, 1, 126.6 );
setRotateKey( spep_9 -3 + 40, 1, 126.4 );
setRotateKey( spep_9 -3 + 42, 1, 126.1 );
setRotateKey( spep_9 -3 + 44, 1, 125.9 );
setRotateKey( spep_9 -3 + 46, 1, 125.7 );
-- setRotateKey( spep_9 -5 + 48, 1, 125.4 );


-- ** 音 ** --
--敵と共に落ちる
SE027 = playSeVer2( spep_9 + 0, 1183, "",spep_9 + 74, 0, 12, -1);
SE028 = playSeVer2( spep_9 + 0, 1121, "",spep_9 + 74, 0, 12, -1);
SE029 = playSeVer2( spep_9 + 0, 1314, "",spep_9 + 74, 0, 12, -1);


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 地面に激突　
-------------------------------------------------
-- ** エフェクト等 ** --
base_10f = entryEffect( spep_10 + 0, SP_10, 0x100, -1, 0, 0, 0); --地面に激突　手前	ef_010	35	味方側
setEffMoveKey( spep_10 + 0, base_10f, 0, 0 , 0);
setEffMoveKey( spep_10 + 68 -4, base_10f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10f, 1.0, 1.0);
setEffScaleKey( spep_10 + 68 -4, base_10f, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10f, 0);
setEffRotateKey( spep_10 + 68 -4, base_10f, 0);
setEffAlphaKey( spep_10 + 0, base_10f, 255);
setEffAlphaKey( spep_10 + 68 -5, base_10f, 255);
setEffAlphaKey( spep_10 + 68 -4, base_10f, 0);

base_10b = entryEffect( spep_10 + 0, SP_10b, 0x80, -1, 0, 0, 0); --地面に激突　奥	ef_010_b	35	そのまま反転
setEffMoveKey( spep_10 + 0, base_10b, 0, 0 , 0);
setEffMoveKey( spep_10 + 68 -4, base_10b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10b, 1.0, 1.0);
setEffScaleKey( spep_10 + 68 -4, base_10b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10b, 0);
setEffRotateKey( spep_10 + 68 -4, base_10b, 0);
setEffAlphaKey( spep_10 + 0, base_10b, 255);
setEffAlphaKey( spep_10 + 68 -5, base_10b, 255);
setEffAlphaKey( spep_10 + 68 -4, base_10b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 16, 1, 0 );

setBlendColor( spep_10 + 0, 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_10 -3 + 16, 1, 2, 0, 0, 0, 0.0);

changeAnime( spep_10 + 0, 1, 106 );

-- setMoveKey( spep_10 -3 + 0, 1, -343.4, 698.4 , 0 );
setMoveKey( spep_10 -2 + 2, 1, -321.2, 613.9 , 0 );
setMoveKey( spep_10 -3 + 4, 1, -276.9, 498.8 , 0 );
setMoveKey( spep_10 -3 + 5, 1, -276.9, 498.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -228.9, 378.7 , 0 );
setMoveKey( spep_10 -3 + 7, 1, -228.9, 378.7 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -179, 255.8 , 0 );
setMoveKey( spep_10 -3 + 9, 1, -179, 255.8 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -127.8, 131.2 , 0 );
setMoveKey( spep_10 -3 + 11, 1, -127.8, 131.2 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -75.5, 5.3 , 0 );
setMoveKey( spep_10 -3 + 13, 1, -75.5, 5.3 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -22.6, -121.7 , 0 );
setMoveKey( spep_10 -3 + 15, 1, -22.6, -121.7 , 0 );

setScaleKey( spep_10 + 0, 1, 0.64, 0.64 );
setScaleKey( spep_10 -3 + 15, 1, 0.64, 0.64 );

setRotateKey( spep_10 + 0, 1, 120.2 );
setRotateKey( spep_10 -3 + 15, 1, 120.2 );


-- ** 音 ** --
--地面爆発
SE030 = playSeVer2( spep_10 + 14, 1159, "",spep_10 + 184, 0, 68, -1);


-- ** 次の準備 ** --
spep_11 = spep_10 + 68 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_11f = entryEffect( spep_11 + 0, SP_11, 0x100, -1, 0, 0, 0); --フィニッシュ　手前	ef_011	60	反転なし
setEffMoveKey( spep_11 + 0, base_11f, 0, 0 , 0);
setEffMoveKey( spep_11 + 120 -4, base_11f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11f, 1.0, 1.0);
setEffScaleKey( spep_11 + 120 -4, base_11f, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11f, 0);
setEffRotateKey( spep_11 + 120 -4, base_11f, 0);
setEffAlphaKey( spep_11 + 0, base_11f, 255);
setEffAlphaKey( spep_11 + 120 -4, base_11f, 255);

base_11b = entryEffect( spep_11 + 0, SP_11b, 0x80, -1, 0, 0, 0); --フィニッシュ　奥	ef_011_b	60	反転なし
setEffMoveKey( spep_11 + 0, base_11b, 0, 0 , 0);
setEffMoveKey( spep_11 + 120 -4, base_11b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11b, 1.0, 1.0);
setEffScaleKey( spep_11 + 120 -4, base_11b, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11b, 0);
setEffRotateKey( spep_11 + 120 -4, base_11b, 0);
setEffAlphaKey( spep_11 + 0, base_11b, 255);
setEffAlphaKey( spep_11 + 120 -4, base_11b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -4 + 120, 1, 0 );

changeAnime( spep_11 -3 + 0, 1, 6 );

a11 = 14;
-- setMoveKey( spep_11 -3 + 0, 1, -11.5, -414.1 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -11.5, -423.7 +a11 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -11.5, -433.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 5, 1, -11.5, -433.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -11.5, -442.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 7, 1, -11.5, -442.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -11.5, -452.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 9, 1, -11.5, -452.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -11.5, -461.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 11, 1, -11.5, -461.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -11.5, -471.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 13, 1, -11.5, -471.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -11.5, -481 +a11 , 0 );
setMoveKey( spep_11 -3 + 15, 1, -11.5, -481 +a11 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -11.5, -490.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 17, 1, -11.5, -490.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -11.5, -500.1 +a11 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -11.5, -501.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -11.5, -503 +a11 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -11.5, -504.5 +a11 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -11.5, -505.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -11.5, -507.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -11.5, -508.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -11.5, -510.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -11.5, -511.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -11.5, -513.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -11.5, -514.7 +a11 , 0 );
setMoveKey( spep_11 -3 + 40, 1, -11.5, -516.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 42, 1, -11.5, -517.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 44, 1, -11.5, -519.1 +a11 , 0 );
setMoveKey( spep_11 -3 + 46, 1, -11.5, -520.5 +a11 , 0 );
setMoveKey( spep_11 -3 + 48, 1, -11.5, -522 +a11 , 0 );
setMoveKey( spep_11 -3 + 50, 1, -11.5, -523.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 52, 1, -11.5, -524.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 54, 1, -11.5, -526.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 56, 1, -11.5, -527.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 58, 1, -11.5, -529.3 +a11 , 0 );
setMoveKey( spep_11 -4 + 120, 1, -11.5, -529.3 +a11 , 0 );

s11 = 0.7;
setScaleKey( spep_11 + 0, 1, 1.62 +s11, 1.62 +s11 );
setScaleKey( spep_11 -4 + 120, 1, 1.62 +s11, 1.62 +s11 );

r11 = 0;
setRotateKey( spep_11 + 0, 1, -108.7 -r11 );
setRotateKey( spep_11 -4 + 120, 1, -108.7 -r11 );


-- ** ダメージ表示 ** --
dealDamage( spep_11 + 0); -- ダメージ表示フレーム
endPhase( spep_11 + 120 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --登場	ef_001	45	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 89 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 89 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 89 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 89 -5, base_1, 255);
setEffAlphaKey( spep_1 + 89 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_1 + 4, 1018, "", 0, 0, 0, -1);

--振り向く
SE002 = playSeVer2( spep_1 + 12, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 89 -4;

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
-- グルド　超能力発動
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --グルド　超能力発動	ef_002	30	反転なし
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 60 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2, 0);


-- ** 音 ** --
--グルド魔法撃つ
SE004 = playSeVer2( spep_2 + 14, 1237, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_2 + 14, SE004, 107 );
SE005 = playSeVer2( spep_2 + 14, 1024, "",spep_2 + 98, 0, 38, -1);	setSeVolumeByWorkId( spep_2 + 14, SE005, 87 );
SE006 = playSeVer2( spep_2 + 14, 1264, "",spep_2 + 98, 0, 38, -1);	setSeVolumeByWorkId( spep_2 + 14, SE006, 87 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- 敵が宙に浮く　
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --敵が宙に浮く　手前	ef_003	25	反転なし
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 48 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 48 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 48 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --敵が宙に浮く　奥	ef_003_b	25	そのまま反転
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 48 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 48 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 48 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 8, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 7.9, -206.5 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 7.8, -206.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 7.7, -206.7 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 7.6, -206.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 6.5, -134.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 3.2, -127.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -6.1, -123.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -3, -120.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 9.3, -115.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 9.2, -108 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -3.5, -98.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -3.6, -91.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 5.7, -87.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 2.4, -81.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -7.2, -77 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -4.2, -74.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 2.1, -69.8 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -4.4, -63.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -22.3, -55.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -27.2, -49.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -9.5, -41.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -4.8, -32.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -24.5, -24.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -31, -17.9 , 0 );
setMoveKey( spep_3 -4 + 48, 1, -14.7, -10.1 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_3 -2 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 7, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 18, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 20, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_3 -3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 26, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 28, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 32, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 36, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 38, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 46, 1, 1.19, 1.19 );
setScaleKey( spep_3 -4 + 48, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -0.2 );
setRotateKey( spep_3 -3 + 7, 1, -0.2 );
setRotateKey( spep_3 -3 + 8, 1, -39.7 );
setRotateKey( spep_3 -4 + 48, 1, -39.7 );


-- ** 音 ** --
--敵痺れる
SE007 = playSeVer2( spep_3 + 0, 1043, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_3 + 6, 1295, "",spep_3 + 66, 0, 12, -1);
SE009 = playSeVer2( spep_3 + 6, 1252, "",spep_3 + 66, 0, 12, -1);
SE010 = playSeVer2( spep_3 + 6, 1243, "",spep_3 + 66, 0, 12, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 48 -4;

-------------------------------------------------
-- リクーム　突っ込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_04r, 0x80, -1, 0, 0, 0); --リクーム　突っ込む	ef_004_r	25	敵側
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 48 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 48 -4, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 48 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 48 -5, base_4, 255);
setEffAlphaKey( spep_4 + 48 -4, base_4, 0);


-- ** 音 ** --
--リクーム突っ込む
SE011 = playSeVer2( spep_4 + 12, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_4 + 12, 9, "",spep_4 + 104, 0, 44, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 48 -4;

-------------------------------------------------
-- リクーム　膝蹴り　
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0); --リクーム　膝蹴り　手前	ef_005_r	30	敵側
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, -1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base_5f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 60 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 60 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 60 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --リクーム　膝蹴り　奥	ef_005_b	30	そのまま反転
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 60 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 60 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 60 -4, base_5b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -4 + 60, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 42.3, -55.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 68.8, -43.2 , 0 );	--Hit
setMoveKey( spep_5 -3 + 13, 1, 68.8, -43.2 , 0 );	--Hit
setMoveKey( spep_5 -3 + 14, 1, 25.1, -70.4 , 0 );
setMoveKey( spep_5 -3 + 15, 1, 25.1, -70.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 7.8, -54.9 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 7.8, -54.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 77, -29.8 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 77, -29.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 59.4, -55.6 , 0 );
setMoveKey( spep_5 -3 + 21, 1, 59.4, -55.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 92.1, -43.2 , 0 );
setMoveKey( spep_5 -3 + 23, 1, 92.1, -43.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 50.8, -70.4 , 0 );
setMoveKey( spep_5 -3 + 25, 1, 50.8, -70.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 101.5, -46.9 , 0 );
setMoveKey( spep_5 -3 + 27, 1, 101.5, -46.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 83.9, -55.6 , 0 );
setMoveKey( spep_5 -3 + 29, 1, 83.9, -55.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 90.1, -53.1 , 0 );
setMoveKey( spep_5 -3 + 31, 1, 90.1, -53.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 98.6, -55.7 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 98.6, -55.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 102.1, -53.3 , 0 );
setMoveKey( spep_5 -3 + 35, 1, 102.1, -53.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 110.7, -55.9 , 0 );
setMoveKey( spep_5 -3 + 37, 1, 110.7, -55.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 278.2, -51.8 , 0 );
setMoveKey( spep_5 -3 + 39, 1, 278.2, -51.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 285.4, -54.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 289.9, -54.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 289.5, -49.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 297.2, -47.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 304.5, -51.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 303.9, -52.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 311.8, -55.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 314.1, -52.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 322.4, -56.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 326, -55 , 0 );
-- setMoveKey( spep_5 -5 + 60, 1, 326, -55 , 0 );

setScaleKey( spep_5 + 0, 1, 2.03, 2.03 );
setScaleKey( spep_5 -5 + 60, 1, 2.03, 2.03 );

setRotateKey( spep_5 + 0, 1, -30.5 );
setRotateKey( spep_5 -3 + 12, 1, -30.5 );	--Hit
setRotateKey( spep_5 -3 + 13, 1, -30.5 );	--Hit
setRotateKey( spep_5 -3 + 14, 1, -28.3 );
setRotateKey( spep_5 -3 + 15, 1, -28.3 );
setRotateKey( spep_5 -3 + 16, 1, -26.2 );
setRotateKey( spep_5 -3 + 17, 1, -26.2 );
setRotateKey( spep_5 -3 + 18, 1, -24 );
setRotateKey( spep_5 -3 + 19, 1, -24 );
setRotateKey( spep_5 -3 + 20, 1, -23.1 );
setRotateKey( spep_5 -3 + 21, 1, -23.1 );
setRotateKey( spep_5 -3 + 22, 1, -22.2 );
setRotateKey( spep_5 -3 + 23, 1, -22.2 );
setRotateKey( spep_5 -3 + 24, 1, -21.3 );
setRotateKey( spep_5 -3 + 25, 1, -21.3 );
setRotateKey( spep_5 -3 + 26, 1, -20.4 );
setRotateKey( spep_5 -3 + 27, 1, -20.4 );
setRotateKey( spep_5 -3 + 28, 1, -19.6 );
setRotateKey( spep_5 -3 + 29, 1, -19.6 );
setRotateKey( spep_5 -3 + 30, 1, -18.7 );
setRotateKey( spep_5 -3 + 31, 1, -18.7 );
setRotateKey( spep_5 -3 + 32, 1, -17.8 );
setRotateKey( spep_5 -3 + 33, 1, -17.8 );
setRotateKey( spep_5 -3 + 34, 1, -16.9 );
setRotateKey( spep_5 -3 + 35, 1, -16.9 );
setRotateKey( spep_5 -3 + 36, 1, -16 );
setRotateKey( spep_5 -3 + 37, 1, -16 );
setRotateKey( spep_5 -3 + 38, 1, -4 );
setRotateKey( spep_5 -3 + 39, 1, -4 );
setRotateKey( spep_5 -3 + 40, 1, 8 );
setRotateKey( spep_5 -3 + 42, 1, 9.5 );
setRotateKey( spep_5 -3 + 44, 1, 10.9 );
setRotateKey( spep_5 -3 + 46, 1, 12.4 );
setRotateKey( spep_5 -3 + 48, 1, 13.8 );
setRotateKey( spep_5 -3 + 50, 1, 15.3 );
setRotateKey( spep_5 -3 + 52, 1, 16.8 );
setRotateKey( spep_5 -3 + 54, 1, 18.2 );
setRotateKey( spep_5 -3 + 56, 1, 19.7 );
setRotateKey( spep_5 -3 + 58, 1, 21.2 );
setRotateKey( spep_5 -5 + 60, 1, 21.2 );


-- ** 音 ** --
--飛び膝蹴り
SE013 = playSeVer2( spep_5 + 4, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_5 + 10, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_5 + 10, 1153, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 60 -4;

-------------------------------------------------
-- リクーム　肘打ち　
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06r, 0x100, -1, 0, 0, 0); --リクーム　肘打ち　手前	ef_006_r	25	敵側
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 48 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, -1.0, 1.0);
setEffScaleKey( spep_6 + 48 -4, base_6f, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 48 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 48 -5, base_6f, 255);
setEffAlphaKey( spep_6 + 48 -4, base_6f, 0);

base_6b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0); --リクーム　肘打ち　奥	ef_006_b	25	そのまま反転
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 48 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 48 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 48 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 48 -5, base_6b, 255);
setEffAlphaKey( spep_6 + 48 -4, base_6b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 12, 1, 108 );

-- setMoveKey( spep_6 -3 + 0, 1, -221.4, 35.5 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -168, 35.2 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -114.4, 35.1 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -60.9, 35 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -7.3, 34.9 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 46.2, 21 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 73.6, -13.9 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 85.1, -15.2 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 78.6, -11.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 84.7, -36.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 77.4, -33.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 76.9, -52.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 71, -47.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 82.6, -49.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 82.2, -54.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 81.7, -60.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 81.3, -65.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 80.9, -71.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 80.5, -77.1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 81.5, -257.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 82.5, -437.6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 83.5, -617.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.5, -797.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 85.6, -978 , 0 );
-- setMoveKey( spep_6 -5 + 48, 1, 85.6, -978 , 0 );

setScaleKey( spep_6 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 11, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_6 -5 + 48, 1, 1.81, 1.81 );

-- setRotateKey( spep_6 -3 + 0, 1, 5 );
setRotateKey( spep_6 -2 + 2, 1, 7.8 );
setRotateKey( spep_6 -3 + 4, 1, 10.6 );
setRotateKey( spep_6 -3 + 6, 1, 13.4 );
setRotateKey( spep_6 -3 + 8, 1, 16.2 );
setRotateKey( spep_6 -3 + 11, 1, 19 );
setRotateKey( spep_6 -3 + 12, 1, 68 );
setRotateKey( spep_6 -3 + 14, 1, 69 );
setRotateKey( spep_6 -3 + 16, 1, 70 );
setRotateKey( spep_6 -3 + 18, 1, 71 );
setRotateKey( spep_6 -3 + 20, 1, 72 );
setRotateKey( spep_6 -3 + 22, 1, 73 );
setRotateKey( spep_6 -3 + 24, 1, 74 );
setRotateKey( spep_6 -3 + 26, 1, 75 );
setRotateKey( spep_6 -3 + 28, 1, 76 );
setRotateKey( spep_6 -3 + 30, 1, 77 );
setRotateKey( spep_6 -3 + 32, 1, 78 );
setRotateKey( spep_6 -3 + 34, 1, 79 );
setRotateKey( spep_6 -3 + 36, 1, 80 );
setRotateKey( spep_6 -3 + 38, 1, 77.6 );
setRotateKey( spep_6 -3 + 40, 1, 75.2 );
setRotateKey( spep_6 -3 + 42, 1, 72.8 );
setRotateKey( spep_6 -3 + 44, 1, 70.4 );
setRotateKey( spep_6 -3 + 46, 1, 68 );
-- setRotateKey( spep_6 -5 + 48, 1, 68 );


-- ** 音 ** --
--叩き落とす
SE016 = playSeVer2( spep_6 + 4, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_6 + 4, 1187, "",spep_6 + 82, 0, 54, -1);	setSeVolumeByWorkId( spep_6 + 4, SE017, 86 );
SE018 = playSeVer2( spep_6 + 10, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_7 = spep_6 + 48 -4;

-------------------------------------------------
-- リクーム　蹴り上げ
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_07r, 0x100, -1, 0, 0, 0); --リクーム　蹴り上げ　手前	ef_007_r	33	敵側
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 64 -4, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, -1.0, 1.0);
setEffScaleKey( spep_7 + 64 -4, base_7f, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 64 -4, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 64 -5, base_7f, 255);
setEffAlphaKey( spep_7 + 64 -4, base_7f, 0);

base_7b = entryEffect( spep_7 + 0, SP_07br, 0x80, -1, 0, 0, 0); --リクーム　蹴り上げ　奥	ef_007_b_r	33	敵側
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 64 -4, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, -1.0, 1.0);
setEffScaleKey( spep_7 + 64 -4, base_7b, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 64 -4, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 64 -5, base_7b, 255);
setEffAlphaKey( spep_7 + 64 -4, base_7b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -4 + 64, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7 -3 + 18, 1, 106 );
changeAnime( spep_7 -3 + 28, 1, 107 );

-- setMoveKey( spep_7 -3 + 0, 1, 116.4, 573 , 0 );
setMoveKey( spep_7 -2 + 2, 1, 111.2, 518.6 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 105.9, 420.5 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 100.7, 315 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 95.4, 205.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 90.2, 93.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 85, 11.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 79.7, -139.4 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 74.5, -242.3 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 122.6, -237.3 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 122.6, -198.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 122.6, -176.2 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 122.6, -154 , 0 );
setMoveKey( spep_7 -3 + 27, 1, 122.6, -131.8 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 53.7, 86.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 100.2, 130 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 68.7, 171 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 72.2, 96.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 118.7, 140.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 87.3, 181.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 90.8, 106.8 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 137.3, 150.5 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 143.5, 153.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 149.6, 157.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 155.8, 160.8 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 162, 164.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 341.8, 305.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 507.4, 436.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 658.5, 556.2 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 795.4, 664.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 917.9, 762.1 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 1026, 848.4 , 0 );
-- setMoveKey( spep_7 -5 + 64, 1, 1119.9, 923.7 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_7 -2 + 2, 1, 1.82, 1.82 );
setScaleKey( spep_7 -3 + 4, 1, 1.81, 1.81 );
setScaleKey( spep_7 -3 + 6, 1, 1.8, 1.8 );
setScaleKey( spep_7 -3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 10, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 12, 1, 1.78, 1.78 );
setScaleKey( spep_7 -3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_7 -3 + 17, 1, 1.76, 1.76 );
setScaleKey( spep_7 -3 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 27, 1, 1.57, 1.57 );
setScaleKey( spep_7 -3 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_7 -3 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_7 -3 + 32, 1, 0.84, 0.84 );
setScaleKey( spep_7 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_7 -3 + 36, 1, 0.89, 0.89 );
setScaleKey( spep_7 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_7 -3 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_7 -3 + 42, 1, 0.97, 0.97 );
setScaleKey( spep_7 -3 + 44, 1, 1, 1 );
setScaleKey( spep_7 -3 + 46, 1, 1.03, 1.03 );
setScaleKey( spep_7 -3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_7 -3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_7 -3 + 52, 1, 1.64, 1.64 );
setScaleKey( spep_7 -3 + 54, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 56, 1, 2.63, 2.63 );
setScaleKey( spep_7 -3 + 58, 1, 3.06, 3.06 );
setScaleKey( spep_7 -3 + 60, 1, 3.44, 3.44 );
setScaleKey( spep_7 -3 + 62, 1, 3.78, 3.78 );
-- setScaleKey( spep_7 -5 + 64, 1, 4.08, 4.08 );

setRotateKey( spep_7 -3 + 0, 1, 72.5 );
setRotateKey( spep_7 -3 + 17, 1, 72.5 );
setRotateKey( spep_7 -3 + 18, 1, 26.5 );
setRotateKey( spep_7 -3 + 20, 1, 30.8 );
setRotateKey( spep_7 -3 + 22, 1, 35 );
setRotateKey( spep_7 -3 + 24, 1, 39.3 );
setRotateKey( spep_7 -3 + 27, 1, 43.5 );
setRotateKey( spep_7 -3 + 28, 1, -9.2 );
setRotateKey( spep_7 -3 + 50, 1, -9.2 );
setRotateKey( spep_7 -3 + 52, 1, -12.4 );
setRotateKey( spep_7 -3 + 54, 1, -15.6 );
setRotateKey( spep_7 -3 + 56, 1, -18.8 );
setRotateKey( spep_7 -3 + 58, 1, -22 );
setRotateKey( spep_7 -3 + 60, 1, -25.2 );
setRotateKey( spep_7 -3 + 62, 1, -28.4 );
-- setRotateKey( spep_7 -5 + 64, 1, -31.6 );


-- ** 音 ** --
--着地
SE019 = playSeVer2( spep_7 + 8, 1108, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_7 + 8, SE019, 266 );
SE020 = playSeVer2( spep_7 + 10, 1106, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_7 + 10, SE020, 272 );

--敵落ちる
SE021 = playSeVer2( spep_7 + 12, 1008, "", 0, 0, 0, -1);

--蹴り飛ばす
SE022 = playSeVer2( spep_7 + 22, 1123, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_8 = spep_7 + 64 -4;

-------------------------------------------------
-- リクームが敵を持ち上げる　
-------------------------------------------------
-- ** エフェクト等 ** --
base_8f = entryEffect( spep_8 + 0, SP_08r, 0x100, -1, 0, 0, 0); --リクームが敵を持ち上げる　手前	ef_008_r	45	敵側
setEffMoveKey( spep_8 + 0, base_8f, 0, 0 , 0);
setEffMoveKey( spep_8 + 88 -4, base_8f, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8f, -1.0, 1.0);
setEffScaleKey( spep_8 + 88 -4, base_8f, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8f, 0);
setEffRotateKey( spep_8 + 88 -4, base_8f, 0);
setEffAlphaKey( spep_8 + 0, base_8f, 255);
setEffAlphaKey( spep_8 + 88 -5, base_8f, 255);
setEffAlphaKey( spep_8 + 88 -4, base_8f, 0);

base_8b = entryEffect( spep_8 + 0, SP_08br, 0x80, -1, 0, 0, 0); --リクームが敵を持ち上げる　奥	ef_008_b_r	45	敵側
setEffMoveKey( spep_8 + 0, base_8b, 0, 0 , 0);
setEffMoveKey( spep_8 + 88 -4, base_8b, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base_8b, -1.0, 1.0);
setEffScaleKey( spep_8 + 88 -4, base_8b, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base_8b, 0);
setEffRotateKey( spep_8 + 88 -4, base_8b, 0);
setEffAlphaKey( spep_8 + 0, base_8b, 255);
setEffAlphaKey( spep_8 + 88 -5, base_8b, 255);
setEffAlphaKey( spep_8 + 88 -4, base_8b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -4 + 88, 1, 0 );

changeAnime( spep_8 + 0, 1, 5 );
changeAnime( spep_8 -3 + 28, 1, 6 );
changeAnime( spep_8 -3 + 66, 1, 106 );

-- setMoveKey( spep_8 -3 + 0, 1, -388.1, -405.8 , 0 );
setMoveKey( spep_8 -2 + 2, 1, -360.1, -374 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -330.7, -340.5 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -299.7, -305.6 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -267.3, -269.2 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -233.4, -231.4 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -197.9, -192 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -161.1, -151.2 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -122.7, -108.8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -82.8, -64.9 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -41.4, -19.6 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 1.4, 27.3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 45.8, 75.5 , 0 );
setMoveKey( spep_8 -3 + 27, 1, 91.7, 125.4 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 112.9, 163.6 , 0 );	--catch
setMoveKey( spep_8 -3 + 29, 1, 112.9, 163.6 , 0 );	--catch
setMoveKey( spep_8 -3 + 30, 1, 78.1, 145 , 0 );
setMoveKey( spep_8 -3 + 31, 1, 78.1, 145 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 75.3, 197.5 , 0 );
setMoveKey( spep_8 -3 + 33, 1, 75.3, 197.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 122.5, 156.7 , 0 );
setMoveKey( spep_8 -3 + 35, 1, 122.5, 156.7 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 99.4, 213.5 , 0 );
setMoveKey( spep_8 -3 + 37, 1, 99.4, 213.5 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 72.9, 93.2 , 0 );
setMoveKey( spep_8 -3 + 39, 1, 72.9, 93.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 38.3, 60.2 , 0 );
setMoveKey( spep_8 -3 + 41, 1, 38.3, 60.2 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 32.9, 4.2 , 0 );
setMoveKey( spep_8 -3 + 43, 1, 32.9, 4.2 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 28.3, -55.5 , 0 );
setMoveKey( spep_8 -3 + 45, 1, 28.3, -55.5 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 24.5, -118.9 , 0 );
setMoveKey( spep_8 -3 + 47, 1, 24.5, -118.9 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 20.6, -186.1 , 0 );
setMoveKey( spep_8 -3 + 49, 1, 20.6, -186.1 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 18.9, -256.4 , 0 );
setMoveKey( spep_8 -3 + 51, 1, 18.9, -256.4 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 18.4, -329.5 , 0 );	--turn
setMoveKey( spep_8 -3 + 53, 1, 18.4, -329.5 , 0 );	--turn
setMoveKey( spep_8 -3 + 54, 1, -18.7, -229.4 , 0 );
setMoveKey( spep_8 -3 + 55, 1, -18.7, -229.4 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 9.5, -201.2 , 0 );
setMoveKey( spep_8 -3 + 57, 1, 9.5, -201.2 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 33.1, -170.2 , 0 );
setMoveKey( spep_8 -3 + 59, 1, 33.1, -170.2 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 212.9, -66.9 , 0 );
setMoveKey( spep_8 -3 + 61, 1, 212.9, -66.9 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 246.1, -54.2 , 0 );
setMoveKey( spep_8 -3 + 65, 1, 277.8, -39 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 269.1, 338 , 0 );
setMoveKey( spep_8 -3 + 67, 1, 269.1, 338 , 0 );
setMoveKey( spep_8 -3 + 68, 1, 250.4, 336 , 0 );
setMoveKey( spep_8 -3 + 69, 1, 250.4, 336 , 0 );
setMoveKey( spep_8 -3 + 70, 1, 231.8, 333.9 , 0 );
setMoveKey( spep_8 -3 + 71, 1, 231.8, 333.9 , 0 );
setMoveKey( spep_8 -3 + 72, 1, 213.4, 331.6 , 0 );
setMoveKey( spep_8 -3 + 73, 1, 213.4, 331.6 , 0 );
setMoveKey( spep_8 -3 + 74, 1, 195, 329.1 , 0 );
setMoveKey( spep_8 -3 + 75, 1, 195, 329.1 , 0 );
setMoveKey( spep_8 -3 + 76, 1, 176.9, 326.5 , 0 );
setMoveKey( spep_8 -3 + 77, 1, 176.9, 326.5 , 0 );
setMoveKey( spep_8 -3 + 78, 1, 158.8, 323.6 , 0 );
setMoveKey( spep_8 -3 + 79, 1, 158.8, 323.6 , 0 );
setMoveKey( spep_8 -3 + 80, 1, 140.9, 320.6 , 0 );
setMoveKey( spep_8 -3 + 81, 1, 140.9, 320.6 , 0 );
setMoveKey( spep_8 -3 + 82, 1, 135.5, 301 , 0 );
setMoveKey( spep_8 -3 + 83, 1, 135.5, 301 , 0 );
setMoveKey( spep_8 -3 + 84, 1, 130.1, 281.3 , 0 );
setMoveKey( spep_8 -3 + 85, 1, 130.1, 281.3 , 0 );
setMoveKey( spep_8 -3 + 86, 1, 130.1, 258.6 , 0 );
-- setMoveKey( spep_8 -5 + 88, 1, 130.1, 235.9 , 0 );

-- setScaleKey( spep_8 -3 + 0, 1, 5.45, 5.45 );
setScaleKey( spep_8 -2 + 2, 1, 5.23, 5.23 );
setScaleKey( spep_8 -3 + 4, 1, 4.99, 4.99 );
setScaleKey( spep_8 -3 + 6, 1, 4.75, 4.75 );
setScaleKey( spep_8 -3 + 8, 1, 4.49, 4.49 );
setScaleKey( spep_8 -3 + 10, 1, 4.22, 4.22 );
setScaleKey( spep_8 -3 + 12, 1, 3.94, 3.94 );
setScaleKey( spep_8 -3 + 14, 1, 3.65, 3.65 );
setScaleKey( spep_8 -3 + 16, 1, 3.34, 3.34 );
setScaleKey( spep_8 -3 + 18, 1, 3.02, 3.02 );
setScaleKey( spep_8 -3 + 20, 1, 2.69, 2.69 );
setScaleKey( spep_8 -3 + 22, 1, 2.35, 2.35 );
setScaleKey( spep_8 -3 + 24, 1, 2, 2 );
setScaleKey( spep_8 -3 + 27, 1, 1.63, 1.63 );
setScaleKey( spep_8 -3 + 28, 1, 1.596, 1.596 );	--catch
setScaleKey( spep_8 -3 + 29, 1, 1.596, 1.596 );	--catch
setScaleKey( spep_8 -3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_8 -3 + 31, 1, 1.62, 1.62 );
setScaleKey( spep_8 -3 + 32, 1, 1.644, 1.644 );
setScaleKey( spep_8 -3 + 33, 1, 1.644, 1.644 );
setScaleKey( spep_8 -3 + 34, 1, 1.668, 1.668 );
setScaleKey( spep_8 -3 + 35, 1, 1.668, 1.668 );
setScaleKey( spep_8 -3 + 36, 1, 1.692, 1.692 );
setScaleKey( spep_8 -3 + 37, 1, 1.692, 1.692 );
setScaleKey( spep_8 -3 + 38, 1, 1.956, 1.956 );
setScaleKey( spep_8 -3 + 39, 1, 1.956, 1.956 );
setScaleKey( spep_8 -3 + 40, 1, 2.232, 2.232 );
setScaleKey( spep_8 -3 + 41, 1, 2.232, 2.232 );
setScaleKey( spep_8 -3 + 42, 1, 2.544, 2.544 );
setScaleKey( spep_8 -3 + 43, 1, 2.544, 2.544 );
setScaleKey( spep_8 -3 + 44, 1, 2.868, 2.868 );
setScaleKey( spep_8 -3 + 45, 1, 2.868, 2.868 );
setScaleKey( spep_8 -3 + 46, 1, 3.216, 3.216 );
setScaleKey( spep_8 -3 + 47, 1, 3.216, 3.216 );
setScaleKey( spep_8 -3 + 48, 1, 3.564, 3.564 );
setScaleKey( spep_8 -3 + 49, 1, 3.564, 3.564 );
setScaleKey( spep_8 -3 + 50, 1, 3.936, 3.936 );
setScaleKey( spep_8 -3 + 51, 1, 3.936, 3.936 );
setScaleKey( spep_8 -3 + 52, 1, 4.32, 4.32 );	--turn
setScaleKey( spep_8 -3 + 53, 1, 4.32, 4.32 );	--turn
setScaleKey( spep_8 -3 + 54, 1, 3.792, 3.792 );
setScaleKey( spep_8 -3 + 55, 1, 3.792, 3.792 );
setScaleKey( spep_8 -3 + 56, 1, 3.888, 3.888 );
setScaleKey( spep_8 -3 + 57, 1, 3.888, 3.888 );
setScaleKey( spep_8 -3 + 58, 1, 3.984, 3.984 );
setScaleKey( spep_8 -3 + 59, 1, 3.984, 3.984 );
setScaleKey( spep_8 -3 + 60, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 65, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 66, 1, 4.224, 4.224 );
setScaleKey( spep_8 -3 + 67, 1, 4.224, 4.224 );
setScaleKey( spep_8 -3 + 68, 1, 4.212, 4.212 );
setScaleKey( spep_8 -3 + 69, 1, 4.212, 4.212 );
setScaleKey( spep_8 -3 + 70, 1, 4.188, 4.188 );
setScaleKey( spep_8 -3 + 71, 1, 4.188, 4.188 );
setScaleKey( spep_8 -3 + 72, 1, 4.176, 4.176 );
setScaleKey( spep_8 -3 + 73, 1, 4.176, 4.176 );
setScaleKey( spep_8 -3 + 74, 1, 4.152, 4.152 );
setScaleKey( spep_8 -3 + 75, 1, 4.152, 4.152 );
setScaleKey( spep_8 -3 + 76, 1, 4.14, 4.14 );
setScaleKey( spep_8 -3 + 77, 1, 4.14, 4.14 );
setScaleKey( spep_8 -3 + 78, 1, 4.128, 4.128 );
setScaleKey( spep_8 -3 + 79, 1, 4.128, 4.128 );
setScaleKey( spep_8 -3 + 80, 1, 4.104, 4.104 );
setScaleKey( spep_8 -3 + 81, 1, 4.104, 4.104 );
setScaleKey( spep_8 -3 + 82, 1, 4.092, 4.092 );
setScaleKey( spep_8 -3 + 83, 1, 4.092, 4.092 );
setScaleKey( spep_8 -3 + 84, 1, 4.068, 4.068 );
setScaleKey( spep_8 -3 + 85, 1, 4.068, 4.068 );
setScaleKey( spep_8 -5 + 88, 1, 4.068, 4.068 );

setRotateKey( spep_8 + 0, 1, 56.3 );
setRotateKey( spep_8 -3 + 27, 1, 56.3 );
setRotateKey( spep_8 -3 + 28, 1, 20.1 +54.8 );	--catch
setRotateKey( spep_8 -3 + 29, 1, 20.1 +54.8 );	--catch
setRotateKey( spep_8 -3 + 30, 1, 21.3 +56.8);
setRotateKey( spep_8 -3 + 31, 1, 21.3 +56.8);
setRotateKey( spep_8 -3 + 32, 1, 22.6 +58.7);
setRotateKey( spep_8 -3 + 33, 1, 22.6 +58.7);
setRotateKey( spep_8 -3 + 34, 1, 23.9 +60.6 );
setRotateKey( spep_8 -3 + 35, 1, 23.9 +60.6 );
setRotateKey( spep_8 -3 + 36, 1, 25.2 +62.5 );
setRotateKey( spep_8 -3 + 37, 1, 25.2 +62.5 );
setRotateKey( spep_8 -3 + 38, 1, 26.4 +58.0);
setRotateKey( spep_8 -3 + 39, 1, 26.4 +58.0);
setRotateKey( spep_8 -3 + 40, 1, 27.7 +53.5);
setRotateKey( spep_8 -3 + 41, 1, 27.7 +53.5);
setRotateKey( spep_8 -3 + 42, 1, 29.0 +49.0);
setRotateKey( spep_8 -3 + 43, 1, 29.0 +49.0);
setRotateKey( spep_8 -3 + 44, 1, 30.3 +44.5);
setRotateKey( spep_8 -3 + 45, 1, 30.3 +44.5);
setRotateKey( spep_8 -3 + 46, 1, 31.5 +40.0);
setRotateKey( spep_8 -3 + 47, 1, 31.5 +40.0);
setRotateKey( spep_8 -3 + 48, 1, 31.5 +35.5);
setRotateKey( spep_8 -3 + 49, 1, 31.5 +35.5);
setRotateKey( spep_8 -3 + 50, 1, 31.5 +31.0);
setRotateKey( spep_8 -3 + 51, 1, 31.5 +31.0);
setRotateKey( spep_8 -3 + 52, 1, 31.5 +26.5);	--turn
setRotateKey( spep_8 -3 + 53, 1, 31.5 +26.5);	--turn
setRotateKey( spep_8 -3 + 54, 1, 32.2 );
setRotateKey( spep_8 -3 + 55, 1, 32.2 );
setRotateKey( spep_8 -3 + 56, 1, 18.1 );
setRotateKey( spep_8 -3 + 57, 1, 18.1 );
setRotateKey( spep_8 -3 + 58, 1, 4 );
setRotateKey( spep_8 -3 + 59, 1, 4 );
setRotateKey( spep_8 -3 + 60, 1, -59.2 );
setRotateKey( spep_8 -3 + 61, 1, -59.2 );
setRotateKey( spep_8 -3 + 62, 1, -68.1 );
setRotateKey( spep_8 -3 + 65, 1, -77 );
setRotateKey( spep_8 -3 + 66, 1, 113 );
setRotateKey( spep_8 -3 + 67, 1, 113 );
setRotateKey( spep_8 -3 + 68, 1, 111.8 );
setRotateKey( spep_8 -3 + 69, 1, 111.8 );
setRotateKey( spep_8 -3 + 70, 1, 110.6 );
setRotateKey( spep_8 -3 + 71, 1, 110.6 );
setRotateKey( spep_8 -3 + 72, 1, 109.4 );
setRotateKey( spep_8 -3 + 73, 1, 109.4 );
setRotateKey( spep_8 -3 + 74, 1, 108.3 );
setRotateKey( spep_8 -3 + 75, 1, 108.3 );
setRotateKey( spep_8 -3 + 76, 1, 107.1 );
setRotateKey( spep_8 -3 + 77, 1, 107.1 );
setRotateKey( spep_8 -3 + 78, 1, 105.9 );
setRotateKey( spep_8 -3 + 79, 1, 105.9 );
setRotateKey( spep_8 -3 + 80, 1, 104.7 );
setRotateKey( spep_8 -3 + 81, 1, 104.7 );
setRotateKey( spep_8 -3 + 82, 1, 104.4 );
setRotateKey( spep_8 -3 + 83, 1, 104.4 );
setRotateKey( spep_8 -3 + 84, 1, 104.1 );
setRotateKey( spep_8 -3 + 85, 1, 104.1 );
setRotateKey( spep_8 -5 + 88, 1, 104.1 );


-- ** 音 ** --
--敵掴む
SE023 = playSeVer2( spep_8 + 24, 1006, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_8 + 26, 1012, "", 0, 0, 0, -1);

--持ち上がる
SE025 = playSeVer2( spep_8 + 52, 1116, "",spep_8 + 90, 0, 18, -1);
SE026 = playSeVer2( spep_8 + 52, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_9 = spep_8 + 88 -4;

-------------------------------------------------
-- 地面に向かう　
-------------------------------------------------
-- ** エフェクト等 ** --
base_9f = entryEffect( spep_9 + 0, SP_09r, 0x100, -1, 0, 0, 0); --地面に向かう　手前	ef_009_r	25	敵側
setEffMoveKey( spep_9 + 0, base_9f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base_9f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9f, -1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base_9f, -1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9f, 0);
setEffRotateKey( spep_9 + 48 -4, base_9f, 0);
setEffAlphaKey( spep_9 + 0, base_9f, 255);
setEffAlphaKey( spep_9 + 48 -5, base_9f, 255);
setEffAlphaKey( spep_9 + 48 -4, base_9f, 0);

base_9b = entryEffect( spep_9 + 0, SP_09b, 0x80, -1, 0, 0, 0); --地面に向かう　奥	ef_009_b	25	味方側
setEffMoveKey( spep_9 + 0, base_9b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base_9b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base_9b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base_9b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base_9b, 0);
setEffRotateKey( spep_9 + 48 -4, base_9b, 0);
setEffAlphaKey( spep_9 + 0, base_9b, 255);
setEffAlphaKey( spep_9 + 48 -5, base_9b, 255);
setEffAlphaKey( spep_9 + 48 -4, base_9b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 106 );

-- setMoveKey( spep_9 -3 + 0, 1, 109.6, 696.8 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 93.4, 616.2 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 113, 526.4 , 0 );
setMoveKey( spep_9 -3 + 5, 1, 113, 526.4 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 107.6, 436.9 , 0 );
setMoveKey( spep_9 -3 + 7, 1, 107.6, 436.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 111.7, 346.7 , 0 );
setMoveKey( spep_9 -3 + 9, 1, 111.7, 346.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 121.9, 250.5 , 0 );
setMoveKey( spep_9 -3 + 11, 1, 121.9, 250.5 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 125.4, 164.3 , 0 );
setMoveKey( spep_9 -3 + 13, 1, 125.4, 164.3 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 116.6, 96.8 , 0 );
setMoveKey( spep_9 -3 + 15, 1, 116.6, 96.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 117.2, 2.9 , 0 );
setMoveKey( spep_9 -3 + 17, 1, 117.2, 2.9 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 130.1, -84.9 , 0 );
setMoveKey( spep_9 -3 + 19, 1, 130.1, -84.9 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 136.4, -78.9 , 0 );
setMoveKey( spep_9 -3 + 21, 1, 136.4, -78.9 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 124.1, -91.6 , 0 );
setMoveKey( spep_9 -3 + 23, 1, 124.1, -91.6 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 118, -91.7 , 0 );
setMoveKey( spep_9 -3 + 25, 1, 118, -91.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 124.4, -91.8 , 0 );
setMoveKey( spep_9 -3 + 27, 1, 124.4, -91.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 125.9, -95.4 , 0 );
setMoveKey( spep_9 -3 + 29, 1, 125.9, -95.4 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 115, -111.2 , 0 );
setMoveKey( spep_9 -3 + 31, 1, 115, -111.2 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 116.8, -127 , 0 );
setMoveKey( spep_9 -3 + 33, 1, 116.8, -127 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 124.8, -130.5 , 0 );
setMoveKey( spep_9 -3 + 35, 1, 124.8, -130.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 118.6, -133.9 , 0 );
setMoveKey( spep_9 -3 + 37, 1, 118.6, -133.9 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 118.5, -149.6 , 0 );
setMoveKey( spep_9 -3 + 39, 1, 118.5, -149.6 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 126.4, -165.4 , 0 );
setMoveKey( spep_9 -3 + 41, 1, 126.4, -165.4 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 121.8, -168.7 , 0 );
setMoveKey( spep_9 -3 + 43, 1, 121.8, -168.7 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 115.6, -186 , 0 );
setMoveKey( spep_9 -3 + 45, 1, 115.6, -186 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 121.9, -190.9 , 0 );
-- setMoveKey( spep_9 -5 + 48, 1, 123.4, -194.1 , 0 );

-- setScaleKey( spep_9 -3 + 0, 1, 4.96, 4.96 );
setScaleKey( spep_9 -2 + 2, 1, 4.55, 4.54 );
setScaleKey( spep_9 -3 + 4, 1, 4.13, 4.13 );
setScaleKey( spep_9 -3 + 5, 1, 4.13, 4.13 );
setScaleKey( spep_9 -3 + 6, 1, 3.71, 3.71 );
setScaleKey( spep_9 -3 + 7, 1, 3.71, 3.71 );
setScaleKey( spep_9 -3 + 8, 1, 3.28, 3.28 );
setScaleKey( spep_9 -3 + 9, 1, 3.28, 3.28 );
setScaleKey( spep_9 -3 + 10, 1, 2.86, 2.86 );
setScaleKey( spep_9 -3 + 11, 1, 2.86, 2.86 );
setScaleKey( spep_9 -3 + 12, 1, 2.44, 2.44 );
setScaleKey( spep_9 -3 + 13, 1, 2.44, 2.44 );
setScaleKey( spep_9 -3 + 14, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 15, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 16, 1, 1.59, 1.59 );
setScaleKey( spep_9 -3 + 17, 1, 1.59, 1.59 );
setScaleKey( spep_9 -3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 19, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 20, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 21, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 23, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 25, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 27, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 28, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 29, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 31, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 32, 1, 0.82, 0.82 );
setScaleKey( spep_9 -3 + 33, 1, 0.82, 0.82 );
setScaleKey( spep_9 -3 + 34, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 35, 1, 0.78, 0.78 );
setScaleKey( spep_9 -3 + 36, 1, 0.73, 0.73 );
setScaleKey( spep_9 -3 + 37, 1, 0.73, 0.73 );
setScaleKey( spep_9 -3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 39, 1, 0.68, 0.68 );
setScaleKey( spep_9 -3 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_9 -3 + 41, 1, 0.63, 0.63 );
setScaleKey( spep_9 -3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 43, 1, 0.58, 0.58 );
setScaleKey( spep_9 -3 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_9 -3 + 45, 1, 0.53, 0.53 );
setScaleKey( spep_9 -3 + 46, 1, 0.48, 0.48 );
-- setScaleKey( spep_9 -5 + 48, 1, 0.43, 0.43 );

-- setRotateKey( spep_9 -3 + 0, 1, 131.2 );
setRotateKey( spep_9 -2 + 2, 1, 130.9 );
setRotateKey( spep_9 -3 + 4, 1, 130.7 );
setRotateKey( spep_9 -3 + 6, 1, 130.5 );
setRotateKey( spep_9 -3 + 8, 1, 130.2 );
setRotateKey( spep_9 -3 + 10, 1, 130 );
setRotateKey( spep_9 -3 + 12, 1, 129.7 );
setRotateKey( spep_9 -3 + 14, 1, 129.5 );
setRotateKey( spep_9 -3 + 16, 1, 129.3 );
setRotateKey( spep_9 -3 + 18, 1, 129 );
setRotateKey( spep_9 -3 + 20, 1, 128.8 );
setRotateKey( spep_9 -3 + 22, 1, 128.5 );
setRotateKey( spep_9 -3 + 24, 1, 128.3 );
setRotateKey( spep_9 -3 + 26, 1, 128.1 );
setRotateKey( spep_9 -3 + 28, 1, 127.8 );
setRotateKey( spep_9 -3 + 30, 1, 127.6 );
setRotateKey( spep_9 -3 + 32, 1, 127.3 );
setRotateKey( spep_9 -3 + 34, 1, 127.1 );
setRotateKey( spep_9 -3 + 36, 1, 126.9 );
setRotateKey( spep_9 -3 + 38, 1, 126.6 );
setRotateKey( spep_9 -3 + 40, 1, 126.4 );
setRotateKey( spep_9 -3 + 42, 1, 126.1 );
setRotateKey( spep_9 -3 + 44, 1, 125.9 );
setRotateKey( spep_9 -3 + 46, 1, 125.7 );
-- setRotateKey( spep_9 -5 + 48, 1, 125.4 );


-- ** 音 ** --
--敵と共に落ちる
SE027 = playSeVer2( spep_9 + 0, 1183, "",spep_9 + 74, 0, 12, -1);
SE028 = playSeVer2( spep_9 + 0, 1121, "",spep_9 + 74, 0, 12, -1);
SE029 = playSeVer2( spep_9 + 0, 1314, "",spep_9 + 74, 0, 12, -1);


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 地面に激突　
-------------------------------------------------
-- ** エフェクト等 ** --
base_10f = entryEffect( spep_10 + 0, SP_10r, 0x100, -1, 0, 0, 0); --地面に激突　手前	ef_010_r	35	敵側
setEffMoveKey( spep_10 + 0, base_10f, 0, 0 , 0);
setEffMoveKey( spep_10 + 68 -4, base_10f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10f, -1.0, 1.0);
setEffScaleKey( spep_10 + 68 -4, base_10f, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10f, 0);
setEffRotateKey( spep_10 + 68 -4, base_10f, 0);
setEffAlphaKey( spep_10 + 0, base_10f, 255);
setEffAlphaKey( spep_10 + 68 -5, base_10f, 255);
setEffAlphaKey( spep_10 + 68 -4, base_10f, 0);

base_10b = entryEffect( spep_10 + 0, SP_10b, 0x80, -1, 0, 0, 0); --地面に激突　奥	ef_010_b	35	そのまま反転
setEffMoveKey( spep_10 + 0, base_10b, 0, 0 , 0);
setEffMoveKey( spep_10 + 68 -4, base_10b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base_10b, 1.0, 1.0);
setEffScaleKey( spep_10 + 68 -4, base_10b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base_10b, 0);
setEffRotateKey( spep_10 + 68 -4, base_10b, 0);
setEffAlphaKey( spep_10 + 0, base_10b, 255);
setEffAlphaKey( spep_10 + 68 -5, base_10b, 255);
setEffAlphaKey( spep_10 + 68 -4, base_10b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 16, 1, 0 );

setBlendColor( spep_10 + 0, 1, 2, 0, 0, 0, 1.0);
setBlendColor( spep_10 -3 + 16, 1, 2, 0, 0, 0, 0.0);

changeAnime( spep_10 + 0, 1, 106 );

-- setMoveKey( spep_10 -3 + 0, 1, -343.4, 698.4 , 0 );
setMoveKey( spep_10 -2 + 2, 1, -321.2, 613.9 , 0 );
setMoveKey( spep_10 -3 + 4, 1, -276.9, 498.8 , 0 );
setMoveKey( spep_10 -3 + 5, 1, -276.9, 498.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -228.9, 378.7 , 0 );
setMoveKey( spep_10 -3 + 7, 1, -228.9, 378.7 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -179, 255.8 , 0 );
setMoveKey( spep_10 -3 + 9, 1, -179, 255.8 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -127.8, 131.2 , 0 );
setMoveKey( spep_10 -3 + 11, 1, -127.8, 131.2 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -75.5, 5.3 , 0 );
setMoveKey( spep_10 -3 + 13, 1, -75.5, 5.3 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -22.6, -121.7 , 0 );
setMoveKey( spep_10 -3 + 15, 1, -22.6, -121.7 , 0 );

setScaleKey( spep_10 + 0, 1, 0.64, 0.64 );
setScaleKey( spep_10 -3 + 15, 1, 0.64, 0.64 );

setRotateKey( spep_10 + 0, 1, 120.2 );
setRotateKey( spep_10 -3 + 15, 1, 120.2 );


-- ** 音 ** --
--地面爆発
SE030 = playSeVer2( spep_10 + 14, 1159, "",spep_10 + 184, 0, 68, -1);


-- ** 次の準備 ** --
spep_11 = spep_10 + 68 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_11f = entryEffect( spep_11 + 0, SP_11, 0x100, -1, 0, 0, 0); --フィニッシュ　手前	ef_011	60	反転なし
setEffMoveKey( spep_11 + 0, base_11f, 0, 0 , 0);
setEffMoveKey( spep_11 + 120 -4, base_11f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11f, -1.0, 1.0);
setEffScaleKey( spep_11 + 120 -4, base_11f, -1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11f, 0);
setEffRotateKey( spep_11 + 120 -4, base_11f, 0);
setEffAlphaKey( spep_11 + 0, base_11f, 255);
setEffAlphaKey( spep_11 + 120 -4, base_11f, 255);

base_11b = entryEffect( spep_11 + 0, SP_11b, 0x80, -1, 0, 0, 0); --フィニッシュ　奥	ef_011_b	60	反転なし
setEffMoveKey( spep_11 + 0, base_11b, 0, 0 , 0);
setEffMoveKey( spep_11 + 120 -4, base_11b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base_11b, -1.0, 1.0);
setEffScaleKey( spep_11 + 120 -4, base_11b, -1.0, 1.0);
setEffRotateKey( spep_11 + 0, base_11b, 0);
setEffRotateKey( spep_11 + 120 -4, base_11b, 0);
setEffAlphaKey( spep_11 + 0, base_11b, 255);
setEffAlphaKey( spep_11 + 120 -4, base_11b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -4 + 120, 1, 0 );

changeAnime( spep_11 -3 + 0, 1, 6 );

a11 = 14;
-- setMoveKey( spep_11 -3 + 0, 1, -11.5, -414.1 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -11.5, -423.7 +a11 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -11.5, -433.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 5, 1, -11.5, -433.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -11.5, -442.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 7, 1, -11.5, -442.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -11.5, -452.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 9, 1, -11.5, -452.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -11.5, -461.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 11, 1, -11.5, -461.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -11.5, -471.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 13, 1, -11.5, -471.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -11.5, -481 +a11 , 0 );
setMoveKey( spep_11 -3 + 15, 1, -11.5, -481 +a11 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -11.5, -490.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 17, 1, -11.5, -490.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -11.5, -500.1 +a11 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -11.5, -501.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -11.5, -503 +a11 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -11.5, -504.5 +a11 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -11.5, -505.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -11.5, -507.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -11.5, -508.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -11.5, -510.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -11.5, -511.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -11.5, -513.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -11.5, -514.7 +a11 , 0 );
setMoveKey( spep_11 -3 + 40, 1, -11.5, -516.2 +a11 , 0 );
setMoveKey( spep_11 -3 + 42, 1, -11.5, -517.6 +a11 , 0 );
setMoveKey( spep_11 -3 + 44, 1, -11.5, -519.1 +a11 , 0 );
setMoveKey( spep_11 -3 + 46, 1, -11.5, -520.5 +a11 , 0 );
setMoveKey( spep_11 -3 + 48, 1, -11.5, -522 +a11 , 0 );
setMoveKey( spep_11 -3 + 50, 1, -11.5, -523.4 +a11 , 0 );
setMoveKey( spep_11 -3 + 52, 1, -11.5, -524.9 +a11 , 0 );
setMoveKey( spep_11 -3 + 54, 1, -11.5, -526.3 +a11 , 0 );
setMoveKey( spep_11 -3 + 56, 1, -11.5, -527.8 +a11 , 0 );
setMoveKey( spep_11 -3 + 58, 1, -11.5, -529.3 +a11 , 0 );
setMoveKey( spep_11 -4 + 120, 1, -11.5, -529.3 +a11 , 0 );

s11 = 0.7;
setScaleKey( spep_11 + 0, 1, 1.62 +s11, 1.62 +s11 );
setScaleKey( spep_11 -4 + 120, 1, 1.62 +s11, 1.62 +s11 );

r11 = 0;
setRotateKey( spep_11 + 0, 1, -108.7 -r11 );
setRotateKey( spep_11 -4 + 120, 1, -108.7 -r11 );


-- ** ダメージ表示 ** --
dealDamage( spep_11 + 0); -- ダメージ表示フレーム
endPhase( spep_11 + 120 -8); -- 終了フレーム

end
