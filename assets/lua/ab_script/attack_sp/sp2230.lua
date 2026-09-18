--1022630:超サイヤ人孫悟空_とことん肉弾戦
--sp_effect_b1_00164
--sp2230

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

--エフェクト(味方)
SP_01=	157932	;--	キャラ対峙
SP_02=	157934	;--	キャラ対峙
SP_03=	157936	;--	画面手前に突進〜マグマ爆発
SP_04=	157938	;--	画面手前に突進〜マグマ爆発

--エフェクト(てき)
SP_01x=	157933	;--	キャラ対峙	(敵)
SP_02x=	157935	;--	キャラ対峙	(敵)
SP_03x=	157937	;--	画面手前に突進〜マグマ爆発	(敵)
SP_04x=	157939	;--	画面手前に突進〜マグマ爆発	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--キャラ対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 92, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 92, confrontation_f, 255 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 92, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 92, confrontation_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 92, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setBlendColor(spep_0 + 39 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 40 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 62 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 63 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0 );
setBlendColor(spep_0 + 64 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0 );

setMoveKey( spep_0 + 0, 1, 294.3, -244.6 , 0 );
setMoveKey( spep_0 + 1, 1, 294.3, -244.6 , 0 );
setMoveKey( spep_0 + 2, 1, 293.8, -244.6 , 0 );
setMoveKey( spep_0 + 3, 1, 293.8, -244.6 , 0 );
setMoveKey( spep_0 + 4, 1, 293.2, -244.6 , 0 );
setMoveKey( spep_0 + 5, 1, 293.2, -244.6 , 0 );
setMoveKey( spep_0 + 6, 1, 292.7, -244.6 , 0 );
setMoveKey( spep_0 + 8, 1, 292.1, -244.6 , 0 );
setMoveKey( spep_0 + 10, 1, 291.6, -244.6 , 0 );
setMoveKey( spep_0 + 12, 1, 291, -244.6 , 0 );
setMoveKey( spep_0 + 14, 1, 290.5, -244.6 , 0 );
setMoveKey( spep_0 + 16, 1, 289.9, -244.6 , 0 );
setMoveKey( spep_0 + 18, 1, 289.4, -244.6 , 0 );
setMoveKey( spep_0 + 20, 1, 288.8, -244.6 , 0 );
setMoveKey( spep_0 + 22, 1, 288.3, -244.6 , 0 );
setMoveKey( spep_0 + 24, 1, 287.7, -244.6 , 0 );
setMoveKey( spep_0 + 26, 1, 287.2, -244.6 , 0 );
setMoveKey( spep_0 + 28, 1, 286.6, -244.6 , 0 );
setMoveKey( spep_0 + 30, 1, 286.1, -244.6 , 0 );
setMoveKey( spep_0 + 32, 1, 285.5, -244.6 , 0 );
setMoveKey( spep_0 + 34, 1, 285, -244.6 , 0 );
setMoveKey( spep_0 + 36, 1, 284.4, -244.6 , 0 );
setMoveKey( spep_0 + 38, 1, 283.9, -244.6 , 0 );
setMoveKey( spep_0 + 40, 1, 283.3, -244.6 , 0 );
setMoveKey( spep_0 + 42, 1, 282.8, -244.6 , 0 );
setMoveKey( spep_0 + 44, 1, 282.2, -244.6 , 0 );
setMoveKey( spep_0 + 46, 1, 281.7, -244.6 , 0 );
setMoveKey( spep_0 + 48, 1, 281.1, -244.6 , 0 );
setMoveKey( spep_0 + 50, 1, 280.6, -284.6 , 0 );
setMoveKey( spep_0 + 52, 1, 280, -278.6 , 0 );
setMoveKey( spep_0 + 54, 1, 279.5, -214.6 , 0 );
setMoveKey( spep_0 + 56, 1, 278.9, -256.6 , 0 );
setMoveKey( spep_0 + 58, 1, 278.4, -224.6 , 0 );
setMoveKey( spep_0 + 60, 1, 277.8, -254.6 , 0 );
setMoveKey( spep_0 + 62, 1, 277.3, -232.6 , 0 );
setMoveKey( spep_0 + 64, 1, 276.7, -248.6 , 0 );
setMoveKey( spep_0 + 66, 1, 276.2, -244.6 , 0 );
setMoveKey( spep_0 + 68, 1, 275.6, -244.6 , 0 );
setMoveKey( spep_0 + 70, 1, 275.1, -244.6 , 0 );
setMoveKey( spep_0 + 72, 1, 274.5, -244.6 , 0 );
setMoveKey( spep_0 + 74, 1, 274, -244.6 , 0 );
setMoveKey( spep_0 + 76, 1, 273.4, -244.6 , 0 );
setMoveKey( spep_0 + 78, 1, 272.9, -244.6 , 0 );
setMoveKey( spep_0 + 92, 1, 272.3, -244.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 2, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 3, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 5, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 89, 1, 1.44, 1.44 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 92, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 210, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  210,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  210,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1229, "",spep_0 + 98, 0, 4, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--入り
SE003 = playSeVer2( spep_0 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--雷
SE004 = playSeVer2( spep_0 + 40, 1231, "",spep_0 + 98, 0, 4, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--白フェード
entryFade( spep_0 + 86, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--画面手前に突進〜マグマ爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 1108, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1108, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 1108, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 1108, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 1108, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1108, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 1108, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 1108, finish_b, 255 );

--SE
--突っ込んでくる
SE006 = playSeVer2( spep_2 + 10, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE006, 130 );
SE007 = playSeVer2( spep_2 + 10, 1183, "",spep_2 + 74, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 10, SE007, 130 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 1110, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵の動き
setDisp( spep_2-3 + 50, 1, 1 );
setDisp( spep_2-1 + 104, 1, 0 );

changeAnime( spep_2-3 + 50, 1, 100 );
changeAnime( spep_2-3 + 74, 1, 108 );


setMoveKey( spep_2-3 + 50, 1, 675.6, 170 , 0 );
setMoveKey( spep_2-3 + 52, 1, 271.5, 110.6 , 0 );
setMoveKey( spep_2-3 + 54, 1, 271.5, 110.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 127.4, 93.2 , 0 );
setMoveKey( spep_2-3 + 58, 1, 127.4, 93.2 , 0 );
setMoveKey( spep_2-3 + 60, 1, 103.5, 97.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 103.5, 97.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 83.5, 73.3 , 0 );
setMoveKey( spep_2-3 + 73, 1, 83.5, 73.3 , 0 );

setMoveKey( spep_2-3 + 74, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 75, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 76, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 77, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 78, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 81, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, 25.9, 241.5 , 0 );
setMoveKey( spep_2-3 + 83, 1, 25.9, 241.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 25.9, 263.5 , 0 );
setMoveKey( spep_2-3 + 85, 1, 25.9, 263.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 87, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 25.9, 269.5 , 0 );
setMoveKey( spep_2-3 + 89, 1, 25.9, 269.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 91, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 93, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 94, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 95, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 97, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 25.9, 267.5 , 0 );
setMoveKey( spep_2-3 + 99, 1, 25.9, 267.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 101, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-1 + 104, 1, 25.9, 257.5 , 0 );

setScaleKey( spep_2-3 + 50, 1, 8.34,8.34);
setScaleKey( spep_2-3 + 52, 1, 5.7,5.7);
setScaleKey( spep_2-3 + 54, 1, 5.7,5.7);
setScaleKey( spep_2-3 + 56, 1, 3.97,3.97);
setScaleKey( spep_2-3 + 58, 1, 3.97,3.97);
setScaleKey( spep_2-3 + 60, 1, 3.9,3.9);
setScaleKey( spep_2-3 + 73, 1, 3.9,3.9);

setScaleKey( spep_2-3 + 74, 1, 3.9, 3.9 );
setScaleKey( spep_2-1 + 104, 1, 3.9, 3.9 );

setRotateKey( spep_2-3 + 50, 1, -7 );
setRotateKey( spep_2-3 + 52, 1, -11.9 );
setRotateKey( spep_2-3 + 54, 1, -11.9 );
setRotateKey( spep_2-3 + 56, 1, -21.9 );
setRotateKey( spep_2-3 + 58, 1, -21.9 );
setRotateKey( spep_2-3 + 60, 1, -25.1 );
setRotateKey( spep_2-3 + 73, 1, -25.1 );

setRotateKey( spep_2-3 + 74, 1, -25.1 );
setRotateKey( spep_2-1 + 104, 1, -25.1 );

--敵の動き
setDisp( spep_2-3 + 108, 1, 1 );
setDisp( spep_2-1 + 128, 1, 0 );

changeAnime( spep_2-3 + 108, 1, 5 );

setMoveKey( spep_2-3 + 108, 1, -223.7, -160 , 0 );
setMoveKey( spep_2-3 + 110, 1, -59.6, -67.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 60.7, 32 , 0 );
setMoveKey( spep_2-3 + 114, 1, 143.4, 99.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, 197.3, 144.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 230, 171 , 0 );
setMoveKey( spep_2-3 + 120, 1, 248, 185.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 256.6, 192.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 259.7, 195.3 , 0 );
setMoveKey( spep_2-1 + 128, 1, 260.5, 195.9 , 0 );

setScaleKey( spep_2-3 + 108, 1, 9.82,9.82);
setScaleKey( spep_2-3 + 110, 1, 7.5,7.5);
setScaleKey( spep_2-3 + 112, 1, 4.87,4.87);
setScaleKey( spep_2-3 + 114, 1, 3.05,3.05);
setScaleKey( spep_2-3 + 116, 1, 1.88,1.88);
setScaleKey( spep_2-3 + 118, 1, 1.16,1.16);
setScaleKey( spep_2-3 + 120, 1, 0.77,0.77);
setScaleKey( spep_2-3 + 122, 1, 0.58,0.58);
setScaleKey( spep_2-3 + 124, 1, 0.51,0.51);
setScaleKey( spep_2-1 + 128, 1, 0.49,0.49);

setRotateKey( spep_2-3 + 108, 1, 45.2 );
setRotateKey( spep_2-3 + 110, 1, 54.9 );
setRotateKey( spep_2-3 + 112, 1, 58.9 );
setRotateKey( spep_2-3 + 114, 1, 61.6 );
setRotateKey( spep_2-3 + 116, 1, 63.4 );
setRotateKey( spep_2-3 + 118, 1, 64.5 );
setRotateKey( spep_2-3 + 120, 1, 65.1 );
setRotateKey( spep_2-3 + 122, 1, 65.4 );
setRotateKey( spep_2-3 + 124, 1, 65.5 );
setRotateKey( spep_2-1 + 128, 1, 65.6 );

--敵の動き
setDisp( spep_2-3 + 166, 1, 1 );
setDisp( spep_2-1 + 200, 1, 0 );

changeAnime( spep_2-3 + 166, 1, 106 );
changeAnime( spep_2-3 + 176, 1, 108 );

setMoveKey( spep_2-3 + 166, 1, -282.1, -158.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, -239.1, -124.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, -196.1, -90.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, -153.1, -56.8 , 0 );
setMoveKey( spep_2-3 + 175, 1, -110.1, -22.8 , 0 );

setMoveKey( spep_2-3 + 176, 1, -98.8, 150.6 , 0 );
setMoveKey( spep_2-3 + 178, 1, -86.8, 174.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, -93.9, 219.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, -109.9, 187.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, -89.9, 197.2 , 0 );
setMoveKey( spep_2-3 + 186, 1, -73.9, 209.2 , 0 );
setMoveKey( spep_2-3 + 188, 1, -78.8, 240.6 , 0 );
setMoveKey( spep_2-3 + 190, 1, -90.8, 248.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, -98.8, 220.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, -71.8, 263.1 , 0 );
setMoveKey( spep_2-3 + 196, 1, -95.8, 275.1 , 0 );
setMoveKey( spep_2-3 + 198, 1, -82.9, 277.7 , 0 );
setMoveKey( spep_2-1 + 200, 1, -82.9, 269.7 , 0 );


setScaleKey( spep_2-3 + 166, 1, 1, 1 );
setScaleKey( spep_2-3 + 175, 1, 1, 1 );

setScaleKey( spep_2-3 + 176, 1, 1.06, 1.06 );
setScaleKey( spep_2-1 + 200, 1, 1.06, 1.06 );

setRotateKey( spep_2-3 + 166, 1, -3 );
setRotateKey( spep_2-3 + 175, 1, -3 );

setRotateKey( spep_2-3 + 176, 1, -101 );
setRotateKey( spep_2-1 + 200, 1, -101 );

--敵の動き
setDisp( spep_2-3 + 358, 1, 1 );
setDisp( spep_2-1 + 434, 1, 0 );

changeAnime( spep_2-3 + 358, 1, 104 );
changeAnime( spep_2-3 + 378, 1, 5 );
changeAnime( spep_2-3 + 384, 1, 6 );
changeAnime( spep_2-3 + 424, 1, 106 );

setMoveKey( spep_2-3 + 358, 1, -18.4, -172.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, -18.4, -172.3 , 0 );
setMoveKey( spep_2-3 + 364, 1, -2.6, -165.8 , 0 );
setMoveKey( spep_2-3 + 366, 1, 17.6, -154 , 0 );
setMoveKey( spep_2-3 + 370, 1, 17.6, -154 , 0 );
setMoveKey( spep_2-3 + 372, 1, 29.1, -145.3 , 0 );
setMoveKey( spep_2-3 + 377, 1, 29.1, -145.3 , 0 );

setMoveKey( spep_2-3 + 378, 1, -3.8, -36.2 , 0 );
setMoveKey( spep_2-3 + 383, 1, -3.8, -36.2 , 0 );

setMoveKey( spep_2-3 + 384, 1, -189.5, -119 , 0 );
setMoveKey( spep_2-3 + 386, 1, -153.5, -119 , 0 );
setMoveKey( spep_2-3 + 388, 1, -127.7, -119 , 0 );
setMoveKey( spep_2-3 + 390, 1, -116.4, -119 , 0 );
setMoveKey( spep_2-3 + 392, 1, -105.9, -119 , 0 );
setMoveKey( spep_2-3 + 394, 1, -104.5, -119 , 0 );
setMoveKey( spep_2-3 + 396, 1, -102.5, -119 , 0 );
setMoveKey( spep_2-3 + 398, 1, -102.3, -119 , 0 );
setMoveKey( spep_2-3 + 400, 1, -102.3, -119 , 0 );
setMoveKey( spep_2-3 + 402, 1, -97.7, -120.4 , 0 );
setMoveKey( spep_2-3 + 404, 1, -99.1, -117.7 , 0 );
setMoveKey( spep_2-3 + 406, 1, -95, -119 , 0 );
setMoveKey( spep_2-3 + 408, 1, -94.9, -119 , 0 );
setMoveKey( spep_2-3 + 410, 1, -99.1, -119 , 0 );
setMoveKey( spep_2-3 + 414, 1, -99.1, -119 , 0 );
setMoveKey( spep_2-3 + 416, 1, -135.7, -119 , 0 );
setMoveKey( spep_2-3 + 420, 1, -135.7, -119 , 0 );
setMoveKey( spep_2-3 + 422, 1, -35.7, -119 , 0 );
setMoveKey( spep_2-3 + 423, 1, -35.7, -119 , 0 );

setMoveKey( spep_2-3 + 424, 1, 86.1, -176.4 , 0 );
setMoveKey( spep_2-3 + 426, 1, 86.1, -176.4 , 0 );
setMoveKey( spep_2-3 + 428, 1, 130.1, -180.4 , 0 );
setMoveKey( spep_2-3 + 430, 1, 130.1, -180.4 , 0 );
setMoveKey( spep_2-3 + 432, 1, 261.9, -114.2 , 0 );
setMoveKey( spep_2-1 + 434, 1, 471.8, -160 , 0 );


setScaleKey( spep_2-3 + 358, 1, 6.81,6.81);
setScaleKey( spep_2-3 + 362, 1, 6.81,6.81);
setScaleKey( spep_2-3 + 364, 1, 6.35,6.35);
setScaleKey( spep_2-3 + 366, 1, 5.63,5.63);
setScaleKey( spep_2-3 + 370, 1, 5.63,5.63);
setScaleKey( spep_2-3 + 372, 1, 5.39,5.39);
setScaleKey( spep_2-3 + 377, 1, 5.39,5.39);

setScaleKey( spep_2-3 + 378, 1, 4.22, 4.22 );
setScaleKey( spep_2-3 + 383, 1, 4.22, 4.22 );

setScaleKey( spep_2-3 + 384, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 423, 1, 2.15, 2.15 );

setScaleKey( spep_2-3 + 424, 1, 2.92, 2.92 );
setScaleKey( spep_2-1 + 434, 1, 2.92, 2.92 );

setRotateKey( spep_2-3 + 358, 1, 0 );
setRotateKey( spep_2-3 + 377, 1, 0 );

setRotateKey( spep_2-3 + 378, 1, 44.6 );
setRotateKey( spep_2-3 + 383, 1, 44.6 );

setRotateKey( spep_2-3 + 384, 1, 41.7 );
setRotateKey( spep_2-3 + 423, 1, 41.7 );

setRotateKey( spep_2-3 + 424, 1, -32 );
setRotateKey( spep_2-3 + 430, 1, -32 );
setRotateKey( spep_2-3 + 432, 1, -14.5 );
setRotateKey( spep_2-1 + 434, 1, 9 );

--敵の動き
setDisp( spep_2-3 + 460, 1, 1 );
setDisp( spep_2-1 + 612, 1, 0 );

changeAnime( spep_2-3 + 460, 1, 107 );
changeAnime( spep_2-3 + 540, 1, 115 );
changeAnime( spep_2-3 + 568, 1, 18 );
changeAnime( spep_2-3 + 596, 1, 118 );
changeAnime( spep_2-3 + 608, 1, 107 );

setMoveKey( spep_2-3 + 460, 1, -118.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 462, 1, -118.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 464, 1, -117.9, 436.1 , 0 );
setMoveKey( spep_2-3 + 466, 1, -117.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 468, 1, -116.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 470, 1, -115.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 472, 1, -113.9, 436.1 , 0 );
setMoveKey( spep_2-3 + 474, 1, -112.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 476, 1, -110.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 478, 1, -108.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 480, 1, -106, 436.1 , 0 );
setMoveKey( spep_2-3 + 482, 1, -103.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 484, 1, -100.5, 436.1 , 0 );
setMoveKey( spep_2-3 + 486, 1, -97.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 488, 1, -94.1, 436.1 , 0 );
setMoveKey( spep_2-3 + 490, 1, -90.5, 436.1 , 0 );
setMoveKey( spep_2-3 + 492, 1, -86.7, 436.1 , 0 );
setMoveKey( spep_2-3 + 494, 1, -82.6, 436.1 , 0 );
setMoveKey( spep_2-3 + 496, 1, -78.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 498, 1, -73.7, 436.1 , 0 );
setMoveKey( spep_2-3 + 500, 1, -68.8, 436.1 , 0 );
setMoveKey( spep_2-3 + 502, 1, -79.9, 423.5 , 0 );
setMoveKey( spep_2-3 + 504, 1, -91.5, 410.8 , 0 );
setMoveKey( spep_2-3 + 506, 1, -108, 398.2 , 0 );
setMoveKey( spep_2-3 + 508, 1, -124.5, 385.5 , 0 );
setMoveKey( spep_2-3 + 510, 1, -95.7, 354.9 , 0 );
setMoveKey( spep_2-3 + 512, 1, -116.3, 343.9 , 0 );
setMoveKey( spep_2-3 + 514, 1, -88.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 516, 1, -80.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, -74.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 520, 1, -45, -30.4 , 0 );
setMoveKey( spep_2-3 + 522, 1, -48.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 524, 1, -26, -32.5 , 0 );
setMoveKey( spep_2-3 + 526, 1, -31.9, 5.2 , 0 );
setMoveKey( spep_2-3 + 528, 1, -33.7, 4.4 , 0 );
setMoveKey( spep_2-3 + 530, 1, -34.3, -16.8 , 0 );
setMoveKey( spep_2-3 + 532, 1, -33.5, -17.7 , 0 );
setMoveKey( spep_2-3 + 534, 1, -28, -7.2 , 0 );
setMoveKey( spep_2-3 + 536, 1, -27.2, -10.1 , 0 );
setMoveKey( spep_2-3 + 538, 1, -25.7, -20.5 , 0 );
setMoveKey( spep_2-3 + 539, 1, -25.7, -20.5 , 0 );

setMoveKey( spep_2-3 + 540, 1, 50.9, -282.7 , 0 );
setMoveKey( spep_2-3 + 542, 1, 61, -260.7 , 0 );
setMoveKey( spep_2-3 + 548, 1, 61, -260.7 , 0 );
setMoveKey( spep_2-3 + 550, 1, 74.9, -202.7 , 0 );
setMoveKey( spep_2-3 + 567, 1, 74.9, -202.7 , 0 );

setMoveKey( spep_2-3 + 568, 1, -443.1, -120 , 0 );
setMoveKey( spep_2-3 + 595, 1, -443.1, -120 , 0 );

setMoveKey( spep_2-3 + 596, 1, 144.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 598, 1, 144.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 600, 1, 152.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 604, 1, 152.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 607, 1, 166.5, -269.8 , 0 );

setMoveKey( spep_2-3 + 608, 1, -52.6, -223.7 , 0 );
setMoveKey( spep_2-3 + 610, 1, -51.3, -223.7 , 0 );
setMoveKey( spep_2-1 + 612, 1, 158.5, -566.1 , 0 );

setScaleKey( spep_2-3 + 460, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 482, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 484, 1, 0.43,0.43);
setScaleKey( spep_2-3 + 492, 1, 0.43,0.43);
setScaleKey( spep_2-3 + 494, 1, 0.44,0.44);
setScaleKey( spep_2-3 + 500, 1, 0.44,0.44);
setScaleKey( spep_2-3 + 502, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 504, 1, 0.39,0.39);
setScaleKey( spep_2-3 + 506, 1, 0.37,0.37);
setScaleKey( spep_2-3 + 508, 1, 0.33,0.33);
setScaleKey( spep_2-3 + 510, 1, 0.36,0.36);
setScaleKey( spep_2-3 + 512, 1, 0.33,0.33);
setScaleKey( spep_2-3 + 514, 1, 0.48,0.48);
setScaleKey( spep_2-3 + 518, 1, 0.48,0.48);
setScaleKey( spep_2-3 + 520, 1, 0.79,0.79);
setScaleKey( spep_2-3 + 522, 1, 0.79,0.79);
setScaleKey( spep_2-3 + 524, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 526, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 528, 1, 0.85,0.85);
setScaleKey( spep_2-3 + 534, 1, 0.85,0.85);
setScaleKey( spep_2-3 + 536, 1, 0.86,0.86);
setScaleKey( spep_2-3 + 539, 1, 0.86,0.86);

setScaleKey( spep_2-3 + 540, 1, 5.85, 5.85 );
setScaleKey( spep_2-3 + 567, 1, 5.85, 5.85 );

setScaleKey( spep_2-3 + 568, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 595, 1, 4.83, 4.83 );

setScaleKey( spep_2-3 + 596, 1, 4.21, 4.21 );
setScaleKey( spep_2-3 + 607, 1, 4.21, 4.21 );

setScaleKey( spep_2-3 + 608, 1, 1.87, 1.87 );
setScaleKey( spep_2-1 + 612, 1, 1.87, 1.87 );

setRotateKey( spep_2-3 + 460, 1, -6.7 );
setRotateKey( spep_2-3 + 464, 1, -6.7 );
setRotateKey( spep_2-3 + 466, 1, -6.6 );
setRotateKey( spep_2-3 + 468, 1, -6.4 );
setRotateKey( spep_2-3 + 470, 1, -6.3 );
setRotateKey( spep_2-3 + 472, 1, -6.1 );
setRotateKey( spep_2-3 + 474, 1, -5.8 );
setRotateKey( spep_2-3 + 476, 1, -5.5 );
setRotateKey( spep_2-3 + 478, 1, -5.2 );
setRotateKey( spep_2-3 + 480, 1, -4.8 );
setRotateKey( spep_2-3 + 482, 1, -4.4 );
setRotateKey( spep_2-3 + 484, 1, -4 );
setRotateKey( spep_2-3 + 486, 1, -3.5 );
setRotateKey( spep_2-3 + 488, 1, -3 );
setRotateKey( spep_2-3 + 490, 1, -2.4 );
setRotateKey( spep_2-3 + 492, 1, -1.9 );
setRotateKey( spep_2-3 + 494, 1, -1.2 );
setRotateKey( spep_2-3 + 496, 1, -0.6 );
setRotateKey( spep_2-3 + 498, 1, 0.1 );
setRotateKey( spep_2-3 + 500, 1, 0.9 );
setRotateKey( spep_2-3 + 502, 1, 1.7 );
setRotateKey( spep_2-3 + 504, 1, 2.5 );
setRotateKey( spep_2-3 + 508, 1, 2.5 );
setRotateKey( spep_2-3 + 510, 1, 13.5 );
setRotateKey( spep_2-3 + 512, 1, 13.5 );
setRotateKey( spep_2-3 + 514, 1, 29.4 );
setRotateKey( spep_2-3 + 518, 1, 29.4 );
setRotateKey( spep_2-3 + 520, 1, 36.4 );
setRotateKey( spep_2-3 + 522, 1, 36.4 );
setRotateKey( spep_2-3 + 524, 1, 30.7 );
setRotateKey( spep_2-3 + 526, 1, 30.2 );
setRotateKey( spep_2-3 + 528, 1, 29.8 );
setRotateKey( spep_2-3 + 530, 1, 29.3 );
setRotateKey( spep_2-3 + 532, 1, 28.8 );
setRotateKey( spep_2-3 + 534, 1, 28.4 );
setRotateKey( spep_2-3 + 536, 1, 27.9 );
setRotateKey( spep_2-3 + 538, 1, 27.5 );

setRotateKey( spep_2-3 + 540, 1, 19.7 );
setRotateKey( spep_2-3 + 567, 1, 19.7 );

setRotateKey( spep_2-3 + 568, 1, 10.9 );
setRotateKey( spep_2-3 + 595, 1, 10.9 );

setRotateKey( spep_2-3 + 596, 1, 10.9 );
setRotateKey( spep_2-3 + 607, 1, 10.9 );

setRotateKey( spep_2-3 + 608, 1, -33.8 );
setRotateKey( spep_2-3 + 610, 1, -33.8 );
setRotateKey( spep_2-1 + 612, 1, -13 );

--敵の動き
setDisp( spep_2-3 + 654, 1, 1 );
setDisp( spep_2-1 + 666, 1, 0 );

changeAnime( spep_2-3 + 654, 1, 6 );

setMoveKey( spep_2-3 + 654, 1, -65.7, 397.4 , 0 );
setMoveKey( spep_2-3 + 660, 1, -65.7, 397.4 , 0 );
setMoveKey( spep_2-3 + 662, 1, -8.9, 362 , 0 );
setMoveKey( spep_2-3 + 664, 1, -48.8, 997.5 , 0 );
setMoveKey( spep_2-1 + 666, 1, -48.8, 994.8 , 0 );

setScaleKey( spep_2-3 + 654, 1, 9.93, 9.93 );
setScaleKey( spep_2-1 + 666, 1, 9.93, 9.93 );

setRotateKey( spep_2-3 + 654, 1, -50 );
setRotateKey( spep_2-3 + 663, 1, -50 );
setRotateKey( spep_2-3 + 664, 1, -60 );
setRotateKey( spep_2-1 + 666, 1, -60 );

--敵の動き
setDisp( spep_2-3 + 674, 1, 1 );
setDisp( spep_2-1 + 784, 1, 0 );

changeAnime( spep_2-3 + 674, 1, 6 );
changeAnime( spep_2-3 + 712, 1, 106 );
changeAnime( spep_2-3 + 724, 1, 5 );

setMoveKey( spep_2-3 + 674, 1, -274.4, 321 , 0 );
setMoveKey( spep_2-3 + 676, 1, -230.5, 314 , 0 );
setMoveKey( spep_2-3 + 678, 1, -186.7, 413 , 0 );
setMoveKey( spep_2-3 + 680, 1, -186.7, 407 , 0 );
setMoveKey( spep_2-3 + 682, 1, -186.7, 407 , 0 );
setMoveKey( spep_2-3 + 684, 1, -179.9, 429 , 0 );
setMoveKey( spep_2-3 + 686, 1, -169.1, 407.4 , 0 );
setMoveKey( spep_2-3 + 688, 1, -170.5, 406 , 0 );
setMoveKey( spep_2-3 + 690, 1, -170.5, 423.6 , 0 );
setMoveKey( spep_2-3 + 692, 1, -169.1, 406 , 0 );
setMoveKey( spep_2-3 + 694, 1, -169.1, 406 , 0 );
setMoveKey( spep_2-3 + 696, 1, -167.8, 404.7 , 0 );
setMoveKey( spep_2-3 + 698, 1, -174.5, 414.1 , 0 );
setMoveKey( spep_2-3 + 700, 1, -169.1, 402 , 0 );
setMoveKey( spep_2-3 + 702, 1, -169.1, 402 , 0 );
setMoveKey( spep_2-3 + 704, 1, -170.5, 412.8 , 0 );
setMoveKey( spep_2-3 + 706, 1, -169.1, 397.9 , 0 );
setMoveKey( spep_2-3 + 708, 1, -170.5, 395.2 , 0 );
setMoveKey( spep_2-3 + 711, 1, -170.5, 397.9 , 0 );

setMoveKey( spep_2-3 + 712, 1, -7.2, 177.2 , 0 );
setMoveKey( spep_2-3 + 714, 1, -6.2, 171.9 , 0 );
setMoveKey( spep_2-3 + 716, 1, -4.5, 161.9 , 0 );
setMoveKey( spep_2-3 + 718, 1, -0.9, 141.7 , 0 );
setMoveKey( spep_2-3 + 720, 1, 6.5, 100.2 , 0 );
setMoveKey( spep_2-3 + 722, 1, 19.2, 27.9 , 0 );
setMoveKey( spep_2-3 + 723, 1, 19.2, 27.9 , 0 );

setMoveKey( spep_2-3 + 724, 1, -18.7, 101.7 , 0 );
setMoveKey( spep_2-3 + 726, 1, -22.2, 287.4 , 0 );
setMoveKey( spep_2-3 + 728, 1, -23.5, 355.5 , 0 );
setMoveKey( spep_2-3 + 730, 1, 2.6, 422.9 , 0 );
setMoveKey( spep_2-3 + 732, 1, 2, 455.7 , 0 );
setMoveKey( spep_2-3 + 734, 1, -18.7, 458.9 , 0 );
setMoveKey( spep_2-3 + 736, 1, -19, 494.9 , 0 );
setMoveKey( spep_2-3 + 738, 1, -13.8, 493.3 , 0 );
setMoveKey( spep_2-3 + 740, 1, -13.8, 496.3 , 0 );
setMoveKey( spep_2-3 + 742, 1, -13.8, 498.4 , 0 );
setMoveKey( spep_2-3 + 743, 1, -13.8, 498.4 , 0 );
setMoveKey( spep_2-3 + 744, 1, -61.4, -128.6 , 0 );
setMoveKey( spep_2-3 + 746, 1, -49.8, -93 , 0 );
setMoveKey( spep_2-3 + 748, 1, -40.2, -62.7 , 0 );
setMoveKey( spep_2-3 + 750, 1, -32, -36.9 , 0 );
setMoveKey( spep_2-3 + 752, 1, -25.1, -15.4 , 0 );
setMoveKey( spep_2-3 + 754, 1, -19.4, 2.5 , 0 );
setMoveKey( spep_2-3 + 756, 1, -19.4, 2.5 , 0 );
setMoveKey( spep_2-3 + 758, 1, -11.1, 28.9 , 0 );
setMoveKey( spep_2-3 + 760, 1, -8.1, 38.3 , 0 );
setMoveKey( spep_2-3 + 762, 1, -5.8, 45.6 , 0 );
setMoveKey( spep_2-3 + 764, 1, -4, 51.2 , 0 );
setMoveKey( spep_2-3 + 766, 1, -2.7, 55.2 , 0 );
setMoveKey( spep_2-3 + 768, 1, -1.7, 58.3 , 0 );
setMoveKey( spep_2-3 + 770, 1, -1.1, 60.3 , 0 );
setMoveKey( spep_2-3 + 772, 1, -0.7, 61.6 , 0 );
setMoveKey( spep_2-3 + 774, 1, -0.4, 62.4 , 0 );
setMoveKey( spep_2-3 + 776, 1, -0.3, 62.9 , 0 );
setMoveKey( spep_2-3 + 778, 1, -0.3, 63 , 0 );
setMoveKey( spep_2-3 + 780, 1, -0.3, 63 , 0 );
setMoveKey( spep_2-3 + 782, 1, -0.2, 63.1 , 0 );
setMoveKey( spep_2-1 + 784, 1, -0.1, 63.2 , 0 );

setScaleKey( spep_2-3 + 674, 1, 3.38, 3.38 );
setScaleKey( spep_2-3 + 711, 1, 3.38, 3.38 );

setScaleKey( spep_2-3 + 712, 1, 3.37, 3.37 );
setScaleKey( spep_2-3 + 723, 1, 3.37, 3.37 );

setScaleKey( spep_2-3 + 724, 1, 5.61,5.61);
setScaleKey( spep_2-3 + 726, 1, 3.36,3.36);
setScaleKey( spep_2-3 + 728, 1, 2.53,2.53);
setScaleKey( spep_2-3 + 730, 1, 1.98,1.98);
setScaleKey( spep_2-3 + 732, 1, 1.56,1.56);
setScaleKey( spep_2-3 + 734, 1, 1.29,1.29);
setScaleKey( spep_2-3 + 736, 1, 1.09,1.09);
setScaleKey( spep_2-3 + 738, 1, 0.99,0.99);
setScaleKey( spep_2-3 + 740, 1, 0.95,0.95);
setScaleKey( spep_2-3 + 742, 1, 0.81,0.81);
setScaleKey( spep_2-3 + 743, 1, 0.81,0.81);

setScaleKey( spep_2-3 + 744, 1, 11.25,11.25);
setScaleKey( spep_2-3 + 746, 1, 9.32,9.32);
setScaleKey( spep_2-3 + 748, 1, 7.67,7.67);
setScaleKey( spep_2-3 + 750, 1, 6.27,6.27);
setScaleKey( spep_2-3 + 752, 1, 5.09,5.09);
setScaleKey( spep_2-3 + 754, 1, 4.13,4.13);
setScaleKey( spep_2-3 + 756, 1, 4.13,4.13);
setScaleKey( spep_2-3 + 758, 1, 2.7,2.7);
setScaleKey( spep_2-3 + 760, 1, 2.18,2.18);
setScaleKey( spep_2-3 + 762, 1, 1.79,1.79);
setScaleKey( spep_2-3 + 764, 1, 1.48,1.48);
setScaleKey( spep_2-3 + 766, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 768, 1, 1.1,1.1);
setScaleKey( spep_2-3 + 770, 1, 0.98,0.98);
setScaleKey( spep_2-3 + 772, 1, 0.91,0.91);
setScaleKey( spep_2-3 + 774, 1, 0.87,0.87);
setScaleKey( spep_2-3 + 776, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 780, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 782, 1, 0.78,0.78);
setScaleKey( spep_2-1 + 784, 1, 0.75,0.75);

setRotateKey( spep_2-3 + 674, 1, -59.3 );
setRotateKey( spep_2-3 + 676, 1, -53 );
setRotateKey( spep_2-3 + 678, 1, -46.8 );
setRotateKey( spep_2-3 + 711, 1, -46.8 );

setRotateKey( spep_2-3 + 712, 1, 2.7 );
setRotateKey( spep_2-3 + 714, 1, 3.5 );
setRotateKey( spep_2-3 + 716, 1, 5 );
setRotateKey( spep_2-3 + 718, 1, 8.1 );
setRotateKey( spep_2-3 + 720, 1, 14.5 );
setRotateKey( spep_2-3 + 723, 1, 25.6 );

setRotateKey( spep_2-3 + 724, 1, 2.7 );
setRotateKey( spep_2-3 + 744, 1, 2.7 );
setRotateKey( spep_2-3 + 746, 1, 1.2 );
setRotateKey( spep_2-3 + 748, 1, -0.1 );
setRotateKey( spep_2-3 + 750, 1, -1.2 );
setRotateKey( spep_2-3 + 752, 1, -2.1 );
setRotateKey( spep_2-3 + 754, 1, -2.8 );
setRotateKey( spep_2-3 + 756, 1, -2.8 );
setRotateKey( spep_2-3 + 758, 1, -4 );
setRotateKey( spep_2-3 + 760, 1, -4.4 );
setRotateKey( spep_2-3 + 762, 1, -4.7 );
setRotateKey( spep_2-3 + 764, 1, -4.9 );
setRotateKey( spep_2-3 + 766, 1, -5.1 );
setRotateKey( spep_2-3 + 768, 1, -5.2 );
setRotateKey( spep_2-3 + 770, 1, -5.3 );
setRotateKey( spep_2-3 + 772, 1, -5.3 );
setRotateKey( spep_2-3 + 774, 1, -5.4 );
setRotateKey( spep_2-1 + 784, 1, -5.4 );

--敵の動き
setDisp( spep_2-3 + 798, 1, 1 );
setDisp( spep_2-1 + 846, 1, 0 );

changeAnime( spep_2-3 + 798, 1, 107 );
changeAnime( spep_2-3 + 836, 1, 106 );

setMoveKey( spep_2-3 + 798, 1, -142.3, 120.9 , 0 );
setMoveKey( spep_2-3 + 800, 1, -88.9, -150 , 0 );
setMoveKey( spep_2-3 + 802, 1, -63, -226.2 , 0 );
setMoveKey( spep_2-3 + 804, 1, -59.6, -243.2 , 0 );
setMoveKey( spep_2-3 + 806, 1, -72.1, -262 , 0 );
setMoveKey( spep_2-3 + 808, 1, -71.4, -265.7 , 0 );
setMoveKey( spep_2-3 + 810, 1, -68.1, -267.1 , 0 );
setMoveKey( spep_2-3 + 812, 1, -77.2, -258.3 , 0 );
setMoveKey( spep_2-3 + 814, 1, -76.9, -259.8 , 0 );
setMoveKey( spep_2-3 + 816, 1, -56.4, -233.9 , 0 );
setMoveKey( spep_2-3 + 818, 1, -56.3, -234.7 , 0 );
setMoveKey( spep_2-3 + 820, 1, -83.1, -247.4 , 0 );
setMoveKey( spep_2-3 + 822, 1, -85.8, -250.6 , 0 );
setMoveKey( spep_2-3 + 824, 1, -85.7, -250.9 , 0 );
setMoveKey( spep_2-3 + 826, 1, -55.9, -235 , 0 );
setMoveKey( spep_2-3 + 828, 1, -55.9, -235.1 , 0 );
setMoveKey( spep_2-3 + 830, 1, -55.9, -235.2 , 0 );
setMoveKey( spep_2-3 + 832, 1, -53.2, -236.6 , 0 );
setMoveKey( spep_2-3 + 835, 1, -55.9, -256.7 , 0 );

setMoveKey( spep_2-3 + 836, 1, 19.1, 501.8 , 0 );
setMoveKey( spep_2-3 + 838, 1, 19.1, 297.8 , 0 );
setMoveKey( spep_2-3 + 840, 1, 19.1, 57.8 , 0 );
setMoveKey( spep_2-3 + 842, 1, 19.1, -162.2 , 0 );
setMoveKey( spep_2-3 + 844, 1, 19.1, -394.2 , 0 );
setMoveKey( spep_2-1 + 846, 1, 19.1, -594.2 , 0 );

setScaleKey( spep_2-3 + 798, 1, 1.43,1.43);
setScaleKey( spep_2-3 + 800, 1, 1.69,1.69);
setScaleKey( spep_2-3 + 802, 1, 1.75,1.75);
setScaleKey( spep_2-3 + 804, 1, 1.78,1.78);
setScaleKey( spep_2-3 + 810, 1, 1.78,1.78);
setScaleKey( spep_2-3 + 812, 1, 1.79,1.79);
setScaleKey( spep_2-3 + 835, 1, 1.79,1.79);

setScaleKey( spep_2-3 + 836, 1, 1.44, 1.44 );
setScaleKey( spep_2-1 + 846, 1, 1.44, 1.44 );

setRotateKey( spep_2-3 + 798, 1, 28.7 );
setRotateKey( spep_2-3 + 800, 1, 37.3 );
setRotateKey( spep_2-3 + 802, 1, 39.3 );
setRotateKey( spep_2-3 + 804, 1, 39.8 );
setRotateKey( spep_2-3 + 806, 1, 40 );
setRotateKey( spep_2-3 + 808, 1, 40.1 );
setRotateKey( spep_2-3 + 810, 1, 40.2 );
setRotateKey( spep_2-3 + 812, 1, 40.3 );
setRotateKey( spep_2-3 + 814, 1, 40.3 );
setRotateKey( spep_2-3 + 816, 1, 40.4 );
setRotateKey( spep_2-3 + 835, 1, 40.4 );

setRotateKey( spep_2-3 + 836, 1, 117.9 );
setRotateKey( spep_2-1 + 846, 1, 117.9 );

--敵の動き
setDisp( spep_2-3 + 850, 1, 1 );
setDisp( spep_2-1 + 878, 1, 0 );

changeAnime( spep_2-3 + 850, 1, 5 );
changeAnime( spep_2-3 + 870, 1, 6 );

setMoveKey( spep_2-3 + 850, 1, 5.4, -6.7 , 0 );
setMoveKey( spep_2-3 + 852, 1, 5.5, -5.7 , 0 );
setMoveKey( spep_2-3 + 854, 1, 5.4, -20.3 , 0 );
setMoveKey( spep_2-3 + 856, 1, 5.5, -31.4 , 0 );
setMoveKey( spep_2-3 + 858, 1, 5.6, -34.8 , 0 );
setMoveKey( spep_2-3 + 860, 1, 7.7, -37.4 , 0 );
setMoveKey( spep_2-3 + 862, 1, 9.8, -38.3 , 0 );
setMoveKey( spep_2-3 + 869, 1, 9.9, -38.2 , 0 );

setMoveKey( spep_2-3 + 870, 1, 0.1, -8.4 , 0 );
setMoveKey( spep_2-3 + 872, 1, 0.1, -50.4 , 0 );
setMoveKey( spep_2-3 + 874, 1, 0.1, -92.4 , 0 );
setMoveKey( spep_2-3 + 876, 1, 0.1, -134.4 , 0 );
setMoveKey( spep_2-1 + 878, 1, 0.1, -176.4 , 0 );

setScaleKey( spep_2-3 + 850, 1, 8.31, 8.31 );
setScaleKey( spep_2-3 + 852, 1, 6.42, 6.42 );
setScaleKey( spep_2-3 + 854, 1, 4.35, 4.35 );
setScaleKey( spep_2-3 + 856, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 858, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 860, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 862, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 864, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 866, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 869, 1, 0.15, 0.15 );

setScaleKey( spep_2-3 + 870, 1, 0.37, 0.37 );
setScaleKey( spep_2-1 + 878, 1, 0.37, 0.37 );

setRotateKey( spep_2-3 + 850, 1, 0 );
setRotateKey( spep_2-3 + 869, 1, 0 );

setRotateKey( spep_2-3 + 870, 1, -115 );
setRotateKey( spep_2-1 + 878, 1, -115 );

--SE
--振りかぶる
SE008 = playSeVer2( spep_2 + 42, 1116, "",spep_2 + 76, 0, 10, -1);

--腹パン
SE009 = playSeVer2( spep_2 + 78, 1180, "", 0, 4, 0, -1);
setStartTimeMs( SE009,  500 );
setPitch( spep_2 + 78, SE009, -300 );
setTimeStretch( SE009, 0.8, 30, 4 );
SE010 = playSeVer2( spep_2 + 68, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 141 );
SE011 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE011, 79 );
SE012 = playSeVer2( spep_2 + 74, 1190, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 74, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_2 + 106, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 106, 1278, "",spep_2 + 296, 0, 102, -1);

--悟空飛んでくる
SE016 = playSeVer2( spep_2 + 132, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE016, 136 );
SE017 = playSeVer2( spep_2 + 132, 44, "", 0, 0, 0, -1);

--敵吹き飛ばす
SE018 = playSeVer2( spep_2 + 166, 1022, "",spep_2 + 240, 0, 26, -1);
SE019 = playSeVer2( spep_2 + 170, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 170, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE020, 67 );

--回転する
SE021 = playSeVer2( spep_2 + 218, 1117, "",spep_2 + 240, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 218, SE021, 126 );
SE022 = playSeVer2( spep_2 + 226, 1117, "",spep_2 + 246, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 226, SE022, 126 );
SE023 = playSeVer2( spep_2 + 234, 1117, "",spep_2 + 254, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 234, SE023, 126 );
SE024 = playSeVer2( spep_2 + 240, 1117, "",spep_2 + 264, 0, 6, 0.6);
SE025 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);

--岩を蹴って飛んでいく
SE026 = playSeVer2( spep_2 + 280, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE026, 126 );
SE027 = playSeVer2( spep_2 + 280, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE027, 126 );
SE028 = playSeVer2( spep_2 + 280, 1277, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 280, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE029, 78 );
SE030 = playSeVer2( spep_2 + 322, 1314, "",spep_2 + 380, 0, 6, -1);
SE031 = playSeVer2( spep_2 + 322, 9, "", 0, 0, 0, -1);

--蹴りヒット
SE032 = playSeVer2( spep_2 + 376, 1003, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 382, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 382, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE034, 84 );
SE035 = playSeVer2( spep_2 + 382, 1011, "",spep_2 + 432, 0, 28, -1);

--裏蹴り
SE037 = playSeVer2( spep_2 + 420, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 420, SE037, 141 );
SE038 = playSeVer2( spep_2 + 422, 1120, "", 0, 0, 0, -1);

--敵浮く
SE039 = playSeVer2( spep_2 + 458, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  350 );
SE036 = playSeVer2( spep_2 + 462, 1183, "",spep_2 + 528, 10, 10, -1);
setSeVolumeByWorkId( spep_2 + 462, SE036, 82 );
setStartTimeMs( SE036,  867 );

--回って着地
SE040 = playSeVer2( spep_2 + 462, 1117, "",spep_2 + 476, 0, 8, -1);
SE041 = playSeVer2( spep_2 + 464, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 158 );
SE042 = playSeVer2( spep_2 + 466, 1117, "",spep_2 + 480, 0, 8, -1);
SE043 = playSeVer2( spep_2 + 476, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE043, 180 );

--敵地面激突
SE044 = playSeVer2( spep_2 + 518, 1159, "",spep_2 + 584, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 518, SE044, 56 );
SE045 = playSeVer2( spep_2 + 518, 1033, "", 0, 0, 0, -1);

--瞬間移動
SE046 = playSeVer2( spep_2 + 534, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE047 = playSeVer2( spep_2 + 570, 1004, "", 0, 0, 0, -1);

--エルボー
SE048 = playSeVer2( spep_2 + 606, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 606, SE048, 158 );
SE049 = playSeVer2( spep_2 + 612, 1153, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 612, 1187, "",spep_2 + 626, 0, 6, -1);
SE051 = playSeVer2( spep_2 + 614, 1009, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 616, 1110, "", 0, 0, 0, -1);

--悟空アップ
SE053 = playSeVer2( spep_2 + 632, 9, "",spep_2 + 682, 0, 14, -1);
SE054 = playSeVer2( spep_2 + 622, 1226, "",spep_2 + 682, 0, 14, -1);

--蹴り上げる
SE055 = playSeVer2( spep_2 + 660, 1004, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 672, 1010, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 672, 1011, "",spep_2 + 738, 0, 40, -1);
SE058 = playSeVer2( spep_2 + 674, 1047, "", 0, 0, 0, -1);

--パンチ
SE059 = playSeVer2( spep_2 + 722, 1187, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 724, 1009, "", 0, 0, 0, -1);

--敵飛んでいく
SE061 = playSeVer2( spep_2 + 722, 1183, "",spep_2 + 800, 0, 12, -1);

--瞬間移動
SE062 = playSeVer2( spep_2 + 788, 1109, "", 0, 0, 0, -1);

--肘叩き落とし
SE063 = playSeVer2( spep_2 + 796, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE064 = playSeVer2( spep_2 + 836, 1121, "",spep_2 + 890, 0, 12, -1);

--溶岩落ちる
SE065 = playSeVer2( spep_2 + 878, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 878, SE065, 178 );
setStartTimeMs( SE065,  317 );
SE066 = playSeVer2( spep_2 + 884, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE067 = playSeVer2( spep_2 + 958, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 958, SE067, 91 );
SE068 = playSeVer2( spep_2 + 958, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 958, SE068, 91 );

--終わり
hideKoScreen();
dealDamage(spep_2+880);
endPhase( spep_2 + 980 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--キャラ対峙
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 92, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 92, confrontation_f, 255 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 92, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 92, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 92, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 92, confrontation_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 92, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setBlendColor(spep_0 + 39 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 40 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 62 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0.68 );
setBlendColor(spep_0 + 63 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0 );
setBlendColor(spep_0 + 64 ,1 ,3 ,0.45 ,0.728 ,0.935 ,0 );

setMoveKey( spep_0 + 0, 1, 294.3, -244.6 , 0 );
setMoveKey( spep_0 + 1, 1, 294.3, -244.6 , 0 );
setMoveKey( spep_0 + 2, 1, 293.8, -244.6 , 0 );
setMoveKey( spep_0 + 3, 1, 293.8, -244.6 , 0 );
setMoveKey( spep_0 + 4, 1, 293.2, -244.6 , 0 );
setMoveKey( spep_0 + 5, 1, 293.2, -244.6 , 0 );
setMoveKey( spep_0 + 6, 1, 292.7, -244.6 , 0 );
setMoveKey( spep_0 + 8, 1, 292.1, -244.6 , 0 );
setMoveKey( spep_0 + 10, 1, 291.6, -244.6 , 0 );
setMoveKey( spep_0 + 12, 1, 291, -244.6 , 0 );
setMoveKey( spep_0 + 14, 1, 290.5, -244.6 , 0 );
setMoveKey( spep_0 + 16, 1, 289.9, -244.6 , 0 );
setMoveKey( spep_0 + 18, 1, 289.4, -244.6 , 0 );
setMoveKey( spep_0 + 20, 1, 288.8, -244.6 , 0 );
setMoveKey( spep_0 + 22, 1, 288.3, -244.6 , 0 );
setMoveKey( spep_0 + 24, 1, 287.7, -244.6 , 0 );
setMoveKey( spep_0 + 26, 1, 287.2, -244.6 , 0 );
setMoveKey( spep_0 + 28, 1, 286.6, -244.6 , 0 );
setMoveKey( spep_0 + 30, 1, 286.1, -244.6 , 0 );
setMoveKey( spep_0 + 32, 1, 285.5, -244.6 , 0 );
setMoveKey( spep_0 + 34, 1, 285, -244.6 , 0 );
setMoveKey( spep_0 + 36, 1, 284.4, -244.6 , 0 );
setMoveKey( spep_0 + 38, 1, 283.9, -244.6 , 0 );
setMoveKey( spep_0 + 40, 1, 283.3, -244.6 , 0 );
setMoveKey( spep_0 + 42, 1, 282.8, -244.6 , 0 );
setMoveKey( spep_0 + 44, 1, 282.2, -244.6 , 0 );
setMoveKey( spep_0 + 46, 1, 281.7, -244.6 , 0 );
setMoveKey( spep_0 + 48, 1, 281.1, -244.6 , 0 );
setMoveKey( spep_0 + 50, 1, 280.6, -284.6 , 0 );
setMoveKey( spep_0 + 52, 1, 280, -278.6 , 0 );
setMoveKey( spep_0 + 54, 1, 279.5, -214.6 , 0 );
setMoveKey( spep_0 + 56, 1, 278.9, -256.6 , 0 );
setMoveKey( spep_0 + 58, 1, 278.4, -224.6 , 0 );
setMoveKey( spep_0 + 60, 1, 277.8, -254.6 , 0 );
setMoveKey( spep_0 + 62, 1, 277.3, -232.6 , 0 );
setMoveKey( spep_0 + 64, 1, 276.7, -248.6 , 0 );
setMoveKey( spep_0 + 66, 1, 276.2, -244.6 , 0 );
setMoveKey( spep_0 + 68, 1, 275.6, -244.6 , 0 );
setMoveKey( spep_0 + 70, 1, 275.1, -244.6 , 0 );
setMoveKey( spep_0 + 72, 1, 274.5, -244.6 , 0 );
setMoveKey( spep_0 + 74, 1, 274, -244.6 , 0 );
setMoveKey( spep_0 + 76, 1, 273.4, -244.6 , 0 );
setMoveKey( spep_0 + 78, 1, 272.9, -244.6 , 0 );
setMoveKey( spep_0 + 92, 1, 272.3, -244.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 2, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 3, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 5, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 89, 1, 1.44, 1.44 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 92, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1229, "",spep_0 + 98, 0, 4, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--入り
SE003 = playSeVer2( spep_0 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--雷
SE004 = playSeVer2( spep_0 + 40, 1231, "",spep_0 + 98, 0, 4, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--白フェード
entryFade( spep_0 + 86, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--画面手前に突進〜マグマ爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 1108, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 1108, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 1108, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 1108, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 1108, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 1108, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 1108, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 1108, finish_b, 255 );

--SE
--突っ込んでくる
SE006 = playSeVer2( spep_2 + 10, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE006, 130 );
SE007 = playSeVer2( spep_2 + 10, 1183, "",spep_2 + 74, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 10, SE007, 130 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 1110, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵の動き
setDisp( spep_2-3 + 50, 1, 1 );
setDisp( spep_2-1 + 104, 1, 0 );

changeAnime( spep_2-3 + 50, 1, 100 );
changeAnime( spep_2-3 + 74, 1, 108 );


setMoveKey( spep_2-3 + 50, 1, 675.6, 170 , 0 );
setMoveKey( spep_2-3 + 52, 1, 271.5, 110.6 , 0 );
setMoveKey( spep_2-3 + 54, 1, 271.5, 110.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 127.4, 93.2 , 0 );
setMoveKey( spep_2-3 + 58, 1, 127.4, 93.2 , 0 );
setMoveKey( spep_2-3 + 60, 1, 103.5, 97.3 , 0 );
setMoveKey( spep_2-3 + 64, 1, 103.5, 97.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 83.5, 73.3 , 0 );
setMoveKey( spep_2-3 + 73, 1, 83.5, 73.3 , 0 );

setMoveKey( spep_2-3 + 74, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 75, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 76, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 77, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 78, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 81, 1, 25.9, 239.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, 25.9, 241.5 , 0 );
setMoveKey( spep_2-3 + 83, 1, 25.9, 241.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 25.9, 263.5 , 0 );
setMoveKey( spep_2-3 + 85, 1, 25.9, 263.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 87, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 25.9, 269.5 , 0 );
setMoveKey( spep_2-3 + 89, 1, 25.9, 269.5 , 0 );
setMoveKey( spep_2-3 + 90, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 91, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 93, 1, 25.9, 237.5 , 0 );
setMoveKey( spep_2-3 + 94, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 95, 1, 25.9, 261.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 97, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 25.9, 267.5 , 0 );
setMoveKey( spep_2-3 + 99, 1, 25.9, 267.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 101, 1, 25.9, 245.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, 25.9, 243.5 , 0 );
setMoveKey( spep_2-1 + 104, 1, 25.9, 257.5 , 0 );

setScaleKey( spep_2-3 + 50, 1, 8.34,8.34);
setScaleKey( spep_2-3 + 52, 1, 5.7,5.7);
setScaleKey( spep_2-3 + 54, 1, 5.7,5.7);
setScaleKey( spep_2-3 + 56, 1, 3.97,3.97);
setScaleKey( spep_2-3 + 58, 1, 3.97,3.97);
setScaleKey( spep_2-3 + 60, 1, 3.9,3.9);
setScaleKey( spep_2-3 + 73, 1, 3.9,3.9);

setScaleKey( spep_2-3 + 74, 1, 3.9, 3.9 );
setScaleKey( spep_2-1 + 104, 1, 3.9, 3.9 );

setRotateKey( spep_2-3 + 50, 1, -7 );
setRotateKey( spep_2-3 + 52, 1, -11.9 );
setRotateKey( spep_2-3 + 54, 1, -11.9 );
setRotateKey( spep_2-3 + 56, 1, -21.9 );
setRotateKey( spep_2-3 + 58, 1, -21.9 );
setRotateKey( spep_2-3 + 60, 1, -25.1 );
setRotateKey( spep_2-3 + 73, 1, -25.1 );

setRotateKey( spep_2-3 + 74, 1, -25.1 );
setRotateKey( spep_2-1 + 104, 1, -25.1 );

--敵の動き
setDisp( spep_2-3 + 108, 1, 1 );
setDisp( spep_2-1 + 128, 1, 0 );

changeAnime( spep_2-3 + 108, 1, 5 );

setMoveKey( spep_2-3 + 108, 1, -223.7, -160 , 0 );
setMoveKey( spep_2-3 + 110, 1, -59.6, -67.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 60.7, 32 , 0 );
setMoveKey( spep_2-3 + 114, 1, 143.4, 99.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, 197.3, 144.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 230, 171 , 0 );
setMoveKey( spep_2-3 + 120, 1, 248, 185.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 256.6, 192.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 259.7, 195.3 , 0 );
setMoveKey( spep_2-1 + 128, 1, 260.5, 195.9 , 0 );

setScaleKey( spep_2-3 + 108, 1, 9.82,9.82);
setScaleKey( spep_2-3 + 110, 1, 7.5,7.5);
setScaleKey( spep_2-3 + 112, 1, 4.87,4.87);
setScaleKey( spep_2-3 + 114, 1, 3.05,3.05);
setScaleKey( spep_2-3 + 116, 1, 1.88,1.88);
setScaleKey( spep_2-3 + 118, 1, 1.16,1.16);
setScaleKey( spep_2-3 + 120, 1, 0.77,0.77);
setScaleKey( spep_2-3 + 122, 1, 0.58,0.58);
setScaleKey( spep_2-3 + 124, 1, 0.51,0.51);
setScaleKey( spep_2-1 + 128, 1, 0.49,0.49);

setRotateKey( spep_2-3 + 108, 1, 45.2 );
setRotateKey( spep_2-3 + 110, 1, 54.9 );
setRotateKey( spep_2-3 + 112, 1, 58.9 );
setRotateKey( spep_2-3 + 114, 1, 61.6 );
setRotateKey( spep_2-3 + 116, 1, 63.4 );
setRotateKey( spep_2-3 + 118, 1, 64.5 );
setRotateKey( spep_2-3 + 120, 1, 65.1 );
setRotateKey( spep_2-3 + 122, 1, 65.4 );
setRotateKey( spep_2-3 + 124, 1, 65.5 );
setRotateKey( spep_2-1 + 128, 1, 65.6 );

--敵の動き
setDisp( spep_2-3 + 166, 1, 1 );
setDisp( spep_2-1 + 200, 1, 0 );

changeAnime( spep_2-3 + 166, 1, 106 );
changeAnime( spep_2-3 + 176, 1, 108 );

setMoveKey( spep_2-3 + 166, 1, -282.1, -158.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, -239.1, -124.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, -196.1, -90.8 , 0 );
setMoveKey( spep_2-3 + 172, 1, -153.1, -56.8 , 0 );
setMoveKey( spep_2-3 + 175, 1, -110.1, -22.8 , 0 );

setMoveKey( spep_2-3 + 176, 1, -98.8, 150.6 , 0 );
setMoveKey( spep_2-3 + 178, 1, -86.8, 174.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, -93.9, 219.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, -109.9, 187.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, -89.9, 197.2 , 0 );
setMoveKey( spep_2-3 + 186, 1, -73.9, 209.2 , 0 );
setMoveKey( spep_2-3 + 188, 1, -78.8, 240.6 , 0 );
setMoveKey( spep_2-3 + 190, 1, -90.8, 248.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, -98.8, 220.6 , 0 );
setMoveKey( spep_2-3 + 194, 1, -71.8, 263.1 , 0 );
setMoveKey( spep_2-3 + 196, 1, -95.8, 275.1 , 0 );
setMoveKey( spep_2-3 + 198, 1, -82.9, 277.7 , 0 );
setMoveKey( spep_2-1 + 200, 1, -82.9, 269.7 , 0 );


setScaleKey( spep_2-3 + 166, 1, 1, 1 );
setScaleKey( spep_2-3 + 175, 1, 1, 1 );

setScaleKey( spep_2-3 + 176, 1, 1.06, 1.06 );
setScaleKey( spep_2-1 + 200, 1, 1.06, 1.06 );

setRotateKey( spep_2-3 + 166, 1, -3 );
setRotateKey( spep_2-3 + 175, 1, -3 );

setRotateKey( spep_2-3 + 176, 1, -101 );
setRotateKey( spep_2-1 + 200, 1, -101 );

--敵の動き
setDisp( spep_2-3 + 358, 1, 1 );
setDisp( spep_2-1 + 434, 1, 0 );

changeAnime( spep_2-3 + 358, 1, 4 );
changeAnime( spep_2-3 + 378, 1, 105 );
changeAnime( spep_2-3 + 384, 1, 106 );
changeAnime( spep_2-3 + 424, 1, 6 );

setMoveKey( spep_2-3 + 358, 1, 18.4, -172.3 , 0 );
setMoveKey( spep_2-3 + 362, 1, 18.4, -172.3 , 0 );
setMoveKey( spep_2-3 + 364, 1, 2.6, -165.8 , 0 );
setMoveKey( spep_2-3 + 366, 1, -17.6, -154 , 0 );
setMoveKey( spep_2-3 + 370, 1, -17.6, -154 , 0 );
setMoveKey( spep_2-3 + 372, 1, -29.1, -145.3 , 0 );
setMoveKey( spep_2-3 + 377, 1, -29.1, -145.3 , 0 );

setMoveKey( spep_2-3 + 378, 1, 3.8, -36.2 , 0 );
setMoveKey( spep_2-3 + 383, 1, 3.8, -36.2 , 0 );

setMoveKey( spep_2-3 + 384, 1, 189.5, -119 , 0 );
setMoveKey( spep_2-3 + 386, 1, 153.5, -119 , 0 );
setMoveKey( spep_2-3 + 388, 1, 127.7, -119 , 0 );
setMoveKey( spep_2-3 + 390, 1, 116.4, -119 , 0 );
setMoveKey( spep_2-3 + 392, 1, 105.9, -119 , 0 );
setMoveKey( spep_2-3 + 394, 1, 104.5, -119 , 0 );
setMoveKey( spep_2-3 + 396, 1, 102.5, -119 , 0 );
setMoveKey( spep_2-3 + 398, 1, 102.3, -119 , 0 );
setMoveKey( spep_2-3 + 400, 1, 102.3, -119 , 0 );
setMoveKey( spep_2-3 + 402, 1, 97.7, -120.4 , 0 );
setMoveKey( spep_2-3 + 404, 1, 99.1, -117.7 , 0 );
setMoveKey( spep_2-3 + 406, 1, 95, -119 , 0 );
setMoveKey( spep_2-3 + 408, 1, 94.9, -119 , 0 );
setMoveKey( spep_2-3 + 410, 1, 99.1, -119 , 0 );
setMoveKey( spep_2-3 + 414, 1, 99.1, -119 , 0 );
setMoveKey( spep_2-3 + 416, 1, 135.7, -119 , 0 );
setMoveKey( spep_2-3 + 420, 1, 135.7, -119 , 0 );
setMoveKey( spep_2-3 + 422, 1, 35.7, -119 , 0 );
setMoveKey( spep_2-3 + 423, 1, 35.7, -119 , 0 );

setMoveKey( spep_2-3 + 424, 1, -86.1, -176.4 , 0 );
setMoveKey( spep_2-3 + 426, 1, -86.1, -176.4 , 0 );
setMoveKey( spep_2-3 + 428, 1, -130.1, -180.4 , 0 );
setMoveKey( spep_2-3 + 430, 1, -130.1, -180.4 , 0 );
setMoveKey( spep_2-3 + 432, 1, -261.9, -114.2 , 0 );
setMoveKey( spep_2-1 + 434, 1, -471.8, -160 , 0 );


setScaleKey( spep_2-3 + 358, 1, 6.81,6.81);
setScaleKey( spep_2-3 + 362, 1, 6.81,6.81);
setScaleKey( spep_2-3 + 364, 1, 6.35,6.35);
setScaleKey( spep_2-3 + 366, 1, 5.63,5.63);
setScaleKey( spep_2-3 + 370, 1, 5.63,5.63);
setScaleKey( spep_2-3 + 372, 1, 5.39,5.39);
setScaleKey( spep_2-3 + 377, 1, 5.39,5.39);

setScaleKey( spep_2-3 + 378, 1, 4.22, 4.22 );
setScaleKey( spep_2-3 + 383, 1, 4.22, 4.22 );

setScaleKey( spep_2-3 + 384, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 423, 1, 2.15, 2.15 );

setScaleKey( spep_2-3 + 424, 1, 2.92, 2.92 );
setScaleKey( spep_2-1 + 434, 1, 2.92, 2.92 );

setRotateKey( spep_2-3 + 358, 1, 0 );
setRotateKey( spep_2-3 + 377, 1, 0 );

setRotateKey( spep_2-3 + 378, 1, -44.6 );
setRotateKey( spep_2-3 + 383, 1, -44.6 );

setRotateKey( spep_2-3 + 384, 1, -41.7 );
setRotateKey( spep_2-3 + 423, 1, -41.7 );

setRotateKey( spep_2-3 + 424, 1, 32 );
setRotateKey( spep_2-3 + 430, 1, 32 );
setRotateKey( spep_2-3 + 432, 1, 14.5 );
setRotateKey( spep_2-1 + 434, 1, -9 );

--敵の動き
setDisp( spep_2-3 + 460, 1, 1 );
setDisp( spep_2-1 + 612, 1, 0 );

changeAnime( spep_2-3 + 460, 1, 7 );
changeAnime( spep_2-3 + 540, 1, 15 );
changeAnime( spep_2-3 + 568, 1, 118 );
changeAnime( spep_2-3 + 596, 1, 18 );
changeAnime( spep_2-3 + 608, 1, 7 );

setMoveKey( spep_2-3 + 460, 1, 118.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 462, 1, 118.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 464, 1, 117.9, 436.1 , 0 );
setMoveKey( spep_2-3 + 466, 1, 117.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 468, 1, 116.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 470, 1, 115.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 472, 1, 113.9, 436.1 , 0 );
setMoveKey( spep_2-3 + 474, 1, 112.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 476, 1, 110.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 478, 1, 108.3, 436.1 , 0 );
setMoveKey( spep_2-3 + 480, 1, 106, 436.1 , 0 );
setMoveKey( spep_2-3 + 482, 1, 103.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 484, 1, 100.5, 436.1 , 0 );
setMoveKey( spep_2-3 + 486, 1, 97.4, 436.1 , 0 );
setMoveKey( spep_2-3 + 488, 1, 94.1, 436.1 , 0 );
setMoveKey( spep_2-3 + 490, 1, 90.5, 436.1 , 0 );
setMoveKey( spep_2-3 + 492, 1, 86.7, 436.1 , 0 );
setMoveKey( spep_2-3 + 494, 1, 82.6, 436.1 , 0 );
setMoveKey( spep_2-3 + 496, 1, 78.2, 436.1 , 0 );
setMoveKey( spep_2-3 + 498, 1, 73.7, 436.1 , 0 );
setMoveKey( spep_2-3 + 500, 1, 68.8, 436.1 , 0 );
setMoveKey( spep_2-3 + 502, 1, 79.9, 423.5 , 0 );
setMoveKey( spep_2-3 + 504, 1, 91.5, 410.8 , 0 );
setMoveKey( spep_2-3 + 506, 1, 108, 398.2 , 0 );
setMoveKey( spep_2-3 + 508, 1, 124.5, 385.5 , 0 );
setMoveKey( spep_2-3 + 510, 1, 95.7, 354.9 , 0 );
setMoveKey( spep_2-3 + 512, 1, 116.3, 343.9 , 0 );
setMoveKey( spep_2-3 + 514, 1, 88.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 516, 1, 80.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, 74.4, 220.1 , 0 );
setMoveKey( spep_2-3 + 520, 1, 45, -30.4 , 0 );
setMoveKey( spep_2-3 + 522, 1, 48.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 524, 1, 26, -32.5 , 0 );
setMoveKey( spep_2-3 + 526, 1, 31.9, 5.2 , 0 );
setMoveKey( spep_2-3 + 528, 1, 33.7, 4.4 , 0 );
setMoveKey( spep_2-3 + 530, 1, 34.3, -16.8 , 0 );
setMoveKey( spep_2-3 + 532, 1, 33.5, -17.7 , 0 );
setMoveKey( spep_2-3 + 534, 1, 28, -7.2 , 0 );
setMoveKey( spep_2-3 + 536, 1, 27.2, -10.1 , 0 );
setMoveKey( spep_2-3 + 538, 1, 25.7, -20.5 , 0 );
setMoveKey( spep_2-3 + 539, 1, 25.7, -20.5 , 0 );

setMoveKey( spep_2-3 + 540, 1, -50.9, -282.7 , 0 );
setMoveKey( spep_2-3 + 542, 1, -61, -260.7 , 0 );
setMoveKey( spep_2-3 + 548, 1, -61, -260.7 , 0 );
setMoveKey( spep_2-3 + 550, 1, -74.9, -202.7 , 0 );
setMoveKey( spep_2-3 + 567, 1, -74.9, -202.7 , 0 );

setMoveKey( spep_2-3 + 568, 1, 443.1, -120 , 0 );
setMoveKey( spep_2-3 + 595, 1, 443.1, -120 , 0 );

setMoveKey( spep_2-3 + 596, 1, -144.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 598, 1, -144.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 600, 1, -152.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 604, 1, -152.5, -265.8 , 0 );
setMoveKey( spep_2-3 + 607, 1, -166.5, -269.8 , 0 );

setMoveKey( spep_2-3 + 608, 1, 52.6, -223.7 , 0 );
setMoveKey( spep_2-3 + 610, 1, 51.3, -223.7 , 0 );
setMoveKey( spep_2-1 + 612, 1, -158.5, -566.1 , 0 );

setScaleKey( spep_2-3 + 460, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 482, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 484, 1, 0.43,0.43);
setScaleKey( spep_2-3 + 492, 1, 0.43,0.43);
setScaleKey( spep_2-3 + 494, 1, 0.44,0.44);
setScaleKey( spep_2-3 + 500, 1, 0.44,0.44);
setScaleKey( spep_2-3 + 502, 1, 0.42,0.42);
setScaleKey( spep_2-3 + 504, 1, 0.39,0.39);
setScaleKey( spep_2-3 + 506, 1, 0.37,0.37);
setScaleKey( spep_2-3 + 508, 1, 0.33,0.33);
setScaleKey( spep_2-3 + 510, 1, 0.36,0.36);
setScaleKey( spep_2-3 + 512, 1, 0.33,0.33);
setScaleKey( spep_2-3 + 514, 1, 0.48,0.48);
setScaleKey( spep_2-3 + 518, 1, 0.48,0.48);
setScaleKey( spep_2-3 + 520, 1, 0.79,0.79);
setScaleKey( spep_2-3 + 522, 1, 0.79,0.79);
setScaleKey( spep_2-3 + 524, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 526, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 528, 1, 0.85,0.85);
setScaleKey( spep_2-3 + 534, 1, 0.85,0.85);
setScaleKey( spep_2-3 + 536, 1, 0.86,0.86);
setScaleKey( spep_2-3 + 539, 1, 0.86,0.86);

setScaleKey( spep_2-3 + 540, 1, 5.85, 5.85 );
setScaleKey( spep_2-3 + 567, 1, 5.85, 5.85 );

setScaleKey( spep_2-3 + 568, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 595, 1, 4.83, 4.83 );

setScaleKey( spep_2-3 + 596, 1, 4.21, 4.21 );
setScaleKey( spep_2-3 + 607, 1, 4.21, 4.21 );

setScaleKey( spep_2-3 + 608, 1, 1.87, 1.87 );
setScaleKey( spep_2-1 + 612, 1, 1.87, 1.87 );

setRotateKey( spep_2-3 + 460, 1, 6.7 );
setRotateKey( spep_2-3 + 464, 1, 6.7 );
setRotateKey( spep_2-3 + 466, 1, 6.6 );
setRotateKey( spep_2-3 + 468, 1, 6.4 );
setRotateKey( spep_2-3 + 470, 1, 6.3 );
setRotateKey( spep_2-3 + 472, 1, 6.1 );
setRotateKey( spep_2-3 + 474, 1, 5.8 );
setRotateKey( spep_2-3 + 476, 1, 5.5 );
setRotateKey( spep_2-3 + 478, 1, 5.2 );
setRotateKey( spep_2-3 + 480, 1, 4.8 );
setRotateKey( spep_2-3 + 482, 1, 4.4 );
setRotateKey( spep_2-3 + 484, 1, 4 );
setRotateKey( spep_2-3 + 486, 1, 3.5 );
setRotateKey( spep_2-3 + 488, 1, 3 );
setRotateKey( spep_2-3 + 490, 1, 2.4 );
setRotateKey( spep_2-3 + 492, 1, 1.9 );
setRotateKey( spep_2-3 + 494, 1, 1.2 );
setRotateKey( spep_2-3 + 496, 1, 0.6 );
setRotateKey( spep_2-3 + 498, 1, -0.1 );
setRotateKey( spep_2-3 + 500, 1, -0.9 );
setRotateKey( spep_2-3 + 502, 1, -1.7 );
setRotateKey( spep_2-3 + 504, 1, -2.5 );
setRotateKey( spep_2-3 + 508, 1, -2.5 );
setRotateKey( spep_2-3 + 510, 1, -13.5 );
setRotateKey( spep_2-3 + 512, 1, -13.5 );
setRotateKey( spep_2-3 + 514, 1, -29.4 );
setRotateKey( spep_2-3 + 518, 1, -29.4 );
setRotateKey( spep_2-3 + 520, 1, -36.4 );
setRotateKey( spep_2-3 + 522, 1, -36.4 );
setRotateKey( spep_2-3 + 524, 1, -30.7 );
setRotateKey( spep_2-3 + 526, 1, -30.2 );
setRotateKey( spep_2-3 + 528, 1, -29.8 );
setRotateKey( spep_2-3 + 530, 1, -29.3 );
setRotateKey( spep_2-3 + 532, 1, -28.8 );
setRotateKey( spep_2-3 + 534, 1, -28.4 );
setRotateKey( spep_2-3 + 536, 1, -27.9 );
setRotateKey( spep_2-3 + 538, 1, -27.5 );

setRotateKey( spep_2-3 + 540, 1, -19.7 );
setRotateKey( spep_2-3 + 567, 1, -19.7 );

setRotateKey( spep_2-3 + 568, 1, -10.9 );
setRotateKey( spep_2-3 + 595, 1, -10.9 );

setRotateKey( spep_2-3 + 596, 1, -10.9 );
setRotateKey( spep_2-3 + 607, 1, -10.9 );

setRotateKey( spep_2-3 + 608, 1, 33.8 );
setRotateKey( spep_2-3 + 610, 1, 33.8 );
setRotateKey( spep_2-1 + 612, 1, 13 );

--敵の動き
setDisp( spep_2-3 + 654, 1, 1 );
setDisp( spep_2-1 + 666, 1, 0 );

changeAnime( spep_2-3 + 654, 1, 106 );

setMoveKey( spep_2-3 + 654, 1, 65.7, 397.4 , 0 );
setMoveKey( spep_2-3 + 660, 1, 65.7, 397.4 , 0 );
setMoveKey( spep_2-3 + 662, 1, 8.9, 362 , 0 );
setMoveKey( spep_2-3 + 664, 1, 48.8, 997.5 , 0 );
setMoveKey( spep_2-1 + 666, 1, 48.8, 994.8 , 0 );

setScaleKey( spep_2-3 + 654, 1, 9.93, 9.93 );
setScaleKey( spep_2-1 + 666, 1, 9.93, 9.93 );

setRotateKey( spep_2-3 + 654, 1, 50 );
setRotateKey( spep_2-3 + 663, 1, 50 );
setRotateKey( spep_2-3 + 664, 1, 60 );
setRotateKey( spep_2-1 + 666, 1, 60 );

--敵の動き
setDisp( spep_2-3 + 674, 1, 1 );
setDisp( spep_2-1 + 784, 1, 0 );

changeAnime( spep_2-3 + 674, 1, 106 );
changeAnime( spep_2-3 + 712, 1, 6 );
changeAnime( spep_2-3 + 724, 1, 105 );

setMoveKey( spep_2-3 + 674, 1, 274.4, 321 , 0 );
setMoveKey( spep_2-3 + 676, 1, 230.5, 314 , 0 );
setMoveKey( spep_2-3 + 678, 1, 186.7, 413 , 0 );
setMoveKey( spep_2-3 + 680, 1, 186.7, 407 , 0 );
setMoveKey( spep_2-3 + 682, 1, 186.7, 407 , 0 );
setMoveKey( spep_2-3 + 684, 1, 179.9, 429 , 0 );
setMoveKey( spep_2-3 + 686, 1, 169.1, 407.4 , 0 );
setMoveKey( spep_2-3 + 688, 1, 170.5, 406 , 0 );
setMoveKey( spep_2-3 + 690, 1, 170.5, 423.6 , 0 );
setMoveKey( spep_2-3 + 692, 1, 169.1, 406 , 0 );
setMoveKey( spep_2-3 + 694, 1, 169.1, 406 , 0 );
setMoveKey( spep_2-3 + 696, 1, 167.8, 404.7 , 0 );
setMoveKey( spep_2-3 + 698, 1, 174.5, 414.1 , 0 );
setMoveKey( spep_2-3 + 700, 1, 169.1, 402 , 0 );
setMoveKey( spep_2-3 + 702, 1, 169.1, 402 , 0 );
setMoveKey( spep_2-3 + 704, 1, 170.5, 412.8 , 0 );
setMoveKey( spep_2-3 + 706, 1, 169.1, 397.9 , 0 );
setMoveKey( spep_2-3 + 708, 1, 170.5, 395.2 , 0 );
setMoveKey( spep_2-3 + 711, 1, 170.5, 397.9 , 0 );

setMoveKey( spep_2-3 + 712, 1, 7.2, 177.2 , 0 );
setMoveKey( spep_2-3 + 714, 1, 6.2, 171.9 , 0 );
setMoveKey( spep_2-3 + 716, 1, 4.5, 161.9 , 0 );
setMoveKey( spep_2-3 + 718, 1, 0.9, 141.7 , 0 );
setMoveKey( spep_2-3 + 720, 1, -6.5, 100.2 , 0 );
setMoveKey( spep_2-3 + 722, 1, -19.2, 27.9 , 0 );
setMoveKey( spep_2-3 + 723, 1, -19.2, 27.9 , 0 );

setMoveKey( spep_2-3 + 724, 1, 18.7, 101.7 , 0 );
setMoveKey( spep_2-3 + 726, 1, 22.2, 287.4 , 0 );
setMoveKey( spep_2-3 + 728, 1, 23.5, 355.5 , 0 );
setMoveKey( spep_2-3 + 730, 1, -2.6, 422.9 , 0 );
setMoveKey( spep_2-3 + 732, 1, -2, 455.7 , 0 );
setMoveKey( spep_2-3 + 734, 1, 18.7, 458.9 , 0 );
setMoveKey( spep_2-3 + 736, 1, 19, 494.9 , 0 );
setMoveKey( spep_2-3 + 738, 1, 13.8, 493.3 , 0 );
setMoveKey( spep_2-3 + 740, 1, 13.8, 496.3 , 0 );
setMoveKey( spep_2-3 + 742, 1, 13.8, 498.4 , 0 );
setMoveKey( spep_2-3 + 743, 1, 13.8, 498.4 , 0 );
setMoveKey( spep_2-3 + 744, 1, 61.4, -128.6 , 0 );
setMoveKey( spep_2-3 + 746, 1, 49.8, -93 , 0 );
setMoveKey( spep_2-3 + 748, 1, 40.2, -62.7 , 0 );
setMoveKey( spep_2-3 + 750, 1, 32, -36.9 , 0 );
setMoveKey( spep_2-3 + 752, 1, 25.1, -15.4 , 0 );
setMoveKey( spep_2-3 + 754, 1, 19.4, 2.5 , 0 );
setMoveKey( spep_2-3 + 756, 1, 19.4, 2.5 , 0 );
setMoveKey( spep_2-3 + 758, 1, 11.1, 28.9 , 0 );
setMoveKey( spep_2-3 + 760, 1, 8.1, 38.3 , 0 );
setMoveKey( spep_2-3 + 762, 1, 5.8, 45.6 , 0 );
setMoveKey( spep_2-3 + 764, 1, 4, 51.2 , 0 );
setMoveKey( spep_2-3 + 766, 1, 2.7, 55.2 , 0 );
setMoveKey( spep_2-3 + 768, 1, 1.7, 58.3 , 0 );
setMoveKey( spep_2-3 + 770, 1, 1.1, 60.3 , 0 );
setMoveKey( spep_2-3 + 772, 1, 0.7, 61.6 , 0 );
setMoveKey( spep_2-3 + 774, 1, 0.4, 62.4 , 0 );
setMoveKey( spep_2-3 + 776, 1, 0.3, 62.9 , 0 );
setMoveKey( spep_2-3 + 778, 1, 0.3, 63 , 0 );
setMoveKey( spep_2-3 + 780, 1, 0.3, 63 , 0 );
setMoveKey( spep_2-3 + 782, 1, 0.2, 63.1 , 0 );
setMoveKey( spep_2-1 + 784, 1, 0.1, 63.2 , 0 );

setScaleKey( spep_2-3 + 674, 1, 3.38, 3.38 );
setScaleKey( spep_2-3 + 711, 1, 3.38, 3.38 );

setScaleKey( spep_2-3 + 712, 1, 3.37, 3.37 );
setScaleKey( spep_2-3 + 723, 1, 3.37, 3.37 );

setScaleKey( spep_2-3 + 724, 1, 5.61,5.61);
setScaleKey( spep_2-3 + 726, 1, 3.36,3.36);
setScaleKey( spep_2-3 + 728, 1, 2.53,2.53);
setScaleKey( spep_2-3 + 730, 1, 1.98,1.98);
setScaleKey( spep_2-3 + 732, 1, 1.56,1.56);
setScaleKey( spep_2-3 + 734, 1, 1.29,1.29);
setScaleKey( spep_2-3 + 736, 1, 1.09,1.09);
setScaleKey( spep_2-3 + 738, 1, 0.99,0.99);
setScaleKey( spep_2-3 + 740, 1, 0.95,0.95);
setScaleKey( spep_2-3 + 742, 1, 0.81,0.81);
setScaleKey( spep_2-3 + 743, 1, 0.81,0.81);

setScaleKey( spep_2-3 + 744, 1, 11.25,11.25);
setScaleKey( spep_2-3 + 746, 1, 9.32,9.32);
setScaleKey( spep_2-3 + 748, 1, 7.67,7.67);
setScaleKey( spep_2-3 + 750, 1, 6.27,6.27);
setScaleKey( spep_2-3 + 752, 1, 5.09,5.09);
setScaleKey( spep_2-3 + 754, 1, 4.13,4.13);
setScaleKey( spep_2-3 + 756, 1, 4.13,4.13);
setScaleKey( spep_2-3 + 758, 1, 2.7,2.7);
setScaleKey( spep_2-3 + 760, 1, 2.18,2.18);
setScaleKey( spep_2-3 + 762, 1, 1.79,1.79);
setScaleKey( spep_2-3 + 764, 1, 1.48,1.48);
setScaleKey( spep_2-3 + 766, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 768, 1, 1.1,1.1);
setScaleKey( spep_2-3 + 770, 1, 0.98,0.98);
setScaleKey( spep_2-3 + 772, 1, 0.91,0.91);
setScaleKey( spep_2-3 + 774, 1, 0.87,0.87);
setScaleKey( spep_2-3 + 776, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 780, 1, 0.84,0.84);
setScaleKey( spep_2-3 + 782, 1, 0.78,0.78);
setScaleKey( spep_2-1 + 784, 1, 0.75,0.75);

setRotateKey( spep_2-3 + 674, 1, 59.3 );
setRotateKey( spep_2-3 + 676, 1, 53 );
setRotateKey( spep_2-3 + 678, 1, 46.8 );
setRotateKey( spep_2-3 + 711, 1, 46.8 );

setRotateKey( spep_2-3 + 712, 1, -2.7 );
setRotateKey( spep_2-3 + 714, 1, -3.5 );
setRotateKey( spep_2-3 + 716, 1, -5 );
setRotateKey( spep_2-3 + 718, 1, -8.1 );
setRotateKey( spep_2-3 + 720, 1, -14.5 );
setRotateKey( spep_2-3 + 723, 1, -25.6 );

setRotateKey( spep_2-3 + 724, 1, -2.7 );
setRotateKey( spep_2-3 + 744, 1, -2.7 );
setRotateKey( spep_2-3 + 746, 1, -1.2 );
setRotateKey( spep_2-3 + 748, 1, 0.1 );
setRotateKey( spep_2-3 + 750, 1, 1.2 );
setRotateKey( spep_2-3 + 752, 1, 2.1 );
setRotateKey( spep_2-3 + 754, 1, 2.8 );
setRotateKey( spep_2-3 + 756, 1, 2.8 );
setRotateKey( spep_2-3 + 758, 1, 4 );
setRotateKey( spep_2-3 + 760, 1, 4.4 );
setRotateKey( spep_2-3 + 762, 1, 4.7 );
setRotateKey( spep_2-3 + 764, 1, 4.9 );
setRotateKey( spep_2-3 + 766, 1, 5.1 );
setRotateKey( spep_2-3 + 768, 1, 5.2 );
setRotateKey( spep_2-3 + 770, 1, 5.3 );
setRotateKey( spep_2-3 + 772, 1, 5.3 );
setRotateKey( spep_2-3 + 774, 1, 5.4 );
setRotateKey( spep_2-1 + 784, 1, 5.4 );

--敵の動き
setDisp( spep_2-3 + 798, 1, 1 );
setDisp( spep_2-1 + 846, 1, 0 );

changeAnime( spep_2-3 + 798, 1, 107 );
changeAnime( spep_2-3 + 836, 1, 106 );

setMoveKey( spep_2-3 + 798, 1, -142.3, 120.9 , 0 );
setMoveKey( spep_2-3 + 800, 1, -88.9, -150 , 0 );
setMoveKey( spep_2-3 + 802, 1, -63, -226.2 , 0 );
setMoveKey( spep_2-3 + 804, 1, -59.6, -243.2 , 0 );
setMoveKey( spep_2-3 + 806, 1, -72.1, -262 , 0 );
setMoveKey( spep_2-3 + 808, 1, -71.4, -265.7 , 0 );
setMoveKey( spep_2-3 + 810, 1, -68.1, -267.1 , 0 );
setMoveKey( spep_2-3 + 812, 1, -77.2, -258.3 , 0 );
setMoveKey( spep_2-3 + 814, 1, -76.9, -259.8 , 0 );
setMoveKey( spep_2-3 + 816, 1, -56.4, -233.9 , 0 );
setMoveKey( spep_2-3 + 818, 1, -56.3, -234.7 , 0 );
setMoveKey( spep_2-3 + 820, 1, -83.1, -247.4 , 0 );
setMoveKey( spep_2-3 + 822, 1, -85.8, -250.6 , 0 );
setMoveKey( spep_2-3 + 824, 1, -85.7, -250.9 , 0 );
setMoveKey( spep_2-3 + 826, 1, -55.9, -235 , 0 );
setMoveKey( spep_2-3 + 828, 1, -55.9, -235.1 , 0 );
setMoveKey( spep_2-3 + 830, 1, -55.9, -235.2 , 0 );
setMoveKey( spep_2-3 + 832, 1, -53.2, -236.6 , 0 );
setMoveKey( spep_2-3 + 835, 1, -55.9, -256.7 , 0 );

setMoveKey( spep_2-3 + 836, 1, 19.1, 501.8 , 0 );
setMoveKey( spep_2-3 + 838, 1, 19.1, 297.8 , 0 );
setMoveKey( spep_2-3 + 840, 1, 19.1, 57.8 , 0 );
setMoveKey( spep_2-3 + 842, 1, 19.1, -162.2 , 0 );
setMoveKey( spep_2-3 + 844, 1, 19.1, -394.2 , 0 );
setMoveKey( spep_2-1 + 846, 1, 19.1, -594.2 , 0 );

setScaleKey( spep_2-3 + 798, 1, 1.43,1.43);
setScaleKey( spep_2-3 + 800, 1, 1.69,1.69);
setScaleKey( spep_2-3 + 802, 1, 1.75,1.75);
setScaleKey( spep_2-3 + 804, 1, 1.78,1.78);
setScaleKey( spep_2-3 + 810, 1, 1.78,1.78);
setScaleKey( spep_2-3 + 812, 1, 1.79,1.79);
setScaleKey( spep_2-3 + 835, 1, 1.79,1.79);

setScaleKey( spep_2-3 + 836, 1, 1.44, 1.44 );
setScaleKey( spep_2-1 + 846, 1, 1.44, 1.44 );

setRotateKey( spep_2-3 + 798, 1, 28.7 );
setRotateKey( spep_2-3 + 800, 1, 37.3 );
setRotateKey( spep_2-3 + 802, 1, 39.3 );
setRotateKey( spep_2-3 + 804, 1, 39.8 );
setRotateKey( spep_2-3 + 806, 1, 40 );
setRotateKey( spep_2-3 + 808, 1, 40.1 );
setRotateKey( spep_2-3 + 810, 1, 40.2 );
setRotateKey( spep_2-3 + 812, 1, 40.3 );
setRotateKey( spep_2-3 + 814, 1, 40.3 );
setRotateKey( spep_2-3 + 816, 1, 40.4 );
setRotateKey( spep_2-3 + 835, 1, 40.4 );

setRotateKey( spep_2-3 + 836, 1, 117.9 );
setRotateKey( spep_2-1 + 846, 1, 117.9 );

--敵の動き
setDisp( spep_2-3 + 850, 1, 1 );
setDisp( spep_2-1 + 878, 1, 0 );

changeAnime( spep_2-3 + 850, 1, 5 );
changeAnime( spep_2-3 + 870, 1, 6 );

setMoveKey( spep_2-3 + 850, 1, 5.4, -6.7 , 0 );
setMoveKey( spep_2-3 + 852, 1, 5.5, -5.7 , 0 );
setMoveKey( spep_2-3 + 854, 1, 5.4, -20.3 , 0 );
setMoveKey( spep_2-3 + 856, 1, 5.5, -31.4 , 0 );
setMoveKey( spep_2-3 + 858, 1, 5.6, -34.8 , 0 );
setMoveKey( spep_2-3 + 860, 1, 7.7, -37.4 , 0 );
setMoveKey( spep_2-3 + 862, 1, 9.8, -38.3 , 0 );
setMoveKey( spep_2-3 + 869, 1, 9.9, -38.2 , 0 );

setMoveKey( spep_2-3 + 870, 1, 0.1, -8.4 , 0 );
setMoveKey( spep_2-3 + 872, 1, 0.1, -50.4 , 0 );
setMoveKey( spep_2-3 + 874, 1, 0.1, -92.4 , 0 );
setMoveKey( spep_2-3 + 876, 1, 0.1, -134.4 , 0 );
setMoveKey( spep_2-1 + 878, 1, 0.1, -176.4 , 0 );

setScaleKey( spep_2-3 + 850, 1, 8.31, 8.31 );
setScaleKey( spep_2-3 + 852, 1, 6.42, 6.42 );
setScaleKey( spep_2-3 + 854, 1, 4.35, 4.35 );
setScaleKey( spep_2-3 + 856, 1, 2.55, 2.55 );
setScaleKey( spep_2-3 + 858, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 860, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 862, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 864, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 866, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 869, 1, 0.15, 0.15 );

setScaleKey( spep_2-3 + 870, 1, 0.37, 0.37 );
setScaleKey( spep_2-1 + 878, 1, 0.37, 0.37 );

setRotateKey( spep_2-3 + 850, 1, 0 );
setRotateKey( spep_2-3 + 869, 1, 0 );

setRotateKey( spep_2-3 + 870, 1, -115 );
setRotateKey( spep_2-1 + 878, 1, -115 );

--SE
--振りかぶる
SE008 = playSeVer2( spep_2 + 42, 1116, "",spep_2 + 76, 0, 10, -1);

--腹パン
SE009 = playSeVer2( spep_2 + 78, 1180, "", 0, 4, 0, -1);
setStartTimeMs( SE009,  500 );
setPitch( spep_2 + 78, SE009, -300 );
setTimeStretch( SE009, 0.8, 30, 4 );
SE010 = playSeVer2( spep_2 + 68, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 141 );
SE011 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE011, 79 );
SE012 = playSeVer2( spep_2 + 74, 1190, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 74, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_2 + 106, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 106, 1278, "",spep_2 + 296, 0, 102, -1);

--悟空飛んでくる
SE016 = playSeVer2( spep_2 + 132, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE016, 136 );
SE017 = playSeVer2( spep_2 + 132, 44, "", 0, 0, 0, -1);

--敵吹き飛ばす
SE018 = playSeVer2( spep_2 + 166, 1022, "",spep_2 + 240, 0, 26, -1);
SE019 = playSeVer2( spep_2 + 170, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 170, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE020, 67 );

--回転する
SE021 = playSeVer2( spep_2 + 218, 1117, "",spep_2 + 240, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 218, SE021, 126 );
SE022 = playSeVer2( spep_2 + 226, 1117, "",spep_2 + 246, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 226, SE022, 126 );
SE023 = playSeVer2( spep_2 + 234, 1117, "",spep_2 + 254, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 234, SE023, 126 );
SE024 = playSeVer2( spep_2 + 240, 1117, "",spep_2 + 264, 0, 6, 0.6);
SE025 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);

--岩を蹴って飛んでいく
SE026 = playSeVer2( spep_2 + 280, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE026, 126 );
SE027 = playSeVer2( spep_2 + 280, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE027, 126 );
SE028 = playSeVer2( spep_2 + 280, 1277, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 280, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE029, 78 );
SE030 = playSeVer2( spep_2 + 322, 1314, "",spep_2 + 380, 0, 6, -1);
SE031 = playSeVer2( spep_2 + 322, 9, "", 0, 0, 0, -1);

--蹴りヒット
SE032 = playSeVer2( spep_2 + 376, 1003, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 382, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 382, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE034, 84 );
SE035 = playSeVer2( spep_2 + 382, 1011, "",spep_2 + 432, 0, 28, -1);

--裏蹴り
SE037 = playSeVer2( spep_2 + 420, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 420, SE037, 141 );
SE038 = playSeVer2( spep_2 + 422, 1120, "", 0, 0, 0, -1);

--敵浮く
SE039 = playSeVer2( spep_2 + 458, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  350 );
SE036 = playSeVer2( spep_2 + 462, 1183, "",spep_2 + 528, 10, 10, -1);
setSeVolumeByWorkId( spep_2 + 462, SE036, 82 );
setStartTimeMs( SE036,  867 );

--回って着地
SE040 = playSeVer2( spep_2 + 462, 1117, "",spep_2 + 476, 0, 8, -1);
SE041 = playSeVer2( spep_2 + 464, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 158 );
SE042 = playSeVer2( spep_2 + 466, 1117, "",spep_2 + 480, 0, 8, -1);
SE043 = playSeVer2( spep_2 + 476, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE043, 180 );

--敵地面激突
SE044 = playSeVer2( spep_2 + 518, 1159, "",spep_2 + 584, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 518, SE044, 56 );
SE045 = playSeVer2( spep_2 + 518, 1033, "", 0, 0, 0, -1);

--瞬間移動
SE046 = playSeVer2( spep_2 + 534, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE047 = playSeVer2( spep_2 + 570, 1004, "", 0, 0, 0, -1);

--エルボー
SE048 = playSeVer2( spep_2 + 606, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 606, SE048, 158 );
SE049 = playSeVer2( spep_2 + 612, 1153, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 612, 1187, "",spep_2 + 626, 0, 6, -1);
SE051 = playSeVer2( spep_2 + 614, 1009, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 616, 1110, "", 0, 0, 0, -1);

--悟空アップ
SE053 = playSeVer2( spep_2 + 632, 9, "",spep_2 + 682, 0, 14, -1);
SE054 = playSeVer2( spep_2 + 622, 1226, "",spep_2 + 682, 0, 14, -1);

--蹴り上げる
SE055 = playSeVer2( spep_2 + 660, 1004, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 672, 1010, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 672, 1011, "",spep_2 + 738, 0, 40, -1);
SE058 = playSeVer2( spep_2 + 674, 1047, "", 0, 0, 0, -1);

--パンチ
SE059 = playSeVer2( spep_2 + 722, 1187, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 724, 1009, "", 0, 0, 0, -1);

--敵飛んでいく
SE061 = playSeVer2( spep_2 + 722, 1183, "",spep_2 + 800, 0, 12, -1);

--瞬間移動
SE062 = playSeVer2( spep_2 + 788, 1109, "", 0, 0, 0, -1);

--肘叩き落とし
SE063 = playSeVer2( spep_2 + 796, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE064 = playSeVer2( spep_2 + 836, 1121, "",spep_2 + 890, 0, 12, -1);

--溶岩落ちる
SE065 = playSeVer2( spep_2 + 878, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 878, SE065, 178 );
setStartTimeMs( SE065,  317 );
SE066 = playSeVer2( spep_2 + 884, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE067 = playSeVer2( spep_2 + 958, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 958, SE067, 91 );
SE068 = playSeVer2( spep_2 + 958, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 958, SE068, 91 );

--終わり
hideKoScreen();
dealDamage(spep_2+880);
endPhase( spep_2 + 980 );
end