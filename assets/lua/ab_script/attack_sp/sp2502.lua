--1025730:超サイヤ人3孫悟空&超サイヤ人2ベジータ_ライバル同士の共闘
--sp_effect_b1_00236
--sp2502

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
SP_01 = 161451; --冒頭アップ ef_001
SP_02 = 161452; --奥へ飛ぶ～ラスト：手前   ef_002
SP_03 = 161453; --奥へ飛ぶ～ラスト：奥    ef_003
SP_04 = 161454; --KO    ef_004


--敵側
SP_01r = 161455;    --敵用：冒頭アップ  ef_001r
SP_02r = 161456;    --敵用：奥へ飛ぶ～ラスト：手前    ef_002r
SP_03r = 161457;    --敵用：奥へ飛ぶ～ラスト：奥 ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);
adjustAttackerLabel( 0, 205);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭アップ(92F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭アップ    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 92, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 92 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 92 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 92, first_f, 0 );

--spep_x = spep_0 + 8;
spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 126 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 114, 0, 38, -1);
SE007 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 126 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c = spep_0 + 92;

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
--二人向かっていく
SE011 = playSeVer2( spep_c + 90, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_c + 90, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_c + 90, 9, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- 奥へ飛ぶ～ラスト(858F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --奥へ飛ぶ～ラスト：手前 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 858, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 858, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 858, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 858, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --奥へ飛ぶ～ラスト：奥   ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 858, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 858, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 858, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 858, finish_b, 255 );

KO = entryEffect( spep_2 + 846, SP_04, 0x100, -1, 0, 0, 0 );  --KO  ef_004
setEffMoveKey( spep_2 + 846, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1100, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 846, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1100, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 846, KO, 0 );
setEffRotateKey( spep_2 + 1100, KO, 0 );
setEffAlphaKey( spep_2 + 846, KO, 255 );
setEffAlphaKey( spep_2 + 1100, KO, 255 );

--二人向かっていく
SE014 = playSeVer2( spep_2 + 12, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 858 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 166, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 108 );

setMoveKey( spep_2 -3 + 120, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 121, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 154.7, 137.1 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 154.7, 137.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 159.6, 149.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 159.6, 149.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 157.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 157.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 151, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 153, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 159, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 171.8, 159.1 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 3.27, 3.27 );
setScaleKey( spep_2 -3 + 166, 1, 3.27, 3.27 );

setRotateKey( spep_2 -3 + 120, 1, -21.8 );
setRotateKey( spep_2 -3 + 166, 1, -21.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 252, 1, 1 );
setDisp( spep_2 -3 + 278, 1, 0 );
changeAnime( spep_2 -3 + 252, 1, 105 );

setMoveKey( spep_2 -3 + 252, 1, -1283.8, 67.8 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -746.3, 78.8 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -746.3, 78.8 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -376, 25.4 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -110, 32.6 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -97.2, 32.3 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -84.3, 32 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -71.4, 31.7 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -58.6, 31.3 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -45.7, 31 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -32.8, 30.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -20, 30.3 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -7.1, 30 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -7.1, 30 , 0 );

setScaleKey( spep_2 -3 + 252, 1, 15, 15 );
setScaleKey( spep_2 -3 + 254, 1, 8.13, 8.13 );
setScaleKey( spep_2 -3 + 256, 1, 8.13, 8.13 );
setScaleKey( spep_2 -3 + 258, 1, 4.89, 4.89 );
setScaleKey( spep_2 -3 + 260, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 262, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 264, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 266, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 268, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 270, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 272, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 274, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 276, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 278, 1, 2.03, 2.03 );

setRotateKey( spep_2 -3 + 252, 1, 22.2 );
setRotateKey( spep_2 -3 + 254, 1, 26.3 );
setRotateKey( spep_2 -3 + 256, 1, 26.3 );
setRotateKey( spep_2 -3 + 258, 1, 32.7 );
setRotateKey( spep_2 -3 + 260, 1, 47.8 );
setRotateKey( spep_2 -3 + 262, 1, 48.5 );
setRotateKey( spep_2 -3 + 264, 1, 49.3 );
setRotateKey( spep_2 -3 + 266, 1, 50.1 );
setRotateKey( spep_2 -3 + 268, 1, 50.8 );
setRotateKey( spep_2 -3 + 270, 1, 51.6 );
setRotateKey( spep_2 -3 + 272, 1, 52.3 );
setRotateKey( spep_2 -3 + 274, 1, 53.1 );
setRotateKey( spep_2 -3 + 276, 1, 53.8 );
setRotateKey( spep_2 -3 + 278, 1, 53.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 328, 1, 0 );
changeAnime( spep_2 -3 + 316, 1, 106 );

setMoveKey( spep_2 -3 + 316, 1, -5.9, 22.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 10, 22.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 28, 22.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 47.9, 22.3 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 69.7, 22.3 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 93.6, 22.3 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 93.6, 22.3 , 0 );

setScaleKey( spep_2 -3 + 316, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 328, 1, 3.53, 3.53 );

setRotateKey( spep_2 -3 + 316, 1, -33.2 );
setRotateKey( spep_2 -3 + 318, 1, -32.8 );
setRotateKey( spep_2 -3 + 320, 1, -32.4 );
setRotateKey( spep_2 -3 + 322, 1, -31.9 );
setRotateKey( spep_2 -3 + 324, 1, -31.3 );
setRotateKey( spep_2 -3 + 326, 1, -30.7 );
setRotateKey( spep_2 -3 + 328, 1, -30.7 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 332, 1, 1 );
setDisp( spep_2 -3 + 426, 1, 0 );
changeAnime( spep_2 -3 + 332, 1, 7 );
changeAnime( spep_2 -3 + 350, 1, 108 );
changeAnime( spep_2 -3 + 354, 1, 7 );
changeAnime( spep_2 -3 + 360, 1, 108 );
changeAnime( spep_2 -3 + 376, 1, 106 );

setMoveKey( spep_2 -3 + 332, 1, 304.7, 243.7 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 304.7, 243.7 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 634.8, 405.7 , 0 );
setMoveKey( spep_2 -3 + 335, 1, 634.8, 405.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 232.4, 229.7 , 0 );
setMoveKey( spep_2 -3 + 337, 1, 232.4, 229.7 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 456.1, 429.2 , 0 );
setMoveKey( spep_2 -3 + 339, 1, 456.1, 429.2 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 341, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 343, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 357.8, 376.3 , 0 );
setMoveKey( spep_2 -3 + 345, 1, 357.8, 376.3 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 221.5, 187.1 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 221.5, 187.1 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 221.6, 255.1 , 0 );
setMoveKey( spep_2 -3 + 349, 1, 221.6, 255.1 , 0 );--
setMoveKey( spep_2 -3 + 350, 1, 68.7, -81 , 0 );
setMoveKey( spep_2 -3 + 353, 1, 68.7, -81 , 0 );--
setMoveKey( spep_2 -3 + 354, 1, 775.7, 741.5 , 0 );
setMoveKey( spep_2 -3 + 355, 1, 775.7, 741.5 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 503.3, 506.9 , 0 );
setMoveKey( spep_2 -3 + 357, 1, 503.3, 506.9 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 261.1, 355.5 , 0 );
setMoveKey( spep_2 -3 + 359, 1, 261.1, 355.5 , 0 );--
setMoveKey( spep_2 -3 + 360, 1, 55.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 361, 1, 55.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 363, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 50.2, -106.7 , 0 );
setMoveKey( spep_2 -3 + 365, 1, 50.2, -106.7 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 79.5, -114 , 0 );
setMoveKey( spep_2 -3 + 367, 1, 79.5, -114 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 64.8, -126.3 , 0 );
setMoveKey( spep_2 -3 + 369, 1, 64.8, -126.3 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 371, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 52.7, -111.5 , 0 );
setMoveKey( spep_2 -3 + 373, 1, 52.7, -111.5 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 89.1, -114 , 0 );
setMoveKey( spep_2 -3 + 375, 1, 89.1, -114 , 0 );--
setMoveKey( spep_2 -3 + 376, 1, 78.2, 61.2 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 77.5, 57.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 76.8, 54.7 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 76.1, 51.4 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 75.4, 48.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 74.6, 44.9 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 73.9, 41.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 73.2, 38.3 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 72.5, 35.1 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 71.8, 31.8 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 71.1, 28.5 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 70.4, 25.3 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 69.7, 22 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 69, 18.7 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 68.3, 15.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 67.6, 12.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 66.9, 8.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 66.2, 5.6 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 65.5, 2.4 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 64.8, -0.9 , 0 );
setMoveKey( spep_2 -3 + 415, 1, 64.8, -0.9 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 60.6, -15.6 , 0 );
setMoveKey( spep_2 -3 + 417, 1, 60.6, -15.6 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 70.4, -5.8 , 0 );
setMoveKey( spep_2 -3 + 419, 1, 70.4, -5.8 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 60.6, 1.6 , 0 );
setMoveKey( spep_2 -3 + 421, 1, 60.6, 1.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 521.8, 10.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 507.1, 5.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 507.1, 5.9 , 0 );

setScaleKey( spep_2 -3 + 332, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 333, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 334, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 335, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 336, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 337, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 338, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 339, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 340, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 341, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 342, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 343, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 344, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 345, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 346, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 347, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 348, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 349, 1, 4.1, 4.1 );--
setScaleKey( spep_2 -3 + 350, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 353, 1, 3.51, 3.51 );--
setScaleKey( spep_2 -3 + 354, 1, 5.23, 5.23 );
setScaleKey( spep_2 -3 + 359, 1, 5.23, 5.23 );--
setScaleKey( spep_2 -3 + 360, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 361, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 362, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 363, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 364, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 365, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 366, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 367, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 368, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 369, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 370, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 371, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 372, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 373, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 374, 1, 4.46, 4.46 );
setScaleKey( spep_2 -3 + 375, 1, 4.46, 4.46 );--
setScaleKey( spep_2 -3 + 376, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 426, 1, 1.61, 1.61 );

setRotateKey( spep_2 -3 + 332, 1, -14 );
setRotateKey( spep_2 -3 + 349, 1, -14 );--
setRotateKey( spep_2 -3 + 350, 1, -6.6 );
setRotateKey( spep_2 -3 + 353, 1, -6.6 );
setRotateKey( spep_2 -3 + 354, 1, -13.2 );
setRotateKey( spep_2 -3 + 359, 1, -13.2 );--
setRotateKey( spep_2 -3 + 360, 1, 41.2 );
setRotateKey( spep_2 -3 + 375, 1, 41.2 );--
setRotateKey( spep_2 -3 + 376, 1, -19.1 );
setRotateKey( spep_2 -3 + 378, 1, -18.5 );
setRotateKey( spep_2 -3 + 380, 1, -17.9 );
setRotateKey( spep_2 -3 + 382, 1, -17.3 );
setRotateKey( spep_2 -3 + 384, 1, -16.6 );
setRotateKey( spep_2 -3 + 386, 1, -16 );
setRotateKey( spep_2 -3 + 388, 1, -15.4 );
setRotateKey( spep_2 -3 + 390, 1, -14.8 );
setRotateKey( spep_2 -3 + 392, 1, -14.2 );
setRotateKey( spep_2 -3 + 394, 1, -13.6 );
setRotateKey( spep_2 -3 + 396, 1, -13 );
setRotateKey( spep_2 -3 + 398, 1, -12.4 );
setRotateKey( spep_2 -3 + 400, 1, -11.7 );
setRotateKey( spep_2 -3 + 402, 1, -11.1 );
setRotateKey( spep_2 -3 + 404, 1, -10.5 );
setRotateKey( spep_2 -3 + 406, 1, -9.9 );
setRotateKey( spep_2 -3 + 408, 1, -9.3 );
setRotateKey( spep_2 -3 + 410, 1, -8.7 );
setRotateKey( spep_2 -3 + 412, 1, -8.1 );
setRotateKey( spep_2 -3 + 414, 1, -7.5 );
setRotateKey( spep_2 -3 + 415, 1, -7.5 );
setRotateKey( spep_2 -3 + 416, 1, 1.9 );
setRotateKey( spep_2 -3 + 421, 1, 1.9 );
setRotateKey( spep_2 -3 + 422, 1, 34.5 );
setRotateKey( spep_2 -3 + 424, 1, 34.5 );
setRotateKey( spep_2 -3 + 426, 1, 34.5 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 462, 1, 1 );
setDisp( spep_2 -3 + 536, 1, 0 );

changeAnime( spep_2 -3 + 462, 1, 7 );
changeAnime( spep_2 -3 + 468, 1, 107 );
changeAnime( spep_2 -3 + 472, 1, 6 );
changeAnime( spep_2 -3 + 474, 1, 106 );
changeAnime( spep_2 -3 + 478, 1, 6 );
changeAnime( spep_2 -3 + 484, 1, 108 );
changeAnime( spep_2 -3 + 488, 1, 6 );
changeAnime( spep_2 -3 + 496, 1, 108 );
changeAnime( spep_2 -3 + 502, 1, 6 );
changeAnime( spep_2 -3 + 506, 1, 108 );
changeAnime( spep_2 -3 + 514, 1, 6 );
changeAnime( spep_2 -3 + 524, 1, 108 );

setMoveKey( spep_2 -3 + 462, 1, 1135.3, 83.9 , 0 );
setMoveKey( spep_2 -3 + 465, 1, 1135.3, 83.9 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 167.6, 36.9 , 0 );
setMoveKey( spep_2 -3 + 467, 1, 167.6, 36.9 , 0 );--
setMoveKey( spep_2 -3 + 468, 1, 8, 81.1 , 0 );
setMoveKey( spep_2 -3 + 471, 1, 8, 81.1 , 0 );--
setMoveKey( spep_2 -3 + 472, 1, 44.6, -183.3 , 0 );
setMoveKey( spep_2 -3 + 473, 1, 44.6, -183.3 , 0 );--
setMoveKey( spep_2 -3 + 474, 1, 117.4, -58.9 , 0 );
setMoveKey( spep_2 -3 + 477, 1, 117.4, -58.9 , 0 );--
setMoveKey( spep_2 -3 + 478, 1, -50.1, -90 , 0 );
setMoveKey( spep_2 -3 + 483, 1, -50.1, -90 , 0 );--
setMoveKey( spep_2 -3 + 484, 1, 27.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 27.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 487, 1, 27.7, -17.5 , 0 );--
setMoveKey( spep_2 -3 + 488, 1, -37.2, -3.7 , 0 );
setMoveKey( spep_2 -3 + 495, 1, -37.2, -3.7 , 0 );--
setMoveKey( spep_2 -3 + 496, 1, 21.8, -59.6 , 0 );
setMoveKey( spep_2 -3 + 501, 1, 21.8, -59.6 , 0 );--
setMoveKey( spep_2 -3 + 502, 1, 3.3, -67.2 , 0 );
setMoveKey( spep_2 -3 + 505, 1, 3.3, -67.2 , 0 );--
setMoveKey( spep_2 -3 + 506, 1, 18.4, -83 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 18.4, -83 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 14.8, -82.2 , 0 );
setMoveKey( spep_2 -3 + 513, 1, 14.8, -82.2 , 0 );--
setMoveKey( spep_2 -3 + 514, 1, 9.7, -83.7 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 9.7, -83.7 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 8.7, -85.8 , 0 );
setMoveKey( spep_2 -3 + 523, 1, 8.7, -85.8 , 0 );--
setMoveKey( spep_2 -3 + 524, 1, 11.6, -86.3 , 0 );
setMoveKey( spep_2 -3 + 526, 1, 11.6, -86.3 , 0 );
setMoveKey( spep_2 -3 + 528, 1, 11.3, -85.6 , 0 );
setMoveKey( spep_2 -3 + 536, 1, 11.3, -85.6 , 0 );

setScaleKey( spep_2 -3 + 462, 1, 11, 11 );
setScaleKey( spep_2 -3 + 465, 1, 11, 11 );
setScaleKey( spep_2 -3 + 466, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 467, 1, 3.73, 3.73 );--
setScaleKey( spep_2 -3 + 468, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 471, 1, 2.73, 2.73 );--
setScaleKey( spep_2 -3 + 472, 1, 6.18, 6.18 );
setScaleKey( spep_2 -3 + 473, 1, 6.18, 6.18 );--
setScaleKey( spep_2 -3 + 474, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 477, 1, 2.68, 2.68 );--
setScaleKey( spep_2 -3 + 478, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 482, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 483, 1, 0.71, 0.71 );--
setScaleKey( spep_2 -3 + 484, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 487, 1, 0.49, 0.49 );--
setScaleKey( spep_2 -3 + 488, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 495, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 496, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 501, 1, 0.16, 0.16 );--
setScaleKey( spep_2 -3 + 502, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 505, 1, 0.08, 0.08 );--
setScaleKey( spep_2 -3 + 506, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 508, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 510, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 513, 1, 0.05, 0.05 );--
setScaleKey( spep_2 -3 + 514, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 524, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 527, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 528, 1, 0.01, 0.01 );
setScaleKey( spep_2 -3 + 536, 1, 0.01, 0.01 );

setRotateKey( spep_2 -3 + 462, 1, 20.5 );
setRotateKey( spep_2 -3 + 467, 1, 20.5 );--
setRotateKey( spep_2 -3 + 468, 1, -42.5 );
setRotateKey( spep_2 -3 + 471, 1, -42.5 );--
setRotateKey( spep_2 -3 + 472, 1, 39.2 );
setRotateKey( spep_2 -3 + 473, 1, 39.2 );--
setRotateKey( spep_2 -3 + 474, 1, -28.7 );
setRotateKey( spep_2 -3 + 477, 1, -28.7 );--
setRotateKey( spep_2 -3 + 478, 1, 30.7 );
setRotateKey( spep_2 -3 + 483, 1, 30.7 );--
setRotateKey( spep_2 -3 + 484, 1, 9.2 );
setRotateKey( spep_2 -3 + 487, 1, 9.2 );--
setRotateKey( spep_2 -3 + 488, 1, 30.7 );
setRotateKey( spep_2 -3 + 495, 1, 30.7 );--
setRotateKey( spep_2 -3 + 496, 1, 9.2 );
setRotateKey( spep_2 -3 + 501, 1, 9.2 );--
setRotateKey( spep_2 -3 + 502, 1, 43.9 );
setRotateKey( spep_2 -3 + 505, 1, 43.9 );--
setRotateKey( spep_2 -3 + 506, 1, 9.2 );
setRotateKey( spep_2 -3 + 513, 1, 9.2 );--
setRotateKey( spep_2 -3 + 514, 1, 44 );
setRotateKey( spep_2 -3 + 523, 1, 44 );--
setRotateKey( spep_2 -3 + 524, 1, 9.1 );
setRotateKey( spep_2 -3 + 536, 1, 9.1 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 614, 1, 1 );
setDisp( spep_2 -3 + 656, 1, 0 );
changeAnime( spep_2 -3 + 614, 1, 107 );

setMoveKey( spep_2 -3 + 614, 1, -50.4, -294.7 , 0 );
setMoveKey( spep_2 -3 + 639, 1, -50.4, -294.7 , 0 );
setMoveKey( spep_2 -3 + 640, 1, -55.8, -327.1 , 0 );
setMoveKey( spep_2 -3 + 643, 1, -55.8, -327.1 , 0 );
setMoveKey( spep_2 -3 + 644, 1, -78.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 647, 1, -78.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 648, 1, -81.6, -345.4 , 0 );
setMoveKey( spep_2 -3 + 656, 1, -81.6, -345.4 , 0 );

setScaleKey( spep_2 -3 + 614, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 656, 1, 2.49, 2.49 );

setRotateKey( spep_2 -3 + 614, 1, -73.6 );
setRotateKey( spep_2 -3 + 639, 1, -73.6 );
setRotateKey( spep_2 -3 + 640, 1, -72.7 );
setRotateKey( spep_2 -3 + 643, 1, -72.7 );
setRotateKey( spep_2 -3 + 644, 1, -70.7 );
setRotateKey( spep_2 -3 + 647, 1, -70.7 );
setRotateKey( spep_2 -3 + 648, 1, -70.2 );
setRotateKey( spep_2 -3 + 656, 1, -70.2 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 720, 1, 1 );
setDisp( spep_2 -3 + 746, 1, 0 );
changeAnime( spep_2 -3 + 720, 1, 107 );

setBlendColor( spep_2 -3 + 720, 1, 3, 0.0, 0.43, 0.72, 0.75);
setBlendColor( spep_2 -3 + 745, 1, 3, 0.0, 0.43, 0.72, 0.75);
setBlendColor( spep_2 -3 + 746, 1, 3, 0.0, 0.43, 0.72, 0);

setMoveKey( spep_2 -3 + 720, 1, -139.4, -92.7 , 0 );
setMoveKey( spep_2 -3 + 746, 1, -139.4, -92.7 , 0 );

setScaleKey( spep_2 -3 + 720, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 746, 1, 2.61, 2.61 );

setRotateKey( spep_2 -3 + 720, 1, -65.2 );
setRotateKey( spep_2 -3 + 746, 1, -65.2 );

-- ** 音 ** --
--振りかぶる
SE015 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 58, 1116, "",spep_2 + 96, 0, 10, -1);

--悟空蹴り
SE017 = playSeVer2( spep_2 + 82, 1049, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 84, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 84, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 88, 1153, "", 0, 0, 0, -1);

--悟空翻る
SE021 = playSeVer2( spep_2 + 150, 1263, "",spep_2 + 236, 0, 20, -1);
SE022 = playSeVer2( spep_2 + 150, 1117, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 150, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE023, 75 );

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 242, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE024, 73 );
SE025 = playSeVer2( spep_2 + 242, 1183, "",spep_2 + 302, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 242, SE025, 74 );
SE026 = playSeVer2( spep_2 + 242, 1121, "",spep_2 + 302, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 242, SE026, 71 );

--ベジータ向かっていく
SE027 = playSeVer2( spep_2 + 268, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 268, 1116, "",spep_2 + 310, 0, 20, -1);
SE029 = playSeVer2( spep_2 + 268, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE029, 77 );
SE030 = playSeVer2( spep_2 + 284, 1277, "", 0, 0, 0, -1);

--ベジータ膝蹴り
SE031 = playSeVer2( spep_2 + 326, 1359, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 326, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 330, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 332, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE034, 81 );

--ベジータ殴り飛ばす
SE035 = playSeVer2( spep_2 + 404, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 408, 1359, "",spep_2 + 480, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 408, SE036, 87 );
SE037 = playSeVer2( spep_2 + 410, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 412, 1110, "", 0, 0, 0, -1);

--ベジータラッシュしながら奥にいく
SE039 = playSeVer2( spep_2 + 458, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE039, 83 );
SE040 = playSeVer2( spep_2 + 458, 1359, "",spep_2 + 486, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 458, SE040, 81 );
SE041 = playSeVer2( spep_2 + 458, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE041, 85 );
SE042 = playSeVer2( spep_2 + 464, 1010, "",spep_2 + 486, 0, 10, -1);
SE043 = playSeVer2( spep_2 + 470, 1110, "",spep_2 + 494, 0, 10, -1);
setPitch( spep_2 + 470, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 476, 1110, "",spep_2 + 500, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 476, SE044, 87 );
SE045 = playSeVer2( spep_2 + 482, 1110, "",spep_2 + 504, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 482, SE045, 84 );
SE046 = playSeVer2( spep_2 + 482, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 488, 1110, "",spep_2 + 510, 0, 8, -1);
setPitch( spep_2 + 488, SE047, 100 );
setTimeStretch( SE047, 1.07, 30, 4 );
SE048 = playSeVer2( spep_2 + 492, 1000, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 496, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE049, 66 );
SE050 = playSeVer2( spep_2 + 500, 1110, "",spep_2 + 522, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 500, SE050, 71 );
SE051 = playSeVer2( spep_2 + 504, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE051, 73 );
SE052 = playSeVer2( spep_2 + 512, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 512, SE052, 65 );

--岩激突
SE053 = playSeVer2( spep_2 + 526, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE053, 72 );

--爆発
SE054 = playSeVer2( spep_2 + 562, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 562, 1024, "", 0, 0, 0, -1);

--悟空頭つかむ
SE056 = playSeVer2( spep_2 + 630, 1007, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 630, 1013, "", 0, 0, 0, -1);

--気弾溜め
SE058 = playSeVer2( spep_2 + 670, 1273, "",spep_2 + 690, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 670, SE058, 142 );
setPitch( spep_2 + 670, SE058, 200 );
setTimeStretch( SE058, 1.13, 30, 4 );
SE059 = playSeVer2( spep_2 + 672, 1396, "",spep_2 + 886, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 672, SE059, 120 );
setPitch( spep_2 + 672, SE059, -900 );
setTimeStretch( SE059, 0.4, 30, 4 );
SE060 = playSeVer2( spep_2 + 672, 1296, "",spep_2 + 770, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 672, SE060, 110 );
SE061 = playSeVer2( spep_2 + 672, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 672, SE061, 178 );
SE062 = playSeVer2( spep_2 + 672, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 672, SE062, 73 );
setPitch( spep_2 + 672, SE062, -400 );
setTimeStretch( SE062, 0.73, 30, 4 );

--気弾弾ける
SE063 = playSeVer2( spep_2 + 730, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 730, SE063, 181 );
setStartTimeMs( SE063,  467 );
setPitch( spep_2 + 730, SE063, 500 );
setTimeStretch( SE063, 1.33, 30, 4 );
SE064 = playSeVer2( spep_2 + 734, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 734, SE064, 106 );

--気弾爆発
SE065 = playSeVer2( spep_2 + 774, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE065, 188 );
SE066 = playSeVer2( spep_2 + 774, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE066, 178 );
SE067 = playSeVer2( spep_2 + 774, 1226, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 774, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE068, 112 );
SE069 = playSeVer2( spep_2 + 780, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 780, SE069, 130 );

if(_IS_DEAD_LAST_ == 0)then
  entryFade( spep_2 +844, 2,  4, 2, 0, 0, 0, 255);
end

--終わり
hideKoScreen();
dealDamage(spep_2 +748);
endPhase( spep_2 + 848 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭アップ(92F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --冒頭アップ    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 92, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 92 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 92 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 92, first_f, 0 );

--spep_x = spep_0 + 8;
spep_x = spep_0 + 4;

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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 126 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 114, 0, 38, -1);
SE007 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 126 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);

--顔カットイン
--SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c = spep_0 + 92;

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
SE_CUTIN = playSe( spep_c + 0, SE_05 );
--二人向かっていく
SE011 = playSeVer2( spep_c + 90, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_c + 90, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_c + 90, 9, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- 奥へ飛ぶ～ラスト(858F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --奥へ飛ぶ～ラスト：手前 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 858, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 858, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 858, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 858, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --奥へ飛ぶ～ラスト：奥   ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 858, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 858, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 858, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 858, finish_b, 255 );

-- KO = entryEffect( spep_2 + 846, SP_04, 0x100, -1, 0, 0, 0 );  --KO  ef_004
-- setEffMoveKey( spep_2 + 846, KO, 0, 0 , 0 );
-- setEffMoveKey( spep_2 + 1100, KO, 0, 0 , 0 );
-- setEffScaleKey( spep_2 + 846, KO, 1.0, 1.0 );
-- setEffScaleKey( spep_2 + 1100, KO, 1.0, 1.0 );
-- setEffRotateKey( spep_2 + 846, KO, 0 );
-- setEffRotateKey( spep_2 + 1100, KO, 0 );
-- setEffAlphaKey( spep_2 + 846, KO, 255 );
-- setEffAlphaKey( spep_2 + 1100, KO, 255 );

--二人向かっていく
SE014 = playSeVer2( spep_2 + 12, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 858 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 166, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 108 );

setMoveKey( spep_2 -3 + 120, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 121, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 154.7, 137.1 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 154.7, 137.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 159.6, 149.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 159.6, 149.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 157.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 157.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 151, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 153, 1, 157.1, 151.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 159, 1, 159.6, 151.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 171.8, 159.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 171.8, 159.1 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 3.27, 3.27 );
setScaleKey( spep_2 -3 + 166, 1, 3.27, 3.27 );

setRotateKey( spep_2 -3 + 120, 1, -21.8 );
setRotateKey( spep_2 -3 + 166, 1, -21.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 252, 1, 1 );
setDisp( spep_2 -3 + 278, 1, 0 );
changeAnime( spep_2 -3 + 252, 1, 105 );

setMoveKey( spep_2 -3 + 252, 1, -1283.8, 67.8 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -746.3, 78.8 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -746.3, 78.8 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -376, 25.4 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -110, 32.6 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -97.2, 32.3 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -84.3, 32 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -71.4, 31.7 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -58.6, 31.3 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -45.7, 31 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -32.8, 30.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -20, 30.3 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -7.1, 30 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -7.1, 30 , 0 );

setScaleKey( spep_2 -3 + 252, 1, 15, 15 );
setScaleKey( spep_2 -3 + 254, 1, 8.13, 8.13 );
setScaleKey( spep_2 -3 + 256, 1, 8.13, 8.13 );
setScaleKey( spep_2 -3 + 258, 1, 4.89, 4.89 );
setScaleKey( spep_2 -3 + 260, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 262, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 264, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 266, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 268, 1, 2.44, 2.44 );
setScaleKey( spep_2 -3 + 270, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 272, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 274, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 276, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 278, 1, 2.03, 2.03 );

setRotateKey( spep_2 -3 + 252, 1, 22.2 );
setRotateKey( spep_2 -3 + 254, 1, 26.3 );
setRotateKey( spep_2 -3 + 256, 1, 26.3 );
setRotateKey( spep_2 -3 + 258, 1, 32.7 );
setRotateKey( spep_2 -3 + 260, 1, 47.8 );
setRotateKey( spep_2 -3 + 262, 1, 48.5 );
setRotateKey( spep_2 -3 + 264, 1, 49.3 );
setRotateKey( spep_2 -3 + 266, 1, 50.1 );
setRotateKey( spep_2 -3 + 268, 1, 50.8 );
setRotateKey( spep_2 -3 + 270, 1, 51.6 );
setRotateKey( spep_2 -3 + 272, 1, 52.3 );
setRotateKey( spep_2 -3 + 274, 1, 53.1 );
setRotateKey( spep_2 -3 + 276, 1, 53.8 );
setRotateKey( spep_2 -3 + 278, 1, 53.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 316, 1, 1 );
setDisp( spep_2 -3 + 328, 1, 0 );
changeAnime( spep_2 -3 + 316, 1, 106 );

setMoveKey( spep_2 -3 + 316, 1, -5.9, 22.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 10, 22.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 28, 22.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 47.9, 22.3 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 69.7, 22.3 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 93.6, 22.3 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 93.6, 22.3 , 0 );

setScaleKey( spep_2 -3 + 316, 1, 3.53, 3.53 );
setScaleKey( spep_2 -3 + 328, 1, 3.53, 3.53 );

setRotateKey( spep_2 -3 + 316, 1, -33.2 );
setRotateKey( spep_2 -3 + 318, 1, -32.8 );
setRotateKey( spep_2 -3 + 320, 1, -32.4 );
setRotateKey( spep_2 -3 + 322, 1, -31.9 );
setRotateKey( spep_2 -3 + 324, 1, -31.3 );
setRotateKey( spep_2 -3 + 326, 1, -30.7 );
setRotateKey( spep_2 -3 + 328, 1, -30.7 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 332, 1, 1 );
setDisp( spep_2 -3 + 426, 1, 0 );
changeAnime( spep_2 -3 + 332, 1, 7 );
changeAnime( spep_2 -3 + 350, 1, 108 );
changeAnime( spep_2 -3 + 354, 1, 7 );
changeAnime( spep_2 -3 + 360, 1, 108 );
changeAnime( spep_2 -3 + 376, 1, 106 );

setMoveKey( spep_2 -3 + 332, 1, 304.7, 243.7 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 304.7, 243.7 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 634.8, 405.7 , 0 );
setMoveKey( spep_2 -3 + 335, 1, 634.8, 405.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 232.4, 229.7 , 0 );
setMoveKey( spep_2 -3 + 337, 1, 232.4, 229.7 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 456.1, 429.2 , 0 );
setMoveKey( spep_2 -3 + 339, 1, 456.1, 429.2 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 341, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 343, 1, 297.2, 262.7 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 357.8, 376.3 , 0 );
setMoveKey( spep_2 -3 + 345, 1, 357.8, 376.3 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 221.5, 187.1 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 221.5, 187.1 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 221.6, 255.1 , 0 );
setMoveKey( spep_2 -3 + 349, 1, 221.6, 255.1 , 0 );--
setMoveKey( spep_2 -3 + 350, 1, 68.7, -81 , 0 );
setMoveKey( spep_2 -3 + 353, 1, 68.7, -81 , 0 );--
setMoveKey( spep_2 -3 + 354, 1, 775.7, 741.5 , 0 );
setMoveKey( spep_2 -3 + 355, 1, 775.7, 741.5 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 503.3, 506.9 , 0 );
setMoveKey( spep_2 -3 + 357, 1, 503.3, 506.9 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 261.1, 355.5 , 0 );
setMoveKey( spep_2 -3 + 359, 1, 261.1, 355.5 , 0 );--
setMoveKey( spep_2 -3 + 360, 1, 55.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 361, 1, 55.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 363, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 50.2, -106.7 , 0 );
setMoveKey( spep_2 -3 + 365, 1, 50.2, -106.7 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 79.5, -114 , 0 );
setMoveKey( spep_2 -3 + 367, 1, 79.5, -114 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 64.8, -126.3 , 0 );
setMoveKey( spep_2 -3 + 369, 1, 64.8, -126.3 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 371, 1, 64.9, -118.9 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 52.7, -111.5 , 0 );
setMoveKey( spep_2 -3 + 373, 1, 52.7, -111.5 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 89.1, -114 , 0 );
setMoveKey( spep_2 -3 + 375, 1, 89.1, -114 , 0 );--
setMoveKey( spep_2 -3 + 376, 1, 78.2, 61.2 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 77.5, 57.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 76.8, 54.7 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 76.1, 51.4 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 75.4, 48.1 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 74.6, 44.9 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 73.9, 41.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 73.2, 38.3 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 72.5, 35.1 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 71.8, 31.8 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 71.1, 28.5 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 70.4, 25.3 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 69.7, 22 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 69, 18.7 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 68.3, 15.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 67.6, 12.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 66.9, 8.9 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 66.2, 5.6 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 65.5, 2.4 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 64.8, -0.9 , 0 );
setMoveKey( spep_2 -3 + 415, 1, 64.8, -0.9 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 60.6, -15.6 , 0 );
setMoveKey( spep_2 -3 + 417, 1, 60.6, -15.6 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 70.4, -5.8 , 0 );
setMoveKey( spep_2 -3 + 419, 1, 70.4, -5.8 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 60.6, 1.6 , 0 );
setMoveKey( spep_2 -3 + 421, 1, 60.6, 1.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 521.8, 10.8 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 507.1, 5.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 507.1, 5.9 , 0 );

setScaleKey( spep_2 -3 + 332, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 333, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 334, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 335, 1, 4.21, 4.21 );
setScaleKey( spep_2 -3 + 336, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 337, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 338, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 339, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 340, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 341, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 342, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 343, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 344, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 345, 1, 3.44, 3.44 );
setScaleKey( spep_2 -3 + 346, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 347, 1, 4.6, 4.6 );
setScaleKey( spep_2 -3 + 348, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 349, 1, 4.1, 4.1 );--
setScaleKey( spep_2 -3 + 350, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 353, 1, 3.51, 3.51 );--
setScaleKey( spep_2 -3 + 354, 1, 5.23, 5.23 );
setScaleKey( spep_2 -3 + 359, 1, 5.23, 5.23 );--
setScaleKey( spep_2 -3 + 360, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 361, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 362, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 363, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 364, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 365, 1, 3.99, 3.99 );
setScaleKey( spep_2 -3 + 366, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 367, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 368, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 369, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 370, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 371, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 372, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 373, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 374, 1, 4.46, 4.46 );
setScaleKey( spep_2 -3 + 375, 1, 4.46, 4.46 );--
setScaleKey( spep_2 -3 + 376, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 426, 1, 1.61, 1.61 );

setRotateKey( spep_2 -3 + 332, 1, -14 );
setRotateKey( spep_2 -3 + 349, 1, -14 );--
setRotateKey( spep_2 -3 + 350, 1, -6.6 );
setRotateKey( spep_2 -3 + 353, 1, -6.6 );
setRotateKey( spep_2 -3 + 354, 1, -13.2 );
setRotateKey( spep_2 -3 + 359, 1, -13.2 );--
setRotateKey( spep_2 -3 + 360, 1, 41.2 );
setRotateKey( spep_2 -3 + 375, 1, 41.2 );--
setRotateKey( spep_2 -3 + 376, 1, -19.1 );
setRotateKey( spep_2 -3 + 378, 1, -18.5 );
setRotateKey( spep_2 -3 + 380, 1, -17.9 );
setRotateKey( spep_2 -3 + 382, 1, -17.3 );
setRotateKey( spep_2 -3 + 384, 1, -16.6 );
setRotateKey( spep_2 -3 + 386, 1, -16 );
setRotateKey( spep_2 -3 + 388, 1, -15.4 );
setRotateKey( spep_2 -3 + 390, 1, -14.8 );
setRotateKey( spep_2 -3 + 392, 1, -14.2 );
setRotateKey( spep_2 -3 + 394, 1, -13.6 );
setRotateKey( spep_2 -3 + 396, 1, -13 );
setRotateKey( spep_2 -3 + 398, 1, -12.4 );
setRotateKey( spep_2 -3 + 400, 1, -11.7 );
setRotateKey( spep_2 -3 + 402, 1, -11.1 );
setRotateKey( spep_2 -3 + 404, 1, -10.5 );
setRotateKey( spep_2 -3 + 406, 1, -9.9 );
setRotateKey( spep_2 -3 + 408, 1, -9.3 );
setRotateKey( spep_2 -3 + 410, 1, -8.7 );
setRotateKey( spep_2 -3 + 412, 1, -8.1 );
setRotateKey( spep_2 -3 + 414, 1, -7.5 );
setRotateKey( spep_2 -3 + 415, 1, -7.5 );
setRotateKey( spep_2 -3 + 416, 1, 1.9 );
setRotateKey( spep_2 -3 + 421, 1, 1.9 );
setRotateKey( spep_2 -3 + 422, 1, 34.5 );
setRotateKey( spep_2 -3 + 424, 1, 34.5 );
setRotateKey( spep_2 -3 + 426, 1, 34.5 );

--味方側と共通
-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 462, 1, 1 );
setDisp( spep_2 -3 + 536, 1, 0 );

changeAnime( spep_2 -3 + 462, 1, 107 );
changeAnime( spep_2 -3 + 468, 1, 7 );
changeAnime( spep_2 -3 + 472, 1, 106 );
changeAnime( spep_2 -3 + 474, 1, 6 );
changeAnime( spep_2 -3 + 478, 1, 106 );
changeAnime( spep_2 -3 + 484, 1, 8 );
changeAnime( spep_2 -3 + 488, 1, 106 );
changeAnime( spep_2 -3 + 496, 1, 8 );
changeAnime( spep_2 -3 + 502, 1, 106 );
changeAnime( spep_2 -3 + 506, 1, 8 );
changeAnime( spep_2 -3 + 514, 1, 106 );
changeAnime( spep_2 -3 + 524, 1, 8 );

setMoveKey( spep_2 -3 + 462, 1, -1135.3, 83.9 , 0 );
setMoveKey( spep_2 -3 + 465, 1, -1135.3, 83.9 , 0 );
setMoveKey( spep_2 -3 + 466, 1, -167.6, 36.9 , 0 );
setMoveKey( spep_2 -3 + 467, 1, -167.6, 36.9 , 0 );--
setMoveKey( spep_2 -3 + 468, 1, -8, 81.1 , 0 );
setMoveKey( spep_2 -3 + 471, 1, -8, 81.1 , 0 );--
setMoveKey( spep_2 -3 + 472, 1, -44.6, -183.3 , 0 );
setMoveKey( spep_2 -3 + 473, 1, -44.6, -183.3 , 0 );--
setMoveKey( spep_2 -3 + 474, 1, -117.4, -58.9 , 0 );
setMoveKey( spep_2 -3 + 477, 1, -117.4, -58.9 , 0 );--
setMoveKey( spep_2 -3 + 478, 1, 50.1, -90 , 0 );
setMoveKey( spep_2 -3 + 483, 1, 50.1, -90 , 0 );--
setMoveKey( spep_2 -3 + 484, 1, -27.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 486, 1, -27.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 487, 1, -27.7, -17.5 , 0 );--
setMoveKey( spep_2 -3 + 488, 1, 37.2, -3.7 , 0 );
setMoveKey( spep_2 -3 + 495, 1, 37.2, -3.7 , 0 );--
setMoveKey( spep_2 -3 + 496, 1, -21.8, -59.6 , 0 );
setMoveKey( spep_2 -3 + 501, 1, -21.8, -59.6 , 0 );--
setMoveKey( spep_2 -3 + 502, 1, -3.3, -67.2 , 0 );
setMoveKey( spep_2 -3 + 505, 1, -3.3, -67.2 , 0 );--
setMoveKey( spep_2 -3 + 506, 1, -18.4, -83 , 0 );
setMoveKey( spep_2 -3 + 508, 1, -18.4, -83 , 0 );
setMoveKey( spep_2 -3 + 510, 1, -14.8, -82.2 , 0 );
setMoveKey( spep_2 -3 + 513, 1, -14.8, -82.2 , 0 );--
setMoveKey( spep_2 -3 + 514, 1, -9.7, -83.7 , 0 );
setMoveKey( spep_2 -3 + 518, 1, -9.7, -83.7 , 0 );
setMoveKey( spep_2 -3 + 520, 1, -8.7, -85.8 , 0 );
setMoveKey( spep_2 -3 + 523, 1, -8.7, -85.8 , 0 );--
setMoveKey( spep_2 -3 + 524, 1, -11.6, -86.3 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -11.6, -86.3 , 0 );
setMoveKey( spep_2 -3 + 528, 1, -11.3, -85.6 , 0 );
setMoveKey( spep_2 -3 + 536, 1, -11.3, -85.6 , 0 );

setScaleKey( spep_2 -3 + 462, 1, 11, 11 );
setScaleKey( spep_2 -3 + 465, 1, 11, 11 );
setScaleKey( spep_2 -3 + 466, 1, 3.73, 3.73 );
setScaleKey( spep_2 -3 + 467, 1, 3.73, 3.73 );--
setScaleKey( spep_2 -3 + 468, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 471, 1, 2.73, 2.73 );--
setScaleKey( spep_2 -3 + 472, 1, 6.18, 6.18 );
setScaleKey( spep_2 -3 + 473, 1, 6.18, 6.18 );--
setScaleKey( spep_2 -3 + 474, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 477, 1, 2.68, 2.68 );--
setScaleKey( spep_2 -3 + 478, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 482, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 483, 1, 0.71, 0.71 );--
setScaleKey( spep_2 -3 + 484, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 487, 1, 0.49, 0.49 );--
setScaleKey( spep_2 -3 + 488, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 495, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 496, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 501, 1, 0.16, 0.16 );--
setScaleKey( spep_2 -3 + 502, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 505, 1, 0.08, 0.08 );--
setScaleKey( spep_2 -3 + 506, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 508, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 510, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 513, 1, 0.05, 0.05 );--
setScaleKey( spep_2 -3 + 514, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 524, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 527, 1, 0.02, 0.02 );
setScaleKey( spep_2 -3 + 528, 1, 0.01, 0.01 );
setScaleKey( spep_2 -3 + 536, 1, 0.01, 0.01 );

setRotateKey( spep_2 -3 + 462, 1, -20.5 );
setRotateKey( spep_2 -3 + 467, 1, -20.5 );--
setRotateKey( spep_2 -3 + 468, 1, 42.5 );
setRotateKey( spep_2 -3 + 471, 1, 42.5 );--
setRotateKey( spep_2 -3 + 472, 1, -39.2 );
setRotateKey( spep_2 -3 + 473, 1, -39.2 );--
setRotateKey( spep_2 -3 + 474, 1, 28.7 );
setRotateKey( spep_2 -3 + 477, 1, 28.7 );--
setRotateKey( spep_2 -3 + 478, 1, -30.7 );
setRotateKey( spep_2 -3 + 483, 1, -30.7 );--
setRotateKey( spep_2 -3 + 484, 1, -9.2 );
setRotateKey( spep_2 -3 + 487, 1, -9.2 );--
setRotateKey( spep_2 -3 + 488, 1, -30.7 );
setRotateKey( spep_2 -3 + 495, 1, -30.7 );--
setRotateKey( spep_2 -3 + 496, 1, -9.2 );
setRotateKey( spep_2 -3 + 501, 1, -9.2 );--
setRotateKey( spep_2 -3 + 502, 1, -43.9 );
setRotateKey( spep_2 -3 + 505, 1, -43.9 );--
setRotateKey( spep_2 -3 + 506, 1, -9.2 );
setRotateKey( spep_2 -3 + 513, 1, -9.2 );--
setRotateKey( spep_2 -3 + 514, 1, -44 );
setRotateKey( spep_2 -3 + 523, 1, -44 );--
setRotateKey( spep_2 -3 + 524, 1, -9.1 );
setRotateKey( spep_2 -3 + 536, 1, -9.1 );

--味方側と共通
-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 614, 1, 1 );
setDisp( spep_2 -3 + 656, 1, 0 );
changeAnime( spep_2 -3 + 614, 1, 7 );

setMoveKey( spep_2 -3 + 614, 1, 50.4, -294.7 , 0 );
setMoveKey( spep_2 -3 + 639, 1, 50.4, -294.7 , 0 );
setMoveKey( spep_2 -3 + 640, 1, 55.8, -327.1 , 0 );
setMoveKey( spep_2 -3 + 643, 1, 55.8, -327.1 , 0 );
setMoveKey( spep_2 -3 + 644, 1, 78.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 647, 1, 78.5, -340.9 , 0 );
setMoveKey( spep_2 -3 + 648, 1, 81.6, -345.4 , 0 );
setMoveKey( spep_2 -3 + 656, 1, 81.6, -345.4 , 0 );

setScaleKey( spep_2 -3 + 614, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 656, 1, 2.49, 2.49 );

setRotateKey( spep_2 -3 + 614, 1, 73.6 );
setRotateKey( spep_2 -3 + 639, 1, 73.6 );
setRotateKey( spep_2 -3 + 640, 1, 72.7 );
setRotateKey( spep_2 -3 + 643, 1, 72.7 );
setRotateKey( spep_2 -3 + 644, 1, 70.7 );
setRotateKey( spep_2 -3 + 647, 1, 70.7 );
setRotateKey( spep_2 -3 + 648, 1, 70.2 );
setRotateKey( spep_2 -3 + 656, 1, 70.2 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 720, 1, 1 );
setDisp( spep_2 -3 + 746, 1, 0 );
changeAnime( spep_2 -3 + 720, 1, 107 );

setBlendColor( spep_2 -3 + 720, 1, 3, 0.0, 0.43, 0.72, 0.75);
setBlendColor( spep_2 -3 + 745, 1, 3, 0.0, 0.43, 0.72, 0.75);
setBlendColor( spep_2 -3 + 746, 1, 3, 0.0, 0.43, 0.72, 0);

setMoveKey( spep_2 -3 + 720, 1, -139.4, -92.7 , 0 );
setMoveKey( spep_2 -3 + 746, 1, -139.4, -92.7 , 0 );

setScaleKey( spep_2 -3 + 720, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 746, 1, 2.61, 2.61 );

setRotateKey( spep_2 -3 + 720, 1, -65.2 );
setRotateKey( spep_2 -3 + 746, 1, -65.2 );

-- ** 音 ** --
--振りかぶる
SE015 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 58, 1116, "",spep_2 + 96, 0, 10, -1);

--悟空蹴り
SE017 = playSeVer2( spep_2 + 82, 1049, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 84, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 84, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 88, 1153, "", 0, 0, 0, -1);

--悟空翻る
SE021 = playSeVer2( spep_2 + 150, 1263, "",spep_2 + 236, 0, 20, -1);
SE022 = playSeVer2( spep_2 + 150, 1117, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 150, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE023, 75 );

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 242, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE024, 73 );
SE025 = playSeVer2( spep_2 + 242, 1183, "",spep_2 + 302, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 242, SE025, 74 );
SE026 = playSeVer2( spep_2 + 242, 1121, "",spep_2 + 302, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 242, SE026, 71 );

--ベジータ向かっていく
SE027 = playSeVer2( spep_2 + 268, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 268, 1116, "",spep_2 + 310, 0, 20, -1);
SE029 = playSeVer2( spep_2 + 268, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE029, 77 );
SE030 = playSeVer2( spep_2 + 284, 1277, "", 0, 0, 0, -1);

--ベジータ膝蹴り
SE031 = playSeVer2( spep_2 + 326, 1359, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 326, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 330, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 332, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 332, SE034, 81 );

--ベジータ殴り飛ばす
SE035 = playSeVer2( spep_2 + 404, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 408, 1359, "",spep_2 + 480, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 408, SE036, 87 );
SE037 = playSeVer2( spep_2 + 410, 1120, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 412, 1110, "", 0, 0, 0, -1);

--ベジータラッシュしながら奥にいく
SE039 = playSeVer2( spep_2 + 458, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE039, 83 );
SE040 = playSeVer2( spep_2 + 458, 1359, "",spep_2 + 486, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 458, SE040, 81 );
SE041 = playSeVer2( spep_2 + 458, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE041, 85 );
SE042 = playSeVer2( spep_2 + 464, 1010, "",spep_2 + 486, 0, 10, -1);
SE043 = playSeVer2( spep_2 + 470, 1110, "",spep_2 + 494, 0, 10, -1);
setPitch( spep_2 + 470, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 476, 1110, "",spep_2 + 500, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 476, SE044, 87 );
SE045 = playSeVer2( spep_2 + 482, 1110, "",spep_2 + 504, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 482, SE045, 84 );
SE046 = playSeVer2( spep_2 + 482, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 488, 1110, "",spep_2 + 510, 0, 8, -1);
setPitch( spep_2 + 488, SE047, 100 );
setTimeStretch( SE047, 1.07, 30, 4 );
SE048 = playSeVer2( spep_2 + 492, 1000, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 496, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE049, 66 );
SE050 = playSeVer2( spep_2 + 500, 1110, "",spep_2 + 522, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 500, SE050, 71 );
SE051 = playSeVer2( spep_2 + 504, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE051, 73 );
SE052 = playSeVer2( spep_2 + 512, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 512, SE052, 65 );

--岩激突
SE053 = playSeVer2( spep_2 + 526, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE053, 72 );

--爆発
SE054 = playSeVer2( spep_2 + 562, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 562, 1024, "", 0, 0, 0, -1);

--悟空頭つかむ
SE056 = playSeVer2( spep_2 + 630, 1007, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 630, 1013, "", 0, 0, 0, -1);

--気弾溜め
SE058 = playSeVer2( spep_2 + 670, 1273, "",spep_2 + 690, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 670, SE058, 142 );
setPitch( spep_2 + 670, SE058, 200 );
setTimeStretch( SE058, 1.13, 30, 4 );
SE059 = playSeVer2( spep_2 + 672, 1396, "",spep_2 + 886, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 672, SE059, 120 );
setPitch( spep_2 + 672, SE059, -900 );
setTimeStretch( SE059, 0.4, 30, 4 );
SE060 = playSeVer2( spep_2 + 672, 1296, "",spep_2 + 770, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 672, SE060, 110 );
SE061 = playSeVer2( spep_2 + 672, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 672, SE061, 178 );
SE062 = playSeVer2( spep_2 + 672, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 672, SE062, 73 );
setPitch( spep_2 + 672, SE062, -400 );
setTimeStretch( SE062, 0.73, 30, 4 );

--気弾弾ける
SE063 = playSeVer2( spep_2 + 730, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 730, SE063, 181 );
setStartTimeMs( SE063,  467 );
setPitch( spep_2 + 730, SE063, 500 );
setTimeStretch( SE063, 1.33, 30, 4 );
SE064 = playSeVer2( spep_2 + 734, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 734, SE064, 106 );

--気弾爆発
SE065 = playSeVer2( spep_2 + 774, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE065, 188 );
SE066 = playSeVer2( spep_2 + 774, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE066, 178 );
SE067 = playSeVer2( spep_2 + 774, 1226, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 774, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 774, SE068, 112 );
SE069 = playSeVer2( spep_2 + 780, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 780, SE069, 130 );

--終わり
hideKoScreen();
dealDamage(spep_2 +748);
endPhase( spep_2 + 848 );

end