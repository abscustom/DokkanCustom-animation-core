-- 1024600：UR_ゴクウブラック_戦闘の記憶
-- sp_effect_a2_00180
-- sp2386

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
SP_01 = 160073;	-- 待機	ef_001
SP_01b = 160166;	-- 待機　奥	ef_001_back
SP_02 = 160075;	-- 連続攻撃　手前	ef_002
SP_02b = 160076;	-- 連続攻撃　奥	ef_002_back
SP_03 = 160079;	-- 激突	ef_003
SP_04 = 160081;	-- 着弾	ef_004

--エフェクト(てき)
SP_01r = 160074;	-- 待機　敵側	ef_001_re
SP_01br = 160167;	-- 待機　敵側　奥	ef_001_re_back
SP_02r = 160077;	-- 連続攻撃　敵側　手前	ef_002_re
SP_02br = 160078;	-- 連続攻撃　敵側　奥	ef_002_back_re
SP_03r = 160080;	-- 激突　敵側	ef_003_re
SP_04r = 160082;	-- 着弾　敵側	ef_004_re


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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 待機	ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 236 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 236 -4, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 236 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 236 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 236 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 待機　奥	ef_001_back
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 236 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 236 -4, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 236 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 236 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 236 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 88, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

mx_0 = -40;
-- setMoveKey( spep_0 -3 + 0, 1, 120.9, 62.9 , 0 );
setMoveKey( spep_0 -2 + 2, 1, 121.8 + mx_0, 62.8 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 122.7 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 122.7 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 123.5 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 123.5 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 124.4 + mx_0, 62.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 124.4 + mx_0, 62.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 125.3 + mx_0, 62.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 126.2 + mx_0, 62.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 127.1 + mx_0, 62.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 128.0 + mx_0, 62.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 128.9 + mx_0, 62.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 129.7 + mx_0, 62.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 130.6 + mx_0, 62.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 131.5 + mx_0, 62.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 132.4 + mx_0, 62 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 133.3 + mx_0, 61.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 134.2 + mx_0, 61.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 135.0 + mx_0, 61.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 135.9 + mx_0, 61.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 136.8 + mx_0, 61.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 137.7 + mx_0, 61.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 138.6 + mx_0, 61.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 139.5 + mx_0, 61.4 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 140.4 + mx_0, 61.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 141.2 + mx_0, 61.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 142.1 + mx_0, 61.2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 143.0 + mx_0, 61.1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 143.9 + mx_0, 61.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 144.8 + mx_0, 61 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 145.7 + mx_0, 60.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 146.6 + mx_0, 60.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 147.4 + mx_0, 60.8 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 148.3 + mx_0, 60.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 149.2 + mx_0, 60.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 150.1 + mx_0, 60.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 151.0 + mx_0, 60.5 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 151.9 + mx_0, 60.4 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 152.7 + mx_0, 60.4 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 153.6 + mx_0, 60.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 154.5 + mx_0, 60.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 155.4 + mx_0, 60.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 156.3 + mx_0, 60.1 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 157.2 + mx_0, 60 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 158.1 + mx_0, 60 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 158.9 + mx_0, 59.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 158.9 + mx_0, 59.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 3, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 5, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 88, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 88, 1, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 98;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -80;

ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 +cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 +cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 +cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 +cx, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 220, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 220, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 220, 0, 20, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 76, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 74 );

--顔カットイン
SE005 = playSeVer2( spep_0 + 102, 1018, "", 0, 0, 0, -1);

--オーラ弾ける
SE006 = playSeVer2( spep_0 + 182, 1052, "",spep_0 + 222, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 182, SE006, 69 );

--ダッシュ
SE007 = playSeVer2( spep_0 + 206, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 206, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE008, 78 );
SE009 = playSeVer2( spep_0 + 206, 1277, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
spep_1 = spep_0 + 236 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続攻撃　手前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 264 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 264 -4, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 264 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 264 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 264 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連続攻撃　奥	ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 264 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 264 -4, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 264 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 264 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 264 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 264 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 116, 1, 0 );
setDisp( spep_1 -3 + 152, 1, 1 );
setDisp( spep_1 -3 + 238, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 8, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );
changeAnime( spep_1 -3 + 152, 1, 108 );

-- setMoveKey( spep_1 -3 + 0, 1, -90.6, 14.5 , 0 );
setMoveKey( spep_1 -2 + 2, 1, -91.3, 14.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -96.5, 14.5 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -110.4, 14.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 95.4, 104 , 0 );	-- impact_1(238)
setMoveKey( spep_1 -3 + 9, 1, 95.4, 104 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -47.6, -3 , 0 );
setMoveKey( spep_1 -3 + 11, 1, -47.6, -3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -69.5, 85.1 , 0 );
setMoveKey( spep_1 -3 + 13, 1, -69.5, 85.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -44.2, 28.1 , 0 );
setMoveKey( spep_1 -3 + 15, 1, -44.2, 28.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -106.1, 51.1 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -106.1, 51.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -8.7, 97.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 9.2, 59.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 6, 71.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 14.7, 71.5 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 23.1, 71.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 31, 71 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 38.7, 70.7 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 38.7, 70.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 128.3, 68.5 , 0 );	-- impact_2(262)
setMoveKey( spep_1 -3 + 33, 1, 128.3, 68.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 98, 117.3 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 98, 117.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -6.7, 14.2 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -6.7, 14.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 80, 79.4 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 80, 79.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 96.3, 61.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 114.2, 75.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 116.4, 74.1 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 116.4, 74.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 186.6, 132.5 , 0 );	-- impact_3(276)
setMoveKey( spep_1 -3 + 47, 1, 186.6, 132.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 108.3, 7.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 108.3, 7.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 101.1, 119.9 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 101.1, 119.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 164.5, 30.5 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 164.5, 30.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 186.2, 37.4 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 186.2, 37.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 253.1, 73.4 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 253.1, 73.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 261, 27.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 246.7, 52.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 260.5, 42.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 258.6, 41.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 250, 41.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 241.4, 40.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 235.2, 40.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 233.4, 40.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 233.3, 40.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 229.3, 40.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 217.6, 42.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 194.1, 45.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 155.2, 50 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 96.9, 57.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 15.3, 67.4 , 0 );
setMoveKey( spep_1 -3 + 91, 1, -93.5, 80.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -36.7, -88.9 , 0 );	--impact_4(322)
setMoveKey( spep_1 -3 + 93, 1, -36.7, -88.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -82.4, 43.1 , 0 );
setMoveKey( spep_1 -3 + 95, 1, -82.4, 43.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -140.1, -48.9 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -140.1, -48.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -21.4, -30.9 , 0 );
setMoveKey( spep_1 -3 + 99, 1, -21.4, -30.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 21, -17.5 , 0 );
setMoveKey( spep_1 -3 + 101, 1, 21, -17.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 100.6, -101.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 170, -42.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 170.8, -126.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 165.9, -70.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 221.1, -81.7 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 212.7, -103.8 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 232, -99.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 2.5, -23.4 , 0 );	--impact_5(382)
setMoveKey( spep_1 -3 + 153, 1, 2.5, -23.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 153.2, 117.3 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 153.2, 117.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 197.2, 159.7 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 197.2, 159.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 136.6, 39.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 136.6, 39.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 81.1, 79.4 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 81.1, 79.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 182.3, 118.3 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 182.3, 118.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 140.7, 167.4 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 140.7, 167.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 130.9, 129.1 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 130.9, 129.1 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 174.5, 128.8 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 174.5, 128.8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 173.4, 167 , 0 );
setMoveKey( spep_1 -3 + 171, 1, 173.4, 167 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 138.3, 156.7 , 0 );
setMoveKey( spep_1 -3 + 173, 1, 138.3, 156.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 153.4, 150.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 153, 150.4 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 152.9, 150.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 153, 151 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 153.4, 151.7 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 153.9, 152.4 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 154.4, 153 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 154.9, 153.7 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 155.4, 154.6 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 155.4, 154.6 , 0 );	--float top(422)
setMoveKey( spep_1 -3 + 193, 1, 155.4, 154.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 138.8, 61.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 154.3, 68.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 160.5, 75.5 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 163.2, 81.1 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 164.4, 85.3 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 165.1, 88.4 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 165.3, 91 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 165.5, 93.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 165.7, 94.9 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 166, 96.4 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 166.3, 97.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 162.8, 97.1 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 149.8, 96.3 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 120.3, 110.3 , 0 );	--impact_6(450)
setMoveKey( spep_1 -3 + 221, 1, 120.3, 110.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 272.8, 132.3 , 0 );
setMoveKey( spep_1 -3 + 223, 1, 272.8, 132.3 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 151.6, 72.3 , 0 );
setMoveKey( spep_1 -3 + 225, 1, 151.6, 72.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 231, 45.3 , 0 );
setMoveKey( spep_1 -3 + 227, 1, 231, 45.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 193.7, 169.3 , 0 );
setMoveKey( spep_1 -3 + 229, 1, 193.7, 169.3 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 369.6, 118.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 593.9, 131.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 605.4, 124.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 608.9, 136.1 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 650.9, 148.3 , 0 );

setScaleKey( spep_1 + 0,      1, 1.96 +0.20, 1.96 +0.20 );
setScaleKey( spep_1 -3 + 4,   1, 1.96 +0.20, 1.96 +0.20 );
setScaleKey( spep_1 -3 + 7,   1, 1.96 +0.22, 1.96 +0.22 );
setScaleKey( spep_1 -3 + 8,   1, 1.96 +0.22, 1.96 +0.22 );
setScaleKey( spep_1 -3 + 14,  1, 1.96 +0.24, 1.96 +0.24 );
setScaleKey( spep_1 -3 + 15,  1, 1.96 +0.24, 1.96 +0.24 );
setScaleKey( spep_1 -3 + 16,  1, 1.97 +0.24, 1.97 +0.24 );
setScaleKey( spep_1 -3 + 32,  1, 1.97 +0.26, 1.97 +0.26 );
setScaleKey( spep_1 -3 + 33,  1, 1.97 +0.26, 1.97 +0.26 );
setScaleKey( spep_1 -3 + 34,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 44,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 45,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 46,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 52,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 53,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 54,  1, 1.81 +0.30, 1.81 +0.30 );
setScaleKey( spep_1 -3 + 55,  1, 1.81 +0.30, 1.81 +0.30 );
setScaleKey( spep_1 -3 + 56,  1, 1.78 +0.30, 1.78 +0.30 );
setScaleKey( spep_1 -3 + 57,  1, 1.78 +0.30, 1.78 +0.30 );
setScaleKey( spep_1 -3 + 58,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 60,  1, 1.76 +0.30, 1.76 +0.30 );
setScaleKey( spep_1 -3 + 68,  1, 1.76 +0.30, 1.76 +0.30 );
setScaleKey( spep_1 -3 + 70,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 80,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 82,  1, 1.78 +0.32, 1.78 +0.32 );
setScaleKey( spep_1 -3 + 84,  1, 1.78 +0.34, 1.78 +0.34 );
setScaleKey( spep_1 -3 + 86,  1, 1.79 +0.36, 1.79 +0.36 );
setScaleKey( spep_1 -3 + 88,  1, 1.80 +0.38, 1.80 +0.38 );
setScaleKey( spep_1 -3 + 91,  1, 1.82 +0.40, 1.82 +0.40 );
setScaleKey( spep_1 -3 + 92,  1, 2.01, 2.01 );	--impact_4(322)
setScaleKey( spep_1 -3 + 115, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 152, 1, 4.46, 4.46 );	--impact_5(382)
setScaleKey( spep_1 -3 + 153, 1, 4.46, 4.46 );
setScaleKey( spep_1 -3 + 154, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 155, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 156, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 157, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 158, 1, 3.28, 3.28 );
setScaleKey( spep_1 -3 + 159, 1, 3.28, 3.28 );
setScaleKey( spep_1 -3 + 160, 1, 3.10, 3.10 );
setScaleKey( spep_1 -3 + 161, 1, 3.10, 3.10 );
setScaleKey( spep_1 -3 + 162, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 163, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 164, 1, 2.57 +0.08, 2.57 +0.08 );
setScaleKey( spep_1 -3 + 165, 1, 2.57 +0.08, 2.57 +0.08 );
setScaleKey( spep_1 -3 + 166, 1, 2.43 +0.12, 2.43 +0.12 );
setScaleKey( spep_1 -3 + 167, 1, 2.43 +0.12, 2.43 +0.12 );
setScaleKey( spep_1 -3 + 168, 1, 2.32 +0.16, 2.32 +0.16 );
setScaleKey( spep_1 -3 + 169, 1, 2.32 +0.16, 2.32 +0.16 );
setScaleKey( spep_1 -3 + 170, 1, 2.25 +0.20, 2.25 +0.20 );
setScaleKey( spep_1 -3 + 171, 1, 2.25 +0.20, 2.25 +0.20 );
setScaleKey( spep_1 -3 + 172, 1, 2.19 +0.24, 2.19 +0.24 );
setScaleKey( spep_1 -3 + 173, 1, 2.19 +0.24, 2.19 +0.24 );
setScaleKey( spep_1 -3 + 174, 1, 2.15 +0.28, 2.15 +0.28 );
setScaleKey( spep_1 -3 + 176, 1, 2.13 +0.28, 2.13 +0.28 );
setScaleKey( spep_1 -3 + 178, 1, 2.11 +0.28, 2.11 +0.28 );
setScaleKey( spep_1 -3 + 180, 1, 2.10 +0.28, 2.10 +0.28 );
setScaleKey( spep_1 -3 + 182, 1, 2.09 +0.28, 2.09 +0.28 );
setScaleKey( spep_1 -3 + 186, 1, 2.09 +0.28, 2.09 +0.28 );
setScaleKey( spep_1 -3 + 188, 1, 2.08 +0.28, 2.08 +0.28 );
setScaleKey( spep_1 -3 + 192, 1, 2.08 +0.28, 2.08 +0.28 );	--float top(422)
setScaleKey( spep_1 -3 + 193, 1, 2.08 +0.28, 2.08 +0.28 );
setScaleKey( spep_1 -3 + 194, 1, 2.38 -0.00, 2.38 -0.00 );
setScaleKey( spep_1 -3 + 196, 1, 2.19 +0.16, 2.19 +0.16 );
setScaleKey( spep_1 -3 + 198, 1, 2.07 +0.18, 2.07 +0.18 );
setScaleKey( spep_1 -3 + 200, 1, 1.98 +0.20, 1.98 +0.20 );
setScaleKey( spep_1 -3 + 202, 1, 1.93 +0.20, 1.93 +0.20 );
setScaleKey( spep_1 -3 + 204, 1, 1.89 +0.20, 1.89 +0.20 );
setScaleKey( spep_1 -3 + 206, 1, 1.86 +0.20, 1.86 +0.20 );
setScaleKey( spep_1 -3 + 208, 1, 1.83 +0.20, 1.83 +0.20 );
setScaleKey( spep_1 -3 + 210, 1, 1.81 +0.20, 1.81 +0.20 );
setScaleKey( spep_1 -3 + 212, 1, 1.79 +0.20, 1.79 +0.20 );
setScaleKey( spep_1 -3 + 214, 1, 1.77 +0.20, 1.77 +0.20 );
setScaleKey( spep_1 -3 + 216, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 228, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 229, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 230, 1, 1.85 +0.20, 1.85 +0.20 );
setScaleKey( spep_1 -3 + 232, 1, 1.91 +0.20, 1.91 +0.20 );
setScaleKey( spep_1 -3 + 234, 1, 1.94 +0.20, 1.94 +0.20 );
setScaleKey( spep_1 -3 + 236, 1, 1.95 +0.20, 1.95 +0.20 );
setScaleKey( spep_1 -3 + 238, 1, 1.95 +0.20, 1.95 +0.20 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 52, 1, 0 );
setRotateKey( spep_1 -3 + 53, 1, 0 );
setRotateKey( spep_1 -3 + 54, 1, 1.7 );
setRotateKey( spep_1 -3 + 55, 1, 1.7 );
setRotateKey( spep_1 -3 + 56, 1, 2.2 );
setRotateKey( spep_1 -3 + 57, 1, 2.2 );
setRotateKey( spep_1 -3 + 58, 1, 2.5 );
setRotateKey( spep_1 -3 + 60, 1, 2.6 );
setRotateKey( spep_1 -3 + 62, 1, 2.7 );
setRotateKey( spep_1 -3 + 64, 1, 2.8 );
setRotateKey( spep_1 -3 + 66, 1, 2.9 );
setRotateKey( spep_1 -3 + 68, 1, 3 );
setRotateKey( spep_1 -3 + 70, 1, 4.1 );
setRotateKey( spep_1 -3 + 72, 1, 5.2 );
setRotateKey( spep_1 -3 + 74, 1, 6.3 );
setRotateKey( spep_1 -3 + 76, 1, 7.5 );
setRotateKey( spep_1 -3 + 78, 1, 8.6 );
setRotateKey( spep_1 -3 + 80, 1, 9.7 );
setRotateKey( spep_1 -3 + 82, 1, 10.8 );
setRotateKey( spep_1 -3 + 84, 1, 11.9 );
setRotateKey( spep_1 -3 + 86, 1, 13 );
setRotateKey( spep_1 -3 + 88, 1, 14.1 );
setRotateKey( spep_1 -3 + 91, 1, 15.3 );
setRotateKey( spep_1 -3 + 92, 1, -32.7 );
setRotateKey( spep_1 -3 + 98, 1, -32.7 );
setRotateKey( spep_1 -3 + 99, 1, -32.7 );
setRotateKey( spep_1 -3 + 100, 1, -27.4 );
setRotateKey( spep_1 -3 + 101, 1, -27.4 );
setRotateKey( spep_1 -3 + 102, 1, -24.9 );
setRotateKey( spep_1 -3 + 104, 1, -23.7 );
setRotateKey( spep_1 -3 + 106, 1, -22.9 );
setRotateKey( spep_1 -3 + 108, 1, -22.3 );
setRotateKey( spep_1 -3 + 110, 1, -21.7 );
setRotateKey( spep_1 -3 + 112, 1, -21.1 );
setRotateKey( spep_1 -3 + 115, 1, -20.5 );
setRotateKey( spep_1 -3 + 152, 1, -21.5 );
setRotateKey( spep_1 -3 + 194, 1, -21.5 );
setRotateKey( spep_1 -3 + 196, 1, -23.7 );
setRotateKey( spep_1 -3 + 198, 1, -25.1 );
setRotateKey( spep_1 -3 + 200, 1, -25.9 );
setRotateKey( spep_1 -3 + 202, 1, -26.5 );
setRotateKey( spep_1 -3 + 204, 1, -26.9 );
setRotateKey( spep_1 -3 + 206, 1, -27.1 );
setRotateKey( spep_1 -3 + 208, 1, -27.4 );
setRotateKey( spep_1 -3 + 210, 1, -27.6 );
setRotateKey( spep_1 -3 + 212, 1, -27.8 );
setRotateKey( spep_1 -3 + 214, 1, -28 );
setRotateKey( spep_1 -3 + 216, 1, -28.2 );
setRotateKey( spep_1 -3 + 218, 1, -28.4 );
setRotateKey( spep_1 -3 + 238, 1, -28.4 );


-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_1 + 8, 1187, "", 0, 0, 0, -1);

--パンチ連打
SE011 = playSeVer2( spep_1 + 30, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 30, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 46, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 46, 1009, "", 0, 0, 0, -1);

--強パンチ
SE015 = playSeVer2( spep_1 + 88, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 72 );
SE016 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_1 + 114, 20, "",spep_1 + 174, 14, 22, -1);
setStartTimeMs( SE017,  133 );
SE018 = playSeVer2( spep_1 + 116, 1116, "",spep_1 + 116 +44, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 120, 1278, "",spep_1 + 168, 0, 24, -1);

--腹パン
SE020 = playSeVer2( spep_1 + 152, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 152, SE020, 80 );
SE021 = playSeVer2( spep_1 + 152, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 152, 1110, "", 0, 0, 0, -1);

--蹴り飛ばし
SE023 = playSeVer2( spep_1 + 210, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 214, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_1 + 240, 1121, "",spep_1 + 300, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 240, SE025, 79 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 264 -4;

-------------------------------------------------
-- 激突
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 激突	ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 108 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 108 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 28, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -261.4, 22.3 , 0 );
setMoveKey( spep_2 -1 + 2, 1, -172.1, 51.9 , 0 );
setMoveKey( spep_2 -1 + 4, 1, -133.1, 58.7 , 0 );
setMoveKey( spep_2 -1 + 6, 1, -106.4, 60.4 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -86.1, 60 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -69.9, 58.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -56.7, 56 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -45.6, 53.4 , 0 );
setMoveKey( spep_2 -1 + 16, 1, -36.3, 50.7 , 0 );
setMoveKey( spep_2 -1 + 18, 1, -28.3, 48 , 0 );
setMoveKey( spep_2 -1 + 20, 1, -21.4, 45.4 , 0 );
setMoveKey( spep_2 -1 + 22, 1, -15.4, 42.9 , 0 );
setMoveKey( spep_2 -1 + 24, 1, -10.3, 40.6 , 0 );
setMoveKey( spep_2 -1 + 26, 1, -5.8, 38.5 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -1.8, 36.6 , 0 );

setScaleKey( spep_2 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_2 -1 + 2, 1, 2.07, 2.07 );
setScaleKey( spep_2 -1 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_2 -1 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_2 -1 + 8, 1, 1.13, 1.13 );
setScaleKey( spep_2 -1 + 10, 1, 0.96, 0.96 );
setScaleKey( spep_2 -1 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 14, 1, 0.7, 0.7 );
setScaleKey( spep_2 -1 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_2 -1 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_2 -1 + 20, 1, 0.44, 0.44 );
setScaleKey( spep_2 -1 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_2 -1 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_2 -1 + 28, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 0, 1, 37.5 );
setRotateKey( spep_2 -1 + 28, 1, 37.5 );


-- ** 音 ** --
--岩激突
SE026 = playSeVer2( spep_2 + 28, 1159, "",spep_2 + 116, 0, 8, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 108 -4;

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
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 着弾	ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 280 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 280 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--腕前に出す
SE028 = playSeVer2( spep_3 + 2, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE029 = playSeVer2( spep_3 + 20, 1222, "",spep_3 + 56, 0, 8, -1);
SE030 = playSeVer2( spep_3 + 24, 1255, "",spep_3 + 56, 0, 8, -1);

--気弾発射１
SE031 = playSeVer2( spep_3 + 48, 1021, "",spep_3 + 74, 0, 6, -1);
SE032 = playSeVer2( spep_3 + 48, 1028, "",spep_3 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 48, SE032, 85 );
SE033 = playSeVer2( spep_3 + 48, 1256, "",spep_3 + 74, 0, 6, -1);
setPitch( spep_3 + 48, SE033, -100 );
setTimeStretch( SE033, 0.93, 30, 4 );
SE034 = playSeVer2( spep_3 + 48, 1201, "", 0, 0, 0, -1);

--気弾発射２
SE035 = playSeVer2( spep_3 + 68, 1021, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_3 + 68, 1028, "",spep_3 + 86, 0, 4, -1);
setSeVolumeByWorkId( spep_3 + 68, SE036, 78 );
SE037 = playSeVer2( spep_3 + 68, 1256, "",spep_3 + 86, 0, 4, -1);
setPitch( spep_3 + 68, SE037, -100 );
setTimeStretch( SE037, 0.93, 30, 4 );
SE038 = playSeVer2( spep_3 + 68, 1201, "", 0, 0, 0, -1);

--気弾発射３
SE039 = playSeVer2( spep_3 + 80, 1021, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 80, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE040, 82 );
SE041 = playSeVer2( spep_3 + 80, 1256, "", 0, 0, 0, -1);
setPitch( spep_3 + 80, SE041, -100 );
setTimeStretch( SE041, 0.93, 30, 4 );
SE042 = playSeVer2( spep_3 + 80, 1201, "", 0, 0, 0, -1);

--気弾飛んでいく
SE043 = playSeVer2( spep_3 + 94, 1177, "",spep_3 + 148, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 94, SE043, 72 );
SE044 = playSeVer2( spep_3 + 102, 1202, "",spep_3 + 164, 0, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 102, SE044, 132 );

--連続爆発
SE045 = playSeVer2( spep_3 + 134, 1023, "",spep_3 + 160, 0, 10, -1);
SE046 = playSeVer2( spep_3 + 144, 1023, "",spep_3 + 172, 0, 10, -1);
SE047 = playSeVer2( spep_3 + 156, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 162, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE048, 78 );


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160); -- ダメージ表示フレーム
endPhase( spep_3 + 280 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 待機　敵側	ef_001_re
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 236 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + 236 -4, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 236 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 236 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 236 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 待機　敵側　奥	ef_001_re_back
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 236 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + 236 -4, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 236 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 236 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 236 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 88, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

mx_0 = -40;
-- setMoveKey( spep_0 -3 + 0, 1, 120.9, 62.9 , 0 );
setMoveKey( spep_0 -2 + 2, 1, 121.8 + mx_0, 62.8 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 122.7 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 122.7 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 123.5 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 123.5 + mx_0, 62.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 124.4 + mx_0, 62.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 124.4 + mx_0, 62.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 125.3 + mx_0, 62.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 126.2 + mx_0, 62.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 127.1 + mx_0, 62.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 128.0 + mx_0, 62.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 128.9 + mx_0, 62.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 129.7 + mx_0, 62.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 130.6 + mx_0, 62.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 131.5 + mx_0, 62.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 132.4 + mx_0, 62 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 133.3 + mx_0, 61.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 134.2 + mx_0, 61.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 135.0 + mx_0, 61.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 135.9 + mx_0, 61.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 136.8 + mx_0, 61.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 137.7 + mx_0, 61.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 138.6 + mx_0, 61.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 139.5 + mx_0, 61.4 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 140.4 + mx_0, 61.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 141.2 + mx_0, 61.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 142.1 + mx_0, 61.2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 143.0 + mx_0, 61.1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 143.9 + mx_0, 61.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 144.8 + mx_0, 61 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 145.7 + mx_0, 60.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 146.6 + mx_0, 60.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 147.4 + mx_0, 60.8 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 148.3 + mx_0, 60.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 149.2 + mx_0, 60.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 150.1 + mx_0, 60.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 151.0 + mx_0, 60.5 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 151.9 + mx_0, 60.4 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 152.7 + mx_0, 60.4 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 153.6 + mx_0, 60.3 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 154.5 + mx_0, 60.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 155.4 + mx_0, 60.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 156.3 + mx_0, 60.1 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 157.2 + mx_0, 60 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 158.1 + mx_0, 60 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 158.9 + mx_0, 59.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 158.9 + mx_0, 59.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 3, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 5, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 88, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 88, 1, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 98;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 80;

ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 +cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 +cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 +cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 +cx, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 220, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 220, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 220, 0, 20, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 76, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 74 );

--顔カットイン
SE005 = playSeVer2( spep_0 + 102, 1018, "", 0, 0, 0, -1);

--オーラ弾ける
SE006 = playSeVer2( spep_0 + 182, 1052, "",spep_0 + 222, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 182, SE006, 69 );

--ダッシュ
SE007 = playSeVer2( spep_0 + 206, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 206, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE008, 78 );
SE009 = playSeVer2( spep_0 + 206, 1277, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
spep_1 = spep_0 + 236 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連続攻撃　手前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 264 -4, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + 264 -4, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 264 -4, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 264 -5, base_1f, 255);
setEffAlphaKey( spep_1 + 264 -4, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連続攻撃　奥	ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 264 -4, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + 264 -4, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 264 -4, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 264 -5, base_1b, 255);
setEffAlphaKey( spep_1 + 264 -4, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 264 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 116, 1, 0 );
setDisp( spep_1 -3 + 152, 1, 1 );
setDisp( spep_1 -3 + 238, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 8, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );
changeAnime( spep_1 -3 + 152, 1, 108 );

-- setMoveKey( spep_1 -3 + 0, 1, -90.6, 14.6 , 0 );
setMoveKey( spep_1 -2 + 2, 1, -91.3, 14.6 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -96.5, 14.5 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -110.4, 14.4 , 0 );	-- impact_1(238)
setMoveKey( spep_1 -3 + 8, 1, -10.4, 104 , 0 );
setMoveKey( spep_1 -3 + 9, 1, -10.4, 104 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 26.4, -3 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 26.4, -3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -25.5, 85.1 , 0 );
setMoveKey( spep_1 -3 + 13, 1, -25.5, 85.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -100.2, 28.1 , 0 );
setMoveKey( spep_1 -3 + 15, 1, -100.2, 28.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -70.1, 51.1 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -70.1, 51.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -26.7, 97.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -24.2, 59.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -8.8, 71.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -7.5, 71.5 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -6.6, 71.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -6.1, 71 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -5.8, 70.7 , 0 );
setMoveKey( spep_1 -3 + 31, 1, -5.8, 70.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 76.3, 68.5 , 0 );	-- impact_2(262)
setMoveKey( spep_1 -3 + 33, 1, 76.3, 68.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 22, 117.3 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 22, 117.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 75.3, 14.2 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 75.3, 14.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 80.6, 79.4 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 80.6, 79.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 112.6, 61.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 112.5, 75.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 112.4, 74.1 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 112.4, 74.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 82.6, 132.5 , 0 );	-- impact_3(276)
setMoveKey( spep_1 -3 + 47, 1, 82.6, 132.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 174.3, 7.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 174.3, 7.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 186.6, 119.9 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 186.6, 119.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 124.5, 30.5 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 124.5, 30.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 258.2, 37.4 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 258.2, 37.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 239.1, 73.4 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 239.1, 73.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 257, 27.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 284, 52.7 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 275.2, 42.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 272.2, 41.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 262.6, 41.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 252.9, 40.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 245.7, 40.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 242.7, 40.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 241.8, 40.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 240.6, 40.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 235.6, 40.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 222.8, 42.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 198.3, 45.2 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 158.3, 50 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 99, 57.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 16.3, 67.4 , 0 );
setMoveKey( spep_1 -3 + 91, 1, -93.5, 80.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -130.1, -88.9 , 0 );	--impact_4(322)
setMoveKey( spep_1 -3 + 93, 1, -130.1, -88.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -84.4, 43.1 , 0 );
setMoveKey( spep_1 -3 + 95, 1, -84.4, 43.1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -26.6, -48.9 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -26.6, -48.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -145.4, -30.9 , 0 );
setMoveKey( spep_1 -3 + 99, 1, -145.4, -30.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 93, -17.5 , 0 );
setMoveKey( spep_1 -3 + 101, 1, 93, -17.5 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 142.6, -101.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 140.3, -42.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 181.1, -126.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 217.9, -70.8 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 192.1, -81.7 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 231, -103.8 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 245.3, -99.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 3.1, -23.4 , 0 );	--impact_5(382)
setMoveKey( spep_1 -3 + 153, 1, 3.1, -23.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 153.2, 117.3 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 153.2, 117.3 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 89.2, 159.7 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 89.2, 159.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 132.6, 39.1 , 0 );
setMoveKey( spep_1 -3 + 159, 1, 132.6, 39.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 173.1, 79.4 , 0 );
setMoveKey( spep_1 -3 + 161, 1, 173.1, 79.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 110.3, 118.3 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 110.3, 118.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 168.7, 167.4 , 0 );
setMoveKey( spep_1 -3 + 165, 1, 168.7, 167.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 182.9, 129.1 , 0 );
setMoveKey( spep_1 -3 + 167, 1, 182.9, 129.1 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 138.5, 128.8 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 138.5, 128.8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 137.4, 167 , 0 );
setMoveKey( spep_1 -3 + 171, 1, 137.4, 167 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 170.3, 156.7 , 0 );
setMoveKey( spep_1 -3 + 173, 1, 170.3, 156.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 153.4, 150.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 153, 150.4 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 152.9, 150.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 153, 151 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 153.4, 151.7 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 153.9, 152.4 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 154.4, 153 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 154.9, 153.7 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 155.4, 154.6 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 155.4, 154.6 , 0 );	--float top(422)
setMoveKey( spep_1 -3 + 193, 1, 155.4, 154.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 138.8, 61.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 154.3, 68.1 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 160.5, 75.5 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 163.2, 81.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 164.4, 85.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 165.1, 88.4 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 165.3, 90.9 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 165.5, 93.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 165.7, 94.9 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 166, 96.5 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 166.3, 97.8 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 162.8, 97.1 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 149.8, 96.3 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 120.3, 110.3 , 0 );	--impact_6(450)
setMoveKey( spep_1 -3 + 221, 1, 120.3, 110.3 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 102.8, 132.3 , 0 );
setMoveKey( spep_1 -3 + 223, 1, 102.8, 132.3 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 257.6, 72.3 , 0 );
setMoveKey( spep_1 -3 + 225, 1, 257.6, 72.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 198.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 227, 1, 198.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 246, 169.3 , 0 );
setMoveKey( spep_1 -3 + 229, 1, 246, 169.3 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 469.6, 118.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 487.9, 131.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 601.4, 124.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 644.9, 136.1 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 610.9, 148.3 , 0 );

-- setScaleKey( spep_1 -3 + 0, 1, 1.91, 1.91 );
setScaleKey( spep_1 -2 + 2,   1, 1.91 +0.20, 1.91 +0.20 );
setScaleKey( spep_1 -3 + 4,   1, 1.91 +0.20, 1.91 +0.20 );
setScaleKey( spep_1 -3 + 7,   1, 1.89 +0.22, 1.89 +0.22 );
setScaleKey( spep_1 -3 + 8,   1, 1.96 +0.22, 1.96 +0.22 );
setScaleKey( spep_1 -3 + 14,  1, 1.96 +0.24, 1.96 +0.24 );
setScaleKey( spep_1 -3 + 15,  1, 1.96 +0.24, 1.96 +0.24 );
setScaleKey( spep_1 -3 + 16,  1, 1.97 +0.24, 1.97 +0.24 );
setScaleKey( spep_1 -3 + 32,  1, 1.97 +0.26, 1.97 +0.26 );
setScaleKey( spep_1 -3 + 33,  1, 1.97 +0.26, 1.97 +0.26 );
setScaleKey( spep_1 -3 + 34,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 44,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 45,  1, 1.96 +0.28, 1.96 +0.28 );
setScaleKey( spep_1 -3 + 46,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 52,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 53,  1, 1.89 +0.30, 1.89 +0.30 );
setScaleKey( spep_1 -3 + 54,  1, 1.81 +0.30, 1.81 +0.30 );
setScaleKey( spep_1 -3 + 55,  1, 1.81 +0.30, 1.81 +0.30 );
setScaleKey( spep_1 -3 + 56,  1, 1.78 +0.30, 1.78 +0.30 );
setScaleKey( spep_1 -3 + 57,  1, 1.78 +0.30, 1.78 +0.30 );
setScaleKey( spep_1 -3 + 58,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 60,  1, 1.76 +0.30, 1.76 +0.30 );
setScaleKey( spep_1 -3 + 68,  1, 1.76 +0.30, 1.76 +0.30 );
setScaleKey( spep_1 -3 + 70,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 80,  1, 1.77 +0.30, 1.77 +0.30 );
setScaleKey( spep_1 -3 + 82,  1, 1.78 +0.32, 1.78 +0.32 );
setScaleKey( spep_1 -3 + 84,  1, 1.78 +0.34, 1.78 +0.34 );
setScaleKey( spep_1 -3 + 86,  1, 1.79 +0.36, 1.79 +0.36 );
setScaleKey( spep_1 -3 + 88,  1, 1.80 +0.38, 1.80 +0.38 );
setScaleKey( spep_1 -3 + 91,  1, 1.82 +0.40, 1.82 +0.40 );
setScaleKey( spep_1 -3 + 92,  1, 2.01, 2.01 );	--impact_4(322)
setScaleKey( spep_1 -3 + 115, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 152, 1, 4.46, 4.46 );	--impact_5(382)
setScaleKey( spep_1 -3 + 153, 1, 4.46, 4.46 );
setScaleKey( spep_1 -3 + 154, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 155, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 156, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 157, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 158, 1, 3.28, 3.28 );
setScaleKey( spep_1 -3 + 159, 1, 3.28, 3.28 );
setScaleKey( spep_1 -3 + 160, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 161, 1, 3.1, 3.1 );
setScaleKey( spep_1 -3 + 162, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 163, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 164, 1, 2.57 +0.08, 2.57 +0.08 );
setScaleKey( spep_1 -3 + 165, 1, 2.57 +0.08, 2.57 +0.08 );
setScaleKey( spep_1 -3 + 166, 1, 2.43 +0.12, 2.43 +0.12 );
setScaleKey( spep_1 -3 + 167, 1, 2.43 +0.12, 2.43 +0.12 );
setScaleKey( spep_1 -3 + 168, 1, 2.32 +0.16, 2.32 +0.16 );
setScaleKey( spep_1 -3 + 169, 1, 2.32 +0.16, 2.32 +0.16 );
setScaleKey( spep_1 -3 + 170, 1, 2.25 +0.20, 2.25 +0.20 );
setScaleKey( spep_1 -3 + 171, 1, 2.25 +0.20, 2.25 +0.20 );
setScaleKey( spep_1 -3 + 172, 1, 2.19 +0.24, 2.19 +0.24 );
setScaleKey( spep_1 -3 + 173, 1, 2.19 +0.24, 2.19 +0.24 );
setScaleKey( spep_1 -3 + 174, 1, 2.15 +0.28, 2.15 +0.28 );
setScaleKey( spep_1 -3 + 176, 1, 2.13 +0.28, 2.13 +0.28 );
setScaleKey( spep_1 -3 + 178, 1, 2.11 +0.28, 2.11 +0.28 );
setScaleKey( spep_1 -3 + 180, 1, 2.10 +0.28, 2.10 +0.28 );
setScaleKey( spep_1 -3 + 182, 1, 2.09 +0.28, 2.09 +0.28 );
setScaleKey( spep_1 -3 + 186, 1, 2.09 +0.28, 2.09 +0.28 );
setScaleKey( spep_1 -3 + 188, 1, 2.08 +0.28, 2.08 +0.28 );
setScaleKey( spep_1 -3 + 192, 1, 2.08 +0.28, 2.08 +0.28 );	--float top(422)
setScaleKey( spep_1 -3 + 193, 1, 2.08 +0.28, 2.08 +0.28 );
setScaleKey( spep_1 -3 + 194, 1, 2.38 -0.00, 2.38 -0.00 );
setScaleKey( spep_1 -3 + 196, 1, 2.19 +0.16, 2.19 +0.16 );
setScaleKey( spep_1 -3 + 198, 1, 2.07 +0.18, 2.07 +0.18 );
setScaleKey( spep_1 -3 + 200, 1, 1.98 +0.20, 1.98 +0.20 );
setScaleKey( spep_1 -3 + 202, 1, 1.93 +0.20, 1.93 +0.20 );
setScaleKey( spep_1 -3 + 204, 1, 1.89 +0.20, 1.89 +0.20 );
setScaleKey( spep_1 -3 + 206, 1, 1.86 +0.20, 1.86 +0.20 );
setScaleKey( spep_1 -3 + 208, 1, 1.83 +0.20, 1.83 +0.20 );
setScaleKey( spep_1 -3 + 210, 1, 1.81 +0.20, 1.81 +0.20 );
setScaleKey( spep_1 -3 + 212, 1, 1.79 +0.20, 1.79 +0.20 );
setScaleKey( spep_1 -3 + 214, 1, 1.77 +0.20, 1.77 +0.20 );
setScaleKey( spep_1 -3 + 216, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 228, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 229, 1, 1.76 +0.20, 1.76 +0.20 );
setScaleKey( spep_1 -3 + 230, 1, 1.85 +0.20, 1.85 +0.20 );
setScaleKey( spep_1 -3 + 232, 1, 1.91 +0.20, 1.91 +0.20 );
setScaleKey( spep_1 -3 + 234, 1, 1.94 +0.20, 1.94 +0.20 );
setScaleKey( spep_1 -3 + 236, 1, 1.95 +0.20, 1.95 +0.20 );
setScaleKey( spep_1 -3 + 238, 1, 1.95 +0.20, 1.95 +0.20 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 52, 1, 0 );
setRotateKey( spep_1 -3 + 53, 1, 0 );
setRotateKey( spep_1 -3 + 54, 1, 1.7 );
setRotateKey( spep_1 -3 + 55, 1, 1.7 );
setRotateKey( spep_1 -3 + 56, 1, 2.2 );
setRotateKey( spep_1 -3 + 57, 1, 2.2 );
setRotateKey( spep_1 -3 + 58, 1, 2.5 );
setRotateKey( spep_1 -3 + 60, 1, 2.6 );
setRotateKey( spep_1 -3 + 62, 1, 2.7 );
setRotateKey( spep_1 -3 + 64, 1, 2.8 );
setRotateKey( spep_1 -3 + 66, 1, 2.9 );
setRotateKey( spep_1 -3 + 68, 1, 3 );
setRotateKey( spep_1 -3 + 70, 1, 4.1 );
setRotateKey( spep_1 -3 + 72, 1, 5.2 );
setRotateKey( spep_1 -3 + 74, 1, 6.3 );
setRotateKey( spep_1 -3 + 76, 1, 7.5 );
setRotateKey( spep_1 -3 + 78, 1, 8.6 );
setRotateKey( spep_1 -3 + 80, 1, 9.7 );
setRotateKey( spep_1 -3 + 82, 1, 10.8 );
setRotateKey( spep_1 -3 + 84, 1, 11.9 );
setRotateKey( spep_1 -3 + 86, 1, 13 );
setRotateKey( spep_1 -3 + 88, 1, 14.1 );
setRotateKey( spep_1 -3 + 91, 1, 15.3 );
setRotateKey( spep_1 -3 + 92, 1, -32.7 );
setRotateKey( spep_1 -3 + 98, 1, -32.7 );
setRotateKey( spep_1 -3 + 99, 1, -32.7 );
setRotateKey( spep_1 -3 + 100, 1, -27.4 );
setRotateKey( spep_1 -3 + 101, 1, -27.4 );
setRotateKey( spep_1 -3 + 102, 1, -24.9 );
setRotateKey( spep_1 -3 + 104, 1, -23.7 );
setRotateKey( spep_1 -3 + 106, 1, -22.9 );
setRotateKey( spep_1 -3 + 108, 1, -22.3 );
setRotateKey( spep_1 -3 + 110, 1, -21.7 );
setRotateKey( spep_1 -3 + 112, 1, -21.1 );
setRotateKey( spep_1 -3 + 115, 1, -20.5 );
setRotateKey( spep_1 -3 + 152, 1, -21.5 );
setRotateKey( spep_1 -3 + 194, 1, -21.5 );
setRotateKey( spep_1 -3 + 196, 1, -23.7 );
setRotateKey( spep_1 -3 + 198, 1, -25.1 );
setRotateKey( spep_1 -3 + 200, 1, -25.9 );
setRotateKey( spep_1 -3 + 202, 1, -26.5 );
setRotateKey( spep_1 -3 + 204, 1, -26.9 );
setRotateKey( spep_1 -3 + 206, 1, -27.1 );
setRotateKey( spep_1 -3 + 208, 1, -27.4 );
setRotateKey( spep_1 -3 + 210, 1, -27.6 );
setRotateKey( spep_1 -3 + 212, 1, -27.8 );
setRotateKey( spep_1 -3 + 214, 1, -28 );
setRotateKey( spep_1 -3 + 216, 1, -28.2 );
setRotateKey( spep_1 -3 + 218, 1, -28.4 );
setRotateKey( spep_1 -3 + 238, 1, -28.4 );


-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_1 + 8, 1187, "", 0, 0, 0, -1);

--パンチ連打
SE011 = playSeVer2( spep_1 + 30, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 30, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 46, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 46, 1009, "", 0, 0, 0, -1);

--強パンチ
SE015 = playSeVer2( spep_1 + 88, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 72 );
SE016 = playSeVer2( spep_1 + 90, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_1 + 114, 20, "",spep_1 + 174, 14, 22, -1);
setStartTimeMs( SE017,  133 );
SE018 = playSeVer2( spep_1 + 116, 1116, "",spep_1 + 116 +44, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 120, 1278, "",spep_1 + 168, 0, 24, -1);

--腹パン
SE020 = playSeVer2( spep_1 + 152, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 152, SE020, 80 );
SE021 = playSeVer2( spep_1 + 152, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 152, 1110, "", 0, 0, 0, -1);

--蹴り飛ばし
SE023 = playSeVer2( spep_1 + 210, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 214, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_1 + 240, 1121, "",spep_1 + 300, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 240, SE025, 79 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 264 -4;

-------------------------------------------------
-- 激突
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- 激突	ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 108 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 108 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 28, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -261.4, 22.3 , 0 );
setMoveKey( spep_2 -1 + 2, 1, -172.1, 51.9 , 0 );
setMoveKey( spep_2 -1 + 4, 1, -133.1, 58.7 , 0 );
setMoveKey( spep_2 -1 + 6, 1, -106.4, 60.4 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -86.1, 60 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -69.9, 58.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -56.7, 56 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -45.6, 53.4 , 0 );
setMoveKey( spep_2 -1 + 16, 1, -36.3, 50.7 , 0 );
setMoveKey( spep_2 -1 + 18, 1, -28.3, 48 , 0 );
setMoveKey( spep_2 -1 + 20, 1, -21.4, 45.4 , 0 );
setMoveKey( spep_2 -1 + 22, 1, -15.4, 42.9 , 0 );
setMoveKey( spep_2 -1 + 24, 1, -10.3, 40.6 , 0 );
setMoveKey( spep_2 -1 + 26, 1, -5.8, 38.5 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -1.8, 36.6 , 0 );

setScaleKey( spep_2 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_2 -1 + 2, 1, 2.07, 2.07 );
setScaleKey( spep_2 -1 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_2 -1 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_2 -1 + 8, 1, 1.13, 1.13 );
setScaleKey( spep_2 -1 + 10, 1, 0.96, 0.96 );
setScaleKey( spep_2 -1 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 14, 1, 0.7, 0.7 );
setScaleKey( spep_2 -1 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_2 -1 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_2 -1 + 20, 1, 0.44, 0.44 );
setScaleKey( spep_2 -1 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_2 -1 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_2 -1 + 28, 1, 0.23, 0.23 );

setRotateKey( spep_2 + 0, 1, 37.5 );
setRotateKey( spep_2 -1 + 28, 1, 37.5 );


-- ** 音 ** --
--岩激突
SE026 = playSeVer2( spep_2 + 28, 1159, "",spep_2 + 116, 0, 8, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 108 -4;

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
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- 着弾	ef_004
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 280 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 280 -4, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--腕前に出す
SE028 = playSeVer2( spep_3 + 2, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE029 = playSeVer2( spep_3 + 20, 1222, "",spep_3 + 56, 0, 8, -1);
SE030 = playSeVer2( spep_3 + 24, 1255, "",spep_3 + 56, 0, 8, -1);

--気弾発射１
SE031 = playSeVer2( spep_3 + 48, 1021, "",spep_3 + 74, 0, 6, -1);
SE032 = playSeVer2( spep_3 + 48, 1028, "",spep_3 + 74, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 48, SE032, 85 );
SE033 = playSeVer2( spep_3 + 48, 1256, "",spep_3 + 74, 0, 6, -1);
setPitch( spep_3 + 48, SE033, -100 );
setTimeStretch( SE033, 0.93, 30, 4 );
SE034 = playSeVer2( spep_3 + 48, 1201, "", 0, 0, 0, -1);

--気弾発射２
SE035 = playSeVer2( spep_3 + 68, 1021, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_3 + 68, 1028, "",spep_3 + 86, 0, 4, -1);
setSeVolumeByWorkId( spep_3 + 68, SE036, 78 );
SE037 = playSeVer2( spep_3 + 68, 1256, "",spep_3 + 86, 0, 4, -1);
setPitch( spep_3 + 68, SE037, -100 );
setTimeStretch( SE037, 0.93, 30, 4 );
SE038 = playSeVer2( spep_3 + 68, 1201, "", 0, 0, 0, -1);

--気弾発射３
SE039 = playSeVer2( spep_3 + 80, 1021, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_3 + 80, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 80, SE040, 82 );
SE041 = playSeVer2( spep_3 + 80, 1256, "", 0, 0, 0, -1);
setPitch( spep_3 + 80, SE041, -100 );
setTimeStretch( SE041, 0.93, 30, 4 );
SE042 = playSeVer2( spep_3 + 80, 1201, "", 0, 0, 0, -1);

--気弾飛んでいく
SE043 = playSeVer2( spep_3 + 94, 1177, "",spep_3 + 148, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 94, SE043, 72 );
SE044 = playSeVer2( spep_3 + 102, 1202, "",spep_3 + 164, 0, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 102, SE044, 132 );

--連続爆発
SE045 = playSeVer2( spep_3 + 134, 1023, "",spep_3 + 160, 0, 10, -1);
SE046 = playSeVer2( spep_3 + 144, 1023, "",spep_3 + 172, 0, 10, -1);
SE047 = playSeVer2( spep_3 + 156, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 162, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 162, SE048, 78 );


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 160); -- ダメージ表示フレーム
endPhase( spep_3 + 280 -8); -- 終了フレーム

end
