--1020060:アンニン_天尊乱舞
--sp_effect_b2_00038
--sp2144

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
SP_01=	156524	;--	敵と対置
SP_02=	156525	;--	敵と対置
SP_03=	156526	;--	乱打
SP_04=	156527	;--	構え
SP_05=	156528	;--	突きフィニッシュ
SP_06=	156529	;--	突きフィニッシュ

--エフェクト(てき)
SP_01x=	156530	;--	敵と対置
SP_02x=	156531	;--	敵と対置

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.7);


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
--[[
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 敵と対置
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opposition_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opposition_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, opposition_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opposition_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, opposition_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opposition_b, 0 );
setEffRotateKey( spep_0 + 180, opposition_b, 0 );
setEffAlphaKey( spep_0 + 0, opposition_b, 255 );
setEffAlphaKey( spep_0 + 180, opposition_b, 255 );

-- ** エフェクト等 ** --
opposition_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opposition_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, opposition_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opposition_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, opposition_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opposition_f, 0 );
setEffRotateKey( spep_0 + 180, opposition_f, 0 );
setEffAlphaKey( spep_0 + 0, opposition_f, 255 );
setEffAlphaKey( spep_0 + 180, opposition_f, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 70, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

c=25;

setMoveKey( spep_0 + 0, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 1, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 2, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 3, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 4, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 5, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 6, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 8, 1, 177.3, -188+c , 0 );
setMoveKey( spep_0 + 10, 1, 177.4, -188.1+c , 0 );
setMoveKey( spep_0 + 12, 1, 177.6, -188.2+c , 0 );
setMoveKey( spep_0 + 14, 1, 178, -188.3+c , 0 );
setMoveKey( spep_0 + 16, 1, 178.6, -188.6+c , 0 );
setMoveKey( spep_0 + 18, 1, 179.4, -188.9+c , 0 );
setMoveKey( spep_0 + 20, 1, 180.5, -189.4+c , 0 );
setMoveKey( spep_0 + 22, 1, 182.1, -190.1+c , 0 );
setMoveKey( spep_0 + 24, 1, 184.1, -191+c , 0 );
setMoveKey( spep_0 + 26, 1, 186.7, -192.1+c , 0 );
setMoveKey( spep_0 + 28, 1, 190, -193.6+c , 0 );
setMoveKey( spep_0 + 30, 1, 194.1, -195.4+c , 0 );
setMoveKey( spep_0 + 32, 1, 199, -197.6+c , 0 );
setMoveKey( spep_0 + 34, 1, 205, -200.1+c , 0 );
setMoveKey( spep_0 + 36, 1, 212.1, -203.3+c , 0 );
setMoveKey( spep_0 + 38, 1, 220.5, -207+c , 0 );
setMoveKey( spep_0 + 40, 1, 230.4, -211.3+c , 0 );
setMoveKey( spep_0 + 42, 1, 241.9, -216.3+c , 0 );
setMoveKey( spep_0 + 44, 1, 255.1, -222.2+c , 0 );
setMoveKey( spep_0 + 46, 1, 270.3, -228.8+c , 0 );
setMoveKey( spep_0 + 48, 1, 287.6, -236.4+c , 0 );
setMoveKey( spep_0 + 50, 1, 309.2, -245.9+c , 0 );
setMoveKey( spep_0 + 52, 1, 335, -257.2+c , 0 );
setMoveKey( spep_0 + 54, 1, 368.1, -271.7+c , 0 );
setMoveKey( spep_0 + 56, 1, 405.1, -287.9+c , 0 );
setMoveKey( spep_0 + 58, 1, 446.2, -306+c , 0 );
setMoveKey( spep_0 + 60, 1, 491.8, -326+c , 0 );
setMoveKey( spep_0 + 62, 1, 542.4, -348.2+c , 0 );
setMoveKey( spep_0 + 64, 1, 598.2, -372.7+c , 0 );
setMoveKey( spep_0 + 66, 1, 659.6, -399.6+c , 0 );
setMoveKey( spep_0 + 68, 1, 727.3, -429.3+c , 0 );
setMoveKey( spep_0 + 70, 1, 764, -445.4+c , 0 );

b=0.3;

setScaleKey( spep_0 + 0, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 1, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 2, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 3, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 4, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 5, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 6, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 14, 1, 1.8+b,1.8+b);
--setScaleKey( spep_0 + 24, 1, 1.8,1.8);
--setScaleKey( spep_0 + 26, 1, 1.86,1.86);
setScaleKey( spep_0 + 28, 1, 1.86+b,1.86+b);
setScaleKey( spep_0 + 30, 1, 1.89+b,1.89+b);
setScaleKey( spep_0 + 32, 1, 1.9+b,1.9+b);
setScaleKey( spep_0 + 34, 1, 1.92+b,1.92+b);
setScaleKey( spep_0 + 36, 1, 1.95+b,1.95+b);
setScaleKey( spep_0 + 38, 1, 1.98+b,1.98+b);
setScaleKey( spep_0 + 40, 1, 2.04+b,2.04+b);
setScaleKey( spep_0 + 42, 1, 2.1+b,2.1+b);
setScaleKey( spep_0 + 44, 1, 2.13+b,2.13+b);
setScaleKey( spep_0 + 46, 1, 2.22+b,2.22+b);
setScaleKey( spep_0 + 48, 1, 2.28+b,2.28+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 52, 1, 2.49+b,2.49+b);
setScaleKey( spep_0 + 54, 1, 2.64+b,2.64+b);
setScaleKey( spep_0 + 56, 1, 2.79+b,2.79+b);
setScaleKey( spep_0 + 58, 1, 3.17+b,2.97+b);
setScaleKey( spep_0 + 60, 1, 3.18+b,3.18+b);
setScaleKey( spep_0 + 62, 1, 3.42+b,3.42+b);
setScaleKey( spep_0 + 64, 1, 3.69+b,3.69+b);
setScaleKey( spep_0 + 66, 1, 3.96+b,3.96+b);
setScaleKey( spep_0 + 68, 1, 4.26+b,4.26+b);
setScaleKey( spep_0 + 70, 1, 4.44+b,4.44+b);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 70, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 16, 1072 );
SE002 = playSe( spep_0 + 36, 8 );
setSeVolumeByWorkId( spep_0 + 36, SE002, 53 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 72; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--顔カットインのタイミング指定
spep_x=spep_0 +60;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, -90, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -90,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -90,  515);

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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);


--SE
--顔カットイン
SE003 = playSe( spep_x +12, 1018 );

--薙刀出現
SE004 = playSe( spep_0 + 86, 1151 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 141 );
SE005 = playSe( spep_0 + 88, 1002 );
stopSe( spep_0 + 102, SE005, 28 );
SE006 = playSe( spep_0 + 88, 1152 );
stopSe( spep_0 + 108, SE006, 24 );

--薙刀つかむ
SE007 = playSe( spep_0 + 108, 1006 );
setSeVolumeByWorkId( spep_0 + 108, SE007, 75 );

--白フェード
entryFade( spep_0 + 170, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+180;
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
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 0, SE011, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 乱打
------------------------------------------------------
-- ** エフェクト等 ** --
random = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, random, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, random, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, random, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, random, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, random, 0 );
setEffRotateKey( spep_2 + 86, random, 0 );
setEffAlphaKey( spep_2 + 0, random, 255 );
setEffAlphaKey( spep_2 + 84, random, 255 );
setEffAlphaKey( spep_2 + 85, random, 255 );
setEffAlphaKey( spep_2 + 86, random, 0 );

--SE
--突き１
SE009 = playSe( spep_2 + 0, 1151 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 71 );
stopSe( spep_2 + 8, SE009, 4 );
SE010 = playSe( spep_2 + 0, 1031 );
setSeVolumeByWorkId( spep_2 + 0, SE010, 56 );
SE011 = playSe( spep_2 + 4, 1142 );
setSeVolumeByWorkId( spep_2 + 4, SE011, 70 );
stopSe( spep_2 + 14, SE011, 10 );

--突き２
SE012 = playSe( spep_2 + 10, 1151 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 78 );
stopSe( spep_2 + 18, SE012, 4 );
SE013 = playSe( spep_2 + 10, 1031 );
setSeVolumeByWorkId( spep_2 + 10, SE013, 68 );
SE014 = playSe( spep_2 + 14, 1142 );
setSeVolumeByWorkId( spep_2 + 14, SE014, 64 );
stopSe( spep_2 + 24, SE014, 6 );

--突き３
SE015 = playSe( spep_2 + 20, 1151 );
setSeVolumeByWorkId( spep_2 + 20, SE015, 68 );
stopSe( spep_2 + 28, SE015, 4 );
SE016 = playSe( spep_2 + 24, 1142 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 61 );
stopSe( spep_2 + 34, SE016, 8 );
SE017 = playSe( spep_2 + 24, 1031 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 58 );

--突き４
SE018 = playSe( spep_2 + 30, 1151 );
setSeVolumeByWorkId( spep_2 + 30, SE018, 67 );
stopSe( spep_2 + 38, SE018, 4 );
SE019 = playSe( spep_2 + 30, 1031 );
setSeVolumeByWorkId( spep_2 + 30, SE019, 69 );
SE020 = playSe( spep_2 + 34, 1142 );
setSeVolumeByWorkId( spep_2 + 34, SE020, 69 );
stopSe( spep_2 + 44, SE020, 10 );

--突き５
SE021 = playSe( spep_2 + 36, 1151 );
setSeVolumeByWorkId( spep_2 + 36, SE021, 70 );
stopSe( spep_2 + 44, SE021, 4 );
SE022 = playSe( spep_2 + 36, 1031 );
setSeVolumeByWorkId( spep_2 + 36, SE022, 61 );
SE023 = playSe( spep_2 + 40, 1142 );
setSeVolumeByWorkId( spep_2 + 40, SE023, 64 );
stopSe( spep_2 + 50, SE023, 10 );

--突き６
SE024 = playSe( spep_2 + 42, 1151 );
setSeVolumeByWorkId( spep_2 + 42, SE024, 61 );
stopSe( spep_2 + 50, SE024, 4 );
SE025 = playSe( spep_2 + 42, 1031 );
setSeVolumeByWorkId( spep_2 + 42, SE025, 60 );
SE026 = playSe( spep_2 + 46, 1142 );
setSeVolumeByWorkId( spep_2 + 46, SE026, 51 );
stopSe( spep_2 + 56, SE026, 10 );

--突き７
SE027 = playSe( spep_2 + 52, 1151 );
setSeVolumeByWorkId( spep_2 + 52, SE027, 69 );
stopSe( spep_2 + 69, SE027, 4 );
SE028 = playSe( spep_2 + 52, 1031 );
setSeVolumeByWorkId( spep_2 + 52, SE028, 66 );
SE029 = playSe( spep_2 + 56, 1142 );
setSeVolumeByWorkId( spep_2 + 56, SE029, 61 );
stopSe( spep_2 + 66, SE029, 10 );

--突き８
SE030 = playSe( spep_2 + 58, 1151 );
setSeVolumeByWorkId( spep_2 + 58, SE030, 68 );
stopSe( spep_2 + 66, SE030, 4 );
SE031 = playSe( spep_2 + 58, 1031 );
setSeVolumeByWorkId( spep_2 + 58, SE031, 54 );
SE032 = playSe( spep_2 + 62, 1142 );
setSeVolumeByWorkId( spep_2 + 62, SE032, 57 );
stopSe( spep_2 + 72, SE032, 8 );

--突き９
SE033 = playSe( spep_2 + 64, 1151 );
setSeVolumeByWorkId( spep_2 + 64, SE033, 65 );
stopSe( spep_2 + 72, SE033, 4 );
SE034 = playSe( spep_2 + 64, 1031 );
setSeVolumeByWorkId( spep_2 + 64, SE034, 54 );
SE035 = playSe( spep_2 + 68, 1142 );
setSeVolumeByWorkId( spep_2 + 68, SE035, 57 );
stopSe( spep_2 + 78, SE035, 10 );

--画面遷移
SE036 = playSe( spep_2 + 76, 1116 );
setSeVolumeByWorkId( spep_2 + 76, SE036, 61 );
stopSe( spep_2 + 98, SE036, 22 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;
------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_3 + 146, ready, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, ready, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ready, 0 );
setEffRotateKey( spep_3 + 146, ready, 0 );
setEffAlphaKey( spep_3 + 0, ready, 255 );
setEffAlphaKey( spep_3 + 144, ready, 255 );
setEffAlphaKey( spep_3 + 145, ready, 255 );
setEffAlphaKey( spep_3 + 146, ready, 0 );

--SE
--薙刀回転
SE037 = playSe( spep_3 + 20, 1151 );
setSeVolumeByWorkId( spep_3 + 20, SE037, 151 );
setPitch( spep_3 + 20, SE037, -800 );
setTimeStretch( SE037, 0.47, 10, 1 );
SE038 = playSe( spep_3 + 20, 4 );
SE039 = playSe( spep_3 + 20, 1117 );
stopSe( spep_3 + 34, SE039, 12 );
SE040 = playSe( spep_3 + 24, 1151 );
setSeVolumeByWorkId( spep_3 + 24, SE040, 160 );
setPitch( spep_3 + 24, SE040, -800 );
setTimeStretch( SE040, 0.47, 10, 1 );
SE041 = playSe( spep_3 + 26, 4 );
SE042 = playSe( spep_3 + 28, 1151 );
setSeVolumeByWorkId( spep_3 + 28, SE042, 160 );
setPitch( spep_3 + 28, SE042, -800 );
setTimeStretch( SE042, 0.47, 10, 1 );
SE043 = playSe( spep_3 + 32, 1151 );
setSeVolumeByWorkId( spep_3 + 32, SE043, 166 );
setPitch( spep_3 + 32, SE043, -800 );
setTimeStretch( SE043, 0.47, 10, 1 );

--薙刀キャッチ
SE044 = playSe( spep_3 + 56, 1233 );
setSeVolumeByWorkId( spep_3 + 56, SE044, 0 );
setSeVolumeByWorkId( spep_3 + 57, SE044, 50 );
setSeVolumeByWorkId( spep_3 + 58, SE044, 100 );
setStartTimeMs( SE044,  133 );
SE045 = playSe( spep_3 + 60, 1013 );
setSeVolumeByWorkId( spep_3 + 60, SE045, 73 );
stopSe( spep_3 + 68, SE045, 6 );

--腕引く
SE046 = playSe( spep_3 + 98, 1004 );
setPitch( spep_3 + 98, SE046, -400 );
setTimeStretch( SE046, 0.73, 10, 1 );

--突進
SE047 = playSe( spep_3 + 122, 9 );
setSeVolumeByWorkId( spep_3 + 122, SE047, 74 );
SE048 = playSe( spep_3 + 122, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 144;
------------------------------------------------------
-- 突きフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 90, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 90, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 90, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 90, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 90, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 90, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 20, 1, 106 );
changeAnime( spep_4-3 + 28, 1, 105 );

setMoveKey( spep_4 + 0, 1, 22, -184.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 29.7, -169.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 37.3, -154.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 44.9, -138.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 52.6, -123.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 60.2, -108.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 67.8, -92.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 75.4, -77.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 83.1, -62.2 , 0 );
setMoveKey( spep_4-3 + 19, 1, 90.6, -46.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 124.9, -39.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 117.5, -36.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 143.4, -24.1 , 0 );
setMoveKey( spep_4-3 + 27, 1, 135.4, -21.2 , 0 );
setMoveKey( spep_4-3 + 28, 1, 142.5, -24.8 , 0 );
--setMoveKey( spep_4-3 + 30, 1, 137.3, -25.3 , 0 );
--setMoveKey( spep_4-3 + 32, 1, 132, -25.7 , 0 );
--setMoveKey( spep_4-3 + 34, 1, 126.7, -26 , 0 );
--setMoveKey( spep_4-3 + 36, 1, 121.4, -26.3 , 0 );
--setMoveKey( spep_4-3 + 38, 1, 116, -26.7 , 0 );
--setMoveKey( spep_4-3 + 40, 1, 110.6, -26.9 , 0 );
--setMoveKey( spep_4-3 + 42, 1, 110.3, -27.1 , 0 );
--setMoveKey( spep_4-3 + 44, 1, 110, -27.3 , 0 );
--setMoveKey( spep_4-3 + 46, 1, 109.6, -27.6 , 0 );
--setMoveKey( spep_4-3 + 48, 1, 109.3, -27.9 , 0 );
--setMoveKey( spep_4-3 + 50, 1, 109.1, -28.3 , 0 );
--setMoveKey( spep_4-3 + 52, 1, 108.8, -28.6 , 0 );
--setMoveKey( spep_4-3 + 54, 1, 108.6, -29 , 0 );
--setMoveKey( spep_4-3 + 56, 1, 108.5, -29.4 , 0 );
--setMoveKey( spep_4-3 + 58, 1, 108.3, -29.9 , 0 );
--setMoveKey( spep_4-3 + 60, 1, 108.2, -30.3 , 0 );
--setMoveKey( spep_4-3 + 62, 1, 108, -30.8 , 0 );
--setMoveKey( spep_4-3 + 64, 1, 107.9, -31.4 , 0 );
--setMoveKey( spep_4-3 + 66, 1, 107.9, -32 , 0 );
--setMoveKey( spep_4-3 + 68, 1, 107.8, -32.5 , 0 );
--setMoveKey( spep_4-3 + 70, 1, 107.7, -33.1 , 0 );
--setMoveKey( spep_4-3 + 72, 1, 107.8, -33.8 , 0 );
--setMoveKey( spep_4-3 + 74, 1, 107.8, -34.5 , 0 );
--setMoveKey( spep_4-3 + 76, 1, 107.9, -35.2 , 0 );
--setMoveKey( spep_4-3 + 78, 1, 108, -36 , 0 );
--setMoveKey( spep_4-3 + 80, 1, 108.1, -36.7 , 0 );
--setMoveKey( spep_4-3 + 82, 1, 108.2, -37.6 , 0 );
--setMoveKey( spep_4-3 + 84, 1, 108.4, -38.4 , 0 );
--setMoveKey( spep_4-3 + 86, 1, 108.6, -39.3 , 0 );
setMoveKey( spep_4 + 100, 1, 108.8, -40.3 , 0 );

a=0.5;

setScaleKey( spep_4 + 0, 1, 2.61+a,2.61+a);
--setScaleKey( spep_4 +2, 1, 2.45,2.45);
setScaleKey( spep_4-3 + 4, 1, 2.32+a,2.32+a);
setScaleKey( spep_4-3 + 6, 1, 2.16+a,2.16+a);
setScaleKey( spep_4-3 + 8, 1, 2.02+a,2.02+a);
setScaleKey( spep_4-3 + 10, 1, 1.89+a,1.89+a);
setScaleKey( spep_4-3 + 12, 1, 1.72+a,1.72+a);
setScaleKey( spep_4-3 + 14, 1, 1.59+a,1.59+a);
setScaleKey( spep_4-3 + 16, 1, 1.43+a,1.43+a);
setScaleKey( spep_4-3 + 19, 1, 1.29+a,1.29+a);
setScaleKey( spep_4-3 + 20, 1, 1.13+a,1.13+a);
setScaleKey( spep_4-3 + 22, 1, 1.16+a,1.16+a);
setScaleKey( spep_4-3 + 24, 1, 0.86+a,0.86+a);
setScaleKey( spep_4-3 + 27, 1, 0.37+a,0.37+a);
setScaleKey( spep_4-3 + 28, 1, 0.32+0.3,0.32+0.3);
--setScaleKey( spep_4-3 + 42, 1, 0.32+a,0.32+a);
--setScaleKey( spep_4-3 + 44, 1, 0.29+a,0.29+a);
--setScaleKey( spep_4-3 + 46, 1, 0.29+a,0.29+a);
--setScaleKey( spep_4-3 + 48, 1, 0.27,0.27);
--setScaleKey( spep_4-3 + 50, 1, 0.27,0.27);
--setScaleKey( spep_4-3 + 52, 1, 0.24,0.24);
--setScaleKey( spep_4-3 + 54, 1, 0.24,0.24);
--setScaleKey( spep_4-3 + 56, 1, 0.21,0.21);
--setScaleKey( spep_4-3 + 60, 1, 0.21,0.21);
--setScaleKey( spep_4-3 + 62, 1, 0.18,0.18);
--setScaleKey( spep_4-3 + 66, 1, 0.18,0.18);
--setScaleKey( spep_4-3 + 68, 1, 0.16,0.16);
--setScaleKey( spep_4-3 + 78, 1, 0.16,0.16);
setScaleKey( spep_4 + 98, 1, 0.13,0.13);
setScaleKey( spep_4 + 100, 1, 0.13,0.13);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 19, 1, 0 );
setRotateKey( spep_4-3 + 20, 1, -54.5 );
setRotateKey( spep_4-3 + 21, 1, -54.5 );
setRotateKey( spep_4-3 + 22, 1, -51 );
setRotateKey( spep_4-3 + 23, 1, -51 );
setRotateKey( spep_4-3 + 24, 1, -47.6 );
setRotateKey( spep_4-3 + 25, 1, -47.6 );
setRotateKey( spep_4-3 + 26, 1, -25.7 );
setRotateKey( spep_4-3 + 27, 1, -25.7 );
setRotateKey( spep_4-3 + 28, 1, 19.3 );
--setRotateKey( spep_4-3 + 30, 1, 21.2 );
--setRotateKey( spep_4-3 + 32, 1, 23 );
--setRotateKey( spep_4-3 + 34, 1, 24.8 );
--setRotateKey( spep_4-3 + 36, 1, 26.5 );
--setRotateKey( spep_4-3 + 38, 1, 28.1 );
--setRotateKey( spep_4-3 + 40, 1, 29.7 );
--setRotateKey( spep_4-3 + 42, 1, 31.2 );
--setRotateKey( spep_4-3 + 44, 1, 32.7 );
--setRotateKey( spep_4-3 + 46, 1, 34.1 );
--setRotateKey( spep_4-3 + 48, 1, 35.4 );
--setRotateKey( spep_4-3 + 50, 1, 36.7 );
--setRotateKey( spep_4-3 + 52, 1, 37.8 );
--setRotateKey( spep_4-3 + 54, 1, 39 );
--setRotateKey( spep_4-3 + 56, 1, 40 );
--setRotateKey( spep_4-3 + 58, 1, 41 );
--setRotateKey( spep_4-3 + 60, 1, 42 );
--setRotateKey( spep_4-3 + 62, 1, 42.8 );
--setRotateKey( spep_4-3 + 64, 1, 43.6 );
--setRotateKey( spep_4-3 + 66, 1, 44.4 );
--setRotateKey( spep_4-3 + 68, 1, 45.1 );
--setRotateKey( spep_4-3 + 70, 1, 45.7 );
--setRotateKey( spep_4-3 + 72, 1, 46.2 );
--setRotateKey( spep_4-3 + 74, 1, 46.7 );
--setRotateKey( spep_4-3 + 76, 1, 47.1 );
--setRotateKey( spep_4-3 + 78, 1, 47.5 );
--setRotateKey( spep_4-3 + 80, 1, 47.8 );
--setRotateKey( spep_4-3 + 82, 1, 48 );
--setRotateKey( spep_4-3 + 84, 1, 48.2 );
--setRotateKey( spep_4-3 + 86, 1, 48.3 );
setRotateKey( spep_4 + 100, 1, 48.3 );

--SE
--突進
stopSe( spep_4 + 28, SE047, 12 );
stopSe( spep_4 + 28, SE048, 12 );

--ラスト突き
SE049 = playSe( spep_4 + 20, 1009,"",1.0);
SE050 = playSe( spep_4 + 22, 1032,"",1.0);
SE051 = playSe( spep_4 + 24, 1110,"",1.0);
setSeVolumeByWorkId( spep_4 + 24, SE051, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage( spep_4 +18 );
endPhase( spep_4 + 100 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 敵と対置
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opposition_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opposition_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, opposition_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opposition_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, opposition_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opposition_b, 0 );
setEffRotateKey( spep_0 + 180, opposition_b, 0 );
setEffAlphaKey( spep_0 + 0, opposition_b, 255 );
setEffAlphaKey( spep_0 + 180, opposition_b, 255 );

-- ** エフェクト等 ** --
opposition_f = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opposition_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 180, opposition_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opposition_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, opposition_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opposition_f, 0 );
setEffRotateKey( spep_0 + 180, opposition_f, 0 );
setEffAlphaKey( spep_0 + 0, opposition_f, 255 );
setEffAlphaKey( spep_0 + 180, opposition_f, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 70, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

c=25;

setMoveKey( spep_0 + 0, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 1, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 2, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 3, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 4, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 5, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 6, 1, 177.2, -188+c , 0 );
setMoveKey( spep_0 + 8, 1, 177.3, -188+c , 0 );
setMoveKey( spep_0 + 10, 1, 177.4, -188.1+c , 0 );
setMoveKey( spep_0 + 12, 1, 177.6, -188.2+c , 0 );
setMoveKey( spep_0 + 14, 1, 178, -188.3+c , 0 );
setMoveKey( spep_0 + 16, 1, 178.6, -188.6+c , 0 );
setMoveKey( spep_0 + 18, 1, 179.4, -188.9+c , 0 );
setMoveKey( spep_0 + 20, 1, 180.5, -189.4+c , 0 );
setMoveKey( spep_0 + 22, 1, 182.1, -190.1+c , 0 );
setMoveKey( spep_0 + 24, 1, 184.1, -191+c , 0 );
setMoveKey( spep_0 + 26, 1, 186.7, -192.1+c , 0 );
setMoveKey( spep_0 + 28, 1, 190, -193.6+c , 0 );
setMoveKey( spep_0 + 30, 1, 194.1, -195.4+c , 0 );
setMoveKey( spep_0 + 32, 1, 199, -197.6+c , 0 );
setMoveKey( spep_0 + 34, 1, 205, -200.1+c , 0 );
setMoveKey( spep_0 + 36, 1, 212.1, -203.3+c , 0 );
setMoveKey( spep_0 + 38, 1, 220.5, -207+c , 0 );
setMoveKey( spep_0 + 40, 1, 230.4, -211.3+c , 0 );
setMoveKey( spep_0 + 42, 1, 241.9, -216.3+c , 0 );
setMoveKey( spep_0 + 44, 1, 255.1, -222.2+c , 0 );
setMoveKey( spep_0 + 46, 1, 270.3, -228.8+c , 0 );
setMoveKey( spep_0 + 48, 1, 287.6, -236.4+c , 0 );
setMoveKey( spep_0 + 50, 1, 309.2, -245.9+c , 0 );
setMoveKey( spep_0 + 52, 1, 335, -257.2+c , 0 );
setMoveKey( spep_0 + 54, 1, 368.1, -271.7+c , 0 );
setMoveKey( spep_0 + 56, 1, 405.1, -287.9+c , 0 );
setMoveKey( spep_0 + 58, 1, 446.2, -306+c , 0 );
setMoveKey( spep_0 + 60, 1, 491.8, -326+c , 0 );
setMoveKey( spep_0 + 62, 1, 542.4, -348.2+c , 0 );
setMoveKey( spep_0 + 64, 1, 598.2, -372.7+c , 0 );
setMoveKey( spep_0 + 66, 1, 659.6, -399.6+c , 0 );
setMoveKey( spep_0 + 68, 1, 727.3, -429.3+c , 0 );
setMoveKey( spep_0 + 70, 1, 764, -445.4+c , 0 );

b=0.3;

setScaleKey( spep_0 + 0, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 1, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 2, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 3, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 4, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 5, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 6, 1, 1.8+b,1.8+b);
setScaleKey( spep_0 + 14, 1, 1.8+b,1.8+b);
--setScaleKey( spep_0 + 24, 1, 1.8,1.8);
--setScaleKey( spep_0 + 26, 1, 1.86,1.86);
setScaleKey( spep_0 + 28, 1, 1.86+b,1.86+b);
setScaleKey( spep_0 + 30, 1, 1.89+b,1.89+b);
setScaleKey( spep_0 + 32, 1, 1.9+b,1.9+b);
setScaleKey( spep_0 + 34, 1, 1.92+b,1.92+b);
setScaleKey( spep_0 + 36, 1, 1.95+b,1.95+b);
setScaleKey( spep_0 + 38, 1, 1.98+b,1.98+b);
setScaleKey( spep_0 + 40, 1, 2.04+b,2.04+b);
setScaleKey( spep_0 + 42, 1, 2.1+b,2.1+b);
setScaleKey( spep_0 + 44, 1, 2.13+b,2.13+b);
setScaleKey( spep_0 + 46, 1, 2.22+b,2.22+b);
setScaleKey( spep_0 + 48, 1, 2.28+b,2.28+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 50, 1, 2.37+b,2.37+b);
setScaleKey( spep_0 + 52, 1, 2.49+b,2.49+b);
setScaleKey( spep_0 + 54, 1, 2.64+b,2.64+b);
setScaleKey( spep_0 + 56, 1, 2.79+b,2.79+b);
setScaleKey( spep_0 + 58, 1, 3.17+b,2.97+b);
setScaleKey( spep_0 + 60, 1, 3.18+b,3.18+b);
setScaleKey( spep_0 + 62, 1, 3.42+b,3.42+b);
setScaleKey( spep_0 + 64, 1, 3.69+b,3.69+b);
setScaleKey( spep_0 + 66, 1, 3.96+b,3.96+b);
setScaleKey( spep_0 + 68, 1, 4.26+b,4.26+b);
setScaleKey( spep_0 + 70, 1, 4.44+b,4.44+b);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 70, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 16, 1072 );
SE002 = playSe( spep_0 + 36, 8 );
setSeVolumeByWorkId( spep_0 + 36, SE002, 53 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 72; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--顔カットインのタイミング指定
spep_x=spep_0 +60;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, -90, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -90,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -90,  515);

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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);


--SE
--顔カットイン
--SE003 = playSe( spep_x +12, 1018 );

--薙刀出現
SE004 = playSe( spep_0 + 86, 1151 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 141 );
SE005 = playSe( spep_0 + 88, 1002 );
stopSe( spep_0 + 102, SE005, 28 );
SE006 = playSe( spep_0 + 88, 1152 );
stopSe( spep_0 + 108, SE006, 24 );

--薙刀つかむ
SE007 = playSe( spep_0 + 108, 1006 );
setSeVolumeByWorkId( spep_0 + 108, SE007, 75 );

--白フェード
entryFade( spep_0 + 170, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+180;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 0, SE011, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 乱打
------------------------------------------------------
-- ** エフェクト等 ** --
random = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, random, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, random, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, random, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, random, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, random, 0 );
setEffRotateKey( spep_2 + 86, random, 0 );
setEffAlphaKey( spep_2 + 0, random, 255 );
setEffAlphaKey( spep_2 + 84, random, 255 );
setEffAlphaKey( spep_2 + 85, random, 255 );
setEffAlphaKey( spep_2 + 86, random, 0 );

--SE
--突き１
SE009 = playSe( spep_2 + 0, 1151 );
setSeVolumeByWorkId( spep_2 + 0, SE009, 71 );
stopSe( spep_2 + 8, SE009, 4 );
SE010 = playSe( spep_2 + 0, 1031 );
setSeVolumeByWorkId( spep_2 + 0, SE010, 56 );
SE011 = playSe( spep_2 + 4, 1142 );
setSeVolumeByWorkId( spep_2 + 4, SE011, 70 );
stopSe( spep_2 + 14, SE011, 10 );

--突き２
SE012 = playSe( spep_2 + 10, 1151 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 78 );
stopSe( spep_2 + 18, SE012, 4 );
SE013 = playSe( spep_2 + 10, 1031 );
setSeVolumeByWorkId( spep_2 + 10, SE013, 68 );
SE014 = playSe( spep_2 + 14, 1142 );
setSeVolumeByWorkId( spep_2 + 14, SE014, 64 );
stopSe( spep_2 + 24, SE014, 6 );

--突き３
SE015 = playSe( spep_2 + 20, 1151 );
setSeVolumeByWorkId( spep_2 + 20, SE015, 68 );
stopSe( spep_2 + 28, SE015, 4 );
SE016 = playSe( spep_2 + 24, 1142 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 61 );
stopSe( spep_2 + 34, SE016, 8 );
SE017 = playSe( spep_2 + 24, 1031 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 58 );

--突き４
SE018 = playSe( spep_2 + 30, 1151 );
setSeVolumeByWorkId( spep_2 + 30, SE018, 67 );
stopSe( spep_2 + 38, SE018, 4 );
SE019 = playSe( spep_2 + 30, 1031 );
setSeVolumeByWorkId( spep_2 + 30, SE019, 69 );
SE020 = playSe( spep_2 + 34, 1142 );
setSeVolumeByWorkId( spep_2 + 34, SE020, 69 );
stopSe( spep_2 + 44, SE020, 10 );

--突き５
SE021 = playSe( spep_2 + 36, 1151 );
setSeVolumeByWorkId( spep_2 + 36, SE021, 70 );
stopSe( spep_2 + 44, SE021, 4 );
SE022 = playSe( spep_2 + 36, 1031 );
setSeVolumeByWorkId( spep_2 + 36, SE022, 61 );
SE023 = playSe( spep_2 + 40, 1142 );
setSeVolumeByWorkId( spep_2 + 40, SE023, 64 );
stopSe( spep_2 + 50, SE023, 10 );

--突き６
SE024 = playSe( spep_2 + 42, 1151 );
setSeVolumeByWorkId( spep_2 + 42, SE024, 61 );
stopSe( spep_2 + 50, SE024, 4 );
SE025 = playSe( spep_2 + 42, 1031 );
setSeVolumeByWorkId( spep_2 + 42, SE025, 60 );
SE026 = playSe( spep_2 + 46, 1142 );
setSeVolumeByWorkId( spep_2 + 46, SE026, 51 );
stopSe( spep_2 + 56, SE026, 10 );

--突き７
SE027 = playSe( spep_2 + 52, 1151 );
setSeVolumeByWorkId( spep_2 + 52, SE027, 69 );
stopSe( spep_2 + 69, SE027, 4 );
SE028 = playSe( spep_2 + 52, 1031 );
setSeVolumeByWorkId( spep_2 + 52, SE028, 66 );
SE029 = playSe( spep_2 + 56, 1142 );
setSeVolumeByWorkId( spep_2 + 56, SE029, 61 );
stopSe( spep_2 + 66, SE029, 10 );

--突き８
SE030 = playSe( spep_2 + 58, 1151 );
setSeVolumeByWorkId( spep_2 + 58, SE030, 68 );
stopSe( spep_2 + 66, SE030, 4 );
SE031 = playSe( spep_2 + 58, 1031 );
setSeVolumeByWorkId( spep_2 + 58, SE031, 54 );
SE032 = playSe( spep_2 + 62, 1142 );
setSeVolumeByWorkId( spep_2 + 62, SE032, 57 );
stopSe( spep_2 + 72, SE032, 8 );

--突き９
SE033 = playSe( spep_2 + 64, 1151 );
setSeVolumeByWorkId( spep_2 + 64, SE033, 65 );
stopSe( spep_2 + 72, SE033, 4 );
SE034 = playSe( spep_2 + 64, 1031 );
setSeVolumeByWorkId( spep_2 + 64, SE034, 54 );
SE035 = playSe( spep_2 + 68, 1142 );
setSeVolumeByWorkId( spep_2 + 68, SE035, 57 );
stopSe( spep_2 + 78, SE035, 10 );

--画面遷移
SE036 = playSe( spep_2 + 76, 1116 );
setSeVolumeByWorkId( spep_2 + 76, SE036, 61 );
stopSe( spep_2 + 98, SE036, 22 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;
------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_3 + 146, ready, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, ready, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ready, 0 );
setEffRotateKey( spep_3 + 146, ready, 0 );
setEffAlphaKey( spep_3 + 0, ready, 255 );
setEffAlphaKey( spep_3 + 144, ready, 255 );
setEffAlphaKey( spep_3 + 145, ready, 255 );
setEffAlphaKey( spep_3 + 146, ready, 0 );

--SE
--薙刀回転
SE037 = playSe( spep_3 + 20, 1151 );
setSeVolumeByWorkId( spep_3 + 20, SE037, 151 );
setPitch( spep_3 + 20, SE037, -800 );
setTimeStretch( SE037, 0.47, 10, 1 );
SE038 = playSe( spep_3 + 20, 4 );
SE039 = playSe( spep_3 + 20, 1117 );
stopSe( spep_3 + 34, SE039, 12 );
SE040 = playSe( spep_3 + 24, 1151 );
setSeVolumeByWorkId( spep_3 + 24, SE040, 160 );
setPitch( spep_3 + 24, SE040, -800 );
setTimeStretch( SE040, 0.47, 10, 1 );
SE041 = playSe( spep_3 + 26, 4 );
SE042 = playSe( spep_3 + 28, 1151 );
setSeVolumeByWorkId( spep_3 + 28, SE042, 160 );
setPitch( spep_3 + 28, SE042, -800 );
setTimeStretch( SE042, 0.47, 10, 1 );
SE043 = playSe( spep_3 + 32, 1151 );
setSeVolumeByWorkId( spep_3 + 32, SE043, 166 );
setPitch( spep_3 + 32, SE043, -800 );
setTimeStretch( SE043, 0.47, 10, 1 );

--薙刀キャッチ
SE044 = playSe( spep_3 + 56, 1233 );
setSeVolumeByWorkId( spep_3 + 56, SE044, 0 );
setSeVolumeByWorkId( spep_3 + 57, SE044, 50 );
setSeVolumeByWorkId( spep_3 + 58, SE044, 100 );
setStartTimeMs( SE044,  133 );
SE045 = playSe( spep_3 + 60, 1013 );
setSeVolumeByWorkId( spep_3 + 60, SE045, 73 );
stopSe( spep_3 + 68, SE045, 6 );

--腕引く
SE046 = playSe( spep_3 + 98, 1004 );
setPitch( spep_3 + 98, SE046, -400 );
setTimeStretch( SE046, 0.73, 10, 1 );

--突進
SE047 = playSe( spep_3 + 122, 9 );
setSeVolumeByWorkId( spep_3 + 122, SE047, 74 );
SE048 = playSe( spep_3 + 122, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 144;
------------------------------------------------------
-- 突きフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 90, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 90, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 90, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 90, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 90, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 90, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 90, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 20, 1, 106 );
changeAnime( spep_4-3 + 28, 1, 105 );

setMoveKey( spep_4 + 0, 1, 22, -184.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 29.7, -169.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 37.3, -154.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 44.9, -138.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 52.6, -123.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 60.2, -108.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 67.8, -92.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 75.4, -77.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 83.1, -62.2 , 0 );
setMoveKey( spep_4-3 + 19, 1, 90.6, -46.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 124.9, -39.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 117.5, -36.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 143.4, -24.1 , 0 );
setMoveKey( spep_4-3 + 27, 1, 135.4, -21.2 , 0 );
setMoveKey( spep_4-3 + 28, 1, 142.5, -24.8 , 0 );
--setMoveKey( spep_4-3 + 30, 1, 137.3, -25.3 , 0 );
--setMoveKey( spep_4-3 + 32, 1, 132, -25.7 , 0 );
--setMoveKey( spep_4-3 + 34, 1, 126.7, -26 , 0 );
--setMoveKey( spep_4-3 + 36, 1, 121.4, -26.3 , 0 );
--setMoveKey( spep_4-3 + 38, 1, 116, -26.7 , 0 );
--setMoveKey( spep_4-3 + 40, 1, 110.6, -26.9 , 0 );
--setMoveKey( spep_4-3 + 42, 1, 110.3, -27.1 , 0 );
--setMoveKey( spep_4-3 + 44, 1, 110, -27.3 , 0 );
--setMoveKey( spep_4-3 + 46, 1, 109.6, -27.6 , 0 );
--setMoveKey( spep_4-3 + 48, 1, 109.3, -27.9 , 0 );
--setMoveKey( spep_4-3 + 50, 1, 109.1, -28.3 , 0 );
--setMoveKey( spep_4-3 + 52, 1, 108.8, -28.6 , 0 );
--setMoveKey( spep_4-3 + 54, 1, 108.6, -29 , 0 );
--setMoveKey( spep_4-3 + 56, 1, 108.5, -29.4 , 0 );
--setMoveKey( spep_4-3 + 58, 1, 108.3, -29.9 , 0 );
--setMoveKey( spep_4-3 + 60, 1, 108.2, -30.3 , 0 );
--setMoveKey( spep_4-3 + 62, 1, 108, -30.8 , 0 );
--setMoveKey( spep_4-3 + 64, 1, 107.9, -31.4 , 0 );
--setMoveKey( spep_4-3 + 66, 1, 107.9, -32 , 0 );
--setMoveKey( spep_4-3 + 68, 1, 107.8, -32.5 , 0 );
--setMoveKey( spep_4-3 + 70, 1, 107.7, -33.1 , 0 );
--setMoveKey( spep_4-3 + 72, 1, 107.8, -33.8 , 0 );
--setMoveKey( spep_4-3 + 74, 1, 107.8, -34.5 , 0 );
--setMoveKey( spep_4-3 + 76, 1, 107.9, -35.2 , 0 );
--setMoveKey( spep_4-3 + 78, 1, 108, -36 , 0 );
--setMoveKey( spep_4-3 + 80, 1, 108.1, -36.7 , 0 );
--setMoveKey( spep_4-3 + 82, 1, 108.2, -37.6 , 0 );
--setMoveKey( spep_4-3 + 84, 1, 108.4, -38.4 , 0 );
--setMoveKey( spep_4-3 + 86, 1, 108.6, -39.3 , 0 );
setMoveKey( spep_4 + 100, 1, 108.8, -40.3 , 0 );

a=0.5;

setScaleKey( spep_4 + 0, 1, 2.61+a,2.61+a);
--setScaleKey( spep_4 +2, 1, 2.45,2.45);
setScaleKey( spep_4-3 + 4, 1, 2.32+a,2.32+a);
setScaleKey( spep_4-3 + 6, 1, 2.16+a,2.16+a);
setScaleKey( spep_4-3 + 8, 1, 2.02+a,2.02+a);
setScaleKey( spep_4-3 + 10, 1, 1.89+a,1.89+a);
setScaleKey( spep_4-3 + 12, 1, 1.72+a,1.72+a);
setScaleKey( spep_4-3 + 14, 1, 1.59+a,1.59+a);
setScaleKey( spep_4-3 + 16, 1, 1.43+a,1.43+a);
setScaleKey( spep_4-3 + 19, 1, 1.29+a,1.29+a);
setScaleKey( spep_4-3 + 20, 1, 1.13+a,1.13+a);
setScaleKey( spep_4-3 + 22, 1, 1.16+a,1.16+a);
setScaleKey( spep_4-3 + 24, 1, 0.86+a,0.86+a);
setScaleKey( spep_4-3 + 27, 1, 0.37+a,0.37+a);
setScaleKey( spep_4-3 + 28, 1, 0.32+0.3,0.32+0.3);
--setScaleKey( spep_4-3 + 42, 1, 0.32+a,0.32+a);
--setScaleKey( spep_4-3 + 44, 1, 0.29+a,0.29+a);
--setScaleKey( spep_4-3 + 46, 1, 0.29+a,0.29+a);
--setScaleKey( spep_4-3 + 48, 1, 0.27,0.27);
--setScaleKey( spep_4-3 + 50, 1, 0.27,0.27);
--setScaleKey( spep_4-3 + 52, 1, 0.24,0.24);
--setScaleKey( spep_4-3 + 54, 1, 0.24,0.24);
--setScaleKey( spep_4-3 + 56, 1, 0.21,0.21);
--setScaleKey( spep_4-3 + 60, 1, 0.21,0.21);
--setScaleKey( spep_4-3 + 62, 1, 0.18,0.18);
--setScaleKey( spep_4-3 + 66, 1, 0.18,0.18);
--setScaleKey( spep_4-3 + 68, 1, 0.16,0.16);
--setScaleKey( spep_4-3 + 78, 1, 0.16,0.16);
setScaleKey( spep_4 + 98, 1, 0.13,0.13);
setScaleKey( spep_4 + 100, 1, 0.13,0.13);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 19, 1, 0 );
setRotateKey( spep_4-3 + 20, 1, -54.5 );
setRotateKey( spep_4-3 + 21, 1, -54.5 );
setRotateKey( spep_4-3 + 22, 1, -51 );
setRotateKey( spep_4-3 + 23, 1, -51 );
setRotateKey( spep_4-3 + 24, 1, -47.6 );
setRotateKey( spep_4-3 + 25, 1, -47.6 );
setRotateKey( spep_4-3 + 26, 1, -25.7 );
setRotateKey( spep_4-3 + 27, 1, -25.7 );
setRotateKey( spep_4-3 + 28, 1, 19.3 );
--setRotateKey( spep_4-3 + 30, 1, 21.2 );
--setRotateKey( spep_4-3 + 32, 1, 23 );
--setRotateKey( spep_4-3 + 34, 1, 24.8 );
--setRotateKey( spep_4-3 + 36, 1, 26.5 );
--setRotateKey( spep_4-3 + 38, 1, 28.1 );
--setRotateKey( spep_4-3 + 40, 1, 29.7 );
--setRotateKey( spep_4-3 + 42, 1, 31.2 );
--setRotateKey( spep_4-3 + 44, 1, 32.7 );
--setRotateKey( spep_4-3 + 46, 1, 34.1 );
--setRotateKey( spep_4-3 + 48, 1, 35.4 );
--setRotateKey( spep_4-3 + 50, 1, 36.7 );
--setRotateKey( spep_4-3 + 52, 1, 37.8 );
--setRotateKey( spep_4-3 + 54, 1, 39 );
--setRotateKey( spep_4-3 + 56, 1, 40 );
--setRotateKey( spep_4-3 + 58, 1, 41 );
--setRotateKey( spep_4-3 + 60, 1, 42 );
--setRotateKey( spep_4-3 + 62, 1, 42.8 );
--setRotateKey( spep_4-3 + 64, 1, 43.6 );
--setRotateKey( spep_4-3 + 66, 1, 44.4 );
--setRotateKey( spep_4-3 + 68, 1, 45.1 );
--setRotateKey( spep_4-3 + 70, 1, 45.7 );
--setRotateKey( spep_4-3 + 72, 1, 46.2 );
--setRotateKey( spep_4-3 + 74, 1, 46.7 );
--setRotateKey( spep_4-3 + 76, 1, 47.1 );
--setRotateKey( spep_4-3 + 78, 1, 47.5 );
--setRotateKey( spep_4-3 + 80, 1, 47.8 );
--setRotateKey( spep_4-3 + 82, 1, 48 );
--setRotateKey( spep_4-3 + 84, 1, 48.2 );
--setRotateKey( spep_4-3 + 86, 1, 48.3 );
setRotateKey( spep_4 + 100, 1, 48.3 );

--SE
--突進
stopSe( spep_4 + 28, SE047, 12 );
stopSe( spep_4 + 28, SE048, 12 );

--ラスト突き
SE049 = playSe( spep_4 + 20, 1009,"",1.0);
SE050 = playSe( spep_4 + 22, 1032,"",1.0);
SE051 = playSe( spep_4 + 24, 1110,"",1.0);
setSeVolumeByWorkId( spep_4 + 24, SE051, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage( spep_4 +18 );
endPhase( spep_4 + 100 );
end
