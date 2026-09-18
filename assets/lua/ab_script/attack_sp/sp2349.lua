--4024170:アンニン(巨大化)_荒天嵐舞
--sp_effect_b4_00223
--sp2349

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
SP_01 = 159444;	--セリフカットイン	ef_001	60
SP_02 = 159446;	--鞭アップ	ef_002	30
SP_03 = 159448;	--突き刺し	ef_003	63	(ef_003とef_003_back同時再生）
SP_03b = 159449;	--突き刺し	ef_003_back	63	(ef_003とef_003_back同時再生）
SP_04 = 159452;	--薙ぎ払い	ef_004	50	(ef_004とef_004_back同時再生）
SP_04b = 159453;	--薙ぎ払い	ef_004_back	50	(ef_004とef_004_back同時再生）
SP_05 = 159456;	--マントを翻し吹き飛ばし	ef_005	77	(ef_005とef_005_back同時再生）
SP_05b = 159457;	--マントを翻し吹き飛ばし	ef_005_back	77	(ef_005とef_005_back同時再生）
SP_06 = 159460;	--フィニッシュ	ef_006	68	(ef_006とef_006_back同時再生）
SP_06b = 159461;	--フィニッシュ	ef_006_back	68	(ef_006とef_006_back同時再生）

-- ** エフェクト(敵) ** --
SP_01r = 159445;	--セリフカットイン　敵側	ef_001_r	60	敵側そのまま反転
SP_02r = 159447;	--鞭アップ　敵側	ef_002_r	30	敵側そのまま反転
SP_03r = 159450;	--突き刺し　敵側	ef_003_r	63	敵側そのまま反転(ef_003_rとef_003_r_back同時再生）
SP_03br = 159451;	--突き刺し　敵側	ef_003_r_back	63	敵側そのまま反転(ef_003_rとef_003_r_back同時再生）
SP_04r = 159454;	--薙ぎ払い　敵側	ef_004_r	50	敵側そのまま反転(ef_004_rとef_004_r_back同時再生）
SP_04br = 159455;	--薙ぎ払い　敵側	ef_004_r_back	50	敵側そのまま反転(ef_004_rとef_004_r_back同時再生）
SP_05r = 159458;	--マントを翻し吹き飛ばし　敵側	ef_005_r	77	敵側そのまま反転(ef_005_rとef_005_r_back同時再生）
SP_05br = 159459;	--マントを翻し吹き飛ばし　敵側	ef_005_r_back	77	敵側そのまま反転(ef_005_rとef_005_r_back同時再生）
SP_06r = 159462;	--フィニッシュ　敵側	ef_006_r	68	敵側そのまま反転(ef_006_rとef_006_r_back同時再生）
SP_06br = 159463;	--フィニッシュ　敵側	ef_006_r_back	68	敵側そのまま反転(ef_006_rとef_006_r_back同時再生）


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
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --セリフカットイン	ef_001	60
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 120 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 120 -5, base_1, 255);
setEffAlphaKey( spep_1 + 120 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--触角振りかぶる
SE004 = playSeVer2( spep_1 + 78, 1117, "",spep_1 + 126, 0, 6, -1);
SE005 = playSeVer2( spep_1 + 78, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 78, 1116, "",spep_1 + 116, 0, 8, -1);
SE003 = playSeVer2( spep_1 + 80, 1119, "",spep_1 + 126, 4, 6, -1);
setStartTimeMs( SE003,  667 );
SE007 = playSeVer2( spep_1 + 90, 1189, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 120 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
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
spep_2 = spep_c + 94;

-------------------------------------------------
-- 鞭アップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --鞭アップ	ef_002	30
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
--触角飛んでいく
SE009 = playSeVer2( spep_2 + 0, 1207, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 76 );
setStartTimeMs( SE009,  117 );

SE010 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 84, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
-- 突き刺し
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --突き刺し	ef_003	63	(ef_003とef_003_back同時再生）
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --突き刺し	ef_003_back	63	(ef_003とef_003_back同時再生）
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 124, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 68, 1, 6 );

--setMoveKey( spep_3 -3 + 0, 1, 74.5, 175.2 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 49.4, 126.8 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 106.7, 45.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 100.9, 21.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 72.4, -62.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 93.7, -109.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 88.1, -99.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 102.8, -99.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 99.9, -109.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 114.5, -113.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 108.9, -103.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 123.5, -103.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 120.5, -114 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 131, -111.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 136.1, -112.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 141.1, -113.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 146.2, -114.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 151.2, -115.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 157, -122.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 163.1, -129.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 169.2, -136.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 175.6, -143.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 182.1, -150.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 188.7, -157.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 195.5, -164.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 202.4, -171.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 209.6, -179.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 216.9, -186.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 224.3, -193.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 231.9, -200.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 239.6, -208.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 247.5, -215.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 255.6, -223 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 263.8, -230.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 151.5, -163.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 135.9, -141 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 74.2, -69.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -14.8, -56.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 13.2, -36.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 1.7, -28.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 18.2, -34.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 11.3, -53.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 27.6, -63.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 18, -55.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 34.4, -59.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 29.1, -77.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 40.6, -77.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 45.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 50.9, -88.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 56.3, -92.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 62.1, -97.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 67.9, -101.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 198.4, -138.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 197.1, -143 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 195.9, -147.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 194.7, -151.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 193.5, -155.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 192.3, -159.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 191.1, -164.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 190, -168.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 167.5, -143.1 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 140.4, -123.2 , 0 );
setMoveKey( spep_3 -4 + 124, 1, 108.7, -108.3 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 2.16, 2.16 );
setScaleKey( spep_3 -2 + 2, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 4, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 8, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 10, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 22, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 48, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 50, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 54, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 56, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 60, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 62, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 64, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 67, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 68, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 70, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 72, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 74, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 76, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 78, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 80, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 84, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 86, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 88, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 90, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 94, 1, 1, 1 );
setScaleKey( spep_3 -3 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 98, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 100, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 102, 1, 0.92, 0.92 );
setScaleKey( spep_3 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 106, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 108, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 112, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 114, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 116, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 120, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 122, 1, 1.75, 1.75 );
setScaleKey( spep_3 -4 + 124, 1, 2.23, 2.23 );

--setRotateKey( spep_3 -3 + 0, 1, 43.5 );
setRotateKey( spep_3 -2 + 2, 1, 43.9 );
setRotateKey( spep_3 -3 + 4, 1, 44.2 );
setRotateKey( spep_3 -3 + 6, 1, 44.6 );
setRotateKey( spep_3 -3 + 8, 1, 45 );
setRotateKey( spep_3 -3 + 10, 1, 45.3 );
setRotateKey( spep_3 -3 + 12, 1, 45.8 );
setRotateKey( spep_3 -3 + 14, 1, 46.3 );
setRotateKey( spep_3 -3 + 16, 1, 46.7 );
setRotateKey( spep_3 -3 + 18, 1, 47.2 );
setRotateKey( spep_3 -3 + 20, 1, 47.7 );
setRotateKey( spep_3 -3 + 22, 1, 48.2 );
setRotateKey( spep_3 -3 + 24, 1, 48.7 );
setRotateKey( spep_3 -3 + 26, 1, 49.1 );
setRotateKey( spep_3 -3 + 28, 1, 49.6 );
setRotateKey( spep_3 -3 + 30, 1, 50.1 );
setRotateKey( spep_3 -3 + 32, 1, 50.6 );
setRotateKey( spep_3 -3 + 34, 1, 51 );
setRotateKey( spep_3 -3 + 36, 1, 51.5 );
setRotateKey( spep_3 -3 + 38, 1, 52 );
setRotateKey( spep_3 -3 + 40, 1, 52.5 );
setRotateKey( spep_3 -3 + 42, 1, 53 );
setRotateKey( spep_3 -3 + 44, 1, 53.4 );
setRotateKey( spep_3 -3 + 46, 1, 53.9 );
setRotateKey( spep_3 -3 + 48, 1, 54.4 );
setRotateKey( spep_3 -3 + 50, 1, 54.9 );
setRotateKey( spep_3 -3 + 52, 1, 55.4 );
setRotateKey( spep_3 -3 + 54, 1, 55.8 );
setRotateKey( spep_3 -3 + 56, 1, 56.3 );
setRotateKey( spep_3 -3 + 58, 1, 56.8 );
setRotateKey( spep_3 -3 + 60, 1, 57.3 );
setRotateKey( spep_3 -3 + 62, 1, 57.7 );
setRotateKey( spep_3 -3 + 64, 1, 58.2 );
setRotateKey( spep_3 -3 + 67, 1, 58.7 );
setRotateKey( spep_3 -3 + 68, 1, 0 );
setRotateKey( spep_3 -3 + 70, 1, -2.6 );
setRotateKey( spep_3 -3 + 72, 1, -5.3 );
setRotateKey( spep_3 -3 + 74, 1, -7.9 );
setRotateKey( spep_3 -3 + 76, 1, -10.6 );
setRotateKey( spep_3 -3 + 78, 1, -11.2 );
setRotateKey( spep_3 -3 + 80, 1, -11.8 );
setRotateKey( spep_3 -3 + 82, 1, -12.4 );
setRotateKey( spep_3 -3 + 84, 1, -13 );
setRotateKey( spep_3 -3 + 86, 1, -13.6 );
setRotateKey( spep_3 -3 + 88, 1, -14.2 );
setRotateKey( spep_3 -3 + 90, 1, -14.8 );
setRotateKey( spep_3 -3 + 92, 1, -15.4 );
setRotateKey( spep_3 -3 + 94, 1, -16 );
setRotateKey( spep_3 -3 + 96, 1, -16.6 );
setRotateKey( spep_3 -3 + 98, 1, -17.2 );
setRotateKey( spep_3 -3 + 100, 1, -17.8 );
setRotateKey( spep_3 -3 + 102, 1, -18.4 );
setRotateKey( spep_3 -3 + 104, 1, -19 );
setRotateKey( spep_3 -3 + 106, 1, -19.6 );
setRotateKey( spep_3 -3 + 108, 1, -20.2 );
setRotateKey( spep_3 -3 + 110, 1, -20.8 );
setRotateKey( spep_3 -3 + 112, 1, -21.4 );
setRotateKey( spep_3 -3 + 114, 1, -22 );
setRotateKey( spep_3 -3 + 116, 1, -22.6 );
setRotateKey( spep_3 -3 + 118, 1, -23.2 );
setRotateKey( spep_3 -3 + 120, 1, -23.8 );
setRotateKey( spep_3 -3 + 122, 1, -24.4 );
setRotateKey( spep_3 -4 + 124, 1, -25 );


-- ** 音 ** --
--触角刺さる1
SE012 = playSeVer2( spep_3 + 0, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 162 );
setPitch( spep_3 + 0, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

SE013 = playSeVer2( spep_3 + 0, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 66 );
setPitch( spep_3 + 0, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

SE014 = playSeVer2( spep_3 + 2, 1017, "", 0, 0, 0, -1);

--触角抜く
SE015 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);

--触角刺さる2
SE016 = playSeVer2( spep_3 + 68, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE016, 164 );
setPitch( spep_3 + 68, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

SE017 = playSeVer2( spep_3 + 70, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE017, 72 );
setPitch( spep_3 + 70, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );

SE018 = playSeVer2( spep_3 + 70, 1017, "", 0, 0, 0, -1);

--触角抜く
SE019 = playSeVer2( spep_3 + 102, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- 薙ぎ払い	ef_004	50	(ef_004とef_004_back同時再生）
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --薙ぎ払い	ef_004	50	(ef_004とef_004_back同時再生）
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 100 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --薙ぎ払い	ef_004_back	50	(ef_004とef_004_back同時再生）
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 100 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 38, 1, 1 );
setDisp( spep_4 -3 + 90, 1, 0 );

changeAnime( spep_4 -3 + 38, 1, 8 );
changeAnime( spep_4 -3 + 66, 1, 6 );

setMoveKey( spep_4 -3 + 38, 1, -990.8, 127.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -921.4, 114.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -850.5, 101.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -778.1, 88.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -751.9, 27.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -602.7, 92.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -604, 89.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -404.4, -22.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -337.6, 4.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -215.5, -12.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -82.2, -29 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 25.3, -36 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -27.2, -109 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 85.3, 2.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -35.6, 35.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 53, -68.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -95.9, -66.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -27, 67.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -182.6, 95.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -93.9, -8.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -183.4, 59.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -220.2, 74.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -256.9, 89.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -293.7, 104.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -330.4, 119.4 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -367.1, 134.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 2910.1, -1681.7 , 0 );

setScaleKey( spep_4 -3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 46, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 48, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 50, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 52, 1, 1, 1 );
setScaleKey( spep_4 -3 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 90, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 92, 1, 0 );


-- ** 音 ** --
--岩砕く
SE020 = playSeVer2( spep_4 + 24, 1061, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 26, 1011, "", 0, 0, 0, -1);

--敵ヒット
SE022 = playSeVer2( spep_4 + 62, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 62, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 100 -4;

-------------------------------------------------
-- マントを翻し吹き飛ばし
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0); --マントを翻し吹き飛ばし	ef_005	77	(ef_005とef_005_back同時再生）
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 154 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 154 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 154 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 154 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 154 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --マントを翻し吹き飛ばし	ef_005_back	77	(ef_005とef_005_back同時再生）
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 154 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 154 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 154 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 154 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 154 -4, base_5b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 114, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -8885.9, 4984.3 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -8886.7, 4975.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -8887.6, 4966.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -8888.4, 4957.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -8888.8, 4948.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -8889.7, 4939.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -8890.5, 4931 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -8891.3, 4922.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -8892.2, 4913.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -8893, 4904.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -8893.4, 4895.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -8894.3, 4886.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -8895.1, 4877.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -8895.9, 4868.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -8896.8, 4860 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -8897.6, 4851.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -8898.4, 4842.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -8898.9, 4833.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -8899.7, 4824.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -8900.5, 4815.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -8901.3, 4806.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -8902.2, 4797.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -8903, 4789.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -8903.5, 4780 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -8904.3, 4771.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -8905.1, 4762.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -8905.9, 4753.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -8265.3, 4430.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -7624.7, 4107.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -6984, 3785 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -6343.4, 3462.2 , 0 );
setMoveKey( spep_5 -3 + 62, 1, -5702.7, 3139.3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, -5062.1, 2816.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, -4421.4, 2493.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -3780.8, 2170.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -3749.2, 2157.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -61.8, -116.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -52.4, -109 , 0 );
setMoveKey( spep_5 -3 + 76, 1, -43.1, -101.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, -34, -94.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, -25.1, -86.7 , 0 );
setMoveKey( spep_5 -3 + 82, 1, -16.3, -79.4 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -7.7, -72 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 0.7, -64.6 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 9, -57.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 17.1, -50 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 25, -42.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 32.8, -35.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 33.2, -20.9 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 32.8, -6.5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 95.9, 23.3 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 214.7, 83.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 320.9, 138.4 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 414.6, 189.3 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 495.8, 235.7 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 606.8, 276.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 2515.3, -1282.1 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 2513.1, -1280.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0, 0 );
setScaleKey( spep_5 -3 + 70, 1, 0, 0 );
setScaleKey( spep_5 -3 + 72, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 74, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 76, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 78, 1, 0.21, 0.21 );
setScaleKey( spep_5 -3 + 80, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 82, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 86, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 88, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 90, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 92, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 94, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 100, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 102, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 104, 1, 2.27, 2.27 );
setScaleKey( spep_5 -3 + 106, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 108, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 110, 1, 4.37, 4.37 );
setScaleKey( spep_5 -3 + 112, 1, 0, 0 );
setScaleKey( spep_5 -3 + 114, 1, 0, 0 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 114, 1, 0 );


-- ** 音 ** --
--マント翻す
SE024 = playSeVer2( spep_5 + 40, 1116, "",spep_5 + 78, 0, 18, -1);
SE025 = playSeVer2( spep_5 + 40, 1004, "", 0, 0, 0, -1);

--暴風
SE026 = playSeVer2( spep_5 + 50, 1258, "",spep_5 + 174, 0, 10, 0.6);
SE027 = playSeVer2( spep_5 + 58, 1027, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_5 + 58, 1024, "", 0, 0, 0, 0.6);
SE029 = playSeVer2( spep_5 + 58, 1278, "",spep_5 + 174, 0, 38, 0.6);


-- ** 次の準備 ** --
spep_6 = spep_5 + 154 -6;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0); --フィニッシュ	ef_006	68	(ef_006とef_006_back同時再生）
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 136 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 136 -4, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 136 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 136 -4, base_6f, 255);

base_6b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_006_back	68	(ef_006とef_006_back同時再生）
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 136 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 136 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 136 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 136 -4, base_6b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
-- setDisp( spep_6 + 136 -4, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

-- setMoveKey( spep_6 + 0 -2, 1, 36.2, 7.9 , 0 );
-- setMoveKey( spep_6 + 1 -2, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2 -2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3 -2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4 -2, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5 -2, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6 -2, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7 -2, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8 -2, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_6 + 9 -2, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_6 + 10 -2, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_6 + 11 -2, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_6 + 12 -2, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_6 + 136 -4, 1, -45.3 +50, -142.1 +90, 0 );

-- setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2 -2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4 -2, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6 -2, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8 -2, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10 -2, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 136 -4, 1, 1.6, 1.6 );

-- setRotateKey( spep_6 + 0 -2, 1, -40 +42 );
-- setRotateKey( spep_6 + 1 -2, 1, -40 +42 );
setRotateKey( spep_6 + 2 -2, 1, 80 +42 );
setRotateKey( spep_6 + 3 -2, 1, 80 +42 );
setRotateKey( spep_6 + 4 -2, 1, 200 +42 );
setRotateKey( spep_6 + 5 -2, 1, 200 +42 );
setRotateKey( spep_6 + 6 -2, 1, 360 +42 );
setRotateKey( spep_6 + 7 -2, 1, 360 +42 );
setRotateKey( spep_6 + 8 -2, 1, 558 +42 );
setRotateKey( spep_6 + 9 -2, 1, 558 +42 );
setRotateKey( spep_6 + 10 -2, 1, 425 +42 );
setRotateKey( spep_6 + 11 -2, 1, 425 +42 );
setRotateKey( spep_6 + 12 -2, 1, -40 +42 );
setRotateKey( spep_6 + 136 -4, 1, -40 +42 );


-- ** 音 ** --
--画面割れる
SE030 = playSeVer2( spep_6 + 12, 1054, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 12); -- ダメージ表示フレーム
endPhase( spep_6 + 136 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --セリフカットイン	ef_001	60
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 120 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 120 -5, base_1, 255);
setEffAlphaKey( spep_1 + 120 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--触角振りかぶる
SE004 = playSeVer2( spep_1 + 78, 1117, "",spep_1 + 126, 0, 6, -1);
SE005 = playSeVer2( spep_1 + 78, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 78, 1116, "",spep_1 + 116, 0, 8, -1);
SE003 = playSeVer2( spep_1 + 80, 1119, "",spep_1 + 126, 4, 6, -1);
setStartTimeMs( SE003,  667 );
SE007 = playSeVer2( spep_1 + 90, 1189, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 120 -4;

-------------------------------------------------
--カードカットイン(94F)
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
spep_2 = spep_c + 94;

-------------------------------------------------
-- 鞭アップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); --鞭アップ	ef_002	30
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
--触角飛んでいく
SE009 = playSeVer2( spep_2 + 0, 1207, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 76 );
setStartTimeMs( SE009,  117 );

SE010 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 84, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
-- 突き刺し
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --突き刺し	ef_003	63	(ef_003とef_003_back同時再生）
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); --突き刺し	ef_003_back	63	(ef_003とef_003_back同時再生）
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 124, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 68, 1, 6 );

--setMoveKey( spep_3 -3 + 0, 1, 74.5, 175.2 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 49.4, 126.8 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 106.7, 45.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 100.9, 21.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 72.4, -62.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 93.7, -109.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 88.1, -99.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 102.8, -99.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 99.9, -109.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 114.5, -113.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 108.9, -103.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 123.5, -103.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 120.5, -114 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 131, -111.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 136.1, -112.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 141.1, -113.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 146.2, -114.2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 151.2, -115.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 157, -122.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 163.1, -129.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 169.2, -136.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 175.6, -143.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 182.1, -150.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 188.7, -157.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 195.5, -164.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 202.4, -171.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 209.6, -179.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 216.9, -186.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 224.3, -193.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 231.9, -200.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 239.6, -208.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 247.5, -215.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 255.6, -223 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 263.8, -230.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 151.5, -163.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 135.9, -141 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 74.2, -69.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -14.8, -56.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 13.2, -36.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 1.7, -28.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 18.2, -34.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 11.3, -53.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 27.6, -63.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 18, -55.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 34.4, -59.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 29.1, -77.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 40.6, -77.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 45.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 50.9, -88.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 56.3, -92.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 62.1, -97.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 67.9, -101.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 198.4, -138.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 197.1, -143 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 195.9, -147.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 194.7, -151.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 193.5, -155.8 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 192.3, -159.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 191.1, -164.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 190, -168.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 167.5, -143.1 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 140.4, -123.2 , 0 );
setMoveKey( spep_3 -4 + 124, 1, 108.7, -108.3 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 2.16, 2.16 );
setScaleKey( spep_3 -2 + 2, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 4, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 8, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 10, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 22, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 42, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 48, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 50, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 54, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 56, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 60, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 62, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 64, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 67, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 68, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 70, 1, 1.19, 1.19 );
setScaleKey( spep_3 -3 + 72, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 74, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 76, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 78, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 80, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 84, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 86, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 88, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 90, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 94, 1, 1, 1 );
setScaleKey( spep_3 -3 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 98, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 100, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 102, 1, 0.92, 0.92 );
setScaleKey( spep_3 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 106, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 108, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 112, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 114, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 116, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 120, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 122, 1, 1.75, 1.75 );
setScaleKey( spep_3 -4 + 124, 1, 2.23, 2.23 );

--setRotateKey( spep_3 -3 + 0, 1, 43.5 );
setRotateKey( spep_3 -2 + 2, 1, 43.9 );
setRotateKey( spep_3 -3 + 4, 1, 44.2 );
setRotateKey( spep_3 -3 + 6, 1, 44.6 );
setRotateKey( spep_3 -3 + 8, 1, 45 );
setRotateKey( spep_3 -3 + 10, 1, 45.3 );
setRotateKey( spep_3 -3 + 12, 1, 45.8 );
setRotateKey( spep_3 -3 + 14, 1, 46.3 );
setRotateKey( spep_3 -3 + 16, 1, 46.7 );
setRotateKey( spep_3 -3 + 18, 1, 47.2 );
setRotateKey( spep_3 -3 + 20, 1, 47.7 );
setRotateKey( spep_3 -3 + 22, 1, 48.2 );
setRotateKey( spep_3 -3 + 24, 1, 48.7 );
setRotateKey( spep_3 -3 + 26, 1, 49.1 );
setRotateKey( spep_3 -3 + 28, 1, 49.6 );
setRotateKey( spep_3 -3 + 30, 1, 50.1 );
setRotateKey( spep_3 -3 + 32, 1, 50.6 );
setRotateKey( spep_3 -3 + 34, 1, 51 );
setRotateKey( spep_3 -3 + 36, 1, 51.5 );
setRotateKey( spep_3 -3 + 38, 1, 52 );
setRotateKey( spep_3 -3 + 40, 1, 52.5 );
setRotateKey( spep_3 -3 + 42, 1, 53 );
setRotateKey( spep_3 -3 + 44, 1, 53.4 );
setRotateKey( spep_3 -3 + 46, 1, 53.9 );
setRotateKey( spep_3 -3 + 48, 1, 54.4 );
setRotateKey( spep_3 -3 + 50, 1, 54.9 );
setRotateKey( spep_3 -3 + 52, 1, 55.4 );
setRotateKey( spep_3 -3 + 54, 1, 55.8 );
setRotateKey( spep_3 -3 + 56, 1, 56.3 );
setRotateKey( spep_3 -3 + 58, 1, 56.8 );
setRotateKey( spep_3 -3 + 60, 1, 57.3 );
setRotateKey( spep_3 -3 + 62, 1, 57.7 );
setRotateKey( spep_3 -3 + 64, 1, 58.2 );
setRotateKey( spep_3 -3 + 67, 1, 58.7 );
setRotateKey( spep_3 -3 + 68, 1, 0 );
setRotateKey( spep_3 -3 + 70, 1, -2.6 );
setRotateKey( spep_3 -3 + 72, 1, -5.3 );
setRotateKey( spep_3 -3 + 74, 1, -7.9 );
setRotateKey( spep_3 -3 + 76, 1, -10.6 );
setRotateKey( spep_3 -3 + 78, 1, -11.2 );
setRotateKey( spep_3 -3 + 80, 1, -11.8 );
setRotateKey( spep_3 -3 + 82, 1, -12.4 );
setRotateKey( spep_3 -3 + 84, 1, -13 );
setRotateKey( spep_3 -3 + 86, 1, -13.6 );
setRotateKey( spep_3 -3 + 88, 1, -14.2 );
setRotateKey( spep_3 -3 + 90, 1, -14.8 );
setRotateKey( spep_3 -3 + 92, 1, -15.4 );
setRotateKey( spep_3 -3 + 94, 1, -16 );
setRotateKey( spep_3 -3 + 96, 1, -16.6 );
setRotateKey( spep_3 -3 + 98, 1, -17.2 );
setRotateKey( spep_3 -3 + 100, 1, -17.8 );
setRotateKey( spep_3 -3 + 102, 1, -18.4 );
setRotateKey( spep_3 -3 + 104, 1, -19 );
setRotateKey( spep_3 -3 + 106, 1, -19.6 );
setRotateKey( spep_3 -3 + 108, 1, -20.2 );
setRotateKey( spep_3 -3 + 110, 1, -20.8 );
setRotateKey( spep_3 -3 + 112, 1, -21.4 );
setRotateKey( spep_3 -3 + 114, 1, -22 );
setRotateKey( spep_3 -3 + 116, 1, -22.6 );
setRotateKey( spep_3 -3 + 118, 1, -23.2 );
setRotateKey( spep_3 -3 + 120, 1, -23.8 );
setRotateKey( spep_3 -3 + 122, 1, -24.4 );
setRotateKey( spep_3 -4 + 124, 1, -25 );


-- ** 音 ** --
--触角刺さる1
SE012 = playSeVer2( spep_3 + 0, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 162 );
setPitch( spep_3 + 0, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

SE013 = playSeVer2( spep_3 + 0, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 66 );
setPitch( spep_3 + 0, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

SE014 = playSeVer2( spep_3 + 2, 1017, "", 0, 0, 0, -1);

--触角抜く
SE015 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);

--触角刺さる2
SE016 = playSeVer2( spep_3 + 68, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE016, 164 );
setPitch( spep_3 + 68, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

SE017 = playSeVer2( spep_3 + 70, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE017, 72 );
setPitch( spep_3 + 70, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );

SE018 = playSeVer2( spep_3 + 70, 1017, "", 0, 0, 0, -1);

--触角抜く
SE019 = playSeVer2( spep_3 + 102, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- 薙ぎ払い	ef_004	50	(ef_004とef_004_back同時再生）
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --薙ぎ払い	ef_004	50	(ef_004とef_004_back同時再生）
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 100 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --薙ぎ払い	ef_004_back	50	(ef_004とef_004_back同時再生）
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 100 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 38, 1, 1 );
setDisp( spep_4 -3 + 90, 1, 0 );

changeAnime( spep_4 -3 + 38, 1, 8 );
changeAnime( spep_4 -3 + 66, 1, 6 );

setMoveKey( spep_4 -3 + 38, 1, -990.8, 127.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -921.4, 114.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -850.5, 101.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -778.1, 88.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -751.9, 27.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -602.7, 92.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -604, 89.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -404.4, -22.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -337.6, 4.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -215.5, -12.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -82.2, -29 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 25.3, -36 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -27.2, -109 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 85.3, 2.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -35.6, 35.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 53, -68.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -95.9, -66.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -27, 67.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -182.6, 95.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -93.9, -8.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -183.4, 59.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -220.2, 74.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -256.9, 89.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -293.7, 104.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -330.4, 119.4 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -367.1, 134.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 2910.1, -1681.7 , 0 );

setScaleKey( spep_4 -3 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 46, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 48, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 50, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 52, 1, 1, 1 );
setScaleKey( spep_4 -3 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 90, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 92, 1, 0 );


-- ** 音 ** --
--岩砕く
SE020 = playSeVer2( spep_4 + 24, 1061, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 26, 1011, "", 0, 0, 0, -1);

--敵ヒット
SE022 = playSeVer2( spep_4 + 62, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 62, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 100 -4;

-------------------------------------------------
-- マントを翻し吹き飛ばし
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0); --マントを翻し吹き飛ばし	ef_005	77	(ef_005とef_005_back同時再生）
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 154 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 154 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 154 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 154 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 154 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05br, 0x80, -1, 0, 0, 0); --マントを翻し吹き飛ばし	ef_005_back	77	(ef_005とef_005_back同時再生）
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 154 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 154 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 154 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 154 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 154 -4, base_5b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 114, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -8885.9, 4984.3 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -8886.7, 4975.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -8887.6, 4966.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -8888.4, 4957.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -8888.8, 4948.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -8889.7, 4939.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -8890.5, 4931 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -8891.3, 4922.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -8892.2, 4913.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -8893, 4904.4 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -8893.4, 4895.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -8894.3, 4886.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -8895.1, 4877.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -8895.9, 4868.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -8896.8, 4860 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -8897.6, 4851.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -8898.4, 4842.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -8898.9, 4833.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -8899.7, 4824.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -8900.5, 4815.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -8901.3, 4806.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -8902.2, 4797.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -8903, 4789.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -8903.5, 4780 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -8904.3, 4771.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -8905.1, 4762.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -8905.9, 4753.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -8265.3, 4430.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -7624.7, 4107.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -6984, 3785 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -6343.4, 3462.2 , 0 );
setMoveKey( spep_5 -3 + 62, 1, -5702.7, 3139.3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, -5062.1, 2816.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, -4421.4, 2493.7 , 0 );
setMoveKey( spep_5 -3 + 68, 1, -3780.8, 2170.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, -3749.2, 2157.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, -61.8, -116.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, -52.4, -109 , 0 );
setMoveKey( spep_5 -3 + 76, 1, -43.1, -101.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, -34, -94.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, -25.1, -86.7 , 0 );
setMoveKey( spep_5 -3 + 82, 1, -16.3, -79.4 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -7.7, -72 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 0.7, -64.6 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 9, -57.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 17.1, -50 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 25, -42.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 32.8, -35.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 33.2, -20.9 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 32.8, -6.5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 95.9, 23.3 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 214.7, 83.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 320.9, 138.4 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 414.6, 189.3 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 495.8, 235.7 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 606.8, 276.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 2515.3, -1282.1 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 2513.1, -1280.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0, 0 );
setScaleKey( spep_5 -3 + 70, 1, 0, 0 );
setScaleKey( spep_5 -3 + 72, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 74, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 76, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 78, 1, 0.21, 0.21 );
setScaleKey( spep_5 -3 + 80, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 82, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 84, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 86, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 88, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 90, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 92, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 94, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 100, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 102, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 104, 1, 2.27, 2.27 );
setScaleKey( spep_5 -3 + 106, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 108, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 110, 1, 4.37, 4.37 );
setScaleKey( spep_5 -3 + 112, 1, 0, 0 );
setScaleKey( spep_5 -3 + 114, 1, 0, 0 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 114, 1, 0 );


-- ** 音 ** --
--マント翻す
SE024 = playSeVer2( spep_5 + 40, 1116, "",spep_5 + 78, 0, 18, -1);
SE025 = playSeVer2( spep_5 + 40, 1004, "", 0, 0, 0, -1);

--暴風
SE026 = playSeVer2( spep_5 + 50, 1258, "",spep_5 + 174, 0, 10, 0.6);
SE027 = playSeVer2( spep_5 + 58, 1027, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_5 + 58, 1024, "", 0, 0, 0, 0.6);
SE029 = playSeVer2( spep_5 + 58, 1278, "",spep_5 + 174, 0, 38, 0.6);


-- ** 次の準備 ** --
spep_6 = spep_5 + 154 -6;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06r, 0x100, -1, 0, 0, 0); --フィニッシュ	ef_006	68	(ef_006とef_006_back同時再生）
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 136 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 136 -4, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 136 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 136 -4, base_6f, 255);

base_6b = entryEffect( spep_6 + 0, SP_06br, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_006_back	68	(ef_006とef_006_back同時再生）
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 136 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 136 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 136 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 136 -4, base_6b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
-- setDisp( spep_6 + 136 -4, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

-- setMoveKey( spep_6 + 0 -2, 1, 36.2, 7.9 , 0 );
-- setMoveKey( spep_6 + 1 -2, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2 -2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3 -2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4 -2, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5 -2, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6 -2, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7 -2, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8 -2, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_6 + 9 -2, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_6 + 10 -2, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_6 + 11 -2, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_6 + 12 -2, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_6 + 136 -4, 1, -45.3 +50, -142.1 +90, 0 );

-- setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2 -2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4 -2, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6 -2, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8 -2, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10 -2, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24 -2, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26 -2, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 136 -4, 1, 1.6, 1.6 );

-- setRotateKey( spep_6 + 0 -2, 1, -40 +42 );
-- setRotateKey( spep_6 + 1 -2, 1, -40 +42 );
setRotateKey( spep_6 + 2 -2, 1, 80 +42 );
setRotateKey( spep_6 + 3 -2, 1, 80 +42 );
setRotateKey( spep_6 + 4 -2, 1, 200 +42 );
setRotateKey( spep_6 + 5 -2, 1, 200 +42 );
setRotateKey( spep_6 + 6 -2, 1, 360 +42 );
setRotateKey( spep_6 + 7 -2, 1, 360 +42 );
setRotateKey( spep_6 + 8 -2, 1, 558 +42 );
setRotateKey( spep_6 + 9 -2, 1, 558 +42 );
setRotateKey( spep_6 + 10 -2, 1, 425 +42 );
setRotateKey( spep_6 + 11 -2, 1, 425 +42 );
setRotateKey( spep_6 + 12 -2, 1, -40 +42 );
setRotateKey( spep_6 + 136 -4, 1, -40 +42 );


-- ** 音 ** --
--画面割れる
SE030 = playSeVer2( spep_6 + 12, 1054, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 12); -- ダメージ表示フレーム
endPhase( spep_6 + 136 -8); -- 終了フレーム

end
