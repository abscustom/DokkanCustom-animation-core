--1025730:超サイヤ人3孫悟空&超サイヤ人2ベジータ_フルパワーエネルギーラッシュ
--sp_effect_b1_00239
--sp2503

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
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

--味方側
SP_01 = 161442; --ベジータ飛ぶ    ef_001_front
SP_02 = 161443; --アッパー〜爆発   ef_002_front
SP_03 = 161444; --アッパー〜爆発   ef_002_back
SP_04 = 161445; --KO    ef_003

--敵側
SP_01r = 161446;    --ベジータ飛ぶ    ef_001_re
SP_02r = 161447;    --アッパー〜爆発   ef_002_front_re
SP_03r = 161448;    --アッパー〜爆発   ef_002_back_re

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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
------------------------------------------------------
-- ベジータ飛ぶ(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 148, 0x100, -1, 0, 0, 0 );  --ベジータ飛ぶ    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 148, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 148 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 148 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 148, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE002 = playSeVer2( spep_0 + 12, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1168, "",spep_0 + 110, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 60 );

--ベジータ向かっていく
SE005 = playSeVer2( spep_0 + 72, 1182, "",spep_0 + 160, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 72, 9, "",spep_0 + 160, 0, 8, -1);
SE007 = playSeVer2( spep_0 + 76, 1117, "",spep_0 + 160, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 104, 44, "",spep_0 + 160, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 106, 1277, "",spep_0 + 160, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);

    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_c = spep_0 + 148;


--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
--振りかぶる
SE011 = playSeVer2( spep_c + 86, 1116, "",spep_c + 122, 0, 14, -1);
SE012 = playSeVer2( spep_c + 86, 1167, "",spep_c + 128, 0, 6, 0.5);
setSeVolumeByWorkId( spep_c + 86, SE012, 76 );
setPitch( spep_c + 86, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- アッパー〜爆発(1008F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --アッパー〜爆発   ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1008, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1008, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 1008, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 1008, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --アッパー〜爆発   ef_002_back
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1008, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1008, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 1008, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 1008, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_2 + 994, SP_04, 0x100, -1, 0, 0, 0 );  --KO    ef_003
setEffMoveKey( spep_2 + 994, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1124, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 994, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1124, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 994, KO, 0 );
setEffRotateKey( spep_2 + 1124, KO, 0 );
setEffAlphaKey( spep_2 + 994, KO, 255 );
setEffAlphaKey( spep_2 + 1124, KO, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 34, 1, 1 );
setDisp( spep_2 -1 + 142, 1, 0 );
changeAnime( spep_2 -1 + 34, 1, 107 );
changeAnime( spep_2 -1 + 48, 1, 106 );
changeAnime( spep_2 -1 + 98, 1, 6 );

setMoveKey( spep_2 -1 + 34, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 35, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 36, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 37, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 38, 1, -275.7, 4.1 , 0 );
setMoveKey( spep_2 -1 + 39, 1, -275.7, 4.1 , 0 );
setMoveKey( spep_2 -1 + 40, 1, 5.5, 134.7 , 0 );
setMoveKey( spep_2 -1 + 41, 1, 5.5, 134.7 , 0 );
setMoveKey( spep_2 -1 + 42, 1, 0, 129.2 , 0 );
setMoveKey( spep_2 -1 + 43, 1, 0, 129.2 , 0 );
setMoveKey( spep_2 -1 + 44, 1, 10.8, 137.3 , 0 );
setMoveKey( spep_2 -1 + 45, 1, 10.8, 137.3 , 0 );
setMoveKey( spep_2 -1 + 46, 1, 21.6, 134.5 , 0 );
setMoveKey( spep_2 -1 + 47, 1, 21.6, 134.5 , 0 );--
setMoveKey( spep_2 -1 + 48, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 49, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 51, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 63.1, 12.9 , 0 );
setMoveKey( spep_2 -1 + 53, 1, 63.1, 12.9 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 52, -6.4 , 0 );
setMoveKey( spep_2 -1 + 55, 1, 52, -6.4 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 70.6, 3.3 , 0 );
setMoveKey( spep_2 -1 + 57, 1, 70.6, 3.3 , 0 );
setMoveKey( spep_2 -1 + 58, 1, 84, 24.2 , 0 );
setMoveKey( spep_2 -1 + 59, 1, 84, 24.2 , 0 );
setMoveKey( spep_2 -1 + 60, 1, 70.6, 4.5 , 0 );
setMoveKey( spep_2 -1 + 61, 1, 70.6, 4.5 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 77.4, 13 , 0 );
setMoveKey( spep_2 -1 + 63, 1, 77.4, 13 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 92.4, 34 , 0 );
setMoveKey( spep_2 -1 + 65, 1, 92.4, 34 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 94.4, 40.1 , 0 );
setMoveKey( spep_2 -1 + 67, 1, 94.4, 40.1 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 81, 20.4 , 0 );
setMoveKey( spep_2 -1 + 69, 1, 81, 20.4 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 86, 22.9 , 0 );
setMoveKey( spep_2 -1 + 71, 1, 86, 22.9 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 96.8, 44.1 , 0 );
setMoveKey( spep_2 -1 + 73, 1, 96.8, 44.1 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 98.1, 44.4 , 0 );
setMoveKey( spep_2 -1 + 75, 1, 98.1, 44.4 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 98.7, 43.9 , 0 );
setMoveKey( spep_2 -1 + 77, 1, 98.7, 43.9 , 0 );
setMoveKey( spep_2 -1 + 78, 1, 87.2, 28.3 , 0 );
setMoveKey( spep_2 -1 + 79, 1, 87.2, 28.3 , 0 );
setMoveKey( spep_2 -1 + 80, 1, 88.8, 29.8 , 0 );
setMoveKey( spep_2 -1 + 81, 1, 88.8, 29.8 , 0 );
setMoveKey( spep_2 -1 + 82, 1, 99.1, 49.8 , 0 );
setMoveKey( spep_2 -1 + 83, 1, 99.1, 49.8 , 0 );
setMoveKey( spep_2 -1 + 84, 1, 101.8, 48.6 , 0 );
setMoveKey( spep_2 -1 + 85, 1, 101.8, 48.6 , 0 );
setMoveKey( spep_2 -1 + 86, 1, 99.1, 45.9 , 0 );
setMoveKey( spep_2 -1 + 87, 1, 99.1, 45.9 , 0 );
setMoveKey( spep_2 -1 + 88, 1, 108.5, 35.3 , 0 );
setMoveKey( spep_2 -1 + 89, 1, 108.5, 35.3 , 0 );
setMoveKey( spep_2 -1 + 90, 1, 112.1, 25.7 , 0 );
setMoveKey( spep_2 -1 + 97, 1, 112.1, 25.7 , 0 );--
setMoveKey( spep_2 -1 + 98, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 99, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 100, 1, 191.1, -191.9 , 0 );
setMoveKey( spep_2 -1 + 101, 1, 191.1, -191.9 , 0 );
setMoveKey( spep_2 -1 + 102, 1, 182.5, -203.2 , 0 );
setMoveKey( spep_2 -1 + 103, 1, 182.5, -203.2 , 0 );
setMoveKey( spep_2 -1 + 104, 1, 197.5, -188 , 0 );
setMoveKey( spep_2 -1 + 105, 1, 197.5, -188 , 0 );
setMoveKey( spep_2 -1 + 106, 1, 181.5, -198.5 , 0 );
setMoveKey( spep_2 -1 + 107, 1, 181.5, -198.5 , 0 );
setMoveKey( spep_2 -1 + 108, 1, 191.2, -190.4 , 0 );
setMoveKey( spep_2 -1 + 109, 1, 191.2, -190.4 , 0 );
setMoveKey( spep_2 -1 + 110, 1, 185, -198.1 , 0 );
setMoveKey( spep_2 -1 + 111, 1, 185, -198.1 , 0 );
setMoveKey( spep_2 -1 + 112, 1, 189, -192.7 , 0 );
setMoveKey( spep_2 -1 + 113, 1, 189, -192.7 , 0 );
setMoveKey( spep_2 -1 + 114, 1, 181.6, -200.3 , 0 );
setMoveKey( spep_2 -1 + 115, 1, 181.6, -200.3 , 0 );
setMoveKey( spep_2 -1 + 116, 1, 180.7, -200 , 0 );
setMoveKey( spep_2 -1 + 117, 1, 180.7, -200 , 0 );
setMoveKey( spep_2 -1 + 118, 1, 181.5, -198.4 , 0 );
setMoveKey( spep_2 -1 + 119, 1, 181.5, -198.4 , 0 );
setMoveKey( spep_2 -1 + 120, 1, 184.9, -195.8 , 0 );
setMoveKey( spep_2 -1 + 121, 1, 184.9, -195.8 , 0 );
setMoveKey( spep_2 -1 + 122, 1, 182, -198.1 , 0 );
setMoveKey( spep_2 -1 + 123, 1, 182, -198.1 , 0 );
setMoveKey( spep_2 -1 + 124, 1, 184.5, -195.7 , 0 );
setMoveKey( spep_2 -1 + 125, 1, 184.5, -195.7 , 0 );
setMoveKey( spep_2 -1 + 126, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 127, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 128, 1, 204.2, -185 , 0 );
setMoveKey( spep_2 -1 + 133, 1, 204.2, -185 , 0 );
setMoveKey( spep_2 -1 + 134, 1, 206.3, -183.1 , 0 );
setMoveKey( spep_2 -1 + 142, 1, 206.3, -183.1 , 0 );

sx2 = 0.3;
sy2 = 0.3;

setScaleKey( spep_2 -1 + 34, 1, 4.09, 4.09 );
setScaleKey( spep_2 -1 + 39, 1, 4.09, 4.09 );
setScaleKey( spep_2 -1 + 40, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 41, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 42, 1, 1.96, 1.96 );
setScaleKey( spep_2 -1 + 47, 1, 1.96, 1.96 );
setScaleKey( spep_2 -1 + 48, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 49, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 50, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 51, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 52, 1, 3.16, 3.16 );
setScaleKey( spep_2 -1 + 53, 1, 3.16, 3.16 );
setScaleKey( spep_2 -1 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_2 -1 + 55, 1, 3.18, 3.18 );
setScaleKey( spep_2 -1 + 56, 1, 3.09, 3.09 );
setScaleKey( spep_2 -1 + 57, 1, 3.09, 3.09 );
setScaleKey( spep_2 -1 + 58, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 59, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 60, 1, 3.07, 3.07 );
setScaleKey( spep_2 -1 + 61, 1, 3.07, 3.07 );
setScaleKey( spep_2 -1 + 62, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 63, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 64, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 65, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 66, 1, 2.92, 2.92 );
setScaleKey( spep_2 -1 + 67, 1, 2.92, 2.92 );
setScaleKey( spep_2 -1 + 68, 1, 2.93, 2.93 );
setScaleKey( spep_2 -1 + 69, 1, 2.93, 2.93 );
setScaleKey( spep_2 -1 + 70, 1, 2.88, 2.88 );
setScaleKey( spep_2 -1 + 71, 1, 2.88, 2.88 );
setScaleKey( spep_2 -1 + 72, 1, 2.86, 2.86 );
setScaleKey( spep_2 -1 + 73, 1, 2.86, 2.86 );
setScaleKey( spep_2 -1 + 74, 1, 2.87, 2.87 );
setScaleKey( spep_2 -1 + 75, 1, 2.87, 2.87 );
setScaleKey( spep_2 -1 + 76, 1, 2.84, 2.84 );
setScaleKey( spep_2 -1 + 77, 1, 2.84, 2.84 );
setScaleKey( spep_2 -1 + 78, 1, 2.81, 2.81 );
setScaleKey( spep_2 -1 + 79, 1, 2.81, 2.81 );
setScaleKey( spep_2 -1 + 80, 1, 2.78, 2.79 );
setScaleKey( spep_2 -1 + 81, 1, 2.78, 2.79 );
setScaleKey( spep_2 -1 + 82, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 83, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 84, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 85, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 86, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 87, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 88, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 97, 1, 2.76, 2.76 );--
setScaleKey( spep_2 -1 + 98, 1, 2.76 + sx2, 2.76 + sy2 );
setScaleKey( spep_2 -1 + 142, 1, 2.76 + sx2, 2.76 + sy2 );

setRotateKey( spep_2 -1 + 34, 1, -64.2 );
setRotateKey( spep_2 -1 + 45, 1, -64.2 );
setRotateKey( spep_2 -1 + 46, 1, -60 );
setRotateKey( spep_2 -1 + 47, 1, -60 );
setRotateKey( spep_2 -1 + 48, 1, -41.9 );
setRotateKey( spep_2 -1 + 49, 1, -41.9 );
setRotateKey( spep_2 -1 + 50, 1, -41.9 );
setRotateKey( spep_2 -1 + 51, 1, -41.9 );
setRotateKey( spep_2 -1 + 52, 1, -36.1 );
setRotateKey( spep_2 -1 + 53, 1, -36.1 );
setRotateKey( spep_2 -1 + 54, 1, -35.9 );
setRotateKey( spep_2 -1 + 55, 1, -35.9 );
setRotateKey( spep_2 -1 + 56, 1, -33.7 );
setRotateKey( spep_2 -1 + 57, 1, -33.7 );
setRotateKey( spep_2 -1 + 58, 1, -34.5 );
setRotateKey( spep_2 -1 + 59, 1, -34.5 );
setRotateKey( spep_2 -1 + 60, 1, -34.3 );
setRotateKey( spep_2 -1 + 61, 1, -34.3 );
setRotateKey( spep_2 -1 + 62, 1, -34.2 );
setRotateKey( spep_2 -1 + 63, 1, -34.2 );
setRotateKey( spep_2 -1 + 64, 1, -34 );
setRotateKey( spep_2 -1 + 65, 1, -34 );
setRotateKey( spep_2 -1 + 66, 1, -33.8 );
setRotateKey( spep_2 -1 + 67, 1, -33.8 );
setRotateKey( spep_2 -1 + 68, 1, -33.6 );
setRotateKey( spep_2 -1 + 69, 1, -33.6 );
setRotateKey( spep_2 -1 + 70, 1, -33.4 );
setRotateKey( spep_2 -1 + 71, 1, -33.4 );
setRotateKey( spep_2 -1 + 72, 1, -34.2 );
setRotateKey( spep_2 -1 + 73, 1, -34.2 );
setRotateKey( spep_2 -1 + 74, 1, -34.1 );
setRotateKey( spep_2 -1 + 75, 1, -34.1 );
setRotateKey( spep_2 -1 + 76, 1, -33.7 );
setRotateKey( spep_2 -1 + 77, 1, -33.7 );
setRotateKey( spep_2 -1 + 78, 1, -33.4 );
setRotateKey( spep_2 -1 + 79, 1, -33.4 );
setRotateKey( spep_2 -1 + 80, 1, -33.1 );
setRotateKey( spep_2 -1 + 81, 1, -33.1 );
setRotateKey( spep_2 -1 + 82, 1, -33.1 );
setRotateKey( spep_2 -1 + 83, 1, -33.1 );
setRotateKey( spep_2 -1 + 84, 1, -32.7 );
setRotateKey( spep_2 -1 + 85, 1, -32.7 );
setRotateKey( spep_2 -1 + 86, 1, -33.1 );
setRotateKey( spep_2 -1 + 97, 1, -33.1 );
setRotateKey( spep_2 -1 + 98, 1, 15.8 );
setRotateKey( spep_2 -1 + 126, 1, 15.8 );
setRotateKey( spep_2 -1 + 128, 1, 6 );
setRotateKey( spep_2 -1 + 133, 1, 6 );
setRotateKey( spep_2 -1 + 134, 1, 3 );
setRotateKey( spep_2 -1 + 139, 1, 3 );
setRotateKey( spep_2 -1 + 140, 1, 1 );
setRotateKey( spep_2 -1 + 142, 1, 1 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 166, 1, 1 );
setDisp( spep_2 -1 + 262, 1, 0 );

changeAnime( spep_2 -1 + 166, 1, 107 );
changeAnime( spep_2 -1 + 200, 1, 106 );
changeAnime( spep_2 -1 + 224, 1, 7 );

setMoveKey( spep_2 -1 + 166, 1, 112.2, 694.2 , 0 );
setMoveKey( spep_2 -1 + 168, 1, 90, 586.2 , 0 );
setMoveKey( spep_2 -1 + 170, 1, 67.7, 478.3 , 0 );
setMoveKey( spep_2 -1 + 172, 1, 45.4, 370.3 , 0 );
setMoveKey( spep_2 -1 + 174, 1, 23.2, 262.3 , 0 );
setMoveKey( spep_2 -1 + 176, 1, 0.9, 154.3 , 0 );
setMoveKey( spep_2 -1 + 178, 1, -21.4, 46.3 , 0 );

setMoveKey( spep_2 -1 + 180, 1, -26.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 181, 1, -26.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 182, 1, -36.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 183, 1, -36.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 184, 1, -107.1, -45.3 , 0 );
setMoveKey( spep_2 -1 + 185, 1, -107.1, -45.3 , 0 );
setMoveKey( spep_2 -1 + 186, 1, -96.1, -46.6 , 0 );
setMoveKey( spep_2 -1 + 187, 1, -96.1, -46.6 , 0 );
setMoveKey( spep_2 -1 + 188, 1, -194.6, -53.8 , 0 );
setMoveKey( spep_2 -1 + 189, 1, -194.6, -53.8 , 0 );
setMoveKey( spep_2 -1 + 190, 1, -196, -54.3 , 0 );
setMoveKey( spep_2 -1 + 191, 1, -196, -54.3 , 0 );
setMoveKey( spep_2 -1 + 192, 1, -195.1, -54.7 , 0 );
setMoveKey( spep_2 -1 + 193, 1, -195.1, -54.7 , 0 );
setMoveKey( spep_2 -1 + 194, 1, -202.3, -51.6 , 0 );
setMoveKey( spep_2 -1 + 195, 1, -202.3, -51.6 , 0 );
setMoveKey( spep_2 -1 + 196, 1, -204, -50 , 0 );
setMoveKey( spep_2 -1 + 197, 1, -204, -50 , 0 );
setMoveKey( spep_2 -1 + 198, 1, -210.9, -50 , 0 );
setMoveKey( spep_2 -1 + 199, 1, -210.9, -50 , 0 );--

setMoveKey( spep_2 -1 + 200, 1, 20.2, 183.2 , 0 );
setMoveKey( spep_2 -1 + 202, 1, 16.8, 186.7 , 0 );
setMoveKey( spep_2 -1 + 204, 1, 14, 189.6 , 0 );
setMoveKey( spep_2 -1 + 206, 1, 11.8, 191.9 , 0 );
setMoveKey( spep_2 -1 + 208, 1, 10.2, 193.5 , 0 );
setMoveKey( spep_2 -1 + 210, 1, 9, 194.6 , 0 );
setMoveKey( spep_2 -1 + 212, 1, 8.2, 195.4 , 0 );
setMoveKey( spep_2 -1 + 214, 1, 7.7, 196 , 0 );
setMoveKey( spep_2 -1 + 216, 1, 7.3, 196.3 , 0 );
setMoveKey( spep_2 -1 + 218, 1, 7.1, 196.4 , 0 );
setMoveKey( spep_2 -1 + 220, 1, 7, 196.5 , 0 );
setMoveKey( spep_2 -1 + 222, 1, 7, 196.4 , 0 );
setMoveKey( spep_2 -1 + 223, 1, 7, 196.4 , 0 );--
setMoveKey( spep_2 -1 + 224, 1, -154.7, 691.1 , 0 );
setMoveKey( spep_2 -1 + 226, 1, -154.1, 692.2 , 0 );
setMoveKey( spep_2 -1 + 228, 1, -153.3, 693.4 , 0 );
setMoveKey( spep_2 -1 + 230, 1, -153.3, 693.7 , 0 );
setMoveKey( spep_2 -1 + 232, 1, -152.1, 695.4 , 0 );
setMoveKey( spep_2 -1 + 234, 1, -152.1, 695.4 , 0 );
setMoveKey( spep_2 -1 + 236, 1, -150.8, 697 , 0 );
setMoveKey( spep_2 -1 + 238, 1, -150.1, 697.8 , 0 );
setMoveKey( spep_2 -1 + 240, 1, -150.1, 697.8 , 0 );
setMoveKey( spep_2 -1 + 242, 1, -148.9, 699.4 , 0 );
setMoveKey( spep_2 -1 + 244, 1, -148.2, 700.2 , 0 );
setMoveKey( spep_2 -1 + 246, 1, -147.6, 701.1 , 0 );
setMoveKey( spep_2 -1 + 248, 1, -147.6, 701.1 , 0 );
setMoveKey( spep_2 -1 + 250, 1, -146.3, 702.7 , 0 );
setMoveKey( spep_2 -1 + 252, 1, -145.6, 703.5 , 0 );
setMoveKey( spep_2 -1 + 254, 1, -145.6, 703.5 , 0 );
setMoveKey( spep_2 -1 + 256, 1, -144.4, 705.1 , 0 );
setMoveKey( spep_2 -1 + 258, 1, -144.4, 705.1 , 0 );
setMoveKey( spep_2 -1 + 260, 1, -143.3, 706.7 , 0 );
setMoveKey( spep_2 -1 + 262, 1, -143.3, 706.7 , 0 );

sx2_2 = 0.4;
sy2_2 = 0.4;

setScaleKey( spep_2 -1 + 166, 1, 1.93, 1.93 );
setScaleKey( spep_2 -1 + 199, 1, 1.93, 1.93 );--
setScaleKey( spep_2 -1 + 200, 1, 1.46 + sx2_2, 1.46 + sy2_2 );
setScaleKey( spep_2 -1 + 223, 1, 1.46 + sx2_2, 1.46 + sy2_2 );--
setScaleKey( spep_2 -1 + 224, 1, 1.99, 1.99 );
setScaleKey( spep_2 -1 + 262, 1, 1.99, 1.99 );--

setRotateKey( spep_2 -1 + 166, 1, 120 );
setRotateKey( spep_2 -1 + 178, 1, 120 );

setRotateKey( spep_2 -1 + 180, 1, 125 );
setRotateKey( spep_2 -1 + 181, 1, 125 );
setRotateKey( spep_2 -1 + 182, 1, 125 );
setRotateKey( spep_2 -1 + 183, 1, 125 );
setRotateKey( spep_2 -1 + 184, 1, 152 );
setRotateKey( spep_2 -1 + 185, 1, 152 );
setRotateKey( spep_2 -1 + 186, 1, 152 );
setRotateKey( spep_2 -1 + 187, 1, 152 );
setRotateKey( spep_2 -1 + 188, 1, 167 );
setRotateKey( spep_2 -1 + 193, 1, 167 );
setRotateKey( spep_2 -1 + 194, 1, 171 );
setRotateKey( spep_2 -1 + 197, 1, 171 );
setRotateKey( spep_2 -1 + 198, 1, 173 );
setRotateKey( spep_2 -1 + 199, 1, 173 );--
setRotateKey( spep_2 -1 + 200, 1, 143 );
setRotateKey( spep_2 -1 + 202, 1, 153.4 );
setRotateKey( spep_2 -1 + 204, 1, 162.4 );
setRotateKey( spep_2 -1 + 206, 1, 169.4 );
setRotateKey( spep_2 -1 + 208, 1, 174.3 );
setRotateKey( spep_2 -1 + 210, 1, 177.9 );
setRotateKey( spep_2 -1 + 212, 1, 180.3 );
setRotateKey( spep_2 -1 + 214, 1, 182 );
setRotateKey( spep_2 -1 + 216, 1, 183.2 );
setRotateKey( spep_2 -1 + 218, 1, 187.6 );
setRotateKey( spep_2 -1 + 220, 1, 190 );
setRotateKey( spep_2 -1 + 222, 1, 190.7 );
setRotateKey( spep_2 -1 + 223, 1, 190.7 );--
setRotateKey( spep_2 -1 + 224, 1, 316 );
setRotateKey( spep_2 -1 + 226, 1, 317.9 );
setRotateKey( spep_2 -1 + 228, 1, 319.8 );
setRotateKey( spep_2 -1 + 230, 1, 319.8 );
setRotateKey( spep_2 -1 + 232, 1, 323.6 );
setRotateKey( spep_2 -1 + 234, 1, 323.6 );
setRotateKey( spep_2 -1 + 236, 1, 327.3 );
setRotateKey( spep_2 -1 + 238, 1, 329.2 );
setRotateKey( spep_2 -1 + 240, 1, 329.2 );
setRotateKey( spep_2 -1 + 242, 1, 333 );
setRotateKey( spep_2 -1 + 244, 1, 334.9 );
setRotateKey( spep_2 -1 + 246, 1, 336.8 );
setRotateKey( spep_2 -1 + 248, 1, 336.8 );
setRotateKey( spep_2 -1 + 250, 1, 340.6 );
setRotateKey( spep_2 -1 + 252, 1, 342.4 );
setRotateKey( spep_2 -1 + 254, 1, 342.4 );
setRotateKey( spep_2 -1 + 256, 1, 346.2 );
setRotateKey( spep_2 -1 + 258, 1, 346.2 );
setRotateKey( spep_2 -1 + 260, 1, 350 );
setRotateKey( spep_2 -1 + 262, 1, 350 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 280, 1, 1 );
setDisp( spep_2 -1 + 324, 1, 0 );
changeAnime( spep_2 -1 + 280, 1, 107 );
changeAnime( spep_2 -1 + 294, 1, 5 );
changeAnime( spep_2 -1 + 312, 1, 107 );

setMoveKey( spep_2 -1 + 280, 1, -201.2, -47.6 , 0 );
setMoveKey( spep_2 -1 + 285, 1, -201.2, -47.6 , 0 );
setMoveKey( spep_2 -1 + 286, 1, 166.5, -83.1 , 0 );
setMoveKey( spep_2 -1 + 287, 1, 166.5, -83.1 , 0 );
setMoveKey( spep_2 -1 + 288, 1, 176.5, -93.1 , 0 );
setMoveKey( spep_2 -1 + 289, 1, 176.5, -93.1 , 0 );
setMoveKey( spep_2 -1 + 290, 1, 198.7, -133.3 , 0 );
setMoveKey( spep_2 -1 + 291, 1, 198.7, -133.3 , 0 );
setMoveKey( spep_2 -1 + 292, 1, 187.1, -129.7 , 0 );
setMoveKey( spep_2 -1 + 293, 1, 187.1, -129.7 , 0 );--
setMoveKey( spep_2 -1 + 294, 1, 228.2, -437.7 , 0 );
setMoveKey( spep_2 -1 + 296, 1, 230, -436.4 , 0 );
setMoveKey( spep_2 -1 + 298, 1, 291.5, -481.7 , 0 );
setMoveKey( spep_2 -1 + 300, 1, 292.8, -482.9 , 0 );
setMoveKey( spep_2 -1 + 302, 1, 292.8, -482.9 , 0 );
setMoveKey( spep_2 -1 + 304, 1, 322.1, -466.8 , 0 );
setMoveKey( spep_2 -1 + 306, 1, 322.1, -466.8 , 0 );
setMoveKey( spep_2 -1 + 308, 1, 338, -467.8 , 0 );
setMoveKey( spep_2 -1 + 311, 1, 338, -467.8 , 0 );--
setMoveKey( spep_2 -1 + 312, 1, 78.6, 1.2 , 0 );
setMoveKey( spep_2 -1 + 314, 1, 78.6, 1.2 , 0 );
setMoveKey( spep_2 -1 + 316, 1, 136, -50 , 0 );
setMoveKey( spep_2 -1 + 318, 1, 136, -50 , 0 );
setMoveKey( spep_2 -1 + 320, 1, 193.7, -101.2 , 0 );
setMoveKey( spep_2 -1 + 324, 1, 193.7, -101.2 , 0 );

setScaleKey( spep_2 -1 + 280, 1, 3.8, 3.8 );
setScaleKey( spep_2 -1 + 285, 1, 3.8, 3.8 );
setScaleKey( spep_2 -1 + 286, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 287, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 288, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 289, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 290, 1, 2.75, 2.75 );
setScaleKey( spep_2 -1 + 293, 1, 2.75, 2.75 );--
setScaleKey( spep_2 -1 + 294, 1, 4.83, 4.83 );
setScaleKey( spep_2 -1 + 296, 1, 4.83, 4.83 );
setScaleKey( spep_2 -1 + 298, 1, 4.33, 4.33 );
setScaleKey( spep_2 -1 + 302, 1, 4.33, 4.33 );
setScaleKey( spep_2 -1 + 304, 1, 3.85, 3.85 );
setScaleKey( spep_2 -1 + 306, 1, 3.85, 3.85 );
setScaleKey( spep_2 -1 + 308, 1, 3.68, 3.68 );
setScaleKey( spep_2 -1 + 311, 1, 3.68, 3.68 );--
setScaleKey( spep_2 -1 + 312, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 314, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 316, 1, 1.7, 1.7 );
setScaleKey( spep_2 -1 + 318, 1, 1.7, 1.7 );
setScaleKey( spep_2 -1 + 320, 1, 2.12, 2.12 );
setScaleKey( spep_2 -1 + 324, 1, 2.12, 2.12 );

setRotateKey( spep_2 -1 + 280, 1, 327 );
setRotateKey( spep_2 -1 + 285, 1, 327 );
setRotateKey( spep_2 -1 + 286, 1, 341 );
setRotateKey( spep_2 -1 + 293, 1, 341 );--
setRotateKey( spep_2 -1 + 294, 1, 441 );
setRotateKey( spep_2 -1 + 302, 1, 441 );
setRotateKey( spep_2 -1 + 304, 1, 452 );
setRotateKey( spep_2 -1 + 306, 1, 452 );
setRotateKey( spep_2 -1 + 308, 1, 454 );
setRotateKey( spep_2 -1 + 311, 1, 454 );--
setRotateKey( spep_2 -1 + 312, 1, 427 );
setRotateKey( spep_2 -1 + 324, 1, 427 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 360, 1, 1 );
setDisp( spep_2 -1 + 440, 1, 0 );
changeAnime( spep_2 -1 + 360, 1, 7 );
changeAnime( spep_2 -1 + 384, 1, 106 );
changeAnime( spep_2 -1 + 412, 1, 8 );

setMoveKey( spep_2 -1 + 360, 1, 393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 361, 1, 393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 362, 1, 393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 363, 1, 393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 364, 1, 267.2, 218 , 0 );
setMoveKey( spep_2 -1 + 365, 1, 267.2, 218 , 0 );
setMoveKey( spep_2 -1 + 366, 1, 113.9, 244.5 , 0 );
setMoveKey( spep_2 -1 + 367, 1, 113.9, 244.5 , 0 );
setMoveKey( spep_2 -1 + 368, 1, 103.9, 246.2 , 0 );
setMoveKey( spep_2 -1 + 369, 1, 103.9, 246.2 , 0 );
setMoveKey( spep_2 -1 + 370, 1, 37.9, -512.7 , 0 );
setMoveKey( spep_2 -1 + 371, 1, 37.9, -512.7 , 0 );
setMoveKey( spep_2 -1 + 372, 1, 49.9, -513.5 , 0 );
setMoveKey( spep_2 -1 + 373, 1, 49.9, -513.5 , 0 );
setMoveKey( spep_2 -1 + 374, 1, 64.9, -786.9 , 0 );
setMoveKey( spep_2 -1 + 375, 1, 64.9, -786.9 , 0 );
setMoveKey( spep_2 -1 + 376, 1, 60.5, -786.7 , 0 );
setMoveKey( spep_2 -1 + 377, 1, 60.5, -786.7 , 0 );
setMoveKey( spep_2 -1 + 378, 1, 78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 379, 1, 78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 380, 1, 78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 381, 1, 78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 382, 1, 95.4, -1104.8 , 0 );
setMoveKey( spep_2 -1 + 383, 1, 95.4, -1104.8 , 0 );--
setMoveKey( spep_2 -1 + 384, 1, -25.7, -100.2 , 0 );
setMoveKey( spep_2 -1 + 386, 1, -27, -102.8 , 0 );
setMoveKey( spep_2 -1 + 390, 1, -27, -102.8 , 0 );
setMoveKey( spep_2 -1 + 392, 1, -26.4, -107.1 , 0 );
setMoveKey( spep_2 -1 + 394, 1, -26.2, -108.6 , 0 );
setMoveKey( spep_2 -1 + 396, 1, -26.2, -108.6 , 0 );
setMoveKey( spep_2 -1 + 398, 1, -26, -111.4 , 0 );
setMoveKey( spep_2 -1 + 400, 1, -25.8, -112.9 , 0 );
setMoveKey( spep_2 -1 + 402, 1, -25.8, -112.9 , 0 );
setMoveKey( spep_2 -1 + 404, 1, -25.5, -115.9 , 0 );
setMoveKey( spep_2 -1 + 411, 1, -25.5, -115.9 , 0 );--
setMoveKey( spep_2 -1 + 412, 1, 159, -196 , 0 );
setMoveKey( spep_2 -1 + 413, 1, 159, -196 , 0 );
setMoveKey( spep_2 -1 + 414, 1, 175.5, -195.9 , 0 );
setMoveKey( spep_2 -1 + 415, 1, 175.5, -195.9 , 0 );
setMoveKey( spep_2 -1 + 416, 1, 172.2, -180.9 , 0 );
setMoveKey( spep_2 -1 + 417, 1, 172.2, -180.9 , 0 );
setMoveKey( spep_2 -1 + 418, 1, 160.3, -189.7 , 0 );
setMoveKey( spep_2 -1 + 419, 1, 160.3, -189.7 , 0 );
setMoveKey( spep_2 -1 + 420, 1, 174.9, -208.8 , 0 );
setMoveKey( spep_2 -1 + 422, 1, 191.7, -201.2 , 0 );
setMoveKey( spep_2 -1 + 424, 1, 219.4, -191.1 , 0 );
setMoveKey( spep_2 -1 + 426, 1, 375.4, -174.5 , 0 );
setMoveKey( spep_2 -1 + 428, 1, 476.9, -160.5 , 0 );
setMoveKey( spep_2 -1 + 430, 1, 530.1, -157.8 , 0 );
setMoveKey( spep_2 -1 + 432, 1, 555.5, -155.2 , 0 );
setMoveKey( spep_2 -1 + 434, 1, 564.9, -154.3 , 0 );
setMoveKey( spep_2 -1 + 436, 1, 567.1, -154.1 , 0 );
setMoveKey( spep_2 -1 + 438, 1, 567.2, -154 , 0 );
setMoveKey( spep_2 -1 + 440, 1, 567.2, -154 , 0 );

setScaleKey( spep_2 -1 + 360, 1, 3.49, 3.49 );
setScaleKey( spep_2 -1 + 363, 1, 3.49, 3.49 );
setScaleKey( spep_2 -1 + 364, 1, 3.76, 3.76 );
setScaleKey( spep_2 -1 + 365, 1, 3.76, 3.76 );
setScaleKey( spep_2 -1 + 366, 1, 4.86, 4.86 );
setScaleKey( spep_2 -1 + 383, 1, 4.86, 4.86 );--
setScaleKey( spep_2 -1 + 384, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 386, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 390, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 392, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 396, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 398, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 411, 1, 2.74, 2.74 );--
setScaleKey( spep_2 -1 + 412, 1, 3.21, 3.21 );
setScaleKey( spep_2 -1 + 413, 1, 3.21, 3.21 );
setScaleKey( spep_2 -1 + 414, 1, 3.11, 3.11 );
setScaleKey( spep_2 -1 + 415, 1, 3.11, 3.11 );
setScaleKey( spep_2 -1 + 416, 1, 3.01, 3.01 );
setScaleKey( spep_2 -1 + 417, 1, 3.01, 3.01 );
setScaleKey( spep_2 -1 + 418, 1, 2.9, 2.9 );
setScaleKey( spep_2 -1 + 419, 1, 2.9, 2.9 );
setScaleKey( spep_2 -1 + 420, 1, 2.8, 2.8 );
setScaleKey( spep_2 -1 + 422, 1, 2.7, 2.7 );
setScaleKey( spep_2 -1 + 424, 1, 2.25, 2.25 );
setScaleKey( spep_2 -1 + 426, 1, 1.39, 1.39 );
setScaleKey( spep_2 -1 + 428, 1, 0.87, 0.87 );
setScaleKey( spep_2 -1 + 430, 1, 0.59, 0.59 );
setScaleKey( spep_2 -1 + 432, 1, 0.45, 0.45 );
setScaleKey( spep_2 -1 + 434, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 436, 1, 0.39, 0.39 );
setScaleKey( spep_2 -1 + 438, 1, 0.39, 0.39 );
setScaleKey( spep_2 -1 + 440, 1, 0.39, 0.39 );

setRotateKey( spep_2 -1 + 360, 1, 322 );
setRotateKey( spep_2 -1 + 373, 1, 322 );
setRotateKey( spep_2 -1 + 374, 1, 295 );
setRotateKey( spep_2 -1 + 375, 1, 295 );
setRotateKey( spep_2 -1 + 376, 1, 295 );
setRotateKey( spep_2 -1 + 377, 1, 295 );
setRotateKey( spep_2 -1 + 378, 1, 278 );
setRotateKey( spep_2 -1 + 379, 1, 278 );
setRotateKey( spep_2 -1 + 380, 1, 278 );
setRotateKey( spep_2 -1 + 381, 1, 278 );
setRotateKey( spep_2 -1 + 382, 1, 279 );
setRotateKey( spep_2 -1 + 383, 1, 279 );--
setRotateKey( spep_2 -1 + 384, 1, 426 );
setRotateKey( spep_2 -1 + 386, 1, 430 );
setRotateKey( spep_2 -1 + 390, 1, 430 );
setRotateKey( spep_2 -1 + 392, 1, 434 );
setRotateKey( spep_2 -1 + 394, 1, 435.2 );
setRotateKey( spep_2 -1 + 396, 1, 435.2 );
setRotateKey( spep_2 -1 + 398, 1, 437.9 );
setRotateKey( spep_2 -1 + 400, 1, 439.2 );
setRotateKey( spep_2 -1 + 402, 1, 439.2 );
setRotateKey( spep_2 -1 + 404, 1, 441.7 );
setRotateKey( spep_2 -1 + 411, 1, 441.7 );--
setRotateKey( spep_2 -1 + 412, 1, 540 );
setRotateKey( spep_2 -1 + 413, 1, 540 );
setRotateKey( spep_2 -1 + 414, 1, 540.4 );
setRotateKey( spep_2 -1 + 415, 1, 540.4 );
setRotateKey( spep_2 -1 + 416, 1, 540.7 );
setRotateKey( spep_2 -1 + 417, 1, 540.7 );
setRotateKey( spep_2 -1 + 418, 1, 541.1 );
setRotateKey( spep_2 -1 + 419, 1, 541.1 );
setRotateKey( spep_2 -1 + 420, 1, 541.5 );
setRotateKey( spep_2 -1 + 422, 1, 541.8 );
setRotateKey( spep_2 -1 + 424, 1, 540 );
setRotateKey( spep_2 -1 + 438, 1, 540 );
setRotateKey( spep_2 -1 + 440, 1, 540 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 456, 1, 1 );
setDisp( spep_2 -1 + 496, 1, 0 );
changeAnime( spep_2 -1 + 456, 1, 8 );

setMoveKey( spep_2 -1 + 456, 1, -246.1, -191.1 , 0 );
setMoveKey( spep_2 -1 + 458, 1, -246.1, -191.1 , 0 );
setMoveKey( spep_2 -1 + 460, 1, 148.4, 58.3 , 0 );
setMoveKey( spep_2 -1 + 464, 1, 148.4, 58.3 , 0 );
setMoveKey( spep_2 -1 + 466, 1, 238.2, 105.1 , 0 );
setMoveKey( spep_2 -1 + 468, 1, 238.2, 105.1 , 0 );
setMoveKey( spep_2 -1 + 470, 1, 245.2, 110.1 , 0 );
setMoveKey( spep_2 -1 + 472, 1, 245.2, 110.1 , 0 );
setMoveKey( spep_2 -1 + 474, 1, 251.1, 111.1 , 0 );
setMoveKey( spep_2 -1 + 476, 1, 251.1, 111.1 , 0 );
setMoveKey( spep_2 -1 + 478, 1, 230.2, 107.1 , 0 );
setMoveKey( spep_2 -1 + 482, 1, 230.2, 107.1 , 0 );
setMoveKey( spep_2 -1 + 484, 1, 237.1, 108.1 , 0 );
setMoveKey( spep_2 -1 + 486, 1, 237.1, 108.1 , 0 );
setMoveKey( spep_2 -1 + 488, 1, 243.1, 112.1 , 0 );
setMoveKey( spep_2 -1 + 490, 1, 243.1, 112.1 , 0 );
setMoveKey( spep_2 -1 + 492, 1, 251.1, 115.1 , 0 );
setMoveKey( spep_2 -1 + 496, 1, 251.1, 115.1 , 0 );

setScaleKey( spep_2 -1 + 456, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 458, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 460, 1, 1.02, 1.02 );
setScaleKey( spep_2 -1 + 464, 1, 1.02, 1.02 );
setScaleKey( spep_2 -1 + 466, 1, 0.52, 0.52 );
setScaleKey( spep_2 -1 + 468, 1, 0.52, 0.52 );
setScaleKey( spep_2 -1 + 470, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 472, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 474, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 476, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 478, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 482, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 484, 1, 0.25, 0.25 );
setScaleKey( spep_2 -1 + 486, 1, 0.25, 0.25 );
setScaleKey( spep_2 -1 + 488, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 490, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 492, 1, 0.21, 0.21 );
setScaleKey( spep_2 -1 + 496, 1, 0.21, 0.21 );

setRotateKey( spep_2 -1 + 456, 1, 523.6 );
setRotateKey( spep_2 -1 + 496, 1, 523.6 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 776, 1, 1 );
setDisp( spep_2 -1 + 856, 1, 0 );
changeAnime( spep_2 -1 + 776, 1, 5 );

setMoveKey( spep_2 -1 + 776, 1, 122.9, -17.2 , 0 );
setMoveKey( spep_2 -1 + 778, 1, 122.9, -17.2 , 0 );
setMoveKey( spep_2 -1 + 780, 1, 136.2, -18.6 , 0 );
setMoveKey( spep_2 -1 + 782, 1, 136.2, -18.6 , 0 );
setMoveKey( spep_2 -1 + 784, 1, 140.1, -20 , 0 );
setMoveKey( spep_2 -1 + 786, 1, 141.2, -19.8 , 0 );
setMoveKey( spep_2 -1 + 788, 1, 142.1, -19.6 , 0 );
setMoveKey( spep_2 -1 + 790, 1, 143.1, -19.4 , 0 );
setMoveKey( spep_2 -1 + 792, 1, 143.9, -19.2 , 0 );
setMoveKey( spep_2 -1 + 794, 1, 144.8, -19.1 , 0 );
setMoveKey( spep_2 -1 + 796, 1, 145.5, -19 , 0 );
setMoveKey( spep_2 -1 + 798, 1, 146.2, -18.9 , 0 );
setMoveKey( spep_2 -1 + 800, 1, 147, -18.7 , 0 );
setMoveKey( spep_2 -1 + 802, 1, 147.7, -18.7 , 0 );
setMoveKey( spep_2 -1 + 804, 1, 148.3, -18.4 , 0 );
setMoveKey( spep_2 -1 + 806, 1, 148.8, -18.4 , 0 );
setMoveKey( spep_2 -1 + 808, 1, 149.4, -18.3 , 0 );
setMoveKey( spep_2 -1 + 810, 1, 149.9, -18.1 , 0 );
setMoveKey( spep_2 -1 + 812, 1, 150.4, -18.1 , 0 );
setMoveKey( spep_2 -1 + 814, 1, 150.8, -18.1 , 0 );
setMoveKey( spep_2 -1 + 816, 1, 151.3, -18 , 0 );
setMoveKey( spep_2 -1 + 818, 1, 151.7, -17.8 , 0 );
setMoveKey( spep_2 -1 + 820, 1, 152, -17.8 , 0 );
setMoveKey( spep_2 -1 + 822, 1, 152.4, -17.7 , 0 );
setMoveKey( spep_2 -1 + 824, 1, 152.7, -17.6 , 0 );
setMoveKey( spep_2 -1 + 826, 1, 153, -17.6 , 0 );
setMoveKey( spep_2 -1 + 828, 1, 153.3, -17.6 , 0 );
setMoveKey( spep_2 -1 + 830, 1, 153.4, -17.5 , 0 );
setMoveKey( spep_2 -1 + 832, 1, 153.7, -17.5 , 0 );
setMoveKey( spep_2 -1 + 834, 1, 153.8, -17.5 , 0 );
setMoveKey( spep_2 -1 + 836, 1, 154, -17.4 , 0 );
setMoveKey( spep_2 -1 + 838, 1, 154.2, -17.4 , 0 );
setMoveKey( spep_2 -1 + 840, 1, 154.3, -17.4 , 0 );
setMoveKey( spep_2 -1 + 842, 1, 154.4, -17.4 , 0 );
setMoveKey( spep_2 -1 + 844, 1, 154.5, -17.4 , 0 );
setMoveKey( spep_2 -1 + 846, 1, 154.6, -17.3 , 0 );
setMoveKey( spep_2 -1 + 848, 1, 154.7, -17.4 , 0 );
setMoveKey( spep_2 -1 + 850, 1, 154.7, -17.3 , 0 );
setMoveKey( spep_2 -1 + 852, 1, 154.8, -17.2 , 0 );
setMoveKey( spep_2 -1 + 856, 1, 154.8, -17.2 , 0 );

setScaleKey( spep_2 -1 + 776, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 778, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 780, 1, 0.55, 0.55 );
setScaleKey( spep_2 -1 + 782, 1, 0.55, 0.55 );
setScaleKey( spep_2 -1 + 784, 1, 0.43, 0.43 );
setScaleKey( spep_2 -1 + 786, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 788, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 790, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 792, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 794, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 796, 1, 0.3, 0.3 );
setScaleKey( spep_2 -1 + 798, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 800, 1, 0.27, 0.27 );
setScaleKey( spep_2 -1 + 802, 1, 0.26, 0.26 );
setScaleKey( spep_2 -1 + 804, 1, 0.24, 0.24 );
setScaleKey( spep_2 -1 + 806, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 808, 1, 0.22, 0.22 );
setScaleKey( spep_2 -1 + 810, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 812, 1, 0.19, 0.19 );
setScaleKey( spep_2 -1 + 814, 1, 0.18, 0.18 );
setScaleKey( spep_2 -1 + 816, 1, 0.17, 0.17 );
setScaleKey( spep_2 -1 + 818, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 820, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 822, 1, 0.15, 0.15 );
setScaleKey( spep_2 -1 + 824, 1, 0.14, 0.14 );
setScaleKey( spep_2 -1 + 826, 1, 0.14, 0.14 );
setScaleKey( spep_2 -1 + 828, 1, 0.13, 0.13 );
setScaleKey( spep_2 -1 + 830, 1, 0.12, 0.12 );
setScaleKey( spep_2 -1 + 832, 1, 0.12, 0.12 );
setScaleKey( spep_2 -1 + 834, 1, 0.11, 0.11 );
setScaleKey( spep_2 -1 + 838, 1, 0.11, 0.11 );
setScaleKey( spep_2 -1 + 840, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 848, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 850, 1, 0.09, 0.09 );
setScaleKey( spep_2 -1 + 856, 1, 0.09, 0.09 );

setRotateKey( spep_2 -1 + 776, 1, 49.5 );
setRotateKey( spep_2 -1 + 798, 1, 49.5 );
setRotateKey( spep_2 -1 + 800, 1, 49.6 );
setRotateKey( spep_2 -1 + 856, 1, 49.6 );

-- ** 音 ** --
--ベジータパンチ
SE013 = playSeVer2( spep_2 + 26, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE013, 79 );
SE014 = playSeVer2( spep_2 + 26, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE014, 89 );
SE015 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);

--悟空肘打ち
SE016 = playSeVer2( spep_2 + 80, 1049, "",spep_2 + 120, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 84, 1359, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);

--手つく
SE019 = playSeVer2( spep_2 + 142, 1135, "",spep_2 + 154, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 142, SE019, 78 );
SE020 = playSeVer2( spep_2 + 146, 1192, "",spep_2 + 162, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 146, SE020, 172 );

--足払い
SE021 = playSeVer2( spep_2 + 164, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 170, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE022, 83 );
SE023 = playSeVer2( spep_2 + 170, 1048, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 172, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE024, 82 );

--起き上がって走り出す
SE025 = playSeVer2( spep_2 + 224, 1192, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 236, 1108, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 246, 1108, "", 0, 0, 0, -1);

--振りかぶる
SE028 = playSeVer2( spep_2 + 258, 1004, "", 0, 0, 0, -1);

--パンチ
SE029 = playSeVer2( spep_2 + 274, 1359, "",spep_2 + 304, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 274, SE029, 89 );
SE030 = playSeVer2( spep_2 + 276, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE031, 89 );

--敵吹き飛ぶ
SE032 = playSeVer2( spep_2 + 306, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE032, 71 );

--悟空おりてくる
SE033 = playSeVer2( spep_2 + 316, 1117, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 316, 1116, "",spep_2 + 360, 0, 12, -1);

--叩きつける
SE035 = playSeVer2( spep_2 + 354, 1123, "",spep_2 + 410, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 354, SE035, 89 );
SE036 = playSeVer2( spep_2 + 354, 1359, "", 0, 0, 0, -1);

--頭突き
SE037 = playSeVer2( spep_2 + 392, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 400, 1120, "", 0, 0, 0, -1);

--かめはめ波溜め
SE040 = playSeVer2( spep_2 + 502, 1210, "",spep_2 + 604, 20, 24, 0.6);
setStartTimeMs( SE040,  1017 );

--敵飛んでいく
SE041 = playSeVer2( spep_2 + 446, 1027, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 446, 1121, "",spep_2 + 524, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 446, SE042, 75 );
SE043 = playSeVer2( spep_2 + 446, 1183, "",spep_2 + 524, 0, 30, -1);
SE044 = playSeVer2( spep_2 + 450, 1182, "", 0, 0, 0, -1);

--かめはめ波溜め
SE045 = playSeVer2( spep_2 + 500, 1209, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 574, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 574, SE046, 89 );
SE047 = playSeVer2( spep_2 + 574, 1223, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 574, 1284, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE049 = playSeVer2( spep_2 + 746, 1204, "", 0, 10, 0, -1);
setStartTimeMs( SE049,  2250 );
SE051 = playSeVer2( spep_2 + 702, 1356, "",spep_2 + 828, 16, 30, -1);
setStartTimeMs( SE051,  367 );
SE052 = playSeVer2( spep_2 + 698, 1273, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 698, 1184, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 698, SE053, 73 );
SE054 = playSeVer2( spep_2 + 706, 1370, "",spep_2 + 826, 0, 26, -1);
setPitch( spep_2 + 706, SE054, -400 );
setTimeStretch( SE054, 0.73, 30, 4 );
SE055 = playSeVer2( spep_2 + 714, 1311, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 764, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 764, SE056, 158 );

--かめはめ波飛んでいく
SE050 = playSeVer2( spep_2 + 634, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 634, SE050, 82 );

--ベジータ気弾発射
SE057 = playSeVer2( spep_2 + 810, 1110, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 810, 1145, "", 0, 0, 0, 0.6);

--爆発
SE059 = playSeVer2( spep_2 + 842, 1023, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 848, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 868, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE062 = playSeVer2( spep_2 + 930, 1067, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 930, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 1008 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

if(_IS_DEAD_LAST_ == 0)then
  entryFade( spep_2 +994, 2,  4, 2, 0, 0, 0, 255);             -- black fade
end

--終わり
hideKoScreen();
dealDamage(spep_2 +896);
endPhase( spep_2 + 996 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ベジータ飛ぶ(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 148, 0x100, -1, 0, 0, 0 );  --ベジータ飛ぶ    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 148, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 148 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 148 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 148, first_f, 0 );

spep_x = spep_0 + 0;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE002 = playSeVer2( spep_0 + 12, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1168, "",spep_0 + 110, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 60 );

--ベジータ向かっていく
SE005 = playSeVer2( spep_0 + 72, 1182, "",spep_0 + 160, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 72, 9, "",spep_0 + 160, 0, 8, -1);
SE007 = playSeVer2( spep_0 + 76, 1117, "",spep_0 + 160, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 104, 44, "",spep_0 + 160, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 106, 1277, "",spep_0 + 160, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);

    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_c = spep_0 + 148;


--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );
--振りかぶる
SE011 = playSeVer2( spep_c + 86, 1116, "",spep_c + 122, 0, 14, -1);
SE012 = playSeVer2( spep_c + 86, 1167, "",spep_c + 128, 0, 6, 0.5);
setSeVolumeByWorkId( spep_c + 86, SE012, 76 );
setPitch( spep_c + 86, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- アッパー〜爆発(1008F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --アッパー〜爆発   ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1008, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 1008, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 1008, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 1008, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --アッパー〜爆発   ef_002_back
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1008, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 1008, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 1008, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 1008, finish_b, 255 );

-- ** エフェクト等 ** --
-- KO = entryEffect( spep_2 + 994, SP_04, 0x100, -1, 0, 0, 0 );  --KO    ef_003
-- setEffMoveKey( spep_2 + 994, KO, 0, 0 , 0 );
-- setEffMoveKey( spep_2 + 1124, KO, 0, 0 , 0 );
-- setEffScaleKey( spep_2 + 994, KO, -1.0, 1.0 );
-- setEffScaleKey( spep_2 + 1124, KO, -1.0, 1.0 );
-- setEffRotateKey( spep_2 + 994, KO, 0 );
-- setEffRotateKey( spep_2 + 1124, KO, 0 );
-- setEffAlphaKey( spep_2 + 994, KO, 255 );
-- setEffAlphaKey( spep_2 + 1124, KO, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 34, 1, 1 );
setDisp( spep_2 -1 + 142, 1, 0 );
changeAnime( spep_2 -1 + 34, 1, 107 );
changeAnime( spep_2 -1 + 48, 1, 106 );
changeAnime( spep_2 -1 + 98, 1, 6 );

setMoveKey( spep_2 -1 + 34, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 35, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 36, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 37, 1, -277.1, -6.7 , 0 );
setMoveKey( spep_2 -1 + 38, 1, -275.7, 4.1 , 0 );
setMoveKey( spep_2 -1 + 39, 1, -275.7, 4.1 , 0 );
setMoveKey( spep_2 -1 + 40, 1, 5.5, 134.7 , 0 );
setMoveKey( spep_2 -1 + 41, 1, 5.5, 134.7 , 0 );
setMoveKey( spep_2 -1 + 42, 1, 0, 129.2 , 0 );
setMoveKey( spep_2 -1 + 43, 1, 0, 129.2 , 0 );
setMoveKey( spep_2 -1 + 44, 1, 10.8, 137.3 , 0 );
setMoveKey( spep_2 -1 + 45, 1, 10.8, 137.3 , 0 );
setMoveKey( spep_2 -1 + 46, 1, 21.6, 134.5 , 0 );
setMoveKey( spep_2 -1 + 47, 1, 21.6, 134.5 , 0 );--
setMoveKey( spep_2 -1 + 48, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 49, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 51, 1, 64.9, -10 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 63.1, 12.9 , 0 );
setMoveKey( spep_2 -1 + 53, 1, 63.1, 12.9 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 52, -6.4 , 0 );
setMoveKey( spep_2 -1 + 55, 1, 52, -6.4 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 70.6, 3.3 , 0 );
setMoveKey( spep_2 -1 + 57, 1, 70.6, 3.3 , 0 );
setMoveKey( spep_2 -1 + 58, 1, 84, 24.2 , 0 );
setMoveKey( spep_2 -1 + 59, 1, 84, 24.2 , 0 );
setMoveKey( spep_2 -1 + 60, 1, 70.6, 4.5 , 0 );
setMoveKey( spep_2 -1 + 61, 1, 70.6, 4.5 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 77.4, 13 , 0 );
setMoveKey( spep_2 -1 + 63, 1, 77.4, 13 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 92.4, 34 , 0 );
setMoveKey( spep_2 -1 + 65, 1, 92.4, 34 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 94.4, 40.1 , 0 );
setMoveKey( spep_2 -1 + 67, 1, 94.4, 40.1 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 81, 20.4 , 0 );
setMoveKey( spep_2 -1 + 69, 1, 81, 20.4 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 86, 22.9 , 0 );
setMoveKey( spep_2 -1 + 71, 1, 86, 22.9 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 96.8, 44.1 , 0 );
setMoveKey( spep_2 -1 + 73, 1, 96.8, 44.1 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 98.1, 44.4 , 0 );
setMoveKey( spep_2 -1 + 75, 1, 98.1, 44.4 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 98.7, 43.9 , 0 );
setMoveKey( spep_2 -1 + 77, 1, 98.7, 43.9 , 0 );
setMoveKey( spep_2 -1 + 78, 1, 87.2, 28.3 , 0 );
setMoveKey( spep_2 -1 + 79, 1, 87.2, 28.3 , 0 );
setMoveKey( spep_2 -1 + 80, 1, 88.8, 29.8 , 0 );
setMoveKey( spep_2 -1 + 81, 1, 88.8, 29.8 , 0 );
setMoveKey( spep_2 -1 + 82, 1, 99.1, 49.8 , 0 );
setMoveKey( spep_2 -1 + 83, 1, 99.1, 49.8 , 0 );
setMoveKey( spep_2 -1 + 84, 1, 101.8, 48.6 , 0 );
setMoveKey( spep_2 -1 + 85, 1, 101.8, 48.6 , 0 );
setMoveKey( spep_2 -1 + 86, 1, 99.1, 45.9 , 0 );
setMoveKey( spep_2 -1 + 87, 1, 99.1, 45.9 , 0 );
setMoveKey( spep_2 -1 + 88, 1, 108.5, 35.3 , 0 );
setMoveKey( spep_2 -1 + 89, 1, 108.5, 35.3 , 0 );
setMoveKey( spep_2 -1 + 90, 1, 112.1, 25.7 , 0 );
setMoveKey( spep_2 -1 + 97, 1, 112.1, 25.7 , 0 );--
setMoveKey( spep_2 -1 + 98, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 99, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 100, 1, 191.1, -191.9 , 0 );
setMoveKey( spep_2 -1 + 101, 1, 191.1, -191.9 , 0 );
setMoveKey( spep_2 -1 + 102, 1, 182.5, -203.2 , 0 );
setMoveKey( spep_2 -1 + 103, 1, 182.5, -203.2 , 0 );
setMoveKey( spep_2 -1 + 104, 1, 197.5, -188 , 0 );
setMoveKey( spep_2 -1 + 105, 1, 197.5, -188 , 0 );
setMoveKey( spep_2 -1 + 106, 1, 181.5, -198.5 , 0 );
setMoveKey( spep_2 -1 + 107, 1, 181.5, -198.5 , 0 );
setMoveKey( spep_2 -1 + 108, 1, 191.2, -190.4 , 0 );
setMoveKey( spep_2 -1 + 109, 1, 191.2, -190.4 , 0 );
setMoveKey( spep_2 -1 + 110, 1, 185, -198.1 , 0 );
setMoveKey( spep_2 -1 + 111, 1, 185, -198.1 , 0 );
setMoveKey( spep_2 -1 + 112, 1, 189, -192.7 , 0 );
setMoveKey( spep_2 -1 + 113, 1, 189, -192.7 , 0 );
setMoveKey( spep_2 -1 + 114, 1, 181.6, -200.3 , 0 );
setMoveKey( spep_2 -1 + 115, 1, 181.6, -200.3 , 0 );
setMoveKey( spep_2 -1 + 116, 1, 180.7, -200 , 0 );
setMoveKey( spep_2 -1 + 117, 1, 180.7, -200 , 0 );
setMoveKey( spep_2 -1 + 118, 1, 181.5, -198.4 , 0 );
setMoveKey( spep_2 -1 + 119, 1, 181.5, -198.4 , 0 );
setMoveKey( spep_2 -1 + 120, 1, 184.9, -195.8 , 0 );
setMoveKey( spep_2 -1 + 121, 1, 184.9, -195.8 , 0 );
setMoveKey( spep_2 -1 + 122, 1, 182, -198.1 , 0 );
setMoveKey( spep_2 -1 + 123, 1, 182, -198.1 , 0 );
setMoveKey( spep_2 -1 + 124, 1, 184.5, -195.7 , 0 );
setMoveKey( spep_2 -1 + 125, 1, 184.5, -195.7 , 0 );
setMoveKey( spep_2 -1 + 126, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 127, 1, 184.4, -198.7 , 0 );
setMoveKey( spep_2 -1 + 128, 1, 204.2, -185 , 0 );
setMoveKey( spep_2 -1 + 133, 1, 204.2, -185 , 0 );
setMoveKey( spep_2 -1 + 134, 1, 206.3, -183.1 , 0 );
setMoveKey( spep_2 -1 + 142, 1, 206.3, -183.1 , 0 );

sx2 = 0.3;
sy2 = 0.3;

setScaleKey( spep_2 -1 + 34, 1, 4.09, 4.09 );
setScaleKey( spep_2 -1 + 39, 1, 4.09, 4.09 );
setScaleKey( spep_2 -1 + 40, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 41, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 42, 1, 1.96, 1.96 );
setScaleKey( spep_2 -1 + 47, 1, 1.96, 1.96 );
setScaleKey( spep_2 -1 + 48, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 49, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 50, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 51, 1, 3.26, 3.26 );
setScaleKey( spep_2 -1 + 52, 1, 3.16, 3.16 );
setScaleKey( spep_2 -1 + 53, 1, 3.16, 3.16 );
setScaleKey( spep_2 -1 + 54, 1, 3.18, 3.18 );
setScaleKey( spep_2 -1 + 55, 1, 3.18, 3.18 );
setScaleKey( spep_2 -1 + 56, 1, 3.09, 3.09 );
setScaleKey( spep_2 -1 + 57, 1, 3.09, 3.09 );
setScaleKey( spep_2 -1 + 58, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 59, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 60, 1, 3.07, 3.07 );
setScaleKey( spep_2 -1 + 61, 1, 3.07, 3.07 );
setScaleKey( spep_2 -1 + 62, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 63, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 64, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 65, 1, 2.99, 2.99 );
setScaleKey( spep_2 -1 + 66, 1, 2.92, 2.92 );
setScaleKey( spep_2 -1 + 67, 1, 2.92, 2.92 );
setScaleKey( spep_2 -1 + 68, 1, 2.93, 2.93 );
setScaleKey( spep_2 -1 + 69, 1, 2.93, 2.93 );
setScaleKey( spep_2 -1 + 70, 1, 2.88, 2.88 );
setScaleKey( spep_2 -1 + 71, 1, 2.88, 2.88 );
setScaleKey( spep_2 -1 + 72, 1, 2.86, 2.86 );
setScaleKey( spep_2 -1 + 73, 1, 2.86, 2.86 );
setScaleKey( spep_2 -1 + 74, 1, 2.87, 2.87 );
setScaleKey( spep_2 -1 + 75, 1, 2.87, 2.87 );
setScaleKey( spep_2 -1 + 76, 1, 2.84, 2.84 );
setScaleKey( spep_2 -1 + 77, 1, 2.84, 2.84 );
setScaleKey( spep_2 -1 + 78, 1, 2.81, 2.81 );
setScaleKey( spep_2 -1 + 79, 1, 2.81, 2.81 );
setScaleKey( spep_2 -1 + 80, 1, 2.78, 2.79 );
setScaleKey( spep_2 -1 + 81, 1, 2.78, 2.79 );
setScaleKey( spep_2 -1 + 82, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 83, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 84, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 85, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 86, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 87, 1, 2.77, 2.77 );
setScaleKey( spep_2 -1 + 88, 1, 2.76, 2.76 );
setScaleKey( spep_2 -1 + 97, 1, 2.76, 2.76 );--
setScaleKey( spep_2 -1 + 98, 1, 2.76 + sx2, 2.76 + sy2 );
setScaleKey( spep_2 -1 + 142, 1, 2.76 + sx2, 2.76 + sy2 );

setRotateKey( spep_2 -1 + 34, 1, -64.2 );
setRotateKey( spep_2 -1 + 45, 1, -64.2 );
setRotateKey( spep_2 -1 + 46, 1, -60 );
setRotateKey( spep_2 -1 + 47, 1, -60 );
setRotateKey( spep_2 -1 + 48, 1, -41.9 );
setRotateKey( spep_2 -1 + 49, 1, -41.9 );
setRotateKey( spep_2 -1 + 50, 1, -41.9 );
setRotateKey( spep_2 -1 + 51, 1, -41.9 );
setRotateKey( spep_2 -1 + 52, 1, -36.1 );
setRotateKey( spep_2 -1 + 53, 1, -36.1 );
setRotateKey( spep_2 -1 + 54, 1, -35.9 );
setRotateKey( spep_2 -1 + 55, 1, -35.9 );
setRotateKey( spep_2 -1 + 56, 1, -33.7 );
setRotateKey( spep_2 -1 + 57, 1, -33.7 );
setRotateKey( spep_2 -1 + 58, 1, -34.5 );
setRotateKey( spep_2 -1 + 59, 1, -34.5 );
setRotateKey( spep_2 -1 + 60, 1, -34.3 );
setRotateKey( spep_2 -1 + 61, 1, -34.3 );
setRotateKey( spep_2 -1 + 62, 1, -34.2 );
setRotateKey( spep_2 -1 + 63, 1, -34.2 );
setRotateKey( spep_2 -1 + 64, 1, -34 );
setRotateKey( spep_2 -1 + 65, 1, -34 );
setRotateKey( spep_2 -1 + 66, 1, -33.8 );
setRotateKey( spep_2 -1 + 67, 1, -33.8 );
setRotateKey( spep_2 -1 + 68, 1, -33.6 );
setRotateKey( spep_2 -1 + 69, 1, -33.6 );
setRotateKey( spep_2 -1 + 70, 1, -33.4 );
setRotateKey( spep_2 -1 + 71, 1, -33.4 );
setRotateKey( spep_2 -1 + 72, 1, -34.2 );
setRotateKey( spep_2 -1 + 73, 1, -34.2 );
setRotateKey( spep_2 -1 + 74, 1, -34.1 );
setRotateKey( spep_2 -1 + 75, 1, -34.1 );
setRotateKey( spep_2 -1 + 76, 1, -33.7 );
setRotateKey( spep_2 -1 + 77, 1, -33.7 );
setRotateKey( spep_2 -1 + 78, 1, -33.4 );
setRotateKey( spep_2 -1 + 79, 1, -33.4 );
setRotateKey( spep_2 -1 + 80, 1, -33.1 );
setRotateKey( spep_2 -1 + 81, 1, -33.1 );
setRotateKey( spep_2 -1 + 82, 1, -33.1 );
setRotateKey( spep_2 -1 + 83, 1, -33.1 );
setRotateKey( spep_2 -1 + 84, 1, -32.7 );
setRotateKey( spep_2 -1 + 85, 1, -32.7 );
setRotateKey( spep_2 -1 + 86, 1, -33.1 );
setRotateKey( spep_2 -1 + 97, 1, -33.1 );
setRotateKey( spep_2 -1 + 98, 1, 15.8 );
setRotateKey( spep_2 -1 + 126, 1, 15.8 );
setRotateKey( spep_2 -1 + 128, 1, 6 );
setRotateKey( spep_2 -1 + 133, 1, 6 );
setRotateKey( spep_2 -1 + 134, 1, 3 );
setRotateKey( spep_2 -1 + 139, 1, 3 );
setRotateKey( spep_2 -1 + 140, 1, 1 );
setRotateKey( spep_2 -1 + 142, 1, 1 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 166, 1, 1 );
setDisp( spep_2 -1 + 262, 1, 0 );
changeAnime( spep_2 -1 + 166, 1, 107 );
changeAnime( spep_2 -1 + 200, 1, 106 );
changeAnime( spep_2 -1 + 224, 1, 7 );

setMoveKey( spep_2 -1 + 166, 1, 112.2, 694.2 , 0 );
setMoveKey( spep_2 -1 + 168, 1, 90, 586.2 , 0 );
setMoveKey( spep_2 -1 + 170, 1, 67.7, 478.3 , 0 );
setMoveKey( spep_2 -1 + 172, 1, 45.4, 370.3 , 0 );
setMoveKey( spep_2 -1 + 174, 1, 23.2, 262.3 , 0 );
setMoveKey( spep_2 -1 + 176, 1, 0.9, 154.3 , 0 );
setMoveKey( spep_2 -1 + 178, 1, -21.4, 46.3 , 0 );

setMoveKey( spep_2 -1 + 180, 1, -26.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 181, 1, -26.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 182, 1, -36.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 183, 1, -36.6, -14.1 , 0 );
setMoveKey( spep_2 -1 + 184, 1, -107.1, -45.3 , 0 );
setMoveKey( spep_2 -1 + 185, 1, -107.1, -45.3 , 0 );
setMoveKey( spep_2 -1 + 186, 1, -96.1, -46.6 , 0 );
setMoveKey( spep_2 -1 + 187, 1, -96.1, -46.6 , 0 );
setMoveKey( spep_2 -1 + 188, 1, -194.6, -53.8 , 0 );
setMoveKey( spep_2 -1 + 189, 1, -194.6, -53.8 , 0 );
setMoveKey( spep_2 -1 + 190, 1, -196, -54.3 , 0 );
setMoveKey( spep_2 -1 + 191, 1, -196, -54.3 , 0 );
setMoveKey( spep_2 -1 + 192, 1, -195.1, -54.7 , 0 );
setMoveKey( spep_2 -1 + 193, 1, -195.1, -54.7 , 0 );
setMoveKey( spep_2 -1 + 194, 1, -202.3, -51.6 , 0 );
setMoveKey( spep_2 -1 + 195, 1, -202.3, -51.6 , 0 );
setMoveKey( spep_2 -1 + 196, 1, -204, -50 , 0 );
setMoveKey( spep_2 -1 + 197, 1, -204, -50 , 0 );
setMoveKey( spep_2 -1 + 198, 1, -210.9, -50 , 0 );
setMoveKey( spep_2 -1 + 199, 1, -210.9, -50 , 0 );--

setMoveKey( spep_2 -1 + 200, 1, 20.2, 183.2 , 0 );
setMoveKey( spep_2 -1 + 202, 1, 16.8, 186.7 , 0 );
setMoveKey( spep_2 -1 + 204, 1, 14, 189.6 , 0 );
setMoveKey( spep_2 -1 + 206, 1, 11.8, 191.9 , 0 );
setMoveKey( spep_2 -1 + 208, 1, 10.2, 193.5 , 0 );
setMoveKey( spep_2 -1 + 210, 1, 9, 194.6 , 0 );
setMoveKey( spep_2 -1 + 212, 1, 8.2, 195.4 , 0 );
setMoveKey( spep_2 -1 + 214, 1, 7.7, 196 , 0 );
setMoveKey( spep_2 -1 + 216, 1, 7.3, 196.3 , 0 );
setMoveKey( spep_2 -1 + 218, 1, 7.1, 196.4 , 0 );
setMoveKey( spep_2 -1 + 220, 1, 7, 196.5 , 0 );
setMoveKey( spep_2 -1 + 222, 1, 7, 196.4 , 0 );
setMoveKey( spep_2 -1 + 223, 1, 7, 196.4 , 0 );--
setMoveKey( spep_2 -1 + 224, 1, -154.7, 691.1 , 0 );
setMoveKey( spep_2 -1 + 226, 1, -154.1, 692.2 , 0 );
setMoveKey( spep_2 -1 + 228, 1, -153.3, 693.4 , 0 );
setMoveKey( spep_2 -1 + 230, 1, -153.3, 693.7 , 0 );
setMoveKey( spep_2 -1 + 232, 1, -152.1, 695.4 , 0 );
setMoveKey( spep_2 -1 + 234, 1, -152.1, 695.4 , 0 );
setMoveKey( spep_2 -1 + 236, 1, -150.8, 697 , 0 );
setMoveKey( spep_2 -1 + 238, 1, -150.1, 697.8 , 0 );
setMoveKey( spep_2 -1 + 240, 1, -150.1, 697.8 , 0 );
setMoveKey( spep_2 -1 + 242, 1, -148.9, 699.4 , 0 );
setMoveKey( spep_2 -1 + 244, 1, -148.2, 700.2 , 0 );
setMoveKey( spep_2 -1 + 246, 1, -147.6, 701.1 , 0 );
setMoveKey( spep_2 -1 + 248, 1, -147.6, 701.1 , 0 );
setMoveKey( spep_2 -1 + 250, 1, -146.3, 702.7 , 0 );
setMoveKey( spep_2 -1 + 252, 1, -145.6, 703.5 , 0 );
setMoveKey( spep_2 -1 + 254, 1, -145.6, 703.5 , 0 );
setMoveKey( spep_2 -1 + 256, 1, -144.4, 705.1 , 0 );
setMoveKey( spep_2 -1 + 258, 1, -144.4, 705.1 , 0 );
setMoveKey( spep_2 -1 + 260, 1, -143.3, 706.7 , 0 );
setMoveKey( spep_2 -1 + 262, 1, -143.3, 706.7 , 0 );

sx2_2 = 0.4;
sy2_2 = 0.4;

setScaleKey( spep_2 -1 + 166, 1, 1.93, 1.93 );
setScaleKey( spep_2 -1 + 199, 1, 1.93, 1.93 );--
setScaleKey( spep_2 -1 + 200, 1, 1.46 + sx2_2, 1.46 + sy2_2 );
setScaleKey( spep_2 -1 + 223, 1, 1.46 + sx2_2, 1.46 + sy2_2 );--
setScaleKey( spep_2 -1 + 224, 1, 1.99, 1.99 );
setScaleKey( spep_2 -1 + 262, 1, 1.99, 1.99 );--

setRotateKey( spep_2 -1 + 166, 1, 120 );
setRotateKey( spep_2 -1 + 178, 1, 120 );

setRotateKey( spep_2 -1 + 180, 1, 125 );
setRotateKey( spep_2 -1 + 181, 1, 125 );
setRotateKey( spep_2 -1 + 182, 1, 125 );
setRotateKey( spep_2 -1 + 183, 1, 125 );
setRotateKey( spep_2 -1 + 184, 1, 152 );
setRotateKey( spep_2 -1 + 185, 1, 152 );
setRotateKey( spep_2 -1 + 186, 1, 152 );
setRotateKey( spep_2 -1 + 187, 1, 152 );
setRotateKey( spep_2 -1 + 188, 1, 167 );
setRotateKey( spep_2 -1 + 193, 1, 167 );
setRotateKey( spep_2 -1 + 194, 1, 171 );
setRotateKey( spep_2 -1 + 197, 1, 171 );
setRotateKey( spep_2 -1 + 198, 1, 173 );
setRotateKey( spep_2 -1 + 199, 1, 173 );--
setRotateKey( spep_2 -1 + 200, 1, 143 );
setRotateKey( spep_2 -1 + 202, 1, 153.4 );
setRotateKey( spep_2 -1 + 204, 1, 162.4 );
setRotateKey( spep_2 -1 + 206, 1, 169.4 );
setRotateKey( spep_2 -1 + 208, 1, 174.3 );
setRotateKey( spep_2 -1 + 210, 1, 177.9 );
setRotateKey( spep_2 -1 + 212, 1, 180.3 );
setRotateKey( spep_2 -1 + 214, 1, 182 );
setRotateKey( spep_2 -1 + 216, 1, 183.2 );
setRotateKey( spep_2 -1 + 218, 1, 187.6 );
setRotateKey( spep_2 -1 + 220, 1, 190 );
setRotateKey( spep_2 -1 + 222, 1, 190.7 );
setRotateKey( spep_2 -1 + 223, 1, 190.7 );--
setRotateKey( spep_2 -1 + 224, 1, 316 );
setRotateKey( spep_2 -1 + 226, 1, 317.9 );
setRotateKey( spep_2 -1 + 228, 1, 319.8 );
setRotateKey( spep_2 -1 + 230, 1, 319.8 );
setRotateKey( spep_2 -1 + 232, 1, 323.6 );
setRotateKey( spep_2 -1 + 234, 1, 323.6 );
setRotateKey( spep_2 -1 + 236, 1, 327.3 );
setRotateKey( spep_2 -1 + 238, 1, 329.2 );
setRotateKey( spep_2 -1 + 240, 1, 329.2 );
setRotateKey( spep_2 -1 + 242, 1, 333 );
setRotateKey( spep_2 -1 + 244, 1, 334.9 );
setRotateKey( spep_2 -1 + 246, 1, 336.8 );
setRotateKey( spep_2 -1 + 248, 1, 336.8 );
setRotateKey( spep_2 -1 + 250, 1, 340.6 );
setRotateKey( spep_2 -1 + 252, 1, 342.4 );
setRotateKey( spep_2 -1 + 254, 1, 342.4 );
setRotateKey( spep_2 -1 + 256, 1, 346.2 );
setRotateKey( spep_2 -1 + 258, 1, 346.2 );
setRotateKey( spep_2 -1 + 260, 1, 350 );
setRotateKey( spep_2 -1 + 262, 1, 350 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 280, 1, 1 );
setDisp( spep_2 -1 + 324, 1, 0 );
changeAnime( spep_2 -1 + 280, 1, 107 );
changeAnime( spep_2 -1 + 294, 1, 5 );
changeAnime( spep_2 -1 + 312, 1, 107 );

setMoveKey( spep_2 -1 + 280, 1, -201.2, -47.6 , 0 );
setMoveKey( spep_2 -1 + 285, 1, -201.2, -47.6 , 0 );
setMoveKey( spep_2 -1 + 286, 1, 166.5, -83.1 , 0 );
setMoveKey( spep_2 -1 + 287, 1, 166.5, -83.1 , 0 );
setMoveKey( spep_2 -1 + 288, 1, 176.5, -93.1 , 0 );
setMoveKey( spep_2 -1 + 289, 1, 176.5, -93.1 , 0 );
setMoveKey( spep_2 -1 + 290, 1, 198.7, -133.3 , 0 );
setMoveKey( spep_2 -1 + 291, 1, 198.7, -133.3 , 0 );
setMoveKey( spep_2 -1 + 292, 1, 187.1, -129.7 , 0 );
setMoveKey( spep_2 -1 + 293, 1, 187.1, -129.7 , 0 );--
setMoveKey( spep_2 -1 + 294, 1, 228.2, -437.7 , 0 );
setMoveKey( spep_2 -1 + 296, 1, 230, -436.4 , 0 );
setMoveKey( spep_2 -1 + 298, 1, 291.5, -481.7 , 0 );
setMoveKey( spep_2 -1 + 300, 1, 292.8, -482.9 , 0 );
setMoveKey( spep_2 -1 + 302, 1, 292.8, -482.9 , 0 );
setMoveKey( spep_2 -1 + 304, 1, 322.1, -466.8 , 0 );
setMoveKey( spep_2 -1 + 306, 1, 322.1, -466.8 , 0 );
setMoveKey( spep_2 -1 + 308, 1, 338, -467.8 , 0 );
setMoveKey( spep_2 -1 + 311, 1, 338, -467.8 , 0 );--
setMoveKey( spep_2 -1 + 312, 1, 78.6, 1.2 , 0 );
setMoveKey( spep_2 -1 + 314, 1, 78.6, 1.2 , 0 );
setMoveKey( spep_2 -1 + 316, 1, 136, -50 , 0 );
setMoveKey( spep_2 -1 + 318, 1, 136, -50 , 0 );
setMoveKey( spep_2 -1 + 320, 1, 193.7, -101.2 , 0 );
setMoveKey( spep_2 -1 + 324, 1, 193.7, -101.2 , 0 );

setScaleKey( spep_2 -1 + 280, 1, 3.8, 3.8 );
setScaleKey( spep_2 -1 + 285, 1, 3.8, 3.8 );
setScaleKey( spep_2 -1 + 286, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 287, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 288, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 289, 1, 2.94, 2.94 );
setScaleKey( spep_2 -1 + 290, 1, 2.75, 2.75 );
setScaleKey( spep_2 -1 + 293, 1, 2.75, 2.75 );--
setScaleKey( spep_2 -1 + 294, 1, 4.83, 4.83 );
setScaleKey( spep_2 -1 + 296, 1, 4.83, 4.83 );
setScaleKey( spep_2 -1 + 298, 1, 4.33, 4.33 );
setScaleKey( spep_2 -1 + 302, 1, 4.33, 4.33 );
setScaleKey( spep_2 -1 + 304, 1, 3.85, 3.85 );
setScaleKey( spep_2 -1 + 306, 1, 3.85, 3.85 );
setScaleKey( spep_2 -1 + 308, 1, 3.68, 3.68 );
setScaleKey( spep_2 -1 + 311, 1, 3.68, 3.68 );--
setScaleKey( spep_2 -1 + 312, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 314, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 316, 1, 1.7, 1.7 );
setScaleKey( spep_2 -1 + 318, 1, 1.7, 1.7 );
setScaleKey( spep_2 -1 + 320, 1, 2.12, 2.12 );
setScaleKey( spep_2 -1 + 324, 1, 2.12, 2.12 );

setRotateKey( spep_2 -1 + 280, 1, 327 );
setRotateKey( spep_2 -1 + 285, 1, 327 );
setRotateKey( spep_2 -1 + 286, 1, 341 );
setRotateKey( spep_2 -1 + 293, 1, 341 );--
setRotateKey( spep_2 -1 + 294, 1, 441 );
setRotateKey( spep_2 -1 + 302, 1, 441 );
setRotateKey( spep_2 -1 + 304, 1, 452 );
setRotateKey( spep_2 -1 + 306, 1, 452 );
setRotateKey( spep_2 -1 + 308, 1, 454 );
setRotateKey( spep_2 -1 + 311, 1, 454 );--
setRotateKey( spep_2 -1 + 312, 1, 427 );
setRotateKey( spep_2 -1 + 324, 1, 427 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 360, 1, 1 );
setDisp( spep_2 -1 + 440, 1, 0 );
changeAnime( spep_2 -1 + 360, 1, 107 );
changeAnime( spep_2 -1 + 384, 1, 6 );
changeAnime( spep_2 -1 + 412, 1, 108 );

setMoveKey( spep_2 -1 + 360, 1, -393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 361, 1, -393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 362, 1, -393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 363, 1, -393.9, 316.6 , 0 );
setMoveKey( spep_2 -1 + 364, 1, -267.2, 218 , 0 );
setMoveKey( spep_2 -1 + 365, 1, -267.2, 218 , 0 );
setMoveKey( spep_2 -1 + 366, 1, -113.9, 244.5 , 0 );
setMoveKey( spep_2 -1 + 367, 1, -113.9, 244.5 , 0 );
setMoveKey( spep_2 -1 + 368, 1, -103.9, 246.2 , 0 );
setMoveKey( spep_2 -1 + 369, 1, -103.9, 246.2 , 0 );
setMoveKey( spep_2 -1 + 370, 1, -37.9, -512.7 , 0 );
setMoveKey( spep_2 -1 + 371, 1, -37.9, -512.7 , 0 );
setMoveKey( spep_2 -1 + 372, 1, -49.9, -513.5 , 0 );
setMoveKey( spep_2 -1 + 373, 1, -49.9, -513.5 , 0 );
setMoveKey( spep_2 -1 + 374, 1, -64.9, -786.9 , 0 );
setMoveKey( spep_2 -1 + 375, 1, -64.9, -786.9 , 0 );
setMoveKey( spep_2 -1 + 376, 1, -60.5, -786.7 , 0 );
setMoveKey( spep_2 -1 + 377, 1, -60.5, -786.7 , 0 );
setMoveKey( spep_2 -1 + 378, 1, -78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 379, 1, -78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 380, 1, -78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 381, 1, -78.1, -956.8 , 0 );
setMoveKey( spep_2 -1 + 382, 1, -95.4, -1104.8 , 0 );
setMoveKey( spep_2 -1 + 383, 1, -95.4, -1104.8 , 0 );--
setMoveKey( spep_2 -1 + 384, 1, 25.7, -100.2 , 0 );
setMoveKey( spep_2 -1 + 386, 1, 27, -102.8 , 0 );
setMoveKey( spep_2 -1 + 390, 1, 27, -102.8 , 0 );
setMoveKey( spep_2 -1 + 392, 1, 26.4, -107.1 , 0 );
setMoveKey( spep_2 -1 + 394, 1, 26.2, -108.6 , 0 );
setMoveKey( spep_2 -1 + 396, 1, 26.2, -108.6 , 0 );
setMoveKey( spep_2 -1 + 398, 1, 26, -111.4 , 0 );
setMoveKey( spep_2 -1 + 400, 1, 25.8, -112.9 , 0 );
setMoveKey( spep_2 -1 + 402, 1, 25.8, -112.9 , 0 );
setMoveKey( spep_2 -1 + 404, 1, 25.5, -115.9 , 0 );
setMoveKey( spep_2 -1 + 411, 1, 25.5, -115.9 , 0 );--
setMoveKey( spep_2 -1 + 412, 1, -159, -196 , 0 );
setMoveKey( spep_2 -1 + 413, 1, -159, -196 , 0 );
setMoveKey( spep_2 -1 + 414, 1, -175.5, -195.9 , 0 );
setMoveKey( spep_2 -1 + 415, 1, -175.5, -195.9 , 0 );
setMoveKey( spep_2 -1 + 416, 1, -172.2, -180.9 , 0 );
setMoveKey( spep_2 -1 + 417, 1, -172.2, -180.9 , 0 );
setMoveKey( spep_2 -1 + 418, 1, -160.3, -189.7 , 0 );
setMoveKey( spep_2 -1 + 419, 1, -160.3, -189.7 , 0 );
setMoveKey( spep_2 -1 + 420, 1, -174.9, -208.8 , 0 );
setMoveKey( spep_2 -1 + 422, 1, -191.7, -201.2 , 0 );
setMoveKey( spep_2 -1 + 424, 1, -219.4, -191.1 , 0 );
setMoveKey( spep_2 -1 + 426, 1, -375.4, -174.5 , 0 );
setMoveKey( spep_2 -1 + 428, 1, -476.9, -160.5 , 0 );
setMoveKey( spep_2 -1 + 430, 1, -530.1, -157.8 , 0 );
setMoveKey( spep_2 -1 + 432, 1, -555.5, -155.2 , 0 );
setMoveKey( spep_2 -1 + 434, 1, -564.9, -154.3 , 0 );
setMoveKey( spep_2 -1 + 436, 1, -567.1, -154.1 , 0 );
setMoveKey( spep_2 -1 + 438, 1, -567.2, -154 , 0 );
setMoveKey( spep_2 -1 + 440, 1, -567.2, -154 , 0 );

setScaleKey( spep_2 -1 + 360, 1, 3.49, 3.49 );
setScaleKey( spep_2 -1 + 363, 1, 3.49, 3.49 );
setScaleKey( spep_2 -1 + 364, 1, 3.76, 3.76 );
setScaleKey( spep_2 -1 + 365, 1, 3.76, 3.76 );
setScaleKey( spep_2 -1 + 366, 1, 4.86, 4.86 );
setScaleKey( spep_2 -1 + 383, 1, 4.86, 4.86 );--
setScaleKey( spep_2 -1 + 384, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 386, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 390, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 392, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 396, 1, 2.73, 2.73 );
setScaleKey( spep_2 -1 + 398, 1, 2.74, 2.74 );
setScaleKey( spep_2 -1 + 411, 1, 2.74, 2.74 );--
setScaleKey( spep_2 -1 + 412, 1, 3.21, 3.21 );
setScaleKey( spep_2 -1 + 413, 1, 3.21, 3.21 );
setScaleKey( spep_2 -1 + 414, 1, 3.11, 3.11 );
setScaleKey( spep_2 -1 + 415, 1, 3.11, 3.11 );
setScaleKey( spep_2 -1 + 416, 1, 3.01, 3.01 );
setScaleKey( spep_2 -1 + 417, 1, 3.01, 3.01 );
setScaleKey( spep_2 -1 + 418, 1, 2.9, 2.9 );
setScaleKey( spep_2 -1 + 419, 1, 2.9, 2.9 );
setScaleKey( spep_2 -1 + 420, 1, 2.8, 2.8 );
setScaleKey( spep_2 -1 + 422, 1, 2.7, 2.7 );
setScaleKey( spep_2 -1 + 424, 1, 2.25, 2.25 );
setScaleKey( spep_2 -1 + 426, 1, 1.39, 1.39 );
setScaleKey( spep_2 -1 + 428, 1, 0.87, 0.87 );
setScaleKey( spep_2 -1 + 430, 1, 0.59, 0.59 );
setScaleKey( spep_2 -1 + 432, 1, 0.45, 0.45 );
setScaleKey( spep_2 -1 + 434, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 436, 1, 0.39, 0.39 );
setScaleKey( spep_2 -1 + 438, 1, 0.39, 0.39 );
setScaleKey( spep_2 -1 + 440, 1, 0.39, 0.39 );

setRotateKey( spep_2 -1 + 360, 1, -322 );
setRotateKey( spep_2 -1 + 373, 1, -322 );
setRotateKey( spep_2 -1 + 374, 1, -295 );
setRotateKey( spep_2 -1 + 375, 1, -295 );
setRotateKey( spep_2 -1 + 376, 1, -295 );
setRotateKey( spep_2 -1 + 377, 1, -295 );
setRotateKey( spep_2 -1 + 378, 1, -278 );
setRotateKey( spep_2 -1 + 379, 1, -278 );
setRotateKey( spep_2 -1 + 380, 1, -278 );
setRotateKey( spep_2 -1 + 381, 1, -278 );
setRotateKey( spep_2 -1 + 382, 1, -279 );
setRotateKey( spep_2 -1 + 383, 1, -279 );--
setRotateKey( spep_2 -1 + 384, 1, -426 );
setRotateKey( spep_2 -1 + 386, 1, -430 );
setRotateKey( spep_2 -1 + 390, 1, -430 );
setRotateKey( spep_2 -1 + 392, 1, -434 );
setRotateKey( spep_2 -1 + 394, 1, -435.2 );
setRotateKey( spep_2 -1 + 396, 1, -435.2 );
setRotateKey( spep_2 -1 + 398, 1, -437.9 );
setRotateKey( spep_2 -1 + 400, 1, -439.2 );
setRotateKey( spep_2 -1 + 402, 1, -439.2 );
setRotateKey( spep_2 -1 + 404, 1, -441.7 );
setRotateKey( spep_2 -1 + 411, 1, -441.7 );--
setRotateKey( spep_2 -1 + 412, 1, -540 );
setRotateKey( spep_2 -1 + 413, 1, -540 );
setRotateKey( spep_2 -1 + 414, 1, -540.4 );
setRotateKey( spep_2 -1 + 415, 1, -540.4 );
setRotateKey( spep_2 -1 + 416, 1, -540.7 );
setRotateKey( spep_2 -1 + 417, 1, -540.7 );
setRotateKey( spep_2 -1 + 418, 1, -541.1 );
setRotateKey( spep_2 -1 + 419, 1, -541.1 );
setRotateKey( spep_2 -1 + 420, 1, -541.5 );
setRotateKey( spep_2 -1 + 422, 1, -541.8 );
setRotateKey( spep_2 -1 + 424, 1, -540 );
setRotateKey( spep_2 -1 + 438, 1, -540 );
setRotateKey( spep_2 -1 + 440, 1, -540 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 456, 1, 1 );
setDisp( spep_2 -1 + 496, 1, 0 );
changeAnime( spep_2 -1 + 456, 1, 108 );

setMoveKey( spep_2 -1 + 456, 1, 246.1, -191.1 , 0 );
setMoveKey( spep_2 -1 + 458, 1, 246.1, -191.1 , 0 );
setMoveKey( spep_2 -1 + 460, 1, -148.4, 58.3 , 0 );
setMoveKey( spep_2 -1 + 464, 1, -148.4, 58.3 , 0 );
setMoveKey( spep_2 -1 + 466, 1, -238.2, 105.1 , 0 );
setMoveKey( spep_2 -1 + 468, 1, -238.2, 105.1 , 0 );
setMoveKey( spep_2 -1 + 470, 1, -245.2, 110.1 , 0 );
setMoveKey( spep_2 -1 + 472, 1, -245.2, 110.1 , 0 );
setMoveKey( spep_2 -1 + 474, 1, -251.1, 111.1 , 0 );
setMoveKey( spep_2 -1 + 476, 1, -251.1, 111.1 , 0 );
setMoveKey( spep_2 -1 + 478, 1, -230.2, 107.1 , 0 );
setMoveKey( spep_2 -1 + 482, 1, -230.2, 107.1 , 0 );
setMoveKey( spep_2 -1 + 484, 1, -237.1, 108.1 , 0 );
setMoveKey( spep_2 -1 + 486, 1, -237.1, 108.1 , 0 );
setMoveKey( spep_2 -1 + 488, 1, -243.1, 112.1 , 0 );
setMoveKey( spep_2 -1 + 490, 1, -243.1, 112.1 , 0 );
setMoveKey( spep_2 -1 + 492, 1, -251.1, 115.1 , 0 );
setMoveKey( spep_2 -1 + 496, 1, -251.1, 115.1 , 0 );

setScaleKey( spep_2 -1 + 456, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 458, 1, 3.1, 3.1 );
setScaleKey( spep_2 -1 + 460, 1, 1.02, 1.02 );
setScaleKey( spep_2 -1 + 464, 1, 1.02, 1.02 );
setScaleKey( spep_2 -1 + 466, 1, 0.52, 0.52 );
setScaleKey( spep_2 -1 + 468, 1, 0.52, 0.52 );
setScaleKey( spep_2 -1 + 470, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 472, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 474, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 476, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 478, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 482, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 484, 1, 0.25, 0.25 );
setScaleKey( spep_2 -1 + 486, 1, 0.25, 0.25 );
setScaleKey( spep_2 -1 + 488, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 490, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 492, 1, 0.21, 0.21 );
setScaleKey( spep_2 -1 + 496, 1, 0.21, 0.21 );

setRotateKey( spep_2 -1 + 456, 1, -523.6 );
setRotateKey( spep_2 -1 + 496, 1, -523.6 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 776, 1, 1 );
setDisp( spep_2 -1 + 856, 1, 0 );
changeAnime( spep_2 -1 + 776, 1, 105 );

setMoveKey( spep_2 -1 + 776, 1, -122.9, -17.2 , 0 );
setMoveKey( spep_2 -1 + 778, 1, -122.9, -17.2 , 0 );
setMoveKey( spep_2 -1 + 780, 1, -136.2, -18.6 , 0 );
setMoveKey( spep_2 -1 + 782, 1, -136.2, -18.6 , 0 );
setMoveKey( spep_2 -1 + 784, 1, -140.1, -20 , 0 );
setMoveKey( spep_2 -1 + 786, 1, -141.2, -19.8 , 0 );
setMoveKey( spep_2 -1 + 788, 1, -142.1, -19.6 , 0 );
setMoveKey( spep_2 -1 + 790, 1, -143.1, -19.4 , 0 );
setMoveKey( spep_2 -1 + 792, 1, -143.9, -19.2 , 0 );
setMoveKey( spep_2 -1 + 794, 1, -144.8, -19.1 , 0 );
setMoveKey( spep_2 -1 + 796, 1, -145.5, -19 , 0 );
setMoveKey( spep_2 -1 + 798, 1, -146.2, -18.9 , 0 );
setMoveKey( spep_2 -1 + 800, 1, -147, -18.7 , 0 );
setMoveKey( spep_2 -1 + 802, 1, -147.7, -18.7 , 0 );
setMoveKey( spep_2 -1 + 804, 1, -148.3, -18.4 , 0 );
setMoveKey( spep_2 -1 + 806, 1, -148.8, -18.4 , 0 );
setMoveKey( spep_2 -1 + 808, 1, -149.4, -18.3 , 0 );
setMoveKey( spep_2 -1 + 810, 1, -149.9, -18.1 , 0 );
setMoveKey( spep_2 -1 + 812, 1, -150.4, -18.1 , 0 );
setMoveKey( spep_2 -1 + 814, 1, -150.8, -18.1 , 0 );
setMoveKey( spep_2 -1 + 816, 1, -151.3, -18 , 0 );
setMoveKey( spep_2 -1 + 818, 1, -151.7, -17.8 , 0 );
setMoveKey( spep_2 -1 + 820, 1, -152, -17.8 , 0 );
setMoveKey( spep_2 -1 + 822, 1, -152.4, -17.7 , 0 );
setMoveKey( spep_2 -1 + 824, 1, -152.7, -17.6 , 0 );
setMoveKey( spep_2 -1 + 826, 1, -153, -17.6 , 0 );
setMoveKey( spep_2 -1 + 828, 1, -153.3, -17.6 , 0 );
setMoveKey( spep_2 -1 + 830, 1, -153.4, -17.5 , 0 );
setMoveKey( spep_2 -1 + 832, 1, -153.7, -17.5 , 0 );
setMoveKey( spep_2 -1 + 834, 1, -153.8, -17.5 , 0 );
setMoveKey( spep_2 -1 + 836, 1, -154, -17.4 , 0 );
setMoveKey( spep_2 -1 + 838, 1, -154.2, -17.4 , 0 );
setMoveKey( spep_2 -1 + 840, 1, -154.3, -17.4 , 0 );
setMoveKey( spep_2 -1 + 842, 1, -154.4, -17.4 , 0 );
setMoveKey( spep_2 -1 + 844, 1, -154.5, -17.4 , 0 );
setMoveKey( spep_2 -1 + 846, 1, -154.6, -17.3 , 0 );
setMoveKey( spep_2 -1 + 848, 1, -154.7, -17.4 , 0 );
setMoveKey( spep_2 -1 + 850, 1, -154.7, -17.3 , 0 );
setMoveKey( spep_2 -1 + 852, 1, -154.8, -17.2 , 0 );
setMoveKey( spep_2 -1 + 856, 1, -154.8, -17.2 , 0 );

setScaleKey( spep_2 -1 + 776, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 778, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 780, 1, 0.55, 0.55 );
setScaleKey( spep_2 -1 + 782, 1, 0.55, 0.55 );
setScaleKey( spep_2 -1 + 784, 1, 0.43, 0.43 );
setScaleKey( spep_2 -1 + 786, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 788, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 790, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 792, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 794, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 796, 1, 0.3, 0.3 );
setScaleKey( spep_2 -1 + 798, 1, 0.29, 0.29 );
setScaleKey( spep_2 -1 + 800, 1, 0.27, 0.27 );
setScaleKey( spep_2 -1 + 802, 1, 0.26, 0.26 );
setScaleKey( spep_2 -1 + 804, 1, 0.24, 0.24 );
setScaleKey( spep_2 -1 + 806, 1, 0.23, 0.23 );
setScaleKey( spep_2 -1 + 808, 1, 0.22, 0.22 );
setScaleKey( spep_2 -1 + 810, 1, 0.2, 0.2 );
setScaleKey( spep_2 -1 + 812, 1, 0.19, 0.19 );
setScaleKey( spep_2 -1 + 814, 1, 0.18, 0.18 );
setScaleKey( spep_2 -1 + 816, 1, 0.17, 0.17 );
setScaleKey( spep_2 -1 + 818, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 820, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 822, 1, 0.15, 0.15 );
setScaleKey( spep_2 -1 + 824, 1, 0.14, 0.14 );
setScaleKey( spep_2 -1 + 826, 1, 0.14, 0.14 );
setScaleKey( spep_2 -1 + 828, 1, 0.13, 0.13 );
setScaleKey( spep_2 -1 + 830, 1, 0.12, 0.12 );
setScaleKey( spep_2 -1 + 832, 1, 0.12, 0.12 );
setScaleKey( spep_2 -1 + 834, 1, 0.11, 0.11 );
setScaleKey( spep_2 -1 + 838, 1, 0.11, 0.11 );
setScaleKey( spep_2 -1 + 840, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 848, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 850, 1, 0.09, 0.09 );
setScaleKey( spep_2 -1 + 856, 1, 0.09, 0.09 );

setRotateKey( spep_2 -1 + 776, 1, -49.5 );
setRotateKey( spep_2 -1 + 798, 1, -49.5 );
setRotateKey( spep_2 -1 + 800, 1, -49.6 );
setRotateKey( spep_2 -1 + 856, 1, -49.6 );

-- ** 音 ** --
--ベジータパンチ
SE013 = playSeVer2( spep_2 + 26, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE013, 79 );
SE014 = playSeVer2( spep_2 + 26, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE014, 89 );
SE015 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);

--悟空肘打ち
SE016 = playSeVer2( spep_2 + 80, 1049, "",spep_2 + 120, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 84, 1359, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);

--手つく
SE019 = playSeVer2( spep_2 + 142, 1135, "",spep_2 + 154, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 142, SE019, 78 );
SE020 = playSeVer2( spep_2 + 146, 1192, "",spep_2 + 162, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 146, SE020, 172 );

--足払い
SE021 = playSeVer2( spep_2 + 164, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 170, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE022, 83 );
SE023 = playSeVer2( spep_2 + 170, 1048, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 172, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE024, 82 );

--起き上がって走り出す
SE025 = playSeVer2( spep_2 + 224, 1192, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 236, 1108, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 246, 1108, "", 0, 0, 0, -1);

--振りかぶる
SE028 = playSeVer2( spep_2 + 258, 1004, "", 0, 0, 0, -1);

--パンチ
SE029 = playSeVer2( spep_2 + 274, 1359, "",spep_2 + 304, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 274, SE029, 89 );
SE030 = playSeVer2( spep_2 + 276, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 276, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE031, 89 );

--敵吹き飛ぶ
SE032 = playSeVer2( spep_2 + 306, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE032, 71 );

--悟空おりてくる
SE033 = playSeVer2( spep_2 + 316, 1117, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 316, 1116, "",spep_2 + 360, 0, 12, -1);

--叩きつける
SE035 = playSeVer2( spep_2 + 354, 1123, "",spep_2 + 410, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 354, SE035, 89 );
SE036 = playSeVer2( spep_2 + 354, 1359, "", 0, 0, 0, -1);

--頭突き
SE037 = playSeVer2( spep_2 + 392, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 400, 1120, "", 0, 0, 0, -1);

--かめはめ波溜め
SE040 = playSeVer2( spep_2 + 502, 1210, "",spep_2 + 604, 20, 24, 0.6);
setStartTimeMs( SE040,  1017 );

--敵飛んでいく
SE041 = playSeVer2( spep_2 + 446, 1027, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 446, 1121, "",spep_2 + 524, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 446, SE042, 75 );
SE043 = playSeVer2( spep_2 + 446, 1183, "",spep_2 + 524, 0, 30, -1);
SE044 = playSeVer2( spep_2 + 450, 1182, "", 0, 0, 0, -1);

--かめはめ波溜め
SE045 = playSeVer2( spep_2 + 500, 1209, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 574, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 574, SE046, 89 );
SE047 = playSeVer2( spep_2 + 574, 1223, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 574, 1284, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE049 = playSeVer2( spep_2 + 746, 1204, "", 0, 10, 0, -1);
setStartTimeMs( SE049,  2250 );
SE051 = playSeVer2( spep_2 + 702, 1356, "",spep_2 + 828, 16, 30, -1);
setStartTimeMs( SE051,  367 );
SE052 = playSeVer2( spep_2 + 698, 1273, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 698, 1184, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 698, SE053, 73 );
SE054 = playSeVer2( spep_2 + 706, 1370, "",spep_2 + 826, 0, 26, -1);
setPitch( spep_2 + 706, SE054, -400 );
setTimeStretch( SE054, 0.73, 30, 4 );
SE055 = playSeVer2( spep_2 + 714, 1311, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 764, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 764, SE056, 158 );

--かめはめ波飛んでいく
SE050 = playSeVer2( spep_2 + 634, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 634, SE050, 82 );

--ベジータ気弾発射
SE057 = playSeVer2( spep_2 + 810, 1110, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 810, 1145, "", 0, 0, 0, 0.6);

--爆発
SE059 = playSeVer2( spep_2 + 842, 1023, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 848, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 868, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE062 = playSeVer2( spep_2 + 930, 1067, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 930, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 1008 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--終わり
hideKoScreen();
dealDamage(spep_2 +896);
--entryFade( spep_2 +994, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 996 );

end