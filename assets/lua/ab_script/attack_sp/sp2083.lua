--4020920:魔神ドミグラ(最終形態)_ボイリングバーグ
--sp_effect_a7_00041
--sp2083

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
SP_01=	156214	;--	うでくみ
SP_02=	156215	;--	技発動
SP_03=	156216	;--	技発動　背景
SP_04=	156217	;--	バク転
SP_05=	156218	;--	フィニッシュ
SP_06=	156219	;--	フィニッシュ　背景
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- うでくみ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 124, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 124, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 124, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 56,  906, 66, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 56, shuchusen1, 66, 20 );
setEffMoveKey( spep_0-3 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 122, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 56, shuchusen1, 2.01, 2.01 );
setEffScaleKey( spep_0-3 + 122, shuchusen1, 2.01, 2.01 );

setEffRotateKey( spep_0-3 + 56, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 122, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 56, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 122, shuchusen1, 255 );

--白フェード
entryFade( spep_0 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 124, 0,  0, 0, 0, 160 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 34; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

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
-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+26  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+26  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +38, 190006, 72, 0x100, -1, 0, 0, 400, 1110);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +38,  ctgogo,  0,  400);
setEffMoveKey(  spep_0 +110,  ctgogo,  0,  400);

setEffAlphaKey( spep_0 +38, ctgogo, 0 );
setEffAlphaKey( spep_0 + 39, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 255 );

setEffRotateKey(  spep_0 +38,  ctgogo,  0);
setEffRotateKey(  spep_0 +110,  ctgogo,  0);

setEffScaleKey(  spep_0 +38,  ctgogo,  1.07,  1.07);
setEffScaleKey(  spep_0 +110,  ctgogo, 1.07, 1.07);

--SE
--腕クロスして溜める
SE001 = playSe( spep_0 + 22, 1003 );
setSeVolumeByWorkId( spep_0 + 22, SE001, 130 );
SE002 = playSe( spep_0 + 24, 1189 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 132 );
SE003 = playSe( spep_0 + 26, 1026 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 86 );
SE004 = playSe( spep_0 + 28, 1044 );
setSeVolumeByWorkId( spep_0 + 28, SE004, 43 );

--顔カットイン
SE005 = playSe( spep_0 + 38, 1018 );

--白フェード
entryFade( spep_0+116 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+124;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--腕クロスして溜める
stopSe( spep_1 + 2, SE004, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
activate_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, activate_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, activate_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, activate_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, activate_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, activate_f, 0 );
setEffRotateKey( spep_2 + 116, activate_f, 0 );
setEffAlphaKey( spep_2 + 0, activate_f, 255 );
setEffAlphaKey( spep_2 + 116, activate_f, 255 );

-- ** エフェクト等 ** --
activate_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, activate_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, activate_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, activate_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, activate_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, activate_b, 0 );
setEffRotateKey( spep_2 + 116, activate_b, 0 );
setEffAlphaKey( spep_2 + 0, activate_b, 255 );
setEffAlphaKey( spep_2 + 116, activate_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 64,  906, 50+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 64, shuchusen2, 50+3, 20 );
setEffMoveKey( spep_2-3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 114, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 64, shuchusen2, 2.08, 2.08 );
setEffScaleKey( spep_2 + 114, shuchusen2, 2.08, 2.08 );

setEffRotateKey( spep_2-3 + 64, shuchusen2, 180 );
setEffRotateKey( spep_2 + 114, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 64, shuchusen2, 26 );
setEffAlphaKey( spep_2-3 + 66, shuchusen2, 37 );
setEffAlphaKey( spep_2-3 + 68, shuchusen2, 48 );
setEffAlphaKey( spep_2-3 + 70, shuchusen2, 60 );
setEffAlphaKey( spep_2-3 + 72, shuchusen2, 71 );
setEffAlphaKey( spep_2-3 + 74, shuchusen2, 83 );
setEffAlphaKey( spep_2-3 + 76, shuchusen2, 94 );
setEffAlphaKey( spep_2-3 + 78, shuchusen2, 106 );
setEffAlphaKey( spep_2-3 + 80, shuchusen2, 117 );
setEffAlphaKey( spep_2-3 + 82, shuchusen2, 129 );
setEffAlphaKey( spep_2-3 + 84, shuchusen2, 140 );
setEffAlphaKey( spep_2-3 + 86, shuchusen2, 152 );
setEffAlphaKey( spep_2-3 + 88, shuchusen2, 163 );
setEffAlphaKey( spep_2-3 + 90, shuchusen2, 175 );
setEffAlphaKey( spep_2-3 + 92, shuchusen2, 186 );
setEffAlphaKey( spep_2-3 + 94, shuchusen2, 198 );
setEffAlphaKey( spep_2-3 + 96, shuchusen2, 209 );
setEffAlphaKey( spep_2-3 + 98, shuchusen2, 221 );
setEffAlphaKey( spep_2-3 + 100, shuchusen2, 232 );
setEffAlphaKey( spep_2-3 + 102, shuchusen2, 244 );
setEffAlphaKey( spep_2-3 + 104, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 114, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 60, 1, 106 );

setMoveKey( spep_2 + 0, 1, 89.9, -77.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 90, -77.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 90.1, -77.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 90.3, -77.4 , 0 );
setMoveKey( spep_2-3 + 8, 1, 90.5, -77.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 90.6, -77.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 90.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 91, -76.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 91.1, -76.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 91.3, -76.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 91.5, -76.2 , 0 );
setMoveKey( spep_2-3 + 22, 1, 91.6, -76.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, 91.8, -75.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.8, -79.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 89.8, -82.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 85.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 88.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 85.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 86.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 89.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 88.8, -81.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 84.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 83.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 85.8, -75.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 87.8, -73.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 86.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 89.8, -86.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, 77.8, -81.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 84.8, -68.9 , 0 );
setMoveKey( spep_2-3 + 59, 1, 99.8, -73.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 80, -76 , 0 );
setMoveKey( spep_2-3 + 62, 1, 66, -78 , 0 );
setMoveKey( spep_2-3 + 64, 1, 56, -74 , 0 );
setMoveKey( spep_2-3 + 66, 1, 57, -61 , 0 );
setMoveKey( spep_2-3 + 68, 1, 70, -50 , 0 );
setMoveKey( spep_2-3 + 70, 1, 77, -56 , 0 );
setMoveKey( spep_2-3 + 72, 1, 75, -59 , 0 );
setMoveKey( spep_2-3 + 74, 1, 72, -64 , 0 );
setMoveKey( spep_2-3 + 76, 1, 69, -66 , 0 );
setMoveKey( spep_2-3 + 78, 1, 67, -63 , 0 );
setMoveKey( spep_2-3 + 80, 1, 68, -67 , 0 );
setMoveKey( spep_2-3 + 82, 1, 67, -62 , 0 );
setMoveKey( spep_2-3 + 84, 1, 70, -60 , 0 );
setMoveKey( spep_2-3 + 86, 1, 70, -65 , 0 );
setMoveKey( spep_2-3 + 88, 1, 67, -67 , 0 );
setMoveKey( spep_2-3 + 90, 1, 66, -69 , 0 );
setMoveKey( spep_2-3 + 92, 1, 70, -67 , 0 );
setMoveKey( spep_2-3 + 94, 1, 72, -64 , 0 );
setMoveKey( spep_2-3 + 96, 1, 73, -66 , 0 );
setMoveKey( spep_2-3 + 98, 1, 69, -68 , 0 );
setMoveKey( spep_2-3 + 100, 1, 67, -64 , 0 );
setMoveKey( spep_2-3 + 102, 1, 69, -61 , 0 );
setMoveKey( spep_2-3 + 104, 1, 72, -62 , 0 );
setMoveKey( spep_2-3 + 106, 1, 73, -65 , 0 );
setMoveKey( spep_2-3 + 108, 1, 71, -66 , 0 );
setMoveKey( spep_2-3 + 111, 1, 69, -64 , 0 );
setMoveKey( spep_2-1 + 112, 1, 88.8, -73.9 , 0 );

a=0.2;

setScaleKey( spep_2 + 0, 1, 0.59+a, 0.59+a );
setScaleKey( spep_2-1 + 112, 1, 0.59+a, 0.59+a );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 59, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, -43.9 );
setRotateKey( spep_2-1 + 112, 1, -43.9 );

setAlphaKey( spep_2 + 0, 1, 255 );
setAlphaKey( spep_2-3 + 46, 1, 255 );
setAlphaKey( spep_2-3 + 48, 1, 242 );
setAlphaKey( spep_2-3 + 50, 1, 230 );
setAlphaKey( spep_2-3 + 52, 1, 217 );
setAlphaKey( spep_2-3 + 54, 1, 204 );
setAlphaKey( spep_2-3 + 56, 1, 191 );
setAlphaKey( spep_2-3 + 58, 1, 179 );

setAlphaKey( spep_2-3 + 60, 1, 166 );
setAlphaKey( spep_2-3 + 62, 1, 153 );
setAlphaKey( spep_2-3 + 64, 1, 140 );
setAlphaKey( spep_2-3 + 66, 1, 128 );
setAlphaKey( spep_2-3 + 68, 1, 115 );
setAlphaKey( spep_2-3 + 70, 1, 102 );
setAlphaKey( spep_2-3 + 72, 1, 89 );
setAlphaKey( spep_2-3 + 74, 1, 77 );
setAlphaKey( spep_2-3 + 76, 1, 64 );
setAlphaKey( spep_2-1 + 112, 1, 64 );

--SE
--クロス溜める
SE008 = playSe( spep_2 + 4, 1184 );
setPitch( spep_2 + 4, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );
stopSe( spep_2 + 106, SE008, 80 );
SE009 = playSe( spep_2 + 4, 1175 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 49 );
SE010 = playSe( spep_2 + 4, 1158 );
setSeVolumeByWorkId( spep_2 + 4, SE010, 78 );
SE011 = playSe( spep_2 + 4, 1203 );
SE012 = playSe( spep_2 + 14, 1278 );
SE006 = playSe( spep_2 + 24, 1255 );
setSeVolumeByWorkId( spep_2,24,SE006,0);
setSeVolumeByWorkId( spep_2,25,SE006,2.93);
setSeVolumeByWorkId( spep_2,26,SE006,5.86);
setSeVolumeByWorkId( spep_2,27,SE006,8.79);
setSeVolumeByWorkId( spep_2,28,SE006,11.72);
setSeVolumeByWorkId( spep_2,29,SE006,14.65);
setSeVolumeByWorkId( spep_2,30,SE006,17.58);
setSeVolumeByWorkId( spep_2,31,SE006,20.51);
setSeVolumeByWorkId( spep_2,32,SE006,23.44);
setSeVolumeByWorkId( spep_2,33,SE006,26.37);
setSeVolumeByWorkId( spep_2,34,SE006,29.3);
setSeVolumeByWorkId( spep_2,35,SE006,32.23);
setSeVolumeByWorkId( spep_2,36,SE006,35.16);
setSeVolumeByWorkId( spep_2,37,SE006,38.09);
setSeVolumeByWorkId( spep_2,38,SE006,41.02);
setSeVolumeByWorkId( spep_2,39,SE006,43.95);
setSeVolumeByWorkId( spep_2,40,SE006,46.88);
setSeVolumeByWorkId( spep_2,41,SE006,49.81);
setSeVolumeByWorkId( spep_2,42,SE006,52.74);
setSeVolumeByWorkId( spep_2,43,SE006,55.67);
setSeVolumeByWorkId( spep_2,44,SE006,58.6);
setSeVolumeByWorkId( spep_2,45,SE006,61.53);
setSeVolumeByWorkId( spep_2,46,SE006,64.46);
setSeVolumeByWorkId( spep_2,47,SE006,67.39);
setSeVolumeByWorkId( spep_2,48,SE006,70.32);
setSeVolumeByWorkId( spep_2,49,SE006,73.25);
setSeVolumeByWorkId( spep_2,50,SE006,76.18);
setSeVolumeByWorkId( spep_2,51,SE006,79.11);
setSeVolumeByWorkId( spep_2,52,SE006,82.04);
setSeVolumeByWorkId( spep_2,53,SE006,84.97);
setSeVolumeByWorkId( spep_2,54,SE006,87.9);
setSeVolumeByWorkId( spep_2,55,SE006,90.83);
setSeVolumeByWorkId( spep_2,56,SE006,93.76);
setSeVolumeByWorkId( spep_2,57,SE006,96.69);
setSeVolumeByWorkId( spep_2,58,SE006,100);
setStartTimeMs( SE006,  2267 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 116, 0,  0, 0, 0, 160 ); --くろ 背景
entryFadeBg( spep_2+6 , 18, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+108 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;
------------------------------------------------------
-- バク転
------------------------------------------------------
-- ** エフェクト等 ** --
backflip = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, backflip, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, backflip, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, backflip, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, backflip, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, backflip, 0 );
setEffRotateKey( spep_3 + 76, backflip, 0 );
setEffAlphaKey( spep_3 + 0, backflip, 255 );
setEffAlphaKey( spep_3 + 74, backflip, 255 );
setEffAlphaKey( spep_3 + 75, backflip, 255 );
setEffAlphaKey( spep_3 + 76, backflip, 0 );

--SE
--バク宙
SE013 = playSe( spep_3 + 0, 1153 );
setSeVolumeByWorkId( spep_3+0,SE013,0);
setSeVolumeByWorkId( spep_3+1,SE013,10.5);
setSeVolumeByWorkId( spep_3+2,SE013,21);
setSeVolumeByWorkId( spep_3+3,SE013,31.5);
setSeVolumeByWorkId( spep_3+4,SE013,42);
setSeVolumeByWorkId( spep_3+5,SE013,52.5);
setSeVolumeByWorkId( spep_3+6,SE013,63);
setSeVolumeByWorkId( spep_3+7,SE013,73.5);
setSeVolumeByWorkId( spep_3+8,SE013,84);
setPitch( spep_3 + 0, SE013, 300 );
setTimeStretch( SE013, 1.2, 10, 1 );
stopSe( spep_3 + 30, SE013, 18 )
SE014 = playSe( spep_3 + 2, 1117 );
setSeVolumeByWorkId( spep_3+8,SE014,140);
stopSe( spep_3 + 20, SE014, 22 );
SE015 = playSe( spep_3 + 58, 1278 );
setSeVolumeByWorkId( spep_3+58,SE015,0);
setSeVolumeByWorkId( spep_3+59,SE015,4.5);
setSeVolumeByWorkId( spep_3+60,SE015,9);
setSeVolumeByWorkId( spep_3+61,SE015,13.5);
setSeVolumeByWorkId( spep_3+62,SE015,18);
setSeVolumeByWorkId( spep_3+63,SE015,22.5);
setSeVolumeByWorkId( spep_3+64,SE015,27);
setSeVolumeByWorkId( spep_3+65,SE015,31.5);
setSeVolumeByWorkId( spep_3+66,SE015,36);
setSeVolumeByWorkId( spep_3+67,SE015,40.5);
setSeVolumeByWorkId( spep_3+68,SE015,45);
setSeVolumeByWorkId( spep_3+69,SE015,49.5);
setSeVolumeByWorkId( spep_3+70,SE015,54);
setSeVolumeByWorkId( spep_3+71,SE015,58.5);
setSeVolumeByWorkId( spep_3+72,SE015,63);
setSeVolumeByWorkId( spep_3+73,SE015,67.5);
setSeVolumeByWorkId( spep_3+74,SE015,72);
setSeVolumeByWorkId( spep_3+75,SE015,76.5);
setSeVolumeByWorkId( spep_3+76,SE015,81);
setSeVolumeByWorkId( spep_3+77,SE015,85.5);
setSeVolumeByWorkId( spep_3+78,SE015,90);
setSeVolumeByWorkId( spep_3+79,SE015,94.5);
setSeVolumeByWorkId( spep_3+80,SE015,100);
setStartTimeMs( SE015,  667 );

--クロス溜める
stopSe( spep_3 + 6, SE012, 22 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 76, 0,  0, 0, 0, 220 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 120, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 120, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 120, finish_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 48,  906, 70, 0x100, -1, 50, -60, 0 );
setEffShake( spep_4-3 + 48, shuchusen3, 70, 20 );
setEffMoveKey( spep_4-3 + 48, shuchusen3, 50, -60 , 0 );
setEffMoveKey( spep_4-3 + 118, shuchusen3, 50, -60 , 0 );

setEffScaleKey( spep_4-3 + 48, shuchusen3, 1.98, 1.98 );
setEffScaleKey( spep_4-3 + 118, shuchusen3, 1.98, 1.98 );

setEffRotateKey( spep_4-3 + 48, shuchusen3, 180 );
setEffRotateKey( spep_4-3 + 118, shuchusen3, 180 );

setEffAlphaKey( spep_4-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 118, shuchusen3, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setBlendColor(spep_4 + 0, 1 , 2 , 0 , 0 ,0 ,1);
setBlendColor(spep_4 + 54, 1 , 2 , 0 , 0 ,0 ,0);

setMoveKey( spep_4 + 0, 1, 94, -121 , 0 );
setMoveKey( spep_4 + 2, 1, 96, -123 , 0 );
setMoveKey( spep_4 + 4, 1, 94, -128 , 0 );
setMoveKey( spep_4 + 6, 1, 90, -127 , 0 );
setMoveKey( spep_4 + 8, 1, 91, -123 , 0 );
setMoveKey( spep_4 + 10, 1, 95, -124 , 0 );
setMoveKey( spep_4 + 12, 1, 92, -125 , 0 );
setMoveKey( spep_4 + 14, 1, 89, -123 , 0 );
setMoveKey( spep_4 + 16, 1, 91, -120 , 0 );
setMoveKey( spep_4 + 18, 1, 95, -121 , 0 );
setMoveKey( spep_4 + 20, 1, 96, -124 , 0 );
setMoveKey( spep_4 + 22, 1, 94, -126 , 0 );
setMoveKey( spep_4 + 24, 1, 91, -124 , 0 );
setMoveKey( spep_4 + 26, 1, 93, -121 , 0 );
setMoveKey( spep_4 + 28, 1, 95, -124 , 0 );
setMoveKey( spep_4 + 30, 1, 93, -126 , 0 );
setMoveKey( spep_4 + 32, 1, 91, -124 , 0 );
setMoveKey( spep_4 + 34, 1, 93, -121 , 0 );
setMoveKey( spep_4 + 36, 1, 95, -123 , 0 );
setMoveKey( spep_4 + 38, 1, 93, -125 , 0 );
setMoveKey( spep_4 + 40, 1, 91, -123 , 0 );
setMoveKey( spep_4 + 42, 1, 92, -120 , 0 );
setMoveKey( spep_4 + 44, 1, 95, -122 , 0 );
setMoveKey( spep_4 + 46, 1, 93, -124 , 0 );
setMoveKey( spep_4 + 48, 1, 87, -113 , 0 );
setMoveKey( spep_4 + 50, 1, 102, -113 , 0 );
--[[
setMoveKey( spep_4 + 52, 1, 102, -125 , 0 );
setMoveKey( spep_4 + 54, 1, 92, -136 , 0 );
setMoveKey( spep_4 + 56, 1, 81, -127 , 0 );
setMoveKey( spep_4 + 58, 1, 87, -116 , 0 );
setMoveKey( spep_4 + 60, 1, 96, -108 , 0 );
setMoveKey( spep_4 + 62, 1, 100, -117 , 0 );
setMoveKey( spep_4 + 64, 1, 98, -119 , 0 );
setMoveKey( spep_4 + 66, 1, 94, -119 , 0 );
setMoveKey( spep_4 + 68, 1, 95, -115 , 0 );
setMoveKey( spep_4 + 70, 1, 96, -119 , 0 );
setMoveKey( spep_4 + 72, 1, 93, -123 , 0 );
setMoveKey( spep_4 + 74, 1, 89, -122 , 0 );
setMoveKey( spep_4 + 76, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 78, 1, 94, -120 , 0 );
setMoveKey( spep_4 + 80, 1, 95, -125 , 0 );
setMoveKey( spep_4 + 82, 1, 92, -124 , 0 );
setMoveKey( spep_4 + 84, 1, 93, -120 , 0 );
setMoveKey( spep_4 + 86, 1, 98, -119 , 0 );
setMoveKey( spep_4 + 88, 1, 97, -123 , 0 );
setMoveKey( spep_4 + 90, 1, 93, -123 , 0 );
setMoveKey( spep_4 + 92, 1, 90, -121 , 0 );
setMoveKey( spep_4 + 94, 1, 91, -117 , 0 );
setMoveKey( spep_4 + 96, 1, 94, -116 , 0 );
setMoveKey( spep_4 + 98, 1, 96, -118 , 0 );
setMoveKey( spep_4 + 100, 1, 95, -121 , 0 );
setMoveKey( spep_4 + 102, 1, 91, -121 , 0 );
setMoveKey( spep_4 + 104, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 106, 1, 92, -116 , 0 );
setMoveKey( spep_4 + 108, 1, 96, -116 , 0 );
setMoveKey( spep_4 + 110, 1, 96, -120 , 0 );
setMoveKey( spep_4 + 112, 1, 94, -122 , 0 );
setMoveKey( spep_4 + 114, 1, 90, -122 , 0 );
setMoveKey( spep_4 + 116, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 118, 1, 89, -119 , 0 );
]]
setScaleKey( spep_4 + 0, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 50, 1, 0.39, 0.39 );

setRotateKey( spep_4 + 0, 1, -42.2 );
setRotateKey( spep_4 + 50, 1, -42.2 );

setAlphaKey( spep_4 + 0, 1, 120 );
setAlphaKey( spep_4 + 2, 1, 116 );
setAlphaKey( spep_4 + 4, 1, 113 );
setAlphaKey( spep_4 + 6, 1, 109 );
setAlphaKey( spep_4 + 8, 1, 105 );
setAlphaKey( spep_4 + 10, 1, 102 );
setAlphaKey( spep_4 + 12, 1, 98 );
setAlphaKey( spep_4 + 14, 1, 95 );
setAlphaKey( spep_4 + 16, 1, 91 );
setAlphaKey( spep_4 + 18, 1, 87 );
setAlphaKey( spep_4 + 20, 1, 84 );
setAlphaKey( spep_4 + 22, 1, 80 );
setAlphaKey( spep_4 + 24, 1, 77 );
setAlphaKey( spep_4 + 26, 1, 73 );
setAlphaKey( spep_4 + 28, 1, 69 );
setAlphaKey( spep_4 + 30, 1, 66 );
setAlphaKey( spep_4 + 32, 1, 62 );
setAlphaKey( spep_4 + 34, 1, 58 );
setAlphaKey( spep_4 + 36, 1, 55 );
setAlphaKey( spep_4 + 38, 1, 51 );
setAlphaKey( spep_4 + 40, 1, 48 );
setAlphaKey( spep_4 + 42, 1, 44 );
setAlphaKey( spep_4 + 44, 1, 40 );
setAlphaKey( spep_4 + 46, 1, 37 );
setAlphaKey( spep_4 + 48, 1, 33 );
setAlphaKey( spep_4 + 50, 1, 33 );
setAlphaKey( spep_4 + 52, 1, 33 );
setAlphaKey( spep_4 + 54, 1, 255 );

--SE
--クロス溜める
stopSe( spep_4 + 32, SE009, 58 );
stopSe( spep_4 + 30, SE010, 54 );
stopSe( spep_4 + 30, SE006, 48 );

--バク宙
stopSe( spep_4 + 50, SE015, 26 );

--爆発
SE016 = playSe( spep_4 + 44, 1159 );
SE017 = playSe( spep_4 + 44, 1067 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 160 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- うでくみ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 124, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 124, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 124, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 56,  906, 66, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 56, shuchusen1, 66, 20 );
setEffMoveKey( spep_0-3 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 122, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 56, shuchusen1, 2.01, 2.01 );
setEffScaleKey( spep_0-3 + 122, shuchusen1, 2.01, 2.01 );

setEffRotateKey( spep_0-3 + 56, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 122, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 56, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 122, shuchusen1, 255 );

--白フェード
entryFade( spep_0 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 124, 0,  0, 0, 0, 160 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 34; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

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
-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+26  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+26  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +38, 190006, 72, 0x100, -1, 0, 0, 400, 1110);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +38,  ctgogo,  0,  400);
setEffMoveKey(  spep_0 +110,  ctgogo,  0,  400);

setEffAlphaKey( spep_0 +38, ctgogo, 0 );
setEffAlphaKey( spep_0 + 39, ctgogo, 255 );
setEffAlphaKey( spep_0 + 110, ctgogo, 255 );

setEffRotateKey(  spep_0 +38,  ctgogo,  0);
setEffRotateKey(  spep_0 +110,  ctgogo,  0);

setEffScaleKey(  spep_0 +38,  ctgogo,  -1.07,  1.07);
setEffScaleKey(  spep_0 +110,  ctgogo, -1.07, 1.07);

--SE
--腕クロスして溜める
SE001 = playSe( spep_0 + 22, 1003 );
setSeVolumeByWorkId( spep_0 + 22, SE001, 130 );
SE002 = playSe( spep_0 + 24, 1189 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 132 );
SE003 = playSe( spep_0 + 26, 1026 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 86 );
SE004 = playSe( spep_0 + 28, 1044 );
setSeVolumeByWorkId( spep_0 + 28, SE004, 43 );

--顔カットイン
--SE005 = playSe( spep_0 + 38, 1018 );

--白フェード
entryFade( spep_0+116 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+124;
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--腕クロスして溜める
stopSe( spep_1 + 2, SE004, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
activate_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, activate_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, activate_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, activate_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, activate_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, activate_f, 0 );
setEffRotateKey( spep_2 + 116, activate_f, 0 );
setEffAlphaKey( spep_2 + 0, activate_f, 255 );
setEffAlphaKey( spep_2 + 116, activate_f, 255 );

-- ** エフェクト等 ** --
activate_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, activate_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, activate_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, activate_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, activate_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, activate_b, 0 );
setEffRotateKey( spep_2 + 116, activate_b, 0 );
setEffAlphaKey( spep_2 + 0, activate_b, 255 );
setEffAlphaKey( spep_2 + 116, activate_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 64,  906, 50+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 64, shuchusen2, 50+3, 20 );
setEffMoveKey( spep_2-3 + 64, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 114, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 64, shuchusen2, 2.08, 2.08 );
setEffScaleKey( spep_2 + 114, shuchusen2, 2.08, 2.08 );

setEffRotateKey( spep_2-3 + 64, shuchusen2, 180 );
setEffRotateKey( spep_2 + 114, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 64, shuchusen2, 26 );
setEffAlphaKey( spep_2-3 + 66, shuchusen2, 37 );
setEffAlphaKey( spep_2-3 + 68, shuchusen2, 48 );
setEffAlphaKey( spep_2-3 + 70, shuchusen2, 60 );
setEffAlphaKey( spep_2-3 + 72, shuchusen2, 71 );
setEffAlphaKey( spep_2-3 + 74, shuchusen2, 83 );
setEffAlphaKey( spep_2-3 + 76, shuchusen2, 94 );
setEffAlphaKey( spep_2-3 + 78, shuchusen2, 106 );
setEffAlphaKey( spep_2-3 + 80, shuchusen2, 117 );
setEffAlphaKey( spep_2-3 + 82, shuchusen2, 129 );
setEffAlphaKey( spep_2-3 + 84, shuchusen2, 140 );
setEffAlphaKey( spep_2-3 + 86, shuchusen2, 152 );
setEffAlphaKey( spep_2-3 + 88, shuchusen2, 163 );
setEffAlphaKey( spep_2-3 + 90, shuchusen2, 175 );
setEffAlphaKey( spep_2-3 + 92, shuchusen2, 186 );
setEffAlphaKey( spep_2-3 + 94, shuchusen2, 198 );
setEffAlphaKey( spep_2-3 + 96, shuchusen2, 209 );
setEffAlphaKey( spep_2-3 + 98, shuchusen2, 221 );
setEffAlphaKey( spep_2-3 + 100, shuchusen2, 232 );
setEffAlphaKey( spep_2-3 + 102, shuchusen2, 244 );
setEffAlphaKey( spep_2-3 + 104, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 114, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 112, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 60, 1, 106 );

setMoveKey( spep_2 + 0, 1, 89.9, -77.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 90, -77.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 90.1, -77.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 90.3, -77.4 , 0 );
setMoveKey( spep_2-3 + 8, 1, 90.5, -77.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 90.6, -77.1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 90.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 91, -76.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 91.1, -76.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 91.3, -76.4 , 0 );
setMoveKey( spep_2-3 + 20, 1, 91.5, -76.2 , 0 );
setMoveKey( spep_2-3 + 22, 1, 91.6, -76.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, 91.8, -75.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.8, -79.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 89.8, -82.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 85.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 88.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 85.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, 86.8, -76.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 89.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 88.8, -81.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 84.8, -80.9 , 0 );
setMoveKey( spep_2-3 + 44, 1, 83.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 46, 1, 85.8, -75.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 87.8, -73.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 86.8, -77.9 , 0 );
setMoveKey( spep_2-3 + 52, 1, 89.8, -86.9 , 0 );
setMoveKey( spep_2-3 + 54, 1, 77.8, -81.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 84.8, -68.9 , 0 );
setMoveKey( spep_2-3 + 59, 1, 99.8, -73.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 80, -76 , 0 );
setMoveKey( spep_2-3 + 62, 1, 66, -78 , 0 );
setMoveKey( spep_2-3 + 64, 1, 56, -74 , 0 );
setMoveKey( spep_2-3 + 66, 1, 57, -61 , 0 );
setMoveKey( spep_2-3 + 68, 1, 70, -50 , 0 );
setMoveKey( spep_2-3 + 70, 1, 77, -56 , 0 );
setMoveKey( spep_2-3 + 72, 1, 75, -59 , 0 );
setMoveKey( spep_2-3 + 74, 1, 72, -64 , 0 );
setMoveKey( spep_2-3 + 76, 1, 69, -66 , 0 );
setMoveKey( spep_2-3 + 78, 1, 67, -63 , 0 );
setMoveKey( spep_2-3 + 80, 1, 68, -67 , 0 );
setMoveKey( spep_2-3 + 82, 1, 67, -62 , 0 );
setMoveKey( spep_2-3 + 84, 1, 70, -60 , 0 );
setMoveKey( spep_2-3 + 86, 1, 70, -65 , 0 );
setMoveKey( spep_2-3 + 88, 1, 67, -67 , 0 );
setMoveKey( spep_2-3 + 90, 1, 66, -69 , 0 );
setMoveKey( spep_2-3 + 92, 1, 70, -67 , 0 );
setMoveKey( spep_2-3 + 94, 1, 72, -64 , 0 );
setMoveKey( spep_2-3 + 96, 1, 73, -66 , 0 );
setMoveKey( spep_2-3 + 98, 1, 69, -68 , 0 );
setMoveKey( spep_2-3 + 100, 1, 67, -64 , 0 );
setMoveKey( spep_2-3 + 102, 1, 69, -61 , 0 );
setMoveKey( spep_2-3 + 104, 1, 72, -62 , 0 );
setMoveKey( spep_2-3 + 106, 1, 73, -65 , 0 );
setMoveKey( spep_2-3 + 108, 1, 71, -66 , 0 );
setMoveKey( spep_2-3 + 111, 1, 69, -64 , 0 );
setMoveKey( spep_2-1 + 112, 1, 88.8, -73.9 , 0 );

a=0.2;

setScaleKey( spep_2 + 0, 1, 0.59+a, 0.59+a );
setScaleKey( spep_2-1 + 112, 1, 0.59+a, 0.59+a );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 59, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, -43.9 );
setRotateKey( spep_2-1 + 112, 1, -43.9 );

setAlphaKey( spep_2 + 0, 1, 255 );
setAlphaKey( spep_2-3 + 46, 1, 255 );
setAlphaKey( spep_2-3 + 48, 1, 242 );
setAlphaKey( spep_2-3 + 50, 1, 230 );
setAlphaKey( spep_2-3 + 52, 1, 217 );
setAlphaKey( spep_2-3 + 54, 1, 204 );
setAlphaKey( spep_2-3 + 56, 1, 191 );
setAlphaKey( spep_2-3 + 58, 1, 179 );

setAlphaKey( spep_2-3 + 60, 1, 166 );
setAlphaKey( spep_2-3 + 62, 1, 153 );
setAlphaKey( spep_2-3 + 64, 1, 140 );
setAlphaKey( spep_2-3 + 66, 1, 128 );
setAlphaKey( spep_2-3 + 68, 1, 115 );
setAlphaKey( spep_2-3 + 70, 1, 102 );
setAlphaKey( spep_2-3 + 72, 1, 89 );
setAlphaKey( spep_2-3 + 74, 1, 77 );
setAlphaKey( spep_2-3 + 76, 1, 64 );
setAlphaKey( spep_2-1 + 112, 1, 64 );

--SE
--クロス溜める
SE008 = playSe( spep_2 + 4, 1184 );
setPitch( spep_2 + 4, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );
stopSe( spep_2 + 106, SE008, 80 );
SE009 = playSe( spep_2 + 4, 1175 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 49 );
SE010 = playSe( spep_2 + 4, 1158 );
setSeVolumeByWorkId( spep_2 + 4, SE010, 78 );
SE011 = playSe( spep_2 + 4, 1203 );
SE012 = playSe( spep_2 + 14, 1278 );
SE006 = playSe( spep_2 + 24, 1255 );
setSeVolumeByWorkId( spep_2,24,SE006,0);
setSeVolumeByWorkId( spep_2,25,SE006,2.93);
setSeVolumeByWorkId( spep_2,26,SE006,5.86);
setSeVolumeByWorkId( spep_2,27,SE006,8.79);
setSeVolumeByWorkId( spep_2,28,SE006,11.72);
setSeVolumeByWorkId( spep_2,29,SE006,14.65);
setSeVolumeByWorkId( spep_2,30,SE006,17.58);
setSeVolumeByWorkId( spep_2,31,SE006,20.51);
setSeVolumeByWorkId( spep_2,32,SE006,23.44);
setSeVolumeByWorkId( spep_2,33,SE006,26.37);
setSeVolumeByWorkId( spep_2,34,SE006,29.3);
setSeVolumeByWorkId( spep_2,35,SE006,32.23);
setSeVolumeByWorkId( spep_2,36,SE006,35.16);
setSeVolumeByWorkId( spep_2,37,SE006,38.09);
setSeVolumeByWorkId( spep_2,38,SE006,41.02);
setSeVolumeByWorkId( spep_2,39,SE006,43.95);
setSeVolumeByWorkId( spep_2,40,SE006,46.88);
setSeVolumeByWorkId( spep_2,41,SE006,49.81);
setSeVolumeByWorkId( spep_2,42,SE006,52.74);
setSeVolumeByWorkId( spep_2,43,SE006,55.67);
setSeVolumeByWorkId( spep_2,44,SE006,58.6);
setSeVolumeByWorkId( spep_2,45,SE006,61.53);
setSeVolumeByWorkId( spep_2,46,SE006,64.46);
setSeVolumeByWorkId( spep_2,47,SE006,67.39);
setSeVolumeByWorkId( spep_2,48,SE006,70.32);
setSeVolumeByWorkId( spep_2,49,SE006,73.25);
setSeVolumeByWorkId( spep_2,50,SE006,76.18);
setSeVolumeByWorkId( spep_2,51,SE006,79.11);
setSeVolumeByWorkId( spep_2,52,SE006,82.04);
setSeVolumeByWorkId( spep_2,53,SE006,84.97);
setSeVolumeByWorkId( spep_2,54,SE006,87.9);
setSeVolumeByWorkId( spep_2,55,SE006,90.83);
setSeVolumeByWorkId( spep_2,56,SE006,93.76);
setSeVolumeByWorkId( spep_2,57,SE006,96.69);
setSeVolumeByWorkId( spep_2,58,SE006,100);
setStartTimeMs( SE006,  2267 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 116, 0,  0, 0, 0, 160 ); --くろ 背景
entryFadeBg( spep_2+6 , 18, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2+108 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;
------------------------------------------------------
-- バク転
------------------------------------------------------
-- ** エフェクト等 ** --
backflip = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, backflip, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, backflip, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, backflip, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, backflip, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, backflip, 0 );
setEffRotateKey( spep_3 + 76, backflip, 0 );
setEffAlphaKey( spep_3 + 0, backflip, 255 );
setEffAlphaKey( spep_3 + 74, backflip, 255 );
setEffAlphaKey( spep_3 + 75, backflip, 255 );
setEffAlphaKey( spep_3 + 76, backflip, 0 );

--SE
--バク宙
SE013 = playSe( spep_3 + 0, 1153 );
setSeVolumeByWorkId( spep_3+0,SE013,0);
setSeVolumeByWorkId( spep_3+1,SE013,10.5);
setSeVolumeByWorkId( spep_3+2,SE013,21);
setSeVolumeByWorkId( spep_3+3,SE013,31.5);
setSeVolumeByWorkId( spep_3+4,SE013,42);
setSeVolumeByWorkId( spep_3+5,SE013,52.5);
setSeVolumeByWorkId( spep_3+6,SE013,63);
setSeVolumeByWorkId( spep_3+7,SE013,73.5);
setSeVolumeByWorkId( spep_3+8,SE013,84);
setPitch( spep_3 + 0, SE013, 300 );
setTimeStretch( SE013, 1.2, 10, 1 );
stopSe( spep_3 + 30, SE013, 18 )
SE014 = playSe( spep_3 + 2, 1117 );
setSeVolumeByWorkId( spep_3+8,SE014,140);
stopSe( spep_3 + 20, SE014, 22 );
SE015 = playSe( spep_3 + 58, 1278 );
setSeVolumeByWorkId( spep_3+58,SE015,0);
setSeVolumeByWorkId( spep_3+59,SE015,4.5);
setSeVolumeByWorkId( spep_3+60,SE015,9);
setSeVolumeByWorkId( spep_3+61,SE015,13.5);
setSeVolumeByWorkId( spep_3+62,SE015,18);
setSeVolumeByWorkId( spep_3+63,SE015,22.5);
setSeVolumeByWorkId( spep_3+64,SE015,27);
setSeVolumeByWorkId( spep_3+65,SE015,31.5);
setSeVolumeByWorkId( spep_3+66,SE015,36);
setSeVolumeByWorkId( spep_3+67,SE015,40.5);
setSeVolumeByWorkId( spep_3+68,SE015,45);
setSeVolumeByWorkId( spep_3+69,SE015,49.5);
setSeVolumeByWorkId( spep_3+70,SE015,54);
setSeVolumeByWorkId( spep_3+71,SE015,58.5);
setSeVolumeByWorkId( spep_3+72,SE015,63);
setSeVolumeByWorkId( spep_3+73,SE015,67.5);
setSeVolumeByWorkId( spep_3+74,SE015,72);
setSeVolumeByWorkId( spep_3+75,SE015,76.5);
setSeVolumeByWorkId( spep_3+76,SE015,81);
setSeVolumeByWorkId( spep_3+77,SE015,85.5);
setSeVolumeByWorkId( spep_3+78,SE015,90);
setSeVolumeByWorkId( spep_3+79,SE015,94.5);
setSeVolumeByWorkId( spep_3+80,SE015,100);
setStartTimeMs( SE015,  667 );

--クロス溜める
stopSe( spep_3 + 6, SE012, 22 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 76, 0,  0, 0, 0, 220 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 120, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 120, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 120, finish_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 48,  906, 70, 0x100, -1, 50, -60, 0 );
setEffShake( spep_4-3 + 48, shuchusen3, 70, 20 );
setEffMoveKey( spep_4-3 + 48, shuchusen3, 50, -60 , 0 );
setEffMoveKey( spep_4-3 + 118, shuchusen3, 50, -60 , 0 );

setEffScaleKey( spep_4-3 + 48, shuchusen3, 1.98, 1.98 );
setEffScaleKey( spep_4-3 + 118, shuchusen3, 1.98, 1.98 );

setEffRotateKey( spep_4-3 + 48, shuchusen3, 180 );
setEffRotateKey( spep_4-3 + 118, shuchusen3, 180 );

setEffAlphaKey( spep_4-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 118, shuchusen3, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setBlendColor(spep_4 + 0, 1 , 2 , 0 , 0 ,0 ,1);
setBlendColor(spep_4 + 54, 1 , 2 , 0 , 0 ,0 ,0);

setMoveKey( spep_4 + 0, 1, 94, -121 , 0 );
setMoveKey( spep_4 + 2, 1, 96, -123 , 0 );
setMoveKey( spep_4 + 4, 1, 94, -128 , 0 );
setMoveKey( spep_4 + 6, 1, 90, -127 , 0 );
setMoveKey( spep_4 + 8, 1, 91, -123 , 0 );
setMoveKey( spep_4 + 10, 1, 95, -124 , 0 );
setMoveKey( spep_4 + 12, 1, 92, -125 , 0 );
setMoveKey( spep_4 + 14, 1, 89, -123 , 0 );
setMoveKey( spep_4 + 16, 1, 91, -120 , 0 );
setMoveKey( spep_4 + 18, 1, 95, -121 , 0 );
setMoveKey( spep_4 + 20, 1, 96, -124 , 0 );
setMoveKey( spep_4 + 22, 1, 94, -126 , 0 );
setMoveKey( spep_4 + 24, 1, 91, -124 , 0 );
setMoveKey( spep_4 + 26, 1, 93, -121 , 0 );
setMoveKey( spep_4 + 28, 1, 95, -124 , 0 );
setMoveKey( spep_4 + 30, 1, 93, -126 , 0 );
setMoveKey( spep_4 + 32, 1, 91, -124 , 0 );
setMoveKey( spep_4 + 34, 1, 93, -121 , 0 );
setMoveKey( spep_4 + 36, 1, 95, -123 , 0 );
setMoveKey( spep_4 + 38, 1, 93, -125 , 0 );
setMoveKey( spep_4 + 40, 1, 91, -123 , 0 );
setMoveKey( spep_4 + 42, 1, 92, -120 , 0 );
setMoveKey( spep_4 + 44, 1, 95, -122 , 0 );
setMoveKey( spep_4 + 46, 1, 93, -124 , 0 );
setMoveKey( spep_4 + 48, 1, 87, -113 , 0 );
setMoveKey( spep_4 + 50, 1, 102, -113 , 0 );
--[[
setMoveKey( spep_4 + 52, 1, 102, -125 , 0 );
setMoveKey( spep_4 + 54, 1, 92, -136 , 0 );
setMoveKey( spep_4 + 56, 1, 81, -127 , 0 );
setMoveKey( spep_4 + 58, 1, 87, -116 , 0 );
setMoveKey( spep_4 + 60, 1, 96, -108 , 0 );
setMoveKey( spep_4 + 62, 1, 100, -117 , 0 );
setMoveKey( spep_4 + 64, 1, 98, -119 , 0 );
setMoveKey( spep_4 + 66, 1, 94, -119 , 0 );
setMoveKey( spep_4 + 68, 1, 95, -115 , 0 );
setMoveKey( spep_4 + 70, 1, 96, -119 , 0 );
setMoveKey( spep_4 + 72, 1, 93, -123 , 0 );
setMoveKey( spep_4 + 74, 1, 89, -122 , 0 );
setMoveKey( spep_4 + 76, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 78, 1, 94, -120 , 0 );
setMoveKey( spep_4 + 80, 1, 95, -125 , 0 );
setMoveKey( spep_4 + 82, 1, 92, -124 , 0 );
setMoveKey( spep_4 + 84, 1, 93, -120 , 0 );
setMoveKey( spep_4 + 86, 1, 98, -119 , 0 );
setMoveKey( spep_4 + 88, 1, 97, -123 , 0 );
setMoveKey( spep_4 + 90, 1, 93, -123 , 0 );
setMoveKey( spep_4 + 92, 1, 90, -121 , 0 );
setMoveKey( spep_4 + 94, 1, 91, -117 , 0 );
setMoveKey( spep_4 + 96, 1, 94, -116 , 0 );
setMoveKey( spep_4 + 98, 1, 96, -118 , 0 );
setMoveKey( spep_4 + 100, 1, 95, -121 , 0 );
setMoveKey( spep_4 + 102, 1, 91, -121 , 0 );
setMoveKey( spep_4 + 104, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 106, 1, 92, -116 , 0 );
setMoveKey( spep_4 + 108, 1, 96, -116 , 0 );
setMoveKey( spep_4 + 110, 1, 96, -120 , 0 );
setMoveKey( spep_4 + 112, 1, 94, -122 , 0 );
setMoveKey( spep_4 + 114, 1, 90, -122 , 0 );
setMoveKey( spep_4 + 116, 1, 90, -118 , 0 );
setMoveKey( spep_4 + 118, 1, 89, -119 , 0 );
]]
setScaleKey( spep_4 + 0, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 50, 1, 0.39, 0.39 );

setRotateKey( spep_4 + 0, 1, -42.2 );
setRotateKey( spep_4 + 50, 1, -42.2 );

setAlphaKey( spep_4 + 0, 1, 120 );
setAlphaKey( spep_4 + 2, 1, 116 );
setAlphaKey( spep_4 + 4, 1, 113 );
setAlphaKey( spep_4 + 6, 1, 109 );
setAlphaKey( spep_4 + 8, 1, 105 );
setAlphaKey( spep_4 + 10, 1, 102 );
setAlphaKey( spep_4 + 12, 1, 98 );
setAlphaKey( spep_4 + 14, 1, 95 );
setAlphaKey( spep_4 + 16, 1, 91 );
setAlphaKey( spep_4 + 18, 1, 87 );
setAlphaKey( spep_4 + 20, 1, 84 );
setAlphaKey( spep_4 + 22, 1, 80 );
setAlphaKey( spep_4 + 24, 1, 77 );
setAlphaKey( spep_4 + 26, 1, 73 );
setAlphaKey( spep_4 + 28, 1, 69 );
setAlphaKey( spep_4 + 30, 1, 66 );
setAlphaKey( spep_4 + 32, 1, 62 );
setAlphaKey( spep_4 + 34, 1, 58 );
setAlphaKey( spep_4 + 36, 1, 55 );
setAlphaKey( spep_4 + 38, 1, 51 );
setAlphaKey( spep_4 + 40, 1, 48 );
setAlphaKey( spep_4 + 42, 1, 44 );
setAlphaKey( spep_4 + 44, 1, 40 );
setAlphaKey( spep_4 + 46, 1, 37 );
setAlphaKey( spep_4 + 48, 1, 33 );
setAlphaKey( spep_4 + 50, 1, 33 );
setAlphaKey( spep_4 + 52, 1, 33 );
setAlphaKey( spep_4 + 54, 1, 255 );

--SE
--クロス溜める
stopSe( spep_4 + 32, SE009, 58 );
stopSe( spep_4 + 30, SE010, 54 );
stopSe( spep_4 + 30, SE006, 48 );

--バク宙
stopSe( spep_4 + 50, SE015, 26 );

--爆発
SE016 = playSe( spep_4 + 44, 1159 );
SE017 = playSe( spep_4 + 44, 1067 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 160 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 110 );
end