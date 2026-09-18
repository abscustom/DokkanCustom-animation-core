--1024070:SSR_ナッパ_アームクラッシュ
--sp_effect_a7_00050
--sp2350

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
SP_01 = 159514;	--ナッパ:気だめ、セリフカットイン	ef_001		キャラ、エフェクト、背景、集中線
SP_02 = 159516;	--ナッパ:踏ん張って跳躍→手前に突進	ef_002		キャラ、エフェクト、背景、描き文字、白フェード
SP_03 = 159518;	--ナッパ:拳を振りかぶる	ef_003		キャラ、エフェクト、背景、白フェード
SP_04 = 159520;	--敵を殴る→敵がビリビリで身動き取れず	ef_004		キャラ、エフェクト(敵用ビリビリ含む)、描き文字
SP_04b = 159522;	--敵を殴る→敵がビリビリで身動き取れず	ef_005		空背景 ef_004,ef_004_rと同時表示
SP_05 = 159523;	--ナッパ回り込んでオーバーヘッドキック	ef_006		キャラ、エフェクト手前(敵用ビリビリ含む)ef_007と同時表示
SP_05b = 159525;	--ナッパ回り込んでオーバーヘッドキック	ef_007		キャラ、エフェクト敵より後ろ、背景、ef_006と同時表示
SP_06 = 159527;	--敵地面に叩きつけられ落下爆発	ef_008		エフェクト手前、描き文字、白フェード、ef_009と同時表示
SP_06b = 159529;	--敵地面に叩きつけられ落下爆発	ef_009		エフェクト、背景、集中線、ef_008と同時表示

--エフェクト(てき)
SP_01r = 159515;	--ナッパ:気だめ、セリフカットイン	ef_001_r		キャラ、エフェクト、背景 、集中線（反転用）
SP_02r = 159517;	--ナッパ:踏ん張って跳躍→手前に突進	ef_002_r		キャラ、エフェクト、背景、描き文字 、白フェード（反転用）
SP_03r = 159519;	--ナッパ:拳を振りかぶる	ef_003_r		キャラ、エフェクト、背景、白フェード（反転用）
SP_04r = 159521;	--敵を殴る→敵がビリビリで身動き取れず	ef_004_r		キャラ、エフェクト(敵用ビリビリ含む)、描き文字（反転用）
SP_05r = 159524;	--ナッパ回り込んでオーバーヘッドキック	ef_006_r		キャラ、エフェクト手前(敵用ビリビリ含む)、ef_007_rと同時表示(反転用）
SP_05br = 159526;	--ナッパ回り込んでオーバーヘッドキック	ef_007_r		キャラ、エフェクト敵より後ろ、背景、ef_006_rと同時表示（反転用）
SP_06r = 159528;	--敵地面に叩きつけられ落下爆発	ef_008_r		エフェクト手前、描き文字、白フェード（反転用）、ef_009_rと同時表示
SP_06br = 159530;	--敵地面に叩きつけられ落下爆発	ef_009_r		エフェクト、背景、集中線、ef_007_rと同時表示（反転用）


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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- ナッパ:気だめ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --ナッパ:気だめ、セリフカットイン	ef_001		キャラ、エフェクト、背景、集中線
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 180 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 180 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 180 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 180 -5, base_1, 255);
setEffAlphaKey( spep_1 + 180 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 90;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 +60, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 +60, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 +60, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 +60, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 180 -4 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 180 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1269, "",spep_1 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 25 );

--イナヅマと地割れ
SE002 = playSeVer2( spep_1 + 14, 1147, "",spep_1 + 188, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 14, SE002, 63 );

--構える
SE003 = playSeVer2( spep_1 + 18, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 18, 1003, "", 0, 0, 0, -1);

--イナヅマと地割れ
SE005 = playSeVer2( spep_1 + 18, 1044, "",spep_1 + 188, 28, 14, -1);

--雷落ちる
SE006 = playSeVer2( spep_1 + 66, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE006, 158 );

--顔カットイン
SE007 = playSeVer2( spep_1 + 94, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 180 -4;


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
-- ナッパ:踏ん張って跳躍
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --ナッパ:踏ん張って跳躍→手前に突進	ef_002		キャラ、エフェクト、背景、描き文字、白フェード
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 108 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 108 -4 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 108 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--飛び上がる
SE009 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 52, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 63 );
SE010 = playSeVer2( spep_2 + 24, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 24, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 124, 0, 42, -1);
SE013 = playSeVer2( spep_2 + 24, 1314, "",spep_2 + 124, 0, 42, -1);

--画面遷移
SE014 = playSeVer2( spep_2 + 70, 1072, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;

-------------------------------------------------
-- ナッパ:拳を振りかぶる
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --ナッパ:拳を振りかぶる	ef_003		キャラ、エフェクト、背景、白フェード
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 40 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 40 -5, base_3, 255);
setEffAlphaKey( spep_3 + 40 -4, base_3, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 40 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--殴る
SE015 = playSeVer2( spep_3 + 18, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 30, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 30, 1043, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 30, 1038, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 40 -4;

-------------------------------------------------
-- 敵を殴る→敵がビリビリで身動き取れず
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --敵を殴る→敵がビリビリで身動き取れず	ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 60 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 60 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 60 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --敵を殴る→敵がビリビリで身動き取れず	ef_005
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 60 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 60 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 60 -4, base_4b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 -3 + 0, 1, 104 );
changeAnime( spep_4 -3 + 8, 1, 108 );
changeAnime( spep_4 -3 + 12, 1, 106 );

setBlendColor( spep_4 -3 + 12, 1, 2, 0.6, 0.2, 0.2, 0.5 );

-- setMoveKey( spep_4 -3 + 0, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 165.5, -97 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 277.2, -88.3 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 277.2, -88.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 307.5, -91.7 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 307.5, -91.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 340.1, -104.6 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 340.1, -104.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 267.1, -113.2 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 267.1, -113.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 185, -108 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 185, -108 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 91.6, -121 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 91.6, -121 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 84.69, -121, 0 );
setMoveKey( spep_4 -3 + 21, 1, 84.69, -121, 0 );
setMoveKey( spep_4 -3 + 22, 1, 77.78, -112.8, 0 );
setMoveKey( spep_4 -3 + 23, 1, 77.78, -112.8, 0 );
setMoveKey( spep_4 -3 + 24, 1, 70.87, -121.0, 0 );
setMoveKey( spep_4 -3 + 25, 1, 70.87, -121.0, 0 );
setMoveKey( spep_4 -3 + 26, 1, 63.96, -121.5, 0 );
setMoveKey( spep_4 -3 + 27, 1, 63.96, -121.5, 0 );
setMoveKey( spep_4 -3 + 28, 1, 57.05, -121.0, 0 );
setMoveKey( spep_4 -3 + 29, 1, 57.05, -121.0, 0 );
setMoveKey( spep_4 -3 + 30, 1, 50.14, -112.8, 0 );
setMoveKey( spep_4 -3 + 31, 1, 50.14, -112.8, 0 );
setMoveKey( spep_4 -3 + 32, 1, 43.23, -121.0, 0 );
setMoveKey( spep_4 -3 + 33, 1, 43.23, -121.0, 0 );
setMoveKey( spep_4 -3 + 34, 1, 36.32, -121.5, 0 );
setMoveKey( spep_4 -3 + 35, 1, 36.32, -121.5, 0 );
setMoveKey( spep_4 -3 + 36, 1, 29.41, -121.0, 0 );
setMoveKey( spep_4 -3 + 37, 1, 29.41, -121.0, 0 );
setMoveKey( spep_4 -3 + 38, 1, 22.5, -121.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 21.7, -112.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 8.5, -121 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 8.1, -112.7 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -5.3, -121.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -6, -112.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -12.3, -121 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -5.7, -112.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -12.2, -121.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -6, -112.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -12.3, -121 , 0 );
-- setMoveKey( spep_4 -5 + 60, 1, -12.3, -121 , 0 );

setScaleKey( spep_4 + 0, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 8, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 9, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 10, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 11, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 12, 1, 2.60, 2.60 );
setScaleKey( spep_4 -3 + 13, 1, 2.60, 2.60 );
setScaleKey( spep_4 -3 + 14, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 15, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 16, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 19, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 38, 1, 2.35, 2.35 );
setScaleKey( spep_4 -5 + 60, 1, 2.35, 2.35 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 11, 1, 0 );
setRotateKey( spep_4 -3 + 12, 1, -57.4 );
setRotateKey( spep_4 -3 + 14, 1, -57.4 );
setRotateKey( spep_4 -3 + 15, 1, -57.4 );
setRotateKey( spep_4 -3 + 16, 1, -50.3 );
setRotateKey( spep_4 -3 + 17, 1, -50.3 );
setRotateKey( spep_4 -3 + 18, 1, -43.2 );
setRotateKey( spep_4 -3 + 19, 1, -43.2 );
setRotateKey( spep_4 -3 + 38, 1, -43.2 );
setRotateKey( spep_4 -5 + 60, 1, -43.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--旋回
SE019 = playSeVer2( spep_4 + 46, 1116, "",spep_4 + 96, 0, 22, -1);

--敵痺れる
SE020 = playSeVer2( spep_4 + 52, 1056, "", 0, 0, 0, -1);

--旋回
SE021 = playSeVer2( spep_4 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE021, 40 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 60 -4;

-------------------------------------------------
-- ナッパ回り込んでオーバーヘッドキック
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0); --ナッパ回り込んでオーバーヘッドキック	ef_006		キャラ、エフェクト手前(敵用ビリビリ含む)ef_007と同時表示
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 100 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 100 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 100 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 100 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 100 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --ナッパ回り込んでオーバーヘッドキック	ef_007		キャラ、エフェクト敵より後ろ、背景、ef_006と同時表示
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 100 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 100 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 100 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 100 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 100 -4, base_5b, 0);

-- ** 敵キャラクター ** --
-- setDisp( spep_5 -3 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 76, 1, 108 );
changeAnime( spep_5 -3 + 78, 1, 106 );
changeAnime( spep_5 -3 + 80, 1, 108 );

setBlendColor( spep_5 -3 + 78, 1, 0, 0, 0, 0, 0 );

-- setMoveKey( spep_5 -3 + 0, 1, 176.1, -26.6 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 181.2, -30.1 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 171.4, -32 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 49, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.9, -227 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 184.2, -217.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 177.3, -227.1 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 182.1, -218.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 191.5, -224.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 180.6, -210.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 173.8, -227.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 184.2, -217.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 177.3, -227.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 180.6, -210.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 177.9, -227 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 196.6, -290.6 , 0 );
setMoveKey( spep_5 -3 + 75, 1, 193.9, -239.7 , 0 );
setMoveKey( spep_5 -3 + 77, 1, 250.1, -237.6 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 232.4, -289.4 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 263.1, -329.6 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 375.4, -616.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 463.1, -838.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 529.2, -1003.3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 576.8, -1119.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 609, -1194.2 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 628.9, -1236.7 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 639.5, -1254.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 643.9, -1256.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 645.3, -1249.8 , 0 );
-- setMoveKey( spep_5 -5 + 100, 1, 645.3, -1249.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2, 2 );
setScaleKey( spep_5 -3 + 48, 1, 2, 2 );
setScaleKey( spep_5 -3 + 49, 1, 2, 2 );
setScaleKey( spep_5 -3 + 50, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 70, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 72, 1, 3.95, 3.95 );
setScaleKey( spep_5 -3 + 75, 1, 3.77, 3.77 );
setScaleKey( spep_5 -3 + 77, 1, 3.75, 3.75 );
setScaleKey( spep_5 -3 + 78, 1, 3.73, 3.73 );
setScaleKey( spep_5 -3 + 79, 1, 3.73, 3.73 );
setScaleKey( spep_5 -3 + 80, 1, 3.75, 3.75 );
setScaleKey( spep_5 -5 + 100, 1, 3.75, 3.75 );

setRotateKey( spep_5 + 0, 1, -68.7 );
setRotateKey( spep_5 -3 + 48, 1, -68.7 );
setRotateKey( spep_5 -3 + 50, 1, -68.6 );
setRotateKey( spep_5 -3 + 75, 1, -68.6 );
setRotateKey( spep_5 -3 + 76, 1, 43.3 );
setRotateKey( spep_5 -3 + 77, 1, 43.3 );
setRotateKey( spep_5 -3 + 78, 1, -23.8 );
setRotateKey( spep_5 -3 + 79, 1, -23.8 );
setRotateKey( spep_5 -3 + 80, 1, 43.3 );
setRotateKey( spep_5 -5 + 100, 1, 43.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--旋回
SE022 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);

--敵痺れる
SE023 = playSeVer2( spep_5 + 38, 1056, "", 0, 0, 0, -1);

--蹴り落とし
SE024 = playSeVer2( spep_5 + 46, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 56, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_5 + 68, 1183, "",spep_5 + 152, 0, 20, -1);
SE027 = playSeVer2( spep_5 + 68, 1121, "",spep_5 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 68, SE027, 71 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 100 -4;

-------------------------------------------------
-- 敵地面に叩きつけられ落下
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0); --敵地面に叩きつけられ落下	ef_008		エフェクト手前、描き文字、白フェード、ef_009と同時表示
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 180 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6f, 255);

base_6b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0); --敵地面に叩きつけられ落下	ef_009		エフェクト、背景、集中線、ef_008と同時表示
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 180 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6b, 255);

-- ** 敵キャラクター ** --
-- setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 40, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

-- setMoveKey( spep_6 -3 + 0, 1, -204.2, -327.8 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -202.1, -304.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -199, -282.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -195, -260.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -190.3, -239.7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -184.7, -219 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -178.4, -198.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -171.3, -179.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -163.4, -159.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -154.9, -141.1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -145.5, -122.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -135.3, -105.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -124.4, -88 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -112.5, -71.3 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -99.8, -55.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -86, -39.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -71.2, -25.1 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -55.2, -11.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -38, 1.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -11.7, -3.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -11.7, -3.3 , 0 );

-- setScaleKey( spep_6 -3 + 0, 1, 6.85, 6.85 );
setScaleKey( spep_6 -2 + 2, 1, 6.51, 6.51 );
setScaleKey( spep_6 -3 + 4, 1, 6.17, 6.17 );
setScaleKey( spep_6 -3 + 6, 1, 5.84, 5.84 );
setScaleKey( spep_6 -3 + 8, 1, 5.51, 5.51 );
setScaleKey( spep_6 -3 + 10, 1, 5.18, 5.18 );
setScaleKey( spep_6 -3 + 12, 1, 4.85, 4.85 );
setScaleKey( spep_6 -3 + 14, 1, 4.52, 4.52 );
setScaleKey( spep_6 -3 + 16, 1, 4.2, 4.2 );
setScaleKey( spep_6 -3 + 18, 1, 3.87, 3.87 );
setScaleKey( spep_6 -3 + 20, 1, 3.55, 3.55 );
setScaleKey( spep_6 -3 + 22, 1, 3.23, 3.23 );
setScaleKey( spep_6 -3 + 24, 1, 2.91, 2.91 );
setScaleKey( spep_6 -3 + 26, 1, 2.58, 2.58 );
setScaleKey( spep_6 -3 + 28, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 32, 1, 1.58, 1.58 );
setScaleKey( spep_6 -3 + 34, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_6 -3 + 40, 1, 0.5, 0.5 );

-- setRotateKey( spep_6 -3 + 0, 1, -1.3 );
setRotateKey( spep_6 -2 + 2, 1, 0.3 );
setRotateKey( spep_6 -3 + 4, 1, 1.9 );
setRotateKey( spep_6 -3 + 6, 1, 3.5 );
setRotateKey( spep_6 -3 + 8, 1, 5.1 );
setRotateKey( spep_6 -3 + 10, 1, 6.7 );
setRotateKey( spep_6 -3 + 12, 1, 8.3 );
setRotateKey( spep_6 -3 + 14, 1, 9.9 );
setRotateKey( spep_6 -3 + 16, 1, 11.6 );
setRotateKey( spep_6 -3 + 18, 1, 13.2 );
setRotateKey( spep_6 -3 + 20, 1, 14.9 );
setRotateKey( spep_6 -3 + 22, 1, 16.6 );
setRotateKey( spep_6 -3 + 24, 1, 18.3 );
setRotateKey( spep_6 -3 + 26, 1, 20.1 );
setRotateKey( spep_6 -3 + 28, 1, 21.8 );
setRotateKey( spep_6 -3 + 30, 1, 23.6 );
setRotateKey( spep_6 -3 + 32, 1, 25.5 );
setRotateKey( spep_6 -3 + 34, 1, 27.3 );
setRotateKey( spep_6 -3 + 36, 1, 29.2 );
setRotateKey( spep_6 -3 + 38, 1, 31.2 );
setRotateKey( spep_6 -3 + 40, 1, 31.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 180 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--地面激突
SE028 = playSeVer2( spep_6 + 36, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 40 -3); -- ダメージ表示フレーム
endPhase( spep_6 + 180 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- ナッパ:気だめ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --ナッパ:気だめ、セリフカットイン	ef_001		キャラ、エフェクト、背景、集中線
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 180 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 180 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 180 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 180 -5, base_1, 255);
setEffAlphaKey( spep_1 + 180 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 90;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 -60, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 -60, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 -60, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 -60, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 180 -4 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_1 + 0, 1269, "",spep_1 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 25 );

--イナヅマと地割れ
SE002 = playSeVer2( spep_1 + 14, 1147, "",spep_1 + 188, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 14, SE002, 63 );

--構える
SE003 = playSeVer2( spep_1 + 18, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 18, 1003, "", 0, 0, 0, -1);

--イナヅマと地割れ
SE005 = playSeVer2( spep_1 + 18, 1044, "",spep_1 + 188, 28, 14, -1);

--雷落ちる
SE006 = playSeVer2( spep_1 + 66, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE006, 158 );

--顔カットイン
SE007 = playSeVer2( spep_1 + 94, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 180 -4;


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
-- ナッパ:踏ん張って跳躍
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); --ナッパ:踏ん張って跳躍→手前に突進	ef_002		キャラ、エフェクト、背景、描き文字、白フェード
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 108 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 108 -4 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--飛び上がる
SE009 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 52, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 63 );
SE010 = playSeVer2( spep_2 + 24, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 24, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 124, 0, 42, -1);
SE013 = playSeVer2( spep_2 + 24, 1314, "",spep_2 + 124, 0, 42, -1);

--画面遷移
SE014 = playSeVer2( spep_2 + 70, 1072, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;

-------------------------------------------------
-- ナッパ:拳を振りかぶる
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03r, 0x80, -1, 0, 0, 0); --ナッパ:拳を振りかぶる	ef_003		キャラ、エフェクト、背景、白フェード
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 40 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 40 -5, base_3, 255);
setEffAlphaKey( spep_3 + 40 -4, base_3, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 40 -2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--殴る
SE015 = playSeVer2( spep_3 + 18, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 30, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 30, 1043, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 30, 1038, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 40 -4;

-------------------------------------------------
-- 敵を殴る→敵がビリビリで身動き取れず
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --敵を殴る→敵がビリビリで身動き取れず	ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 60 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 60 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 60 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --敵を殴る→敵がビリビリで身動き取れず	ef_005
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 60 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 60 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 60 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 60 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 60 -4, base_4b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 -3 + 0, 1, 104 );
changeAnime( spep_4 -3 + 8, 1, 108 );
changeAnime( spep_4 -3 + 12, 1, 106 );

setBlendColor( spep_4 -3 + 12, 1, 2, 0.6, 0.2, 0.2, 0.5 );

-- setMoveKey( spep_4 -3 + 0, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 165.5, -97 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 165.5, -97.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 277.2, -88.3 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 277.2, -88.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 307.5, -91.7 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 307.5, -91.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 340.1, -104.6 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 340.1, -104.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 267.1, -113.2 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 267.1, -113.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 185, -108 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 185, -108 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 91.6, -121 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 91.6, -121 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 84.69, -121, 0 );
setMoveKey( spep_4 -3 + 21, 1, 84.69, -121, 0 );
setMoveKey( spep_4 -3 + 22, 1, 77.78, -112.8, 0 );
setMoveKey( spep_4 -3 + 23, 1, 77.78, -112.8, 0 );
setMoveKey( spep_4 -3 + 24, 1, 70.87, -121.0, 0 );
setMoveKey( spep_4 -3 + 25, 1, 70.87, -121.0, 0 );
setMoveKey( spep_4 -3 + 26, 1, 63.96, -121.5, 0 );
setMoveKey( spep_4 -3 + 27, 1, 63.96, -121.5, 0 );
setMoveKey( spep_4 -3 + 28, 1, 57.05, -121.0, 0 );
setMoveKey( spep_4 -3 + 29, 1, 57.05, -121.0, 0 );
setMoveKey( spep_4 -3 + 30, 1, 50.14, -112.8, 0 );
setMoveKey( spep_4 -3 + 31, 1, 50.14, -112.8, 0 );
setMoveKey( spep_4 -3 + 32, 1, 43.23, -121.0, 0 );
setMoveKey( spep_4 -3 + 33, 1, 43.23, -121.0, 0 );
setMoveKey( spep_4 -3 + 34, 1, 36.32, -121.5, 0 );
setMoveKey( spep_4 -3 + 35, 1, 36.32, -121.5, 0 );
setMoveKey( spep_4 -3 + 36, 1, 29.41, -121.0, 0 );
setMoveKey( spep_4 -3 + 37, 1, 29.41, -121.0, 0 );
setMoveKey( spep_4 -3 + 38, 1, 22.5, -121.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 21.7, -112.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 8.5, -121 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 8.1, -112.7 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -5.3, -121.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -6, -112.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -12.3, -121 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -5.7, -112.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -12.2, -121.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -6, -112.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -12.3, -121 , 0 );
-- setMoveKey( spep_4 -5 + 60, 1, -12.3, -121 , 0 );

setScaleKey( spep_4 + 0, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 8, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 9, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 10, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 11, 1, 2.85, 2.85 );
setScaleKey( spep_4 -3 + 12, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 13, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 14, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 15, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 16, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 19, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 38, 1, 2.22, 2.22 );
setScaleKey( spep_4 -5 + 60, 1, 2.22, 2.22 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 11, 1, 0 );
setRotateKey( spep_4 -3 + 12, 1, -57.4 );
setRotateKey( spep_4 -3 + 14, 1, -57.4 );
setRotateKey( spep_4 -3 + 15, 1, -57.4 );
setRotateKey( spep_4 -3 + 16, 1, -50.3 );
setRotateKey( spep_4 -3 + 17, 1, -50.3 );
setRotateKey( spep_4 -3 + 18, 1, -43.2 );
setRotateKey( spep_4 -3 + 19, 1, -43.2 );
setRotateKey( spep_4 -3 + 38, 1, -43.2 );
setRotateKey( spep_4 -5 + 60, 1, -43.2 );


-- ** 音 ** --
--旋回
SE019 = playSeVer2( spep_4 + 46, 1116, "",spep_4 + 96, 0, 22, -1);

--敵痺れる
SE020 = playSeVer2( spep_4 + 52, 1056, "", 0, 0, 0, -1);

--旋回
SE021 = playSeVer2( spep_4 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE021, 40 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 60 -4;

-------------------------------------------------
-- ナッパ回り込んでオーバーヘッドキック
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0); --ナッパ回り込んでオーバーヘッドキック	ef_006		キャラ、エフェクト手前(敵用ビリビリ含む)ef_007と同時表示
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 100 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 100 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 100 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 100 -5, base_5f, 255);
setEffAlphaKey( spep_5 + 100 -4, base_5f, 0);

base_5b = entryEffect( spep_5 + 0, SP_05br, 0x80, -1, 0, 0, 0); --ナッパ回り込んでオーバーヘッドキック	ef_007		キャラ、エフェクト敵より後ろ、背景、ef_006と同時表示
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 100 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 100 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 100 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 100 -5, base_5b, 255);
setEffAlphaKey( spep_5 + 100 -4, base_5b, 0);

-- ** 敵キャラクター ** --
-- setDisp( spep_5 -3 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 76, 1, 108 );
changeAnime( spep_5 -3 + 78, 1, 106 );
changeAnime( spep_5 -3 + 80, 1, 108 );

setBlendColor( spep_5 -3 + 78, 1, 0, 0, 0, 0, 0 );

-- setMoveKey( spep_5 -3 + 0, 1, 176.1, -26.6 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 181.2, -30.1 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 171.4, -32 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 177.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 173.4, -31.6 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 173.7, -31.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 49, 1, 175.2, -22.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 177.9, -227 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 184.2, -217.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 177.3, -227.1 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 182.1, -218.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 191.5, -224.3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 180.6, -210.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 173.8, -227.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 184.2, -217.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 177.3, -227.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 180.6, -210.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 177.9, -227 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 196.6, -290.6 , 0 );
setMoveKey( spep_5 -3 + 75, 1, 193.9, -239.7 , 0 );
setMoveKey( spep_5 -3 + 77, 1, 250.1, -237.6 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 232.4, -289.4 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 263.1, -329.6 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 375.4, -616.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 463.1, -838.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 529.2, -1003.3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 576.8, -1119.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 609, -1194.2 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 628.9, -1236.7 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 639.5, -1254.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 643.9, -1256.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 645.3, -1249.8 , 0 );
-- setMoveKey( spep_5 -5 + 100, 1, 645.3, -1249.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2, 2 );
setScaleKey( spep_5 -3 + 48, 1, 2, 2 );
setScaleKey( spep_5 -3 + 49, 1, 2, 2 );
setScaleKey( spep_5 -3 + 50, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 70, 1, 3.59, 3.59 );
setScaleKey( spep_5 -3 + 72, 1, 3.95, 3.95 );
setScaleKey( spep_5 -3 + 75, 1, 3.77, 3.77 );
setScaleKey( spep_5 -3 + 77, 1, 3.75, 3.75 );
setScaleKey( spep_5 -3 + 78, 1, 3.73, 3.73 );
setScaleKey( spep_5 -3 + 79, 1, 3.73, 3.73 );
setScaleKey( spep_5 -3 + 80, 1, 3.75, 3.75 );
setScaleKey( spep_5 -5 + 100, 1, 3.75, 3.75 );

setRotateKey( spep_5 + 0, 1, -68.7 );
setRotateKey( spep_5 -3 + 48, 1, -68.7 );
setRotateKey( spep_5 -3 + 50, 1, -68.6 );
setRotateKey( spep_5 -3 + 75, 1, -68.6 );
setRotateKey( spep_5 -3 + 76, 1, 43.3 );
setRotateKey( spep_5 -3 + 77, 1, 43.3 );
setRotateKey( spep_5 -3 + 78, 1, -23.8 );
setRotateKey( spep_5 -3 + 79, 1, -23.8 );
setRotateKey( spep_5 -3 + 80, 1, 43.3 );
setRotateKey( spep_5 -5 + 100, 1, 43.3 );


-- ** 音 ** --
--旋回
SE022 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);

--敵痺れる
SE023 = playSeVer2( spep_5 + 38, 1056, "", 0, 0, 0, -1);

--蹴り落とし
SE024 = playSeVer2( spep_5 + 46, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 56, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_5 + 68, 1183, "",spep_5 + 152, 0, 20, -1);
SE027 = playSeVer2( spep_5 + 68, 1121, "",spep_5 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 68, SE027, 71 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 100 -4;

-------------------------------------------------
-- 敵地面に叩きつけられ落下
-------------------------------------------------
-- ** エフェクト等 ** --
base_6f = entryEffect( spep_6 + 0, SP_06r, 0x100, -1, 0, 0, 0); --敵地面に叩きつけられ落下	ef_008		エフェクト手前、描き文字、白フェード、ef_009と同時表示
setEffMoveKey( spep_6 + 0, base_6f, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6f, 1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6f, 0);
setEffRotateKey( spep_6 + 180 -4, base_6f, 0);
setEffAlphaKey( spep_6 + 0, base_6f, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6f, 255);

base_6b = entryEffect( spep_6 + 0, SP_06br, 0x80, -1, 0, 0, 0); --敵地面に叩きつけられ落下	ef_009		エフェクト、背景、集中線、ef_008と同時表示
setEffMoveKey( spep_6 + 0, base_6b, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6b, 1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6b, 0);
setEffRotateKey( spep_6 + 180 -4, base_6b, 0);
setEffAlphaKey( spep_6 + 0, base_6b, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6b, 255);

-- ** 敵キャラクター ** --
-- setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 40, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

-- setMoveKey( spep_6 -3 + 0, 1, -204.2, -327.8 , 0 );
setMoveKey( spep_6 -2 + 2, 1, -202.1, -304.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -199, -282.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -195, -260.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -190.3, -239.7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -184.7, -219 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -178.4, -198.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -171.3, -179.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -163.4, -159.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -154.9, -141.1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -145.5, -122.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -135.3, -105.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -124.4, -88 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -112.5, -71.3 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -99.8, -55.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -86, -39.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -71.2, -25.1 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -55.2, -11.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -38, 1.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -11.7, -3.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -11.7, -3.3 , 0 );

-- setScaleKey( spep_6 -3 + 0, 1, 6.85, 6.85 );
setScaleKey( spep_6 -2 + 2, 1, 6.51, 6.51 );
setScaleKey( spep_6 -3 + 4, 1, 6.17, 6.17 );
setScaleKey( spep_6 -3 + 6, 1, 5.84, 5.84 );
setScaleKey( spep_6 -3 + 8, 1, 5.51, 5.51 );
setScaleKey( spep_6 -3 + 10, 1, 5.18, 5.18 );
setScaleKey( spep_6 -3 + 12, 1, 4.85, 4.85 );
setScaleKey( spep_6 -3 + 14, 1, 4.52, 4.52 );
setScaleKey( spep_6 -3 + 16, 1, 4.2, 4.2 );
setScaleKey( spep_6 -3 + 18, 1, 3.87, 3.87 );
setScaleKey( spep_6 -3 + 20, 1, 3.55, 3.55 );
setScaleKey( spep_6 -3 + 22, 1, 3.23, 3.23 );
setScaleKey( spep_6 -3 + 24, 1, 2.91, 2.91 );
setScaleKey( spep_6 -3 + 26, 1, 2.58, 2.58 );
setScaleKey( spep_6 -3 + 28, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 30, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 32, 1, 1.58, 1.58 );
setScaleKey( spep_6 -3 + 34, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_6 -3 + 40, 1, 0.5, 0.5 );

-- setRotateKey( spep_6 -3 + 0, 1, -1.3 );
setRotateKey( spep_6 -2 + 2, 1, 0.3 );
setRotateKey( spep_6 -3 + 4, 1, 1.9 );
setRotateKey( spep_6 -3 + 6, 1, 3.5 );
setRotateKey( spep_6 -3 + 8, 1, 5.1 );
setRotateKey( spep_6 -3 + 10, 1, 6.7 );
setRotateKey( spep_6 -3 + 12, 1, 8.3 );
setRotateKey( spep_6 -3 + 14, 1, 9.9 );
setRotateKey( spep_6 -3 + 16, 1, 11.6 );
setRotateKey( spep_6 -3 + 18, 1, 13.2 );
setRotateKey( spep_6 -3 + 20, 1, 14.9 );
setRotateKey( spep_6 -3 + 22, 1, 16.6 );
setRotateKey( spep_6 -3 + 24, 1, 18.3 );
setRotateKey( spep_6 -3 + 26, 1, 20.1 );
setRotateKey( spep_6 -3 + 28, 1, 21.8 );
setRotateKey( spep_6 -3 + 30, 1, 23.6 );
setRotateKey( spep_6 -3 + 32, 1, 25.5 );
setRotateKey( spep_6 -3 + 34, 1, 27.3 );
setRotateKey( spep_6 -3 + 36, 1, 29.2 );
setRotateKey( spep_6 -3 + 38, 1, 31.2 );
setRotateKey( spep_6 -3 + 40, 1, 31.2 );


-- ** 音 ** --
--地面激突
SE028 = playSeVer2( spep_6 + 36, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 40 -3); -- ダメージ表示フレーム
endPhase( spep_6 + 180 -8); -- 終了フレーム

end
