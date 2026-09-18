--1021620:亀仙人_魔封波
--sp_effect_a2_00152

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
SP_01=	156810	;--	壺を置く亀仙人
SP_02=	156811	;--	構える亀仙人
SP_03=	156812	;--	発動_両手から渦を出す亀仙人
SP_04=	156813	;--	敵が風に飲み込まれる
SP_05=	156814	;--	敵が風に飲み込まれる
SP_06=	156815	;--	持ち上げた敵を壺へ誘導する
SP_07=	156816	;--	敵が光となって壺に吸い込まれる
SP_08=	156817	;--	光が壺の中へ、蓋をしてフィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 壺を置く亀仙人
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
vase = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, vase, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, vase, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, vase, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, vase, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, vase, 0 );
setEffRotateKey( spep_0 + 76, vase, 0 );
setEffAlphaKey( spep_0 + 0, vase, 255 );
setEffAlphaKey( spep_0 + 74, vase, 255 );
setEffAlphaKey( spep_0 + 75, vase, 255 );
setEffAlphaKey( spep_0 + 76, vase, 0 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269,"",0.6  );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 0.3 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 0.6 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 0.9 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 1.2 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 1.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 1.8 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 2.1 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 2.4 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 2.7 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 3 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 3.3 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 3.6 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 3.9 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 4.2 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 4.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 4.8 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 5.1 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 6 );
setStartTimeMs( SE001,  0 );

--メガネ外す?
SE002 = playSe( spep_0 + 38, 1220 );
setSeVolumeByWorkId( spep_0 + 38, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 39, SE002, 167.5 );
setSeVolumeByWorkId( spep_0 + 40, SE002, 335 );
setStartTimeMs( SE002,  83 );
setBandpassFilter	( spep_0 + 38, SE002, 1500, 24000 );
stopSe( spep_0 + 58, SE002, 2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
-- 構える亀仙人
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_1 + 92, hold, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, hold, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hold, 0 );
setEffRotateKey( spep_1 + 92, hold, 0 );
setEffAlphaKey( spep_1 + 0, hold, 255 );
setEffAlphaKey( spep_1 + 90, hold, 255 );
setEffAlphaKey( spep_1 + 91, hold, 255 );
setEffAlphaKey( spep_1 + 92, hold, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 90, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  90,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  90,  510);

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
--顔カットイン
SE003 = playSe( spep_x +12, 1018 );

--構える
SE004 = playSe( spep_1 + 32, 1233 );
setSeVolumeByWorkId( spep_1 + 32, SE004, 84 );
SE005 = playSe( spep_1 + 38, 1007 );
setSeVolumeByWorkId( spep_1 + 38, SE005, 81 );

--白フェード
entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限Z用に修正(2021/02/02)
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
--環境音
stopSe( spep_2 + 8, SE001, 0 );

--playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発動_両手から渦を出す亀仙人
------------------------------------------------------
-- ** エフェクト等 ** --
activate = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, activate, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, activate, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, activate, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, activate, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, activate, 0 );
setEffRotateKey( spep_3 + 96, activate, 0 );
setEffAlphaKey( spep_3 + 0, activate, 255 );
setEffAlphaKey( spep_3 + 94, activate, 255 );
setEffAlphaKey( spep_3 + 95, activate, 255 );
setEffAlphaKey( spep_3 + 96, activate, 0 );

--SE
--魔封波撃つ
SE007 = playSe( spep_3 + 0, 1258 );
SE008 = playSe( spep_3 + 0, 1166 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 65 );
SE009 = playSe( spep_3 + 4, 1182 );
SE010 = playSe( spep_3 + 4, 1278,"",0.6  );
SE011 = playSe( spep_3 + 6, 1255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;
------------------------------------------------------
-- 敵が風に飲み込まれる
------------------------------------------------------
-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, swallowed_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, swallowed_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, swallowed_f, 0 );
setEffRotateKey( spep_4 + 86, swallowed_f, 0 );
setEffAlphaKey( spep_4 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 84, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 85, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 86, swallowed_f, 0 );

-- ** エフェクト等 ** --
swallowed_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, swallowed_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, swallowed_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, swallowed_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, swallowed_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, swallowed_b, 0 );
setEffRotateKey( spep_4 + 86, swallowed_b, 0 );
setEffAlphaKey( spep_4 + 0, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 84, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 85, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 86, swallowed_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 88, 1, 0 );

setBlendColor(spep_4 + 0, 1, 3, 0.72, 1, 0.48 ,0.6);
setBlendColor(spep_4-1 + 88, 1, 3, 0.72, 1, 0.48 ,0.6);
setBlendColor(spep_4 + 90, 1, 3, 0.72, 1, 0.48 ,0);

changeAnime( spep_4 + 0, 1, 6 );

setMoveKey( spep_4 + 0, 1, 215.1, -52 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 222.3, -39.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 213.7, -52.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 194.1, -40.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 220.4, -36.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, 222, -24.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, 210.6, -32.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 212.4, -30 , 0 );
setMoveKey( spep_4-3 + 16, 1, 217.5, -20.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 216.5, -0.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 207.8, -21.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 196.1, -14.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 214.4, -5.2 , 0 );
setMoveKey( spep_4-3 + 26, 1, 216.2, 17.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, 204.8, -1.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 190.5, -1.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 203.3, 2.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, 202.3, 22.2 , 0 );
setMoveKey( spep_4-3 + 36, 1, 210, 18.2 , 0 );
setMoveKey( spep_4-3 + 38, 1, 193.2, 19.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 200.3, 21.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 196.6, 40.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 198.9, 25.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 181.9, 29.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 205.6, 41.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 204.6, 61.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, 195.9, 45.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, 179, 42.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, 202.6, 57.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, 204.2, 63.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 184.7, 65 , 0 );
setMoveKey( spep_4-3 + 62, 1, 192.5, 61 , 0 );
setMoveKey( spep_4-3 + 64, 1, 191.4, 81 , 0 );
setMoveKey( spep_4-3 + 66, 1, 198.6, 83.2 , 0 );
setMoveKey( spep_4-3 + 68, 1, 181.8, 80.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, 181.3, 68.3 , 0 );
setMoveKey( spep_4-3 + 72, 1, 180.3, 88.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 161.9, 147.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 119.2, 198.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 111.4, 238.7 , 0 );
setMoveKey( spep_4-3 + 80, 1, 63.6, 311 , 0 );
setMoveKey( spep_4-3 + 82, 1, 35.6, 364.2 , 0 );
setMoveKey( spep_4-3 + 84, 1, -9.6, 413.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, -39.6, 453 , 0 );
setMoveKey( spep_4-1 + 88, 1, -82.6, 509.7 , 0 );

setScaleKey( spep_4 + 0, 1,1.11,1.11);
setScaleKey( spep_4-3 + 76, 1,1.11,1.11);
setScaleKey( spep_4-3 + 78, 1,1.18,1.11);
setScaleKey( spep_4-3 + 80, 1,1.32,1.11);
setScaleKey( spep_4-3 + 82, 1,1.32,1.11);
setScaleKey( spep_4-3 + 84, 1,1.4,0.97);
setScaleKey( spep_4-3 + 86, 1,1.53,0.97);
setScaleKey( spep_4-1 + 88, 1,1.82,0.91);

setRotateKey( spep_4 + 0, 1, 51.2 );
--setRotateKey( spep_4-3 + 2, 1, 50.8 );
setRotateKey( spep_4-3 + 4, 1, 50.5 );
setRotateKey( spep_4-3 + 6, 1, 50.1 );
setRotateKey( spep_4-3 + 8, 1, 49.7 );
setRotateKey( spep_4-3 + 10, 1, 49.3 );
setRotateKey( spep_4-3 + 12, 1, 48.9 );
setRotateKey( spep_4-3 + 14, 1, 48.6 );
setRotateKey( spep_4-3 + 16, 1, 48.2 );
setRotateKey( spep_4-3 + 18, 1, 47.8 );
setRotateKey( spep_4-3 + 20, 1, 47.4 );
setRotateKey( spep_4-3 + 22, 1, 47 );
setRotateKey( spep_4-3 + 24, 1, 46.7 );
setRotateKey( spep_4-3 + 26, 1, 46.3 );
setRotateKey( spep_4-3 + 28, 1, 45.9 );
setRotateKey( spep_4-3 + 30, 1, 45.5 );
setRotateKey( spep_4-3 + 32, 1, 45.1 );
setRotateKey( spep_4-3 + 34, 1, 44.8 );
setRotateKey( spep_4-3 + 36, 1, 44.4 );
setRotateKey( spep_4-3 + 38, 1, 44 );
setRotateKey( spep_4-3 + 40, 1, 43.6 );
setRotateKey( spep_4-3 + 42, 1, 43.2 );
setRotateKey( spep_4-3 + 44, 1, 42.9 );
setRotateKey( spep_4-3 + 46, 1, 42.5 );
setRotateKey( spep_4-3 + 48, 1, 42.1 );
setRotateKey( spep_4-3 + 50, 1, 41.7 );
setRotateKey( spep_4-3 + 52, 1, 41.3 );
setRotateKey( spep_4-3 + 54, 1, 41 );
setRotateKey( spep_4-3 + 56, 1, 40.6 );
setRotateKey( spep_4-3 + 58, 1, 40.2 );
setRotateKey( spep_4-3 + 60, 1, 39.8 );
setRotateKey( spep_4-3 + 62, 1, 39.4 );
setRotateKey( spep_4-3 + 64, 1, 39.1 );
setRotateKey( spep_4-3 + 66, 1, 38.7 );
setRotateKey( spep_4-3 + 68, 1, 38.3 );
setRotateKey( spep_4-3 + 70, 1, 37.9 );
setRotateKey( spep_4-3 + 72, 1, 37.5 );
setRotateKey( spep_4-3 + 74, 1, 31.7 );
setRotateKey( spep_4-3 + 76, 1, 25.9 );
setRotateKey( spep_4-3 + 78, 1, 20.1 );
setRotateKey( spep_4-3 + 80, 1, 25.3 );
setRotateKey( spep_4-3 + 82, 1, 13.7 );
setRotateKey( spep_4-3 + 84, 1, 21.4 );
setRotateKey( spep_4-3 + 86, 1, 28.7 );
setRotateKey( spep_4-1 + 88, 1, 24.5 );

--SE
--魔封波撃つ（画面切り替え）
SE012 = playSe( spep_4 + 0, 1175 );
SE013 = playSe( spep_4 + 0, 1161,"",0.6  );

--敵細く飛んでく
SE014 = playSe( spep_4 + 76, 1119 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;
------------------------------------------------------
-- 持ち上げた敵を壺へ誘導する
------------------------------------------------------
-- ** エフェクト等 ** --
Induction = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, Induction, 0, 0, 0 );
setEffMoveKey( spep_5 + 72, Induction, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, Induction, 1.0, 1.0 );
setEffScaleKey( spep_5 + 72, Induction, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, Induction, 0 );
setEffRotateKey( spep_5 + 72, Induction, 0 );
setEffAlphaKey( spep_5 + 0, Induction, 255 );
setEffAlphaKey( spep_5 + 70, Induction, 255 );
setEffAlphaKey( spep_5 + 71, Induction, 255 );
setEffAlphaKey( spep_5 + 72, Induction, 0 );

--SE
--敵細く飛んでく
stopSe( spep_5 + 8, SE014, 30 );

--腕振り下ろす
SE015 = playSe( spep_5 + 60, 1004 );
setSeVolumeByWorkId( spep_5 + 60, SE015, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 72;
------------------------------------------------------
-- 敵が光となって壺に吸い込まれる
------------------------------------------------------
-- ** エフェクト等 ** --
light = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, light, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, light, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, light, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, light, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, light, 0 );
setEffRotateKey( spep_6 + 56, light, 0 );
setEffAlphaKey( spep_6 + 0, light, 255 );
setEffAlphaKey( spep_6 + 54, light, 255 );
setEffAlphaKey( spep_6 + 55, light, 255 );
setEffAlphaKey( spep_6 + 56, light, 0 );

--SE
--魔封波撃つ
stopSe( spep_6 + 48, SE011, 44 );
stopSe( spep_6 + 50, SE012, 44 );


--ツボに吸い込まれる
SE016 = playSe( spep_6 + 0, 1118,"",0.6  );
setTimeStretch( SE016, 1.25, 30, 4 );

--環境音
SE017 = playSe( spep_6 + 34, 1269 );
setSeVolumeByWorkId( spep_6 + 34, SE017, 6 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;
------------------------------------------------------
-- 光が壺の中へ、蓋をしてフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 300, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 300, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 300, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 300, finish, 255 );


--SE
--ツボに吸い込まれる
SE018 = playSe( spep_7 + 0, 1277 );
setSeVolumeByWorkId( spep_7 + 0, SE018, 178 );
stopSe( spep_7 + 48, SE018, 4 );

--スポッ
SE019 = playSe( spep_7 + 46, 1309 );

--ビン着地
SE020 = playSe( spep_7 + 88, 1220 );
setPitch( spep_7 + 88, SE020, -300 )
setTimeStretch( SE020, 0.8, 10, 1 );
stopSe( spep_7 + 94, SE020, 2 );
SE021 = playSe( spep_7 + 120, 1220 );
setSeVolumeByWorkId( spep_7 + 120, SE021, 82 );
setPitch( spep_7 + 120, SE021, -500 );
setTimeStretch( SE021, 0.67, 10, 1 );
stopSe( spep_7 + 126, SE021, 2 );
SE022 = playSe( spep_7 + 134, 1220 );
setSeVolumeByWorkId( spep_7 + 134, SE022, 74 );
setStartTimeMs( SE022,  83 );
setPitch( spep_7 + 134, SE022, 300 );
setTimeStretch( SE022, 1.2, 10, 1 );

--蓋閉める
SE023 = playSe( spep_7 + 202, 1310,"",0.7  );
setSeVolumeByWorkId( spep_7 + 202, SE023, 126 );

--ツボに吸い込まれる
stopSe( spep_7 + 48, SE016, 4 );

--魔封波撃つ（画面切り替え）
stopSe( spep_7 + 48, SE013, 4 );
stopSe( spep_7 + 48, SE008, 4 );
stopSe( spep_7 + 48, SE010, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 124 );
endPhase( spep_7 + 290 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 壺を置く亀仙人
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
vase = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, vase, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, vase, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, vase, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, vase, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, vase, 0 );
setEffRotateKey( spep_0 + 76, vase, 0 );
setEffAlphaKey( spep_0 + 0, vase, 255 );
setEffAlphaKey( spep_0 + 74, vase, 255 );
setEffAlphaKey( spep_0 + 75, vase, 255 );
setEffAlphaKey( spep_0 + 76, vase, 0 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269,"",0.6  );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 0.3 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 0.6 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 0.9 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 1.2 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 1.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 1.8 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 2.1 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 2.4 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 2.7 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 3 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 3.3 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 3.6 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 3.9 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 4.2 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 4.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 4.8 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 5.1 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 6 );
setStartTimeMs( SE001,  0 );

--メガネ外す?
SE002 = playSe( spep_0 + 38, 1220 );
setSeVolumeByWorkId( spep_0 + 38, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 39, SE002, 167.5 );
setSeVolumeByWorkId( spep_0 + 40, SE002, 335 );
setStartTimeMs( SE002,  83 );
setBandpassFilter   ( spep_0 + 38, SE002, 1500, 24000 );
stopSe( spep_0 + 58, SE002, 2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+76;
------------------------------------------------------
-- 構える亀仙人
------------------------------------------------------
-- ** エフェクト等 ** --
hold = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_1 + 92, hold, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hold, -1.0, 1.0 );
setEffScaleKey( spep_1 + 92, hold, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hold, 0 );
setEffRotateKey( spep_1 + 92, hold, 0 );
setEffAlphaKey( spep_1 + 0, hold, 255 );
setEffAlphaKey( spep_1 + 90, hold, 255 );
setEffAlphaKey( spep_1 + 91, hold, 255 );
setEffAlphaKey( spep_1 + 92, hold, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 90, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  90,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  90,  510);

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
--顔カットイン
SE003 = playSe( spep_x +12, 1018 );

--構える
SE004 = playSe( spep_1 + 32, 1233 );
setSeVolumeByWorkId( spep_1 + 32, SE004, 84 );
SE005 = playSe( spep_1 + 38, 1007 );
setSeVolumeByWorkId( spep_1 + 38, SE005, 81 );

--白フェード
entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+92;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限Z用に修正(2021/02/02)
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
--環境音
stopSe( spep_2 + 8, SE001, 0 );

--playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発動_両手から渦を出す亀仙人
------------------------------------------------------
-- ** エフェクト等 ** --
activate = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, activate, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, activate, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, activate, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, activate, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, activate, 0 );
setEffRotateKey( spep_3 + 96, activate, 0 );
setEffAlphaKey( spep_3 + 0, activate, 255 );
setEffAlphaKey( spep_3 + 94, activate, 255 );
setEffAlphaKey( spep_3 + 95, activate, 255 );
setEffAlphaKey( spep_3 + 96, activate, 0 );

--SE
--魔封波撃つ
SE007 = playSe( spep_3 + 0, 1258 );
SE008 = playSe( spep_3 + 0, 1166 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 65 );
SE009 = playSe( spep_3 + 4, 1182 );
SE010 = playSe( spep_3 + 4, 1278,"",0.6  );
SE011 = playSe( spep_3 + 6, 1255 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;
------------------------------------------------------
-- 敵が風に飲み込まれる
------------------------------------------------------
-- ** エフェクト等 ** --
swallowed_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, swallowed_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, swallowed_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, swallowed_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, swallowed_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, swallowed_f, 0 );
setEffRotateKey( spep_4 + 86, swallowed_f, 0 );
setEffAlphaKey( spep_4 + 0, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 84, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 85, swallowed_f, 255 );
setEffAlphaKey( spep_4 + 86, swallowed_f, 0 );

-- ** エフェクト等 ** --
swallowed_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, swallowed_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, swallowed_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, swallowed_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, swallowed_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, swallowed_b, 0 );
setEffRotateKey( spep_4 + 86, swallowed_b, 0 );
setEffAlphaKey( spep_4 + 0, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 84, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 85, swallowed_b, 255 );
setEffAlphaKey( spep_4 + 86, swallowed_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 88, 1, 0 );

setBlendColor(spep_4 + 0, 1, 3, 0.72, 1, 0.48 ,0.6);
setBlendColor(spep_4-1 + 88, 1, 3, 0.72, 1, 0.48 ,0.6);
setBlendColor(spep_4 + 90, 1, 3, 0.72, 1, 0.48 ,0);

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -215.1, -52 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -222.3, -39.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, -213.7, -52.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, -194.1, -40.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, -220.4, -36.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -222, -24.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, -210.6, -32.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -212.4, -30 , 0 );
setMoveKey( spep_4-3 + 16, 1, -217.5, -20.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, -216.5, -0.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -207.8, -21.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, -196.1, -14.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, -214.4, -5.2 , 0 );
setMoveKey( spep_4-3 + 26, 1, -216.2, 17.5 , 0 );
setMoveKey( spep_4-3 + 28, 1, -204.8, -1.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, -190.5, -1.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, -203.3, 2.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, -202.3, 22.2 , 0 );
setMoveKey( spep_4-3 + 36, 1, -210, 18.2 , 0 );
setMoveKey( spep_4-3 + 38, 1, -193.2, 19.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -200.3, 21.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, -196.6, 40.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, -198.9, 25.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, -181.9, 29.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, -205.6, 41.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, -204.6, 61.6 , 0 );
setMoveKey( spep_4-3 + 52, 1, -195.9, 45.3 , 0 );
setMoveKey( spep_4-3 + 54, 1, -179, 42.7 , 0 );
setMoveKey( spep_4-3 + 56, 1, -202.6, 57.2 , 0 );
setMoveKey( spep_4-3 + 58, 1, -204.2, 63.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, -184.7, 65 , 0 );
setMoveKey( spep_4-3 + 62, 1, -192.5, 61 , 0 );
setMoveKey( spep_4-3 + 64, 1, -191.4, 81 , 0 );
setMoveKey( spep_4-3 + 66, 1, -198.6, 83.2 , 0 );
setMoveKey( spep_4-3 + 68, 1, -81.8, 80.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, -181.3, 68.3 , 0 );
setMoveKey( spep_4-3 + 72, 1, -180.3, 88.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, -161.9, 147.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, -119.2, 198.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, -111.4, 238.7 , 0 );
setMoveKey( spep_4-3 + 80, 1, -63.6, 311 , 0 );
setMoveKey( spep_4-3 + 82, 1, -35.6, 364.2 , 0 );
setMoveKey( spep_4-3 + 84, 1, 9.6, 413.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, 39.6, 453 , 0 );
setMoveKey( spep_4-1 + 88, 1, 82.6, 509.7 , 0 );

setScaleKey( spep_4 + 0, 1,1.11,1.11);
setScaleKey( spep_4-3 + 76, 1,1.11,1.11);
setScaleKey( spep_4-3 + 78, 1,1.18,1.11);
setScaleKey( spep_4-3 + 80, 1,1.32,1.11);
setScaleKey( spep_4-3 + 82, 1,1.32,1.11);
setScaleKey( spep_4-3 + 84, 1,1.4,0.97);
setScaleKey( spep_4-3 + 86, 1,1.53,0.97);
setScaleKey( spep_4-1 + 88, 1,1.82,0.91);

setRotateKey( spep_4 + 0, 1, -51.2 );
--setRotateKey( spep_4-3 + 2, 1, 50.8 );
setRotateKey( spep_4-3 + 4, 1, -50.5 );
setRotateKey( spep_4-3 + 6, 1, -50.1 );
setRotateKey( spep_4-3 + 8, 1, -49.7 );
setRotateKey( spep_4-3 + 10, 1, -49.3 );
setRotateKey( spep_4-3 + 12, 1, -48.9 );
setRotateKey( spep_4-3 + 14, 1, -48.6 );
setRotateKey( spep_4-3 + 16, 1, -48.2 );
setRotateKey( spep_4-3 + 18, 1, -47.8 );
setRotateKey( spep_4-3 + 20, 1, -47.4 );
setRotateKey( spep_4-3 + 22, 1, -47 );
setRotateKey( spep_4-3 + 24, 1, -46.7 );
setRotateKey( spep_4-3 + 26, 1, -46.3 );
setRotateKey( spep_4-3 + 28, 1, -45.9 );
setRotateKey( spep_4-3 + 30, 1, -45.5 );
setRotateKey( spep_4-3 + 32, 1, -45.1 );
setRotateKey( spep_4-3 + 34, 1, -44.8 );
setRotateKey( spep_4-3 + 36, 1, -44.4 );
setRotateKey( spep_4-3 + 38, 1, -44 );
setRotateKey( spep_4-3 + 40, 1, -43.6 );
setRotateKey( spep_4-3 + 42, 1, -43.2 );
setRotateKey( spep_4-3 + 44, 1, -42.9 );
setRotateKey( spep_4-3 + 46, 1, -42.5 );
setRotateKey( spep_4-3 + 48, 1, -42.1 );
setRotateKey( spep_4-3 + 50, 1, -41.7 );
setRotateKey( spep_4-3 + 52, 1, -41.3 );
setRotateKey( spep_4-3 + 54, 1, -41 );
setRotateKey( spep_4-3 + 56, 1, -40.6 );
setRotateKey( spep_4-3 + 58, 1, -40.2 );
setRotateKey( spep_4-3 + 60, 1, -39.8 );
setRotateKey( spep_4-3 + 62, 1, -39.4 );
setRotateKey( spep_4-3 + 64, 1, -39.1 );
setRotateKey( spep_4-3 + 66, 1, -38.7 );
setRotateKey( spep_4-3 + 68, 1, -38.3 );
setRotateKey( spep_4-3 + 70, 1, -37.9 );
setRotateKey( spep_4-3 + 72, 1, -37.5 );
setRotateKey( spep_4-3 + 74, 1, -31.7 );
setRotateKey( spep_4-3 + 76, 1, -25.9 );
setRotateKey( spep_4-3 + 78, 1, -20.1 );
setRotateKey( spep_4-3 + 80, 1, -25.3 );
setRotateKey( spep_4-3 + 82, 1, -13.7 );
setRotateKey( spep_4-3 + 84, 1, -21.4 );
setRotateKey( spep_4-3 + 86, 1, -28.7 );
setRotateKey( spep_4-1 + 88, 1, -24.5 );

--SE
--魔封波撃つ（画面切り替え）
SE012 = playSe( spep_4 + 0, 1175 );
SE013 = playSe( spep_4 + 0, 1161,"",0.6  );

--敵細く飛んでく
SE014 = playSe( spep_4 + 76, 1119 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;
------------------------------------------------------
-- 持ち上げた敵を壺へ誘導する
------------------------------------------------------
-- ** エフェクト等 ** --
Induction = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, Induction, 0, 0, 0 );
setEffMoveKey( spep_5 + 72, Induction, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, Induction, -1.0, 1.0 );
setEffScaleKey( spep_5 + 72, Induction, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, Induction, 0 );
setEffRotateKey( spep_5 + 72, Induction, 0 );
setEffAlphaKey( spep_5 + 0, Induction, 255 );
setEffAlphaKey( spep_5 + 70, Induction, 255 );
setEffAlphaKey( spep_5 + 71, Induction, 255 );
setEffAlphaKey( spep_5 + 72, Induction, 0 );

--SE
--敵細く飛んでく
stopSe( spep_5 + 8, SE014, 30 );

--腕振り下ろす
SE015 = playSe( spep_5 + 60, 1004 );
setSeVolumeByWorkId( spep_5 + 60, SE015, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 72;
------------------------------------------------------
-- 敵が光となって壺に吸い込まれる
------------------------------------------------------
-- ** エフェクト等 ** --
light = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, light, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, light, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, light, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, light, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, light, 0 );
setEffRotateKey( spep_6 + 56, light, 0 );
setEffAlphaKey( spep_6 + 0, light, 255 );
setEffAlphaKey( spep_6 + 54, light, 255 );
setEffAlphaKey( spep_6 + 55, light, 255 );
setEffAlphaKey( spep_6 + 56, light, 0 );

--SE
--魔封波撃つ
stopSe( spep_6 + 48, SE011, 44 );
stopSe( spep_6 + 50, SE012, 44 );


--ツボに吸い込まれる
SE016 = playSe( spep_6 + 0, 1118,"",0.6  );
setTimeStretch( SE016, 1.25, 30, 4 );

--環境音
SE017 = playSe( spep_6 + 34, 1269 );
setSeVolumeByWorkId( spep_6 + 34, SE017, 6 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;
------------------------------------------------------
-- 光が壺の中へ、蓋をしてフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 300, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 300, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 300, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 300, finish, 255 );


--SE
--ツボに吸い込まれる
SE018 = playSe( spep_7 + 0, 1277 );
setSeVolumeByWorkId( spep_7 + 0, SE018, 178 );
stopSe( spep_7 + 48, SE018, 4 );

--スポッ
SE019 = playSe( spep_7 + 46, 1309 );

--ビン着地
SE020 = playSe( spep_7 + 88, 1220 );
setPitch( spep_7 + 88, SE020, -300 )
setTimeStretch( SE020, 0.8, 10, 1 );
stopSe( spep_7 + 94, SE020, 2 );
SE021 = playSe( spep_7 + 120, 1220 );
setSeVolumeByWorkId( spep_7 + 120, SE021, 82 );
setPitch( spep_7 + 120, SE021, -500 );
setTimeStretch( SE021, 0.67, 10, 1 );
stopSe( spep_7 + 126, SE021, 2 );
SE022 = playSe( spep_7 + 134, 1220 );
setSeVolumeByWorkId( spep_7 + 134, SE022, 74 );
setStartTimeMs( SE022,  83 );
setPitch( spep_7 + 134, SE022, 300 );
setTimeStretch( SE022, 1.2, 10, 1 );

--蓋閉める
SE023 = playSe( spep_7 + 202, 1310,"",0.7  );
setSeVolumeByWorkId( spep_7 + 202, SE023, 126 );

--ツボに吸い込まれる
stopSe( spep_7 + 48, SE016, 4 );

--魔封波撃つ（画面切り替え）
stopSe( spep_7 + 48, SE013, 4 );
stopSe( spep_7 + 48, SE008, 4 );
stopSe( spep_7 + 48, SE010, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 124 );
endPhase( spep_7 + 290 );
end