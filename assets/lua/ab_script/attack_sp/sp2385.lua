--1024660:合体ザマス_聖なる逆鱗
--sp_effect_a2_00178
--sp2385

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
SP_01=	160158	;--	前半
SP_02=	160159	;--	後半
SP_03=	160160	;--	後半

--エフェクト(てき)
SP_01x=	160161	;--	前半	(敵)
SP_02x=	160162	;--	後半	(敵)
SP_03x=	160163	;--	後半	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
previous_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, previous_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 260, previous_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, previous_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, previous_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, previous_f, 0 );
setEffRotateKey( spep_0 + 260, previous_f, 0 );
setEffAlphaKey( spep_0 + 0, previous_f, 255 );
setEffAlphaKey( spep_0 + 260, previous_f, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +162;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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

--敵の動き
setDisp( spep_0-3 + 100, 1, 1);
setDisp( spep_0-1 + 158, 1, 0);

changeAnime( spep_0-3 + 100, 1, 118);

setMoveKey( spep_0-3 + 100, 1, 218.8, -355.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 220.1, -358.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 221.6, -361.2 , 0 );
setMoveKey( spep_0-3 + 106, 1, 223.2, -364.3 , 0 );
setMoveKey( spep_0-3 + 108, 1, 224.8, -367.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 226.6, -371.1 , 0 );
setMoveKey( spep_0-3 + 112, 1, 228.4, -374.7 , 0 );
setMoveKey( spep_0-3 + 114, 1, 230.5, -378.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, 232.9, -383.6 , 0 );
setMoveKey( spep_0-3 + 118, 1, 235.4, -388.8 , 0 );
setMoveKey( spep_0-3 + 120, 1, 238.2, -394.5 , 0 );
setMoveKey( spep_0-3 + 122, 1, 241.3, -400.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, 244.7, -407.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, 248.3, -414.7 , 0 );
setMoveKey( spep_0-3 + 128, 1, 252.1, -422.4 , 0 );
setMoveKey( spep_0-3 + 130, 1, 256.2, -430.6 , 0 );
setMoveKey( spep_0-3 + 132, 1, 260.5, -439.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 265.1, -448.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 270, -458.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 275.1, -468.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 280.4, -479.4 , 0 );
setMoveKey( spep_0-3 + 142, 1, 286, -490.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 291.8, -502.4 , 0 );
setMoveKey( spep_0-3 + 146, 1, 297.9, -514.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 304.2, -527.4 , 0 );
setMoveKey( spep_0-3 + 150, 1, 310.9, -540.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 317.7, -554.5 , 0 );
setMoveKey( spep_0-3 + 154, 1, 324.8, -568.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 332.1, -583.5 , 0 );
setMoveKey( spep_0-1 + 158, 1, 339.8, -598.8 , 0 );

setScaleKey( spep_0-3 + 100, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 102, 1, 2.31, 2.31 );
setScaleKey( spep_0-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_0-3 + 106, 1, 2.32, 2.32 );
setScaleKey( spep_0-3 + 108, 1, 2.33, 2.33 );
setScaleKey( spep_0-3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 112, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 114, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 116, 1, 2.37, 2.37 );
setScaleKey( spep_0-3 + 118, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 120, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 122, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 124, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 126, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 128, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 130, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 132, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 134, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 136, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 138, 1, 2.58, 2.58 );
setScaleKey( spep_0-3 + 140, 1, 2.61, 2.61 );
setScaleKey( spep_0-3 + 142, 1, 2.64, 2.64 );
setScaleKey( spep_0-3 + 144, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 146, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 148, 1, 2.73, 2.73 );
setScaleKey( spep_0-3 + 150, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 152, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 154, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 156, 1, 2.88, 2.88 );
setScaleKey( spep_0-1 + 158, 1, 2.92, 2.92 );

setRotateKey( spep_0-3 + 100, 1, 7 );
setRotateKey( spep_0-1 + 158, 1, 7 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 278, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 20 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 50, 1256, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 126 );
setStartTimeMs( SE003,  17 );
setPitch( spep_0 + 50, SE003, -1000 );
setTimeStretch( SE003, 0.33, 30, 4 );
SE004 = playSeVer2( spep_0 + 50, 1184, "",spep_0 + 274, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 67 );
SE005 = playSeVer2( spep_0 + 56, 1295, "",spep_0 + 274, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 56, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 126 );
setPitch( spep_0 + 56, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 150 );
SE008 = playSeVer2( spep_0 + 60, 1191, "", spep_0 + 274, 0, 18, -1);

--顔カットイン
SE009 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +252 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 260, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_c= spep_0 + 260;
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
    playSe( spep_c, SE_05);
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
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
--後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 590, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 590, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 590, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 590, finish_f, 255 );

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 590, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 590, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 590, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 590, finish_f, 255 );

--SE
--気弾発射前溜め
SE012 = playSeVer2( spep_2 + 0, 1265, "",spep_2 + 80, 18, 12, -1);
setStartTimeMs( SE012,  333 );
SE011 = playSeVer2( spep_2 + 8, 1191, "",spep_2 + 80, 12, 12, -1);
setStartTimeMs( SE011,  833 );

--振りかぶる
SE013 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 114, 0, 28, -1);
SE014 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 114, 0, 28, -1);
SE015 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 78, 0, 24, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 44, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 44, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE017, 58 );
setTimeStretch( SE017, 1.43, 30, 4 );
SE018 = playSeVer2( spep_2 + 44, 1193, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 44, 1145, "",spep_2 + 186, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 44, SE019, 71 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);

    setVoiceVolume( SP_dodge - 12, 457, 0 );
   
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
setDisp( spep_2-3 + 120, 1, 1);
setDisp( spep_2-1 + 228, 1, 0);

changeAnime( spep_2-3 + 120, 1, 104);

setMoveKey( spep_2-3 + 120, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 + 122, 1,165.1,-255,0);
setMoveKey( spep_2-3 + 124, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +126, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +128, 1,165.1,-255,0);
setMoveKey( spep_2-3 +130, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +132, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +134, 1,165.1,-255,0);
setMoveKey( spep_2-3 +136, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +138, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +140, 1,165.1,-255,0);
setMoveKey( spep_2-3 +142, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +144, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +146, 1,165.1,-255,0);
setMoveKey( spep_2-3 +148, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +150, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +152, 1,165.1,-255,0);
setMoveKey( spep_2-3 +154, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +156, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +158, 1,165.1,-255,0);
setMoveKey( spep_2-3 +160, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +162, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +164, 1,165.1,-255,0);
setMoveKey( spep_2-3 +166, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +168, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +170, 1,165.1,-255,0);
setMoveKey( spep_2-3 +172, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +174, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +176, 1,165.1,-255,0);
setMoveKey( spep_2-3 +178, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +180, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +182, 1,165.1,-255,0);
setMoveKey( spep_2-3 +184, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +186, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +188, 1,165.1,-255,0);
setMoveKey( spep_2-3 +190, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 + 192, 1, 158.8, -282.5 , 0 );
setMoveKey( spep_2-3 + 194, 1, 167.8, -255.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 144.8, -240.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 169.9, -257.6 , 0 );
setMoveKey( spep_2-3 + 200, 1, 162.9, -266.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, 171.9, -259.6 , 0 );
setMoveKey( spep_2-3 + 204, 1, 164.9, -272.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 173.9, -261.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 163, -266.7 , 0 );
setMoveKey( spep_2-3 + 210, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 163, -246.7 , 0 );
setMoveKey( spep_2-3 + 214, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 171, -278.7 , 0 );
setMoveKey( spep_2-3 + 218, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, 163, -270.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 224, 1, 163, -274.7 , 0 );
setMoveKey( spep_2-3 + 226, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-1 + 228, 1, 175, -262.7 , 0 );

setScaleKey( spep_2-3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_2-1 + 228, 1, 0.56, 0.56 );

setRotateKey( spep_2-3 + 120, 1, 17.2 );
setRotateKey( spep_2-1 + 228, 1, 17.2 );

--SE
--気弾発射
SE020 = playSeVer2( spep_2 + 48, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE020, 62 );

--気弾迫る
SE021 = playSeVer2( spep_2 + 118, 1213, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE021, 86 );
setStartTimeMs( SE021,  400 );
SE022 = playSeVer2( spep_2 + 116, 1044, "",spep_2 + 294, 0, 28, -1);
SE023 = playSeVer2( spep_2 + 116, 1226, "",spep_2 + 294, 0, 28, -1);

--気弾地面つく
SE024 = playSeVer2( spep_2 + 192, 1188, "", 0, 0, 0, -1);

--腕前に出す
SE025 = playSeVer2( spep_2 + 228, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE025, 145 );

--画面遷移
SE026 = playSeVer2( spep_2 + 258, 1072, "", 0, 0, 0, -1);

--地響き
SE027 = playSeVer2( spep_2 + 272, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE027, 126 );

--爆発１
SE028 = playSeVer2( spep_2 + 294, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE028, 80 );

--ズームアウト
SE029 = playSeVer2( spep_2 + 328, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE029, 58 );
SE030 = playSeVer2( spep_2 + 336, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE030, 75 );
SE031 = playSeVer2( spep_2 + 340, 1044, "",spep_2 + 422, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 340, SE031, 74 );

--十字に光る
SE032 = playSeVer2( spep_2 + 366, 1334, "",spep_2 + 520, 0, 64, 0.6);
setSeVolumeByWorkId( spep_2 + 366, SE032, 182 );
SE033 = playSeVer2( spep_2 + 366, 1157, "",spep_2 + 520, 0, 64, 0.6);
setSeVolumeByWorkId( spep_2 + 366, SE033, 151 );

--地響き
SE034 = playSeVer2( spep_2 + 412, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE034, 157 );
setSeVolumeByWorkId( spep_2 + 532, SE034, 157 );
setSeVolumeByWorkId( spep_2 + 533, SE034, 160.7 );
setSeVolumeByWorkId( spep_2 + 534, SE034,164.4 );
setSeVolumeByWorkId( spep_2 + 535, SE034,168.1 );
setSeVolumeByWorkId( spep_2 + 536, SE034,171.8 );
setSeVolumeByWorkId( spep_2 + 537, SE034,175.5 );
setSeVolumeByWorkId( spep_2 + 538, SE034,179.2 );
setSeVolumeByWorkId( spep_2 + 539, SE034,182.9 );
setSeVolumeByWorkId( spep_2 + 540, SE034,186.6 );
setSeVolumeByWorkId( spep_2 + 541, SE034,190.3 );
setSeVolumeByWorkId( spep_2 + 542, SE034,194 );
setSeVolumeByWorkId( spep_2 + 543, SE034,197.7 );
setSeVolumeByWorkId( spep_2 + 544, SE034,201.4 );
setSeVolumeByWorkId( spep_2 + 545, SE034,205.1 );
setSeVolumeByWorkId( spep_2 + 546, SE034,208.8 );
setSeVolumeByWorkId( spep_2 + 547, SE034,212.5 );
setSeVolumeByWorkId( spep_2 + 548, SE034,216.2 );
setSeVolumeByWorkId( spep_2 + 549, SE034,219.9 );
setSeVolumeByWorkId( spep_2 + 550, SE034,223.6 );
setSeVolumeByWorkId( spep_2 + 551, SE034,227.3 );
setSeVolumeByWorkId( spep_2 + 552, SE034,231 );
setSeVolumeByWorkId( spep_2 + 553, SE034,234.7 );
setSeVolumeByWorkId( spep_2 + 554, SE034,238.4 );
setSeVolumeByWorkId( spep_2 + 555, SE034,242.1 );
setSeVolumeByWorkId( spep_2 + 556, SE034,245.8 );
setSeVolumeByWorkId( spep_2 + 557, SE034,250 );

--地面に当たる
SE035 = playSeVer2( spep_2 + 412, 1188, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_2 + 466, 1069, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 516, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 516, SE038, 84 );

--爆風
SE039 = playSeVer2( spep_2 + 534, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 534, SE039, 153 );
setPitch( spep_2 + 534, SE039, -800 );
setTimeStretch( SE039, 0.47, 30, 4 );
SE040 = playSeVer2( spep_2 + 542, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE040, 84 );

-- 終わり
dealDamage(spep_2+480);
endPhase( spep_2 + 580 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
previous_f = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, previous_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 260, previous_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, previous_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, previous_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, previous_f, 0 );
setEffRotateKey( spep_0 + 260, previous_f, 0 );
setEffAlphaKey( spep_0 + 0, previous_f, 255 );
setEffAlphaKey( spep_0 + 260, previous_f, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +158;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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

--敵の動き
setDisp( spep_0-3 + 100, 1, 1);
setDisp( spep_0-1 + 158, 1, 0);

changeAnime( spep_0-3 + 100, 1, 118);

setMoveKey( spep_0-3 + 100, 1, 218.8, -355.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 220.1, -358.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 221.6, -361.2 , 0 );
setMoveKey( spep_0-3 + 106, 1, 223.2, -364.3 , 0 );
setMoveKey( spep_0-3 + 108, 1, 224.8, -367.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 226.6, -371.1 , 0 );
setMoveKey( spep_0-3 + 112, 1, 228.4, -374.7 , 0 );
setMoveKey( spep_0-3 + 114, 1, 230.5, -378.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, 232.9, -383.6 , 0 );
setMoveKey( spep_0-3 + 118, 1, 235.4, -388.8 , 0 );
setMoveKey( spep_0-3 + 120, 1, 238.2, -394.5 , 0 );
setMoveKey( spep_0-3 + 122, 1, 241.3, -400.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, 244.7, -407.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, 248.3, -414.7 , 0 );
setMoveKey( spep_0-3 + 128, 1, 252.1, -422.4 , 0 );
setMoveKey( spep_0-3 + 130, 1, 256.2, -430.6 , 0 );
setMoveKey( spep_0-3 + 132, 1, 260.5, -439.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 265.1, -448.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 270, -458.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 275.1, -468.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 280.4, -479.4 , 0 );
setMoveKey( spep_0-3 + 142, 1, 286, -490.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 291.8, -502.4 , 0 );
setMoveKey( spep_0-3 + 146, 1, 297.9, -514.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 304.2, -527.4 , 0 );
setMoveKey( spep_0-3 + 150, 1, 310.9, -540.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 317.7, -554.5 , 0 );
setMoveKey( spep_0-3 + 154, 1, 324.8, -568.8 , 0 );
setMoveKey( spep_0-3 + 156, 1, 332.1, -583.5 , 0 );
setMoveKey( spep_0-1 + 158, 1, 339.8, -598.8 , 0 );

setScaleKey( spep_0-3 + 100, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 102, 1, 2.31, 2.31 );
setScaleKey( spep_0-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_0-3 + 106, 1, 2.32, 2.32 );
setScaleKey( spep_0-3 + 108, 1, 2.33, 2.33 );
setScaleKey( spep_0-3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 112, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 114, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 116, 1, 2.37, 2.37 );
setScaleKey( spep_0-3 + 118, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 120, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 122, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 124, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 126, 1, 2.45, 2.45 );
setScaleKey( spep_0-3 + 128, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 130, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 132, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 134, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 136, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 138, 1, 2.58, 2.58 );
setScaleKey( spep_0-3 + 140, 1, 2.61, 2.61 );
setScaleKey( spep_0-3 + 142, 1, 2.64, 2.64 );
setScaleKey( spep_0-3 + 144, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 146, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 148, 1, 2.73, 2.73 );
setScaleKey( spep_0-3 + 150, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 152, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 154, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 156, 1, 2.88, 2.88 );
setScaleKey( spep_0-1 + 158, 1, 2.92, 2.92 );

setRotateKey( spep_0-3 + 100, 1, 7 );
setRotateKey( spep_0-1 + 158, 1, 7 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 278, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 20 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 50, 1256, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 126 );
setStartTimeMs( SE003,  17 );
setPitch( spep_0 + 50, SE003, -1000 );
setTimeStretch( SE003, 0.33, 30, 4 );
SE004 = playSeVer2( spep_0 + 50, 1184, "",spep_0 + 274, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 67 );
SE005 = playSeVer2( spep_0 + 56, 1295, "",spep_0 + 274, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 56, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 126 );
setPitch( spep_0 + 56, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 150 );
SE008 = playSeVer2( spep_0 + 60, 1191, "", spep_0 + 274, 0, 18, -1);

--顔カットイン
--SE009 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +252 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 260, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_c= spep_0 + 260;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
spep_2= spep_c + 94;
------------------------------------------------------
--後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 590, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 590, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 590, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 590, finish_f, 255 );

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 590, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 590, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 590, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 590, finish_f, 255 );

--SE
--気弾発射前溜め
SE012 = playSeVer2( spep_2 + 0, 1265, "",spep_2 + 80, 18, 12, -1);
setStartTimeMs( SE012,  333 );
SE011 = playSeVer2( spep_2 + 8, 1191, "",spep_2 + 80, 12, 12, -1);
setStartTimeMs( SE011,  833 );

--振りかぶる
SE013 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 114, 0, 28, -1);
SE014 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 114, 0, 28, -1);
SE015 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 78, 0, 24, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 44, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 44, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE017, 58 );
setTimeStretch( SE017, 1.43, 30, 4 );
SE018 = playSeVer2( spep_2 + 44, 1193, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 44, 1145, "",spep_2 + 186, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 44, SE019, 71 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);

    setVoiceVolume( SP_dodge - 12, 457, 0 );
   
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
setDisp( spep_2-3 + 120, 1, 1);
setDisp( spep_2-1 + 228, 1, 0);

changeAnime( spep_2-3 + 120, 1, 104);

setMoveKey( spep_2-3 + 120, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 + 122, 1,165.1,-255,0);
setMoveKey( spep_2-3 + 124, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +126, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +128, 1,165.1,-255,0);
setMoveKey( spep_2-3 +130, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +132, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +134, 1,165.1,-255,0);
setMoveKey( spep_2-3 +136, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +138, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +140, 1,165.1,-255,0);
setMoveKey( spep_2-3 +142, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +144, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +146, 1,165.1,-255,0);
setMoveKey( spep_2-3 +148, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +150, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +152, 1,165.1,-255,0);
setMoveKey( spep_2-3 +154, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +156, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +158, 1,165.1,-255,0);
setMoveKey( spep_2-3 +160, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +162, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +164, 1,165.1,-255,0);
setMoveKey( spep_2-3 +166, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +168, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +170, 1,165.1,-255,0);
setMoveKey( spep_2-3 +172, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +174, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +176, 1,165.1,-255,0);
setMoveKey( spep_2-3 +178, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +180, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +182, 1,165.1,-255,0);
setMoveKey( spep_2-3 +184, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 +186, 1,166.8,-254.5,0);
setMoveKey( spep_2-3 +188, 1,165.1,-255,0);
setMoveKey( spep_2-3 +190, 1,168.6,-254.3,0);
setMoveKey( spep_2-3 + 192, 1, 158.8, -282.5 , 0 );
setMoveKey( spep_2-3 + 194, 1, 167.8, -255.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 144.8, -240.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 169.9, -257.6 , 0 );
setMoveKey( spep_2-3 + 200, 1, 162.9, -266.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, 171.9, -259.6 , 0 );
setMoveKey( spep_2-3 + 204, 1, 164.9, -272.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 173.9, -261.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 163, -266.7 , 0 );
setMoveKey( spep_2-3 + 210, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 163, -246.7 , 0 );
setMoveKey( spep_2-3 + 214, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 216, 1, 171, -278.7 , 0 );
setMoveKey( spep_2-3 + 218, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, 163, -270.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-3 + 224, 1, 163, -274.7 , 0 );
setMoveKey( spep_2-3 + 226, 1, 175, -262.7 , 0 );
setMoveKey( spep_2-1 + 228, 1, 175, -262.7 , 0 );

setScaleKey( spep_2-3 + 120, 1, 0.56, 0.56 );
setScaleKey( spep_2-1 + 228, 1, 0.56, 0.56 );

setRotateKey( spep_2-3 + 120, 1, 17.2 );
setRotateKey( spep_2-1 + 228, 1, 17.2 );

--SE
--気弾発射
SE020 = playSeVer2( spep_2 + 48, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE020, 62 );

--気弾迫る
SE021 = playSeVer2( spep_2 + 118, 1213, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE021, 86 );
setStartTimeMs( SE021,  400 );
SE022 = playSeVer2( spep_2 + 116, 1044, "",spep_2 + 294, 0, 28, -1);
SE023 = playSeVer2( spep_2 + 116, 1226, "",spep_2 + 294, 0, 28, -1);

--気弾地面つく
SE024 = playSeVer2( spep_2 + 192, 1188, "", 0, 0, 0, -1);

--腕前に出す
SE025 = playSeVer2( spep_2 + 228, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE025, 145 );

--画面遷移
SE026 = playSeVer2( spep_2 + 258, 1072, "", 0, 0, 0, -1);

--地響き
SE027 = playSeVer2( spep_2 + 272, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE027, 126 );

--爆発１
SE028 = playSeVer2( spep_2 + 294, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE028, 80 );

--ズームアウト
SE029 = playSeVer2( spep_2 + 328, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 328, SE029, 58 );
SE030 = playSeVer2( spep_2 + 336, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 336, SE030, 75 );
SE031 = playSeVer2( spep_2 + 340, 1044, "",spep_2 + 422, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 340, SE031, 74 );

--十字に光る
SE032 = playSeVer2( spep_2 + 366, 1334, "",spep_2 + 520, 0, 64, 0.6);
setSeVolumeByWorkId( spep_2 + 366, SE032, 182 );
SE033 = playSeVer2( spep_2 + 366, 1157, "",spep_2 + 520, 0, 64, 0.6);
setSeVolumeByWorkId( spep_2 + 366, SE033, 151 );

--地響き
SE034 = playSeVer2( spep_2 + 412, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE034, 157 );
setSeVolumeByWorkId( spep_2 + 532, SE034, 157 );
setSeVolumeByWorkId( spep_2 + 533, SE034, 160.7 );
setSeVolumeByWorkId( spep_2 + 534, SE034,164.4 );
setSeVolumeByWorkId( spep_2 + 535, SE034,168.1 );
setSeVolumeByWorkId( spep_2 + 536, SE034,171.8 );
setSeVolumeByWorkId( spep_2 + 537, SE034,175.5 );
setSeVolumeByWorkId( spep_2 + 538, SE034,179.2 );
setSeVolumeByWorkId( spep_2 + 539, SE034,182.9 );
setSeVolumeByWorkId( spep_2 + 540, SE034,186.6 );
setSeVolumeByWorkId( spep_2 + 541, SE034,190.3 );
setSeVolumeByWorkId( spep_2 + 542, SE034,194 );
setSeVolumeByWorkId( spep_2 + 543, SE034,197.7 );
setSeVolumeByWorkId( spep_2 + 544, SE034,201.4 );
setSeVolumeByWorkId( spep_2 + 545, SE034,205.1 );
setSeVolumeByWorkId( spep_2 + 546, SE034,208.8 );
setSeVolumeByWorkId( spep_2 + 547, SE034,212.5 );
setSeVolumeByWorkId( spep_2 + 548, SE034,216.2 );
setSeVolumeByWorkId( spep_2 + 549, SE034,219.9 );
setSeVolumeByWorkId( spep_2 + 550, SE034,223.6 );
setSeVolumeByWorkId( spep_2 + 551, SE034,227.3 );
setSeVolumeByWorkId( spep_2 + 552, SE034,231 );
setSeVolumeByWorkId( spep_2 + 553, SE034,234.7 );
setSeVolumeByWorkId( spep_2 + 554, SE034,238.4 );
setSeVolumeByWorkId( spep_2 + 555, SE034,242.1 );
setSeVolumeByWorkId( spep_2 + 556, SE034,245.8 );
setSeVolumeByWorkId( spep_2 + 557, SE034,250 );

--地面に当たる
SE035 = playSeVer2( spep_2 + 412, 1188, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_2 + 466, 1069, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 516, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 516, SE038, 84 );

--爆風
SE039 = playSeVer2( spep_2 + 534, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 534, SE039, 153 );
setPitch( spep_2 + 534, SE039, -800 );
setTimeStretch( SE039, 0.47, 30, 4 );
SE040 = playSeVer2( spep_2 + 542, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE040, 84 );

-- 終わり
dealDamage(spep_2+480);
endPhase( spep_2 + 580 );
end