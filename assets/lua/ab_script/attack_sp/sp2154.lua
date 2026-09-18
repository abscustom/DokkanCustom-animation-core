--1021430:ゴールデンフリーザ(天使)&人造人間17号_最後の特攻
--sp_effect_b4_00179
--sp2154

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
SP_01=	156907	;--	セリフカットイン
SP_02=	156908	;--	突進
SP_03=	156909	;--	被弾　奥
SP_04=	156910	;--	被弾　手前
SP_05=	156911	;--	後半　奥
SP_06=	156912	;--	後半　手前

--エフェクト(てき方)
SP_01x=	156907	;--	セリフカットイン	
SP_02x=	156908	;--	突進	
SP_03x=	156909	;--	被弾　奥	
SP_04x=	156915	;--	被弾　手前	(敵)
SP_05x=	156916	;--	後半　奥	(敵)
SP_06x=	156917	;--	後半　手前	(敵)

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
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 62, 1035 );
setSeVolumeByWorkId( spep_0 + 62, SE002, 126 );
SE003 = playSe( spep_0 + 62, 1298 );
setSeVolumeByWorkId( spep_0 + 62, SE003, 89 );

--オーラ
SE004 = playSe( spep_0 + 74, 1036 );
setPitch( spep_0 + 74, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );
SE005 = playSe( spep_0 + 98, 1036 );
setPitch( spep_0 + 98, SE005, -200 );
setTimeStretch( SE005, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+110;
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

--気ダメ
stopSe( spep_1 + 8, SE002, 0 );
stopSe( spep_1 + 8, SE003, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
--	突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 88, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 88, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 86, rush, 255 );
setEffAlphaKey( spep_2 + 87, rush, 255 );
setEffAlphaKey( spep_2 + 88, rush, 0 );

--SE
--オーラ
SE007 = playSe( spep_2 + 0, 1036 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 63 );
setPitch( spep_2 + 0, SE007, -200 );
setTimeStretch( SE007, 0.87, 10, 1 );
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

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
--フリーザ向かっていく
SE008 = playSe( spep_2 + 14, 1182 );
SE009 = playSe( spep_2 + 14, 9 );
stopSe( spep_2 + 78, SE009, 24 );

--オーラ
SE010 = playSe( spep_2 + 20, 1036 );
setSeVolumeByWorkId( spep_2 + 20, SE010, 63 );
setPitch( spep_2 + 20, SE010, -200 );
setTimeStretch( SE010, 0.87, 10, 1 );
SE011 = playSe( spep_2 + 40, 1036 );
setSeVolumeByWorkId( spep_2 + 40, SE011, 63 );
setPitch( spep_2 + 40, SE011, -200 );
setTimeStretch( SE011, 0.87, 10, 1 );

--17号気弾溜め
SE012 = playSe( spep_2 + 48, 1311 ,"",0.6);
SE013 = playSe( spep_2 + 48, 1282 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 48, SE013, 35 );
SE014 = playSe( spep_2 + 48, 1265 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 48, SE014, 126 );

--[[
--オーラ
SE015 = playSe( spep_2 + 60, 1036 );
setSeVolumeByWorkId( spep_2 + 60, SE015, 63 );
setPitch( spep_2 + 60, SE015, -200 );
setTimeStretch( SE015, 0.87, 10, 1 );
SE016 = playSe( spep_2 + 80, 1036 );
setSeVolumeByWorkId( spep_2 + 80, SE016, 63 );
setPitch( spep_2 + 80, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );
]]
-- ** 次の準備 ** --
spep_3 = spep_2 + 88;
------------------------------------------------------
--	被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 78, hit_f, 255 );
setEffAlphaKey( spep_3 + 79, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 78, hit_b, 255 );
setEffAlphaKey( spep_3 + 79, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 107 );
changeAnime( spep_3-3 + 16, 1, 108 );

setMoveKey( spep_3 + 0, 1, 115.7, -518.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 116.6, -513.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 119.3, -500 , 0 );
setMoveKey( spep_3-3 + 6, 1, 123.9, -477.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 130.3, -445.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 138.5, -404.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 148.5, -354.4 , 0 );
setMoveKey( spep_3-3 + 15, 1, 160.4, -295.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 25.3, 3.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 33.6, -24.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 39.7, 17.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 58.4, 24 , 0 );
setMoveKey( spep_3-3 + 24, 1, 81.8, 2.8 , 0 );
setMoveKey( spep_3-3 + 26, 1, 98, 62.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 118.8, 45.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, 180, 107.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 207, 112.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 229.9, 158.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 266.7, 192 , 0 );
setMoveKey( spep_3-3 + 38, 1, 275.3, 167.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 280, 184 , 0 );
setMoveKey( spep_3-3 + 42, 1, 287, 150.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 287.5, 181.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 290.4, 164.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 294.5, 175.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 286.7, 172 , 0 );
setMoveKey( spep_3-3 + 52, 1, 279.2, 162.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 280.7, 164.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 278.7, 154.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 273.2, 159.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 271, 150.8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 282.1, 147.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 266.6, 152.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 270.3, 144.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, 265.4, 150.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 260.7, 146.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 260.2, 145.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 258, 143.3 , 0 );
setMoveKey( spep_3-3 + 76, 1, 256.9, 142.4 , 0 );
setMoveKey( spep_3-3 + 78, 1, 256.1, 141.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 255.5, 141.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, 255.1, 140.9 , 0 );

setScaleKey( spep_3 + 0, 1, 4.6, 4.6 );
--setScaleKey( spep_3-3 + 2, 1, 4.57, 4.57 );
setScaleKey( spep_3-3 + 4, 1, 4.49, 4.49 );
setScaleKey( spep_3-3 + 6, 1, 4.34, 4.34 );
setScaleKey( spep_3-3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_3-3 + 10, 1, 3.89, 3.89 );
setScaleKey( spep_3-3 + 12, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 15, 1, 3.2, 3.2 );
setScaleKey( spep_3-3 + 16, 1, 6.3, 6.3 );
setScaleKey( spep_3-3 + 18, 1, 6.14, 6.14 );
setScaleKey( spep_3-3 + 20, 1, 5.91, 5.91 );
setScaleKey( spep_3-3 + 22, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 24, 1, 5.21, 5.21 );
setScaleKey( spep_3-3 + 26, 1, 4.75, 4.75 );
setScaleKey( spep_3-3 + 28, 1, 4.21, 4.21 );
setScaleKey( spep_3-3 + 30, 1, 3.59, 3.59 );
setScaleKey( spep_3-3 + 32, 1, 2.89, 2.89 );
setScaleKey( spep_3-3 + 34, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 38, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 40, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 54, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 56, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 58, 1, 0.33, 0.33 );
setScaleKey( spep_3-3 + 60, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 62, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 64, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 66, 1, 0.19, 0.19 );
setScaleKey( spep_3-3 + 68, 1, 0.16, 0.16 );
setScaleKey( spep_3-3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 72, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 76, 1, 0.09, 0.09 );
setScaleKey( spep_3-3 + 78, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 80, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 82, 1, 0.07, 0.07 );

setRotateKey( spep_3-3 + 0, 1, -135 );
setRotateKey( spep_3-3 + 15, 1, -135 );
setRotateKey( spep_3-3 + 16, 1, -11 );
setRotateKey( spep_3-3 + 82, 1, -11 );

--SE
--17号気弾溜め
stopSe( spep_3 + 4, SE012, 14 );
stopSe( spep_3 + 4, SE013, 14 );
stopSe( spep_3 + 4, SE014, 14 );

--気弾ヒット
SE018 = playSe( spep_3 + 0, 1027 );
setSeVolumeByWorkId( spep_3 + 0, SE018, 85 );
SE019 = playSe( spep_3 + 0, 1258 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 70 );
stopSe( spep_3 + 44, SE019, 34 );
SE017 = playSe( spep_3 + 6, 1212 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 29.8 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 60 );
setStartTimeMs( SE017,  600 );
stopSe( spep_3 + 38, SE017, 28 );

--フリーザ向かっていく
SE020 = playSe( spep_3 + 22, 1278 );
setSeVolumeByWorkId( spep_3 + 22, SE020, 62 );
SE021 = playSe( spep_3 + 22, 9 );
SE022 = playSe( spep_3 + 32, 1167 );
setSeVolumeByWorkId( spep_3 + 32, SE022, 35 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 82, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
--	後半
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 966, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 966, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 966, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 966, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 966, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 966, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 966, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 966, fighting_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_4-5 + 8,  10016, 18, 0x100, -1, 0, 93.3, 186.7 );--ズンッ
setEffShake( spep_4-5 + 8, ctzun, 18, 10 );
setEffMoveKey( spep_4-5 + 8, ctzun, 93.3, 186.7 , 0 );
setEffMoveKey( spep_4-5 + 10, ctzun, 107.3, 273.9 , 0 );
setEffMoveKey( spep_4-5 + 12, ctzun, 119.9, 287.6 , 0 );
setEffMoveKey( spep_4-5 + 14, ctzun, 112.6, 290.8 , 0 );
setEffMoveKey( spep_4-5 + 16, ctzun, 111.2, 287.6 , 0 );
setEffMoveKey( spep_4-5 + 18, ctzun, 113.8, 299.3 , 0 );
setEffMoveKey( spep_4-5 + 20, ctzun, 130.7, 303.9 , 0 );
setEffMoveKey( spep_4-5 + 22, ctzun, 127.1, 308.9 , 0 );
setEffMoveKey( spep_4-5 + 24, ctzun, 141.8, 325.8 , 0 );
setEffMoveKey( spep_4-5 + 26, ctzun, 148.4, 334.4 , 0 );

setEffScaleKey( spep_4-5 + 10, ctzun, 2.05, 2.05 );
setEffScaleKey( spep_4-5 + 12, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_4-5 + 14, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_4-5 + 16, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_4-5 + 18, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_4-5 + 20, ctzun, 2.51, 2.51 );
setEffScaleKey( spep_4-5 + 22, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_4-5 + 24, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_4-5 + 26, ctzun, 2.93, 2.93 );

setEffRotateKey( spep_4-5 + 8, ctzun, 20.2 );
setEffRotateKey( spep_4-5 + 26, ctzun, 20.2 );

setEffAlphaKey( spep_4-5 + 8, ctzun, 255 );
setEffAlphaKey( spep_4-5 + 16, ctzun, 255 );
setEffAlphaKey( spep_4-5 + 18, ctzun, 204 );
setEffAlphaKey( spep_4-5 + 20, ctzun, 153 );
setEffAlphaKey( spep_4-5 + 22, ctzun, 102 );
setEffAlphaKey( spep_4-5 + 24, ctzun, 51 );
setEffAlphaKey( spep_4-5 + 26, ctzun, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_4-3 + 48,  10017, 68, 0x100, -1, 0, -32.4, 231.3 );--ドガガガッ
setEffShake( spep_4-3 + 48, ctdogagaga, 68, 10 );
setEffMoveKey( spep_4-3 + 48, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_4-3 + 50, ctdogagaga, -31.5, 245.9 , 0 );
setEffMoveKey( spep_4-3 + 52, ctdogagaga, -39.3, 229.1 , 0 );
setEffMoveKey( spep_4-3 + 54, ctdogagaga, -23.9, 241.9 , 0 );
setEffMoveKey( spep_4-3 + 56, ctdogagaga, -38.1, 234.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdogagaga, -33.1, 228.5 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdogagaga, -25.3, 241.7 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdogagaga, -40.8, 235.1 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdogagaga, -27.4, 242.5 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdogagaga, -33.3, 228.8 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdogagaga, -29.5, 245.7 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdogagaga, -37.3, 227.2 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdogagaga, -23, 240.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdogagaga, -42.1, 234.8 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdogagaga, -23.3, 236.5 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdogagaga, -39.1, 238.9 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdogagaga, -28.3, 230.8 , 0 );
setEffMoveKey( spep_4-3 + 84, ctdogagaga, -32, 238.1 , 0 );
setEffMoveKey( spep_4-3 + 86, ctdogagaga, -37.8, 240.8 , 0 );
setEffMoveKey( spep_4-3 + 88, ctdogagaga, -21.4, 242.4 , 0 );
setEffMoveKey( spep_4-3 + 90, ctdogagaga, -38.7, 238 , 0 );
setEffMoveKey( spep_4-3 + 92, ctdogagaga, -27.7, 231.5 , 0 );
setEffMoveKey( spep_4-3 + 94, ctdogagaga, -43.2, 238.6 , 0 );
setEffMoveKey( spep_4-3 + 96, ctdogagaga, -24.3, 228.4 , 0 );
setEffMoveKey( spep_4-3 + 98, ctdogagaga, -39.6, 239.8 , 0 );
setEffMoveKey( spep_4-3 + 100, ctdogagaga, -25.7, 237.7 , 0 );
setEffMoveKey( spep_4-3 + 102, ctdogagaga, -37.4, 243.2 , 0 );
setEffMoveKey( spep_4-3 + 104, ctdogagaga, -27.1, 233.3 , 0 );
setEffMoveKey( spep_4-3 + 106, ctdogagaga, -30.2, 245.1 , 0 );
setEffMoveKey( spep_4-3 + 108, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_4-3 + 110, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_4-3 + 112, ctdogagaga, -37.6, 248.3 , 0 );
setEffMoveKey( spep_4-3 + 114, ctdogagaga, -32, 284.9 , 0 );
setEffMoveKey( spep_4-3 + 116, ctdogagaga, -35.4, 306.5 , 0 );

setEffScaleKey( spep_4-3 + 48, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 110, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 112, ctdogagaga, 2.88, 2.88 );
setEffScaleKey( spep_4-3 + 114, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_4-3 + 116, ctdogagaga, 3.59, 3.59 );

setEffRotateKey( spep_4-3 + 48, ctdogagaga, 0 );
setEffRotateKey( spep_4-3 + 116, ctdogagaga, 0 );

setEffAlphaKey( spep_4-3 + 48, ctdogagaga, 255 );
setEffAlphaKey( spep_4-3 + 110, ctdogagaga, 255 );
setEffAlphaKey( spep_4-3 + 112, ctdogagaga, 170 );
setEffAlphaKey( spep_4-3 + 114, ctdogagaga, 85 );
setEffAlphaKey( spep_4-3 + 116, ctdogagaga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_4-3 + 146,  10021, 22, 0x100, -1, 0, -71.9, 364.5 );--バゴォッ
setEffShake( spep_4-3 + 146, ctbago, 68, 10 );
setEffMoveKey( spep_4-3 + 146, ctbago, -71.9, 364.5 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbago, -73.2, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbago, -58, 397.4 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbago, -62.5, 391.9 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbago, -68.5, 382.4 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbago, -55, 405.6 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbago, -66, 394.1 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbago, -48.1, 398.6 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbago, -58, 404 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbago, -64, 395.2 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbago, -49, 421.2 , 0 );
setEffMoveKey( spep_4-3 + 168, ctbago, -47.5, 425.3 , 0 );

setEffScaleKey( spep_4-3 + 146, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_4-3 + 148, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 150, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_4-3 + 152, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_4-3 + 154, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_4-3 + 156, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_4-3 + 158, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_4-3 + 160, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_4-3 + 162, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_4-3 + 164, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_4-3 + 166, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_4-3 + 168, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_4-3 + 146, ctbago, -20 );
setEffRotateKey( spep_4-3 + 168, ctbago, -20 );

setEffAlphaKey( spep_4-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbago, 255 );
setEffAlphaKey( spep_4-3 + 164, ctbago, 170 );
setEffAlphaKey( spep_4-3 + 166, ctbago, 85 );
setEffAlphaKey( spep_4-3 + 168, ctbago, 0 );


--敵の動き
setDisp( spep_4-3 + 149, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 8, 1, 108 );
changeAnime( spep_4-3 + 48, 1, 106 );
changeAnime( spep_4-3 + 53, 1, 108 );
changeAnime( spep_4-3 + 54, 1, 106 );
changeAnime( spep_4-3 + 58, 1, 108 );
changeAnime( spep_4-3 + 62, 1, 106 );
changeAnime( spep_4-3 + 66, 1, 108 );
changeAnime( spep_4-3 + 70, 1, 106 );
changeAnime( spep_4-3 + 74, 1, 108 );
changeAnime( spep_4-3 + 79, 1, 106 );
changeAnime( spep_4-3 + 80, 1, 108 );
changeAnime( spep_4-3 + 84, 1, 106 );
changeAnime( spep_4-3 + 88, 1, 108 );
changeAnime( spep_4-3 + 93, 1, 106 );
changeAnime( spep_4-3 + 94, 1, 108 );
changeAnime( spep_4-3 + 98, 1, 106 );
changeAnime( spep_4-3 + 102, 1, 108 );
changeAnime( spep_4-3 + 106, 1, 106 );
changeAnime( spep_4-3 + 111, 1, 108 );
changeAnime( spep_4-3 + 112, 1, 106 );
changeAnime( spep_4-3 + 146, 1, 108 );

setMoveKey( spep_4 + 0, 1, 88.7, 49.1 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 105.4, 49.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 115.4, 49.1 , 0 );
setMoveKey( spep_4-3 + 7, 1, 118.7, 49.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 141.7, 73 , 0 );
setMoveKey( spep_4-3 + 10, 1, 146.5, 60 , 0 );
setMoveKey( spep_4-3 + 12, 1, 135.6, 58 , 0 );
setMoveKey( spep_4-3 + 14, 1, 121, 75 , 0 );
setMoveKey( spep_4-3 + 16, 1, 98.4, 66 , 0 );
setMoveKey( spep_4-3 + 18, 1, 88.5, 74 , 0 );
setMoveKey( spep_4-3 + 20, 1, 85.9, 56 , 0 );
setMoveKey( spep_4-3 + 22, 1, 88.7, 59 , 0 );
setMoveKey( spep_4-3 + 24, 1, 102.6, 89 , 0 );
setMoveKey( spep_4-3 + 26, 1, 89.4, 55 , 0 );
setMoveKey( spep_4-3 + 28, 1, 89, 68 , 0 );
setMoveKey( spep_4-3 + 30, 1, 82.4, 65 , 0 );
setMoveKey( spep_4-3 + 32, 1, 82.6, 65 , 0 );
setMoveKey( spep_4-3 + 34, 1, 85.7, 69 , 0 );
setMoveKey( spep_4-3 + 36, 1, 90.6, 55 , 0 );
setMoveKey( spep_4-3 + 38, 1, 91.4, 65 , 0 );
setMoveKey( spep_4-3 + 40, 1, 95, 58 , 0 );
setMoveKey( spep_4-3 + 42, 1, 95.4, 58 , 0 );
setMoveKey( spep_4-3 + 44, 1, 96.6, 66 , 0 );
setMoveKey( spep_4-3 + 47, 1, 94.7, 57 , 0 );
setMoveKey( spep_4-3 + 48, 1, 13.1, 13.4 , 0 );
setMoveKey( spep_4-3 + 51, 1, 13.2, 2.9 , 0 );
setMoveKey( spep_4-3 + 53, 1, 76.4, 5.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 36.2, -4.1 , 0 );
setMoveKey( spep_4-3 + 57, 1, 15.2, -1.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 54.2, 23 , 0 );
setMoveKey( spep_4-3 + 61, 1, 58.2, 8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 87.4, -7.1 , 0 );
setMoveKey( spep_4-3 + 65, 1, 81.4, -5.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 106.4, 48.2 , 0 );
setMoveKey( spep_4-3 + 69, 1, 96.4, 34.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, 47.2, -10.1 , 0 );
setMoveKey( spep_4-3 + 73, 1, 35.2, 2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.4, -17 , 0 );
setMoveKey( spep_4-3 + 77, 1, 118.4, -5 , 0 );
setMoveKey( spep_4-3 + 79, 1, 65.3, 12.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 79.4, 62.3 , 0 );
setMoveKey( spep_4-3 + 83, 1, 75.4, 86.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 25.2, -2.1 , 0 );
setMoveKey( spep_4-3 + 87, 1, 4.2, 0.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 76.3, -4.1 , 0 );
setMoveKey( spep_4-3 + 91, 1, 80.3, -19.1 , 0 );
setMoveKey( spep_4-3 + 93, 1, 88.4, -20.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 73.2, 11.1 , 0 );
setMoveKey( spep_4-3 + 97, 1, 85.2, 15.1 , 0 );
setMoveKey( spep_4-3 + 98, 1, 101.4, 52.1 , 0 );
setMoveKey( spep_4-3 + 101, 1, 113.4, 48.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 65.2, 12.1 , 0 );
setMoveKey( spep_4-3 + 105, 1, 85.3, 14.1 , 0 );
setMoveKey( spep_4-3 + 106, 1, 83.3, 3.9 , 0 );
setMoveKey( spep_4-3 + 109, 1, 67.3, -18.1 , 0 );
setMoveKey( spep_4-3 + 111, 1, 110.3, -35.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 41.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 114, 1, 62, 2.3 , 0 );
setMoveKey( spep_4-3 + 116, 1, 11.5, 13.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, 11.1, 14.7 , 0 );
setMoveKey( spep_4-3 + 120, 1, 17.7, 15.8 , 0 );
setMoveKey( spep_4-3 + 122, 1, 23.2, 17 , 0 );
setMoveKey( spep_4-3 + 124, 1, 22.8, 13.2 , 0 );
setMoveKey( spep_4-3 + 126, 1, 20.4, 17.4 , 0 );
setMoveKey( spep_4-3 + 128, 1, 20.9, 17.5 , 0 );
setMoveKey( spep_4-3 + 130, 1, 21.5, 17.6 , 0 );
setMoveKey( spep_4-3 + 132, 1, 22.1, 17.6 , 0 );
setMoveKey( spep_4-3 + 134, 1, 22.6, 17.7 , 0 );
setMoveKey( spep_4-3 + 136, 1, 23.2, 17.8 , 0 );
setMoveKey( spep_4-3 + 138, 1, 23.8, 17.9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 24.3, 18 , 0 );
setMoveKey( spep_4-3 + 142, 1, 24.9, 18 , 0 );
setMoveKey( spep_4-3 + 145, 1, 25.5, 18.1 , 0 );
setMoveKey( spep_4-3 + 146, 1, 7.5, -151.2 , 0 );
setMoveKey( spep_4-3 + 149, 1, 5.5, -178.2 , 0 );

setScaleKey( spep_4+0, 1, 1.28, 1.28 );
setScaleKey( spep_4-3 + 149, 1, 1.28, 1.28 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 47, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, -45 );
setRotateKey( spep_4-3 + 51, 1, -45 );
setRotateKey( spep_4-3 + 53, 1, 0 );
setRotateKey( spep_4-3 + 54, 1, -45 );
setRotateKey( spep_4-3 + 57, 1, -45 );
setRotateKey( spep_4-3 + 58, 1, 0 );
setRotateKey( spep_4-3 + 61, 1, 0 );
setRotateKey( spep_4-3 + 62, 1, -27.3 );
setRotateKey( spep_4-3 + 65, 1, -27.3 );
setRotateKey( spep_4-3 + 66, 1, 0 );
setRotateKey( spep_4-3 + 69, 1, 0 );
setRotateKey( spep_4-3 + 70, 1, -45 );
setRotateKey( spep_4-3 + 73, 1, -45 );
setRotateKey( spep_4-3 + 74, 1, 0 );
setRotateKey( spep_4-3 + 77, 1, 0 );
setRotateKey( spep_4-3 + 79, 1, -37.5 );
setRotateKey( spep_4-3 + 80, 1, -16 );
setRotateKey( spep_4-3 + 83, 1, -16 );
setRotateKey( spep_4-3 + 84, 1, -43.5 );
setRotateKey( spep_4-3 + 87, 1, -43.5 );
setRotateKey( spep_4-3 + 88, 1, 0 );
setRotateKey( spep_4-3 + 91, 1, 0 );
setRotateKey( spep_4-3 + 93, 1, -45 );
setRotateKey( spep_4-3 + 94, 1, 4 );
setRotateKey( spep_4-3 + 97, 1, 4 );
setRotateKey( spep_4-3 + 98, 1, -35.8 );
setRotateKey( spep_4-3 + 101, 1, -35.8 );
setRotateKey( spep_4-3 + 102, 1, 0 );
setRotateKey( spep_4-3 + 105, 1, 0 );
setRotateKey( spep_4-3 + 106, 1, -41.8 );
setRotateKey( spep_4-3 + 109, 1, -41.8 );
setRotateKey( spep_4-3 + 111, 1, -9.2 );
setRotateKey( spep_4-3 + 112, 1, -9.2 );
setRotateKey( spep_4-3 + 114, 1, -9 );
setRotateKey( spep_4-3 + 116, 1, -8.8 );
setRotateKey( spep_4-3 + 118, 1, -8.6 );
setRotateKey( spep_4-3 + 120, 1, -8.4 );
setRotateKey( spep_4-3 + 122, 1, -8.2 );
setRotateKey( spep_4-3 + 124, 1, -8 );
setRotateKey( spep_4-3 + 126, 1, -7.8 );
setRotateKey( spep_4-3 + 128, 1, -7.6 );
setRotateKey( spep_4-3 + 130, 1, -7.4 );
setRotateKey( spep_4-3 + 132, 1, -7.2 );
setRotateKey( spep_4-3 + 134, 1, -7 );
setRotateKey( spep_4-3 + 136, 1, -6.8 );
setRotateKey( spep_4-3 + 138, 1, -6.6 );
setRotateKey( spep_4-3 + 140, 1, -6.4 );
setRotateKey( spep_4-3 + 142, 1, -6.2 );
setRotateKey( spep_4-3 + 145, 1, -6 );
setRotateKey( spep_4-3 + 146, 1, 89.3 );
setRotateKey( spep_4-3 + 149, 1, 89.3 );

--敵の動き
setDisp( spep_4-3 + 236, 1, 1 );
setDisp( spep_4-3 + 302, 1, 0 );

changeAnime( spep_4-3 + 236, 1, 108 );
changeAnime( spep_4-3 + 252, 1, 106 );
changeAnime( spep_4-3 + 256, 1, 108 );
changeAnime( spep_4-3 + 258, 1, 106 );
changeAnime( spep_4-3 + 262, 1, 108 );
changeAnime( spep_4-3 + 266, 1, 106 );
changeAnime( spep_4-3 + 270, 1, 108 );
changeAnime( spep_4-3 + 274, 1, 106 );
changeAnime( spep_4-3 + 278, 1, 108 );
changeAnime( spep_4-3 + 280, 1, 106 );
changeAnime( spep_4-3 + 284, 1, 108 );
changeAnime( spep_4-3 + 288, 1, 106 );
changeAnime( spep_4-3 + 292, 1, 108 );

setMoveKey( spep_4-3 + 236, 1, -1.4, -86.6 , 0 );
setMoveKey( spep_4-3 + 238, 1, 0.3, -87.3 , 0 );
setMoveKey( spep_4-3 + 240, 1, 2.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 242, 1, 2.2, -96 , 0 );
setMoveKey( spep_4-3 + 244, 1, 2.4, -102.1 , 0 );
setMoveKey( spep_4-3 + 246, 1, 2.5, -105.3 , 0 );
setMoveKey( spep_4-3 + 248, 1, 2.7, -108.1 , 0 );
setMoveKey( spep_4-3 + 250, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_4-3 + 251, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_4-3 + 252, 1, 8.5, -66.3 , 0 );
setMoveKey( spep_4-3 + 255, 1, 9.1, -58.1 , 0 );
setMoveKey( spep_4-3 + 256, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_4-3 + 257, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_4-3 + 258, 1, 3.1, -67.6 , 0 );
setMoveKey( spep_4-3 + 260, 1, -3, -76.4 , 0 );
setMoveKey( spep_4-3 + 261, 1, -3, -76.4 , 0 );
setMoveKey( spep_4-3 + 262, 1, 1.2, -78.4 , 0 );
setMoveKey( spep_4-3 + 264, 1, 1.2, -77 , 0 );
setMoveKey( spep_4-3 + 265, 1, 1.2, -77 , 0 );
setMoveKey( spep_4-3 + 266, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_4-3 + 268, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_4-3 + 269, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_4-3 + 270, 1, 5.3, -83.3 , 0 );
setMoveKey( spep_4-3 + 272, 1, 9, -89.8 , 0 );
setMoveKey( spep_4-3 + 273, 1, 9, -89.8 , 0 );
setMoveKey( spep_4-3 + 274, 1, 3.5, -81.3 , 0 );
setMoveKey( spep_4-3 + 276, 1, 5.5, -73.6 , 0 );
setMoveKey( spep_4-3 + 277, 1, 5.5, -73.6 , 0 )
setMoveKey( spep_4-3 + 278, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_4-3 + 279, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_4-3 + 280, 1, 16.7, -56.2 , 0 );
setMoveKey( spep_4-3 + 282, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_4-3 + 283, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_4-3 + 284, 1, 5, -81 , 0 );
setMoveKey( spep_4-3 + 286, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_4-3 + 287, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_4-3 + 288, 1, 2.8, -65.8 , 0 );
setMoveKey( spep_4-3 + 290, 1, 1.9, -88 , 0 );
setMoveKey( spep_4-3 + 291, 1, 1.9, -88 , 0 );
setMoveKey( spep_4-3 + 292, 1, 2.6, -114 , 0 );
setMoveKey( spep_4-3 + 293, 1, 2.6, -114 , 0 );
setMoveKey( spep_4-3 + 294, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_4-3 + 295, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_4-3 + 296, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_4-3 + 297, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_4-3 + 298, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_4-3 + 299, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_4-3 + 300, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_4-3 + 301, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_4-3 + 302, 1, -5.7, -135.2 , 0 );

setScaleKey( spep_4-3 + 236, 1,0.71,0.71);
setScaleKey( spep_4-3 + 291, 1,0.71,0.71);
setScaleKey( spep_4-3 + 292, 1,0.89,0.89);
setScaleKey( spep_4-3 + 294, 1,0.89,0.89);
setScaleKey( spep_4-3 + 295, 1,0.89,0.89);
setScaleKey( spep_4-3 + 296, 1,1.08,1.08);
setScaleKey( spep_4-3 + 302, 1,1.08,1.08);

setRotateKey( spep_4-3 + 236, 1, 90 );
setRotateKey( spep_4-3 + 251, 1, 90 );
setRotateKey( spep_4-3 + 252, 1, 65.5 );
setRotateKey( spep_4-3 + 255, 1, 65.5 );
setRotateKey( spep_4-3 + 256, 1, 90 );
setRotateKey( spep_4-3 + 257, 1, 90 );
setRotateKey( spep_4-3 + 258, 1, 65.5 );
setRotateKey( spep_4-3 + 261, 1, 65.5 );
setRotateKey( spep_4-3 + 262, 1, 105.7 );
setRotateKey( spep_4-3 + 265, 1, 105.7 );
setRotateKey( spep_4-3 + 266, 1, 65.5 );
setRotateKey( spep_4-3 + 269, 1, 65.5 );
setRotateKey( spep_4-3 + 270, 1, 90 );
setRotateKey( spep_4-3 + 273, 1, 90 );
setRotateKey( spep_4-3 + 274, 1, 65.5 );
setRotateKey( spep_4-3 + 277, 1, 65.5 );
setRotateKey( spep_4-3 + 278, 1, 90 );
setRotateKey( spep_4-3 + 279, 1, 90 );
setRotateKey( spep_4-3 + 280, 1, 65.5 );
setRotateKey( spep_4-3 + 283, 1, 65.5 )
setRotateKey( spep_4-3 + 284, 1, 90 );
setRotateKey( spep_4-3 + 286, 1, 90 );
setRotateKey( spep_4-3 + 288, 1, 65.5 );
setRotateKey( spep_4-3 + 291, 1, 65.5 );
setRotateKey( spep_4-3 + 292, 1, 90 );
setRotateKey( spep_4-3 + 295, 1, 90 );
setRotateKey( spep_4-3 + 296, 1, 91.8 );
setRotateKey( spep_4-3 + 302, 1, 91.8 );

--敵の動き
setDisp( spep_4-3 + 476, 1, 1 );
setDisp( spep_4-1 + 534, 1, 0 );

changeAnime( spep_4-3 + 476, 1,8 );
changeAnime( spep_4-3 + 498, 1,6 );

setMoveKey( spep_4-3 + 476, 1, -26.1, -21.9 , 0 );
setMoveKey( spep_4-3 + 478, 1, -26.1, -18.1 , 0 );
setMoveKey( spep_4-3 + 480, 1, -26.1, -14.7 , 0 );
setMoveKey( spep_4-3 + 482, 1, -26.1, -11.7 , 0 );
setMoveKey( spep_4-3 + 484, 1, -26.1, -9.1 , 0 );
setMoveKey( spep_4-3 + 486, 1, -26.1, -6.9 , 0 );
setMoveKey( spep_4-3 + 488, 1, -26.1, -5.1 , 0 );
setMoveKey( spep_4-3 + 490, 1, -26.1, -3.7 , 0 );
setMoveKey( spep_4-3 + 492, 1, -26.1, -2.7 , 0 );
setMoveKey( spep_4-3 + 494, 1, -26.1, -2.1 , 0 );
setMoveKey( spep_4-3 + 496, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_4-3 + 497, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_4-3 + 498, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_4-3 + 499, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_4-3 + 500, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_4-3 + 501, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_4-3 + 502, 1, 44.5, -39 , 0 );
setMoveKey( spep_4-3 + 503, 1, 44.5, -39 , 0 );
setMoveKey( spep_4-3 + 504, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_4-3 + 505, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_4-3 + 506, 1, 40, -22.5 , 0 );
setMoveKey( spep_4-3 + 507, 1, 40, -22.5 , 0 );
setMoveKey( spep_4-3 + 508, 1, 31, -60.5 , 0 );
setMoveKey( spep_4-3 + 509, 1, 31, -60.5 , 0 );
setMoveKey( spep_4-3 + 510, 1, 28, -24.1 , 0 );
setMoveKey( spep_4-3 + 511, 1, 28, -24.1 , 0 );
setMoveKey( spep_4-3 + 512, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_4-3 + 513, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_4-3 + 514, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 515, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 516, 1, 37, -49 , 0 );
setMoveKey( spep_4-3 + 517, 1, 37, -49 , 0 );
setMoveKey( spep_4-3 + 518, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_4-3 + 519, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_4-3 + 520, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_4-3 + 521, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_4-3 + 522, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_4-3 + 523, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_4-3 + 524, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_4-3 + 525, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_4-3 + 526, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_4-3 + 527, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_4-3 + 528, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_4-3 + 529, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_4-3 + 530, 1, 40, -25.1 , 0 );
setMoveKey( spep_4-3 + 531, 1, 40, -25.1 , 0 );
setMoveKey( spep_4-3 + 532, 1, 32.5, -36.7 , 0 );
setMoveKey( spep_4-1 + 534, 1, 32.6, -21.6 , 0 );

setScaleKey( spep_4-3 + 476, 1,2.06,2.06);
setScaleKey( spep_4-3 + 497, 1,2.06,2.06);
setScaleKey( spep_4-3 + 498, 1,2.18,2.18);
setScaleKey( spep_4-1 + 534, 1,2.18,2.18);

setRotateKey( spep_4-3 + 476, 1, 0 );
setRotateKey( spep_4-3 + 496, 1, 0 );
setRotateKey( spep_4-3 + 497, 1, 0 );
setRotateKey( spep_4-3 + 498, 1, 45 );
setRotateKey( spep_4-1 + 534, 1, 45 );

--敵の動き
setDisp( spep_4-3 + 570, 1, 1 );
setDisp( spep_4-3 + 710, 1, 0 );

changeAnime( spep_4-3 + 570, 1,106 );
changeAnime( spep_4-3 + 580, 1,108 );
changeAnime( spep_4-3 + 664, 1,106 );

setBlendColor(spep_4-3 + 630,1, 3 , 0.2 , 0.6 , 1 ,0.44);
setBlendColor(spep_4-3 + 663,1, 3 , 0.2 , 0.6 , 1 ,0.44);
setBlendColor(spep_4-3 + 664,1, 3 , 0.4 , 1 , 1 ,0.25);
setBlendColor(spep_4-3 + 712,1, 3 , 0.4 , 1 , 1 ,0.25);
setBlendColor(spep_4-3 + 714,1, 3 , 0.4 , 1 , 1 ,0);

setMoveKey( spep_4-3 + 570, 1, -21.8, 42.1 , 0 );
setMoveKey( spep_4-3 + 572, 1, -21.9, 42.1 , 0 );
setMoveKey( spep_4-3 + 574, 1, -22.1, 41.9 , 0 );
setMoveKey( spep_4-3 + 576, 1, -21.1, 33.4 , 0 );
setMoveKey( spep_4-3 + 579, 1, -21.1, 33.4 , 0 );
setMoveKey( spep_4-3 + 580, 1, 205.5, 120.4 , 0 );
setMoveKey( spep_4-3 + 581, 1, 205.5, 120.4 , 0 );
setMoveKey( spep_4-3 + 582, 1, 222.5, 97.4 , 0 );
setMoveKey( spep_4-3 + 583, 1, 222.5, 97.4 , 0 );
setMoveKey( spep_4-3 + 584, 1, 219.4, 135.1 , 0 );
setMoveKey( spep_4-3 + 585, 1, 219.4, 135.1 , 0 );
setMoveKey( spep_4-3 + 586, 1, 229.9, 128.3 , 0 );
setMoveKey( spep_4-3 + 587, 1, 229.9, 128.3 , 0 );
setMoveKey( spep_4-3 + 588, 1, 230.6, 132.9 , 0 );
setMoveKey( spep_4-3 + 589, 1, 230.6, 132.9 , 0 );
setMoveKey( spep_4-3 + 590, 1, 142.9, 113.3 , 0 );
setMoveKey( spep_4-3 + 591, 1, 142.9, 113.3 , 0 );
setMoveKey( spep_4-3 + 592, 1, 143.7, 117.4 , 0 );
setMoveKey( spep_4-3 + 593, 1, 143.7, 117.4 , 0 );
setMoveKey( spep_4-3 + 594, 1, 54.7, 93.7 , 0 );
setMoveKey( spep_4-3 + 596, 1, 54.7, 99.7 , 0 );
setMoveKey( spep_4-3 + 598, 1, 54.8, 100.3 , 0 );
setMoveKey( spep_4-3 + 600, 1, 52.9, 100.2 , 0 );
setMoveKey( spep_4-3 + 602, 1, 54, 95.6 , 0 );
setMoveKey( spep_4-3 + 604, 1, 53, 98.2 , 0 );
setMoveKey( spep_4-3 + 606, 1, 52.8, 96.2 , 0 );
setMoveKey( spep_4-3 + 608, 1, 53.7, 99.2 , 0 );
setMoveKey( spep_4-3 + 610, 1, 54, 96.6 , 0 );
setMoveKey( spep_4-3 + 612, 1, 53, 97.8 , 0 );
setMoveKey( spep_4-3 + 614, 1, 54, 97.3 , 0 );
setMoveKey( spep_4-3 + 616, 1, 53.7, 97.5 , 0 );
setMoveKey( spep_4-3 + 618, 1, 53.8, 97.5 , 0 );
setMoveKey( spep_4-3 + 629, 1, 53.8, 97.5 , 0 );

setMoveKey( spep_4-3 + 630, 1, -532.5, -38.8 , 0 );
setMoveKey( spep_4-3 + 632, 1, -530.3, -37.3 , 0 );
setMoveKey( spep_4-3 + 634, 1, -528, -35.8 , 0 );
setMoveKey( spep_4-3 + 636, 1, -525.8, -34.3 , 0 );
setMoveKey( spep_4-3 + 638, 1, -523.5, -33.6 , 0 );
setMoveKey( spep_4-3 + 640, 1, -522.5, -34 , 0 );
setMoveKey( spep_4-3 + 642, 1, -525, -35.1 , 0 );
setMoveKey( spep_4-3 + 644, 1, -527.4, -36.1 , 0 );
setMoveKey( spep_4-3 + 646, 1, -529.8, -37.2 , 0 );
setMoveKey( spep_4-3 + 648, 1, -532.3, -38.2 , 0 );
setMoveKey( spep_4-3 + 650, 1, -534.8, -39.3 , 0 );
setMoveKey( spep_4-3 + 652, 1, -534.5, -41.2 , 0 );
setMoveKey( spep_4-3 + 654, 1, -533.8, -42.4 , 0 );
setMoveKey( spep_4-3 + 656, 1, -533, -43.6 , 0 );
setMoveKey( spep_4-3 + 658, 1, -532.1, -41.5 , 0 );
setMoveKey( spep_4-3 + 660, 1, -531.1, -39.4 , 0 );
setMoveKey( spep_4-3 + 662, 1, -530.2, -37.3 , 0 );
setMoveKey( spep_4-3 + 663, 1, -530.2, -37.3 , 0 );

a=-13;

setMoveKey( spep_4-3 + 664, 1, -10.3, -2.7+a , 0 );
setMoveKey( spep_4-3 + 665, 1, -10.3, -2.7+a , 0 );
setMoveKey( spep_4-3 + 666, 1, -10.3, -2.7+a , 0 );
setMoveKey( spep_4-3 + 667, 1, -10.3, -2.7+a , 0 );
setMoveKey( spep_4-3 + 668, 1, -13.3, 1.8+a , 0 );
setMoveKey( spep_4-3 + 669, 1, -13.3, 1.8+a , 0 );
setMoveKey( spep_4-3 + 670, 1, -13.3, -1.9+a , 0 );
setMoveKey( spep_4-3 + 671, 1, -13.3, -1.9+a , 0 );
setMoveKey( spep_4-3 + 672, 1, -12.6, -4.9+a , 0 );
setMoveKey( spep_4-3 + 673, 1, -12.6, -4.9+a , 0 );
setMoveKey( spep_4-3 + 674, 1, 3.1, 4+a , 0 );
setMoveKey( spep_4-3 + 675, 1, 3.1, 4+a , 0 );
setMoveKey( spep_4-3 + 676, 1, -4.4, -23.5+a , 0 );
setMoveKey( spep_4-3 + 677, 1, -4.4, -23.5+a , 0 );
setMoveKey( spep_4-3 + 678, 1, -11.1, -0.5+a , 0 );
setMoveKey( spep_4-3 + 679, 1, -11.1, -0.5+a , 0 );
setMoveKey( spep_4-3 + 680, 1, -12.6, 8.5+a , 0 );
setMoveKey( spep_4-3 + 681, 1, -12.6, 8.5+a , 0 );
setMoveKey( spep_4-3 + 682, 1, -1.4, -10.1+a , 0 );
setMoveKey( spep_4-3 + 683, 1, -1.4, -10.1+a , 0 );
setMoveKey( spep_4-3 + 684, 1, -2.9, -1.9+a , 0 );
setMoveKey( spep_4-3 + 685, 1, -2.9, -1.9+a , 0 );
setMoveKey( spep_4-3 + 686, 1, -16.3, -15.3+a , 0 );
setMoveKey( spep_4-3 + 687, 1, -16.3, -15.3+a , 0 );
setMoveKey( spep_4-3 + 688, 1, -20, -6.4+a , 0 );
setMoveKey( spep_4-3 + 689, 1, -20, -6.4+a , 0 );
setMoveKey( spep_4-3 + 690, 1, -5.9, -13.8+a , 0 );
setMoveKey( spep_4-3 + 691, 1, -5.9, -13.8+a , 0 );
setMoveKey( spep_4-3 + 692, 1, -8.8, -8.6+a , 0 );
setMoveKey( spep_4-3 + 693, 1, -8.8, -8.6+a , 0 );
setMoveKey( spep_4-3 + 694, 1, -13.3, -13.8+a , 0 );
setMoveKey( spep_4-3 + 695, 1, -13.3, -13.8+a , 0 );
setMoveKey( spep_4-3 + 696, 1, -16.3, 8.5+a , 0 );
setMoveKey( spep_4-3 + 697, 1, -16.3, 8.5+a , 0 );
setMoveKey( spep_4-3 + 698, 1, -3.6, -8.6+a , 0 );
setMoveKey( spep_4-3 + 699, 1, -3.6, -8.6+a , 0 );
setMoveKey( spep_4-3 + 700, 1, -4.4, -5.6+a , 0 );
setMoveKey( spep_4-3 + 701, 1, -4.4, -5.6+a , 0 );
setMoveKey( spep_4-3 + 702, 1, -10.3, -3.4+a , 0 );
setMoveKey( spep_4-3 + 703, 1, -10.3, -3.4+a , 0 );
setMoveKey( spep_4-3 + 704, 1, -13.3, -12.3+a , 0 );
setMoveKey( spep_4-3 + 705, 1, -13.3, -12.3+a , 0 );
setMoveKey( spep_4-3 + 706, 1, -14.8, -0.4+a , 0 );
setMoveKey( spep_4-3 + 707, 1, -14.8, -0.4+a , 0 );
setMoveKey( spep_4-3 + 708, 1, -12.6, -3.4+a , 0 );
setMoveKey( spep_4-3 + 709, 1, -12.6, -3.4+a , 0 );
setMoveKey( spep_4-3 + 710, 1, -9.6, -2.6+a , 0 );

setScaleKey( spep_4-3 + 570, 1,1.51,1.51);
setScaleKey( spep_4-3 + 579, 1,1.51,1.51);
setScaleKey( spep_4-3 + 580, 1,1.58,1.58);
setScaleKey( spep_4-3 + 584, 1,1.58,1.58);
setScaleKey( spep_4-3 + 586, 1,1.63,1.63);
setScaleKey( spep_4-3 + 629, 1,1.63,1.63);

setScaleKey( spep_4-3 + 630, 1, 14.06, 14.06 );
setScaleKey( spep_4-3 + 663, 1, 14.06, 14.06 );

setScaleKey( spep_4-3 + 664, 1,0.56,0.56);
setScaleKey( spep_4-3 + 710, 1,0.56,0.56);


setRotateKey( spep_4-3 + 570, 1, -65.5 );
setRotateKey( spep_4-3 + 579, 1, -65.5 );
setRotateKey( spep_4-3 + 580, 1, -25.1 );
setRotateKey( spep_4-3 + 582, 1, -21.9 );
setRotateKey( spep_4-3 + 584, 1, -21.9 );
setRotateKey( spep_4-3 + 586, 1, -23.2 );
setRotateKey( spep_4-3 + 629, 1, -23.2 );

setRotateKey( spep_4-3 + 630, 1, 18 );
setRotateKey( spep_4-3 + 662, 1, 18 );
setRotateKey( spep_4-3 + 663, 1, 18 );

setRotateKey( spep_4-3 + 664, 1, -51.9 );
setRotateKey( spep_4-3 + 710, 1, -51.9 );

--SE
--フリーザ向かっていく
stopSe( spep_4 + 12, SE020, 2 );

--初手パンチ
SE023 = playSe( spep_4 + 6, 1233 );	
setSeVolumeByWorkId( spep_4 + 6, SE023, 0 );
setSeVolumeByWorkId( spep_4 + 7, SE023, 50 );
setSeVolumeByWorkId( spep_4 + 8, SE023, 100 );
setStartTimeMs( SE023,  117 );
SE024 = playSe( spep_4 + 10, 1135 );
setPitch( spep_4 + 10, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );
SE025 = playSe( spep_4 + 10, 1016 );
SE026 = playSe( spep_4 + 14, 1187 );

--横向きラッシュ
SE027 = playSe( spep_4 + 50, 1189 );
setSeVolumeByWorkId( spep_4 + 50, SE027, 126 );
SE028 = playSe( spep_4 + 56, 1009 );
setSeVolumeByWorkId( spep_4 + 56, SE028, 83 );
SE029 = playSe( spep_4 + 56, 1110 );
SE030 = playSe( spep_4 + 66, 1006 );
SE031 = playSe( spep_4 + 76, 1110 );
SE032 = playSe( spep_4 + 76, 1001 );
setSeVolumeByWorkId( spep_4 + 76, SE032, 65 );
stopSe(spep_4 + 142 - 18,SE032,18);
SE033 = playSe( spep_4 + 86, 1110 );
stopSe(spep_4 + 142 - 18,SE033,18)
SE034 = playSe( spep_4 + 106, 1072 );
setSeVolumeByWorkId( spep_4 + 106, SE034, 0 );
setSeVolumeByWorkId( spep_4 + 107, SE034, 14 );
setSeVolumeByWorkId( spep_4 + 108, SE034, 28 );
setSeVolumeByWorkId( spep_4 + 109, SE034, 42 );
setSeVolumeByWorkId( spep_4 + 110, SE034, 56 );
setSeVolumeByWorkId( spep_4 + 111, SE034, 70 );
setSeVolumeByWorkId( spep_4 + 112, SE034, 84 );
setStartTimeMs( SE034,  317 );
SE035 = playSe( spep_4 + 96, 1010 );
setSeVolumeByWorkId( spep_4 + 96, SE035, 85 );
SE036 = playSe( spep_4 + 98, 1110 );
setSeVolumeByWorkId( spep_4 + 98, SE036, 90 );
stopSe(spep_4 + 142 - 10,SE036,10);
SE037 = playSe( spep_4 + 110, 1110 );
SE038 = playSe( spep_4 + 110, 1000 );

--岩たたきつけ
SE039 = playSe( spep_4 + 144, 1061 );
stopSe( spep_4 + 162, SE039, 12 );
SE040 = playSe( spep_4 + 148, 1182 );
setSeVolumeByWorkId( spep_4 + 148, SE040, 141 );
stopSe( spep_4 + 158, SE040, 6 );
SE041 = playSe( spep_4 + 150, 1188 );
SE042 = playSe( spep_4 + 164, 1159 );
setSeVolumeByWorkId( spep_4 + 164, SE042, 79 );

--岩反対側爆発
SE043 = playSe( spep_4 + 172, 1023 );
SE044 = playSe( spep_4 + 174, 1068 );
SE045 = playSe( spep_4 + 174, 1024 );
setSeVolumeByWorkId( spep_4 + 174, SE045, 87 );

--落ちていく
SE046 = playSe( spep_4 + 204, 1121 );
setSeVolumeByWorkId( spep_4 + 204, SE046, 57 );
stopSe( spep_4 + 296, SE046, 26 );

--下向きラッシュ
SE047 = playSe( spep_4 + 248, 1000 );
setSeVolumeByWorkId( spep_4 + 248, SE047, 67 );
SE048 = playSe( spep_4 + 248, 1110 );
setSeVolumeByWorkId( spep_4 + 248, SE048, 54 );
SE049 = playSe( spep_4 + 258, 1000 );
setSeVolumeByWorkId( spep_4 + 258, SE049, 55 );
SE050 = playSe( spep_4 + 258, 1110 );
setSeVolumeByWorkId( spep_4 + 258, SE050, 54 );
SE052 = playSe( spep_4 + 268, 1001 );
setSeVolumeByWorkId( spep_4 + 268, SE052, 47 );
SE053 = playSe( spep_4 + 270, 1110 );
setSeVolumeByWorkId( spep_4 + 270, SE053, 45 );
SE054 = playSe( spep_4 + 282, 1110 );
setSeVolumeByWorkId( spep_4 + 282, SE054, 68 );
SE055 = playSe( spep_4 + 282, 1009 );
setSeVolumeByWorkId( spep_4 + 282, SE055, 89 );

--地面激突
SE056 = playSe( spep_4 + 294, 1061 );
setSeVolumeByWorkId( spep_4 + 294, SE056, 110 );
SE057 = playSe( spep_4 + 298, 1159  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 298, SE057, 81 );
SE058 = playSe( spep_4 + 298, 1188 );
setSeVolumeByWorkId( spep_4 + 298, SE058, 72 );
SE051 = playSe( spep_4 + 298, 1168  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 298, SE051, 0 );
setSeVolumeByWorkId( spep_4 + 299, SE051, 2.7 );
setSeVolumeByWorkId( spep_4 + 300, SE051, 5.4 );
setSeVolumeByWorkId( spep_4 + 301, SE051, 8.1 );
setSeVolumeByWorkId( spep_4 + 302, SE051, 10.8 );
setSeVolumeByWorkId( spep_4 + 303, SE051, 13.5 );
setSeVolumeByWorkId( spep_4 + 304, SE051, 16.2 );
setSeVolumeByWorkId( spep_4 + 305, SE051, 18.9 );
setSeVolumeByWorkId( spep_4 + 306, SE051, 21.6 );
setSeVolumeByWorkId( spep_4 + 307, SE051, 24.3 );
setSeVolumeByWorkId( spep_4 + 308, SE051, 27 );
setSeVolumeByWorkId( spep_4 + 309, SE051, 29.7 );
setSeVolumeByWorkId( spep_4 + 310, SE051, 32.4 );
setSeVolumeByWorkId( spep_4 + 311, SE051, 35.1 );
setSeVolumeByWorkId( spep_4 + 312, SE051, 37.8 );
setSeVolumeByWorkId( spep_4 + 313, SE051, 40.5 );
setSeVolumeByWorkId( spep_4 + 314, SE051, 43.2 );
setSeVolumeByWorkId( spep_4 + 315, SE051, 45.9 );
setSeVolumeByWorkId( spep_4 + 316, SE051, 48.6 );
setSeVolumeByWorkId( spep_4 + 317, SE051, 51.3 );
setSeVolumeByWorkId( spep_4 + 318, SE051, 54 );
setSeVolumeByWorkId( spep_4 + 319, SE051, 56.7 );
setSeVolumeByWorkId( spep_4 + 320, SE051, 59.4 );
setSeVolumeByWorkId( spep_4 + 321, SE051, 62.1 );
setSeVolumeByWorkId( spep_4 + 322, SE051, 64.8 );
setSeVolumeByWorkId( spep_4 + 323, SE051, 67.5 );
setSeVolumeByWorkId( spep_4 + 324, SE051, 70.2 );
setSeVolumeByWorkId( spep_4 + 325, SE051, 72.9 );
setSeVolumeByWorkId( spep_4 + 326, SE051, 77 );
setStartTimeMs( SE051,  650 );

--岩持ち上げる
SE059 = playSe( spep_4 + 442, 1190 );
setSeVolumeByWorkId( spep_4 + 442, SE059, 87 );
SE060 = playSe( spep_4 + 442, 1170 );
setPitch( spep_4 + 442, SE060, -400 );
setTimeStretch( SE060, 0.73, 10, 1 );
SE061 = playSe( spep_4 + 444, 1047 );

--岩挟まれる
SE063 = playSe( spep_4 + 492, 1061  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 492, SE063, 200 );
setPitch( spep_4 + 492, SE063, -1000 );
setTimeStretch( SE063, 0.33, 10, 1 );
SE064 = playSe( spep_4 + 496, 1188  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 496, SE064, 81 );
SE065 = playSe( spep_4 + 498, 1160  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 498, SE065, 84 );
SE062 = playSe( spep_4 + 498, 1168  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 498, SE062, 0 );
setSeVolumeByWorkId( spep_4 + 499, SE062, 12.5 );
setSeVolumeByWorkId( spep_4 + 500, SE062, 25 );
setSeVolumeByWorkId( spep_4 + 501, SE062, 37.5 );
setSeVolumeByWorkId( spep_4 + 502, SE062, 50 );
setSeVolumeByWorkId( spep_4 + 503, SE062, 62.5 );
setSeVolumeByWorkId( spep_4 + 504, SE062, 75 );
setSeVolumeByWorkId( spep_4 + 505, SE062, 87.5 );
setSeVolumeByWorkId( spep_4 + 506, SE062, 100 );	
setStartTimeMs( SE062,  583 );
stopSe( spep_4 + 556, SE062, 52 );

--17号タックル
SE066 = playSe( spep_4 + 578, 1182 );
SE067 = playSe( spep_4 + 578, 1027 );
SE068 = playSe( spep_4 + 578, 1314 );
stopSe( spep_4 + 662, SE068, 10 );

--気弾溜め
SE069 = playSe( spep_4 + 628, 1281 ,"",0.6);
setPitch( spep_4 + 628, SE069, -200 );
setTimeStretch( SE069, 0.87, 10, 1 );
stopSe( spep_4 + 666, SE069, 4 );
SE070 = playSe( spep_4 + 628, 1255 ,"",0.6);
stopSe( spep_4 + 666, SE070, 4 );

--バリア張る
SE071 = playSe( spep_4 + 662, 1302 );
SE072 = playSe( spep_4 + 664, 1313 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 664, SE072, 40 );
stopSe( spep_4 + 698, SE072, 10 );
SE073 = playSe( spep_4 + 664, 1042 );
setSeVolumeByWorkId( spep_4 + 664, SE073, 78 );
stopSe( spep_4 + 682, SE073, 10 );
SE074 = playSe( spep_4 + 668, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 668, SE074, 240 );
setPitch( spep_4 + 668, SE074, 500 );
setTimeStretch( SE074, 0.89, 10, 1 );
SE075 = playSe( spep_4 + 668, 1224 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 668, SE075, 180 );
setPitch( spep_4 + 668, SE075, -600 );
setTimeStretch( SE075, 0.6, 10, 1 );
stopSe( spep_4 + 702, SE075, 10 );

--バリア光る
SE076 = playSe( spep_4 + 708, 1306 );
setSeVolumeByWorkId( spep_4 + 708, SE076, 69 );
stopSe( spep_4 + 726, SE076, 20 );
SE077 = playSe( spep_4 + 708, 1277 );
setSeVolumeByWorkId( spep_4 + 708, SE077, 158 );
setPitch( spep_4 + 708, SE077, 100 );
setTimeStretch( SE077, 1.07, 10, 1 );
stopSe( spep_4 + 736, SE077, 18 );

--バリア内爆発
SE078 = playSe( spep_4 + 720, 1188 );

--バリア弾ける
SE079 = playSe( spep_4 + 766, 1115 );
setSeVolumeByWorkId( spep_4 + 766, SE079, 0 );
setSeVolumeByWorkId( spep_4 + 767, SE079, 25 );
setSeVolumeByWorkId( spep_4 + 768, SE079, 50 );
setSeVolumeByWorkId( spep_4 + 769, SE079, 75 );
setSeVolumeByWorkId( spep_4 + 770, SE079, 100 );
setStartTimeMs( SE079,  533 );
setPitch( spep_4 + 766, SE079, 900 );
setTimeStretch( SE079, 1.6, 10, 1 );
stopSe( spep_4 + 788, SE079, 36 );
SE080 = playSe( spep_4 + 766, 1126 );
setSeVolumeByWorkId( spep_4 + 766, SE080, 86 );
stopSe( spep_4 + 780, SE080, 46 );

--ラスト爆発
SE081 = playSe( spep_4 + 802, 1188 );
setSeVolumeByWorkId( spep_4 + 802, SE081, 77 );
SE082 = playSe( spep_4 + 804, 1068 );
setSeVolumeByWorkId( spep_4 + 804, SE082, 70 );
SE083 = playSe( spep_4 + 806, 1159 );
setSeVolumeByWorkId( spep_4 + 806, SE083, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 920, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 804 );
endPhase( spep_4 + 920 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 62, 1035 );
setSeVolumeByWorkId( spep_0 + 62, SE002, 126 );
SE003 = playSe( spep_0 + 62, 1298 );
setSeVolumeByWorkId( spep_0 + 62, SE003, 89 );

--オーラ
SE004 = playSe( spep_0 + 74, 1036 );
setPitch( spep_0 + 74, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );
SE005 = playSe( spep_0 + 98, 1036 );
setPitch( spep_0 + 98, SE005, -200 );
setTimeStretch( SE005, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+110;
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

--気ダメ
stopSe( spep_1 + 8, SE002, 0 );
stopSe( spep_1 + 8, SE003, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
--	突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 88, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 88, rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 88, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 86, rush, 255 );
setEffAlphaKey( spep_2 + 87, rush, 255 );
setEffAlphaKey( spep_2 + 88, rush, 0 );

--SE
--オーラ
SE007 = playSe( spep_2 + 0, 1036 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 63 );
setPitch( spep_2 + 0, SE007, -200 );
setTimeStretch( SE007, 0.87, 10, 1 );
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

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
--フリーザ向かっていく
SE008 = playSe( spep_2 + 14, 1182 );
SE009 = playSe( spep_2 + 14, 9 );
stopSe( spep_2 + 78, SE009, 24 );

--オーラ
SE010 = playSe( spep_2 + 20, 1036 );
setSeVolumeByWorkId( spep_2 + 20, SE010, 63 );
setPitch( spep_2 + 20, SE010, -200 );
setTimeStretch( SE010, 0.87, 10, 1 );
SE011 = playSe( spep_2 + 40, 1036 );
setSeVolumeByWorkId( spep_2 + 40, SE011, 63 );
setPitch( spep_2 + 40, SE011, -200 );
setTimeStretch( SE011, 0.87, 10, 1 );

--17号気弾溜め
SE012 = playSe( spep_2 + 48, 1311 ,"",0.6);
SE013 = playSe( spep_2 + 48, 1282 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 48, SE013, 35 );
SE014 = playSe( spep_2 + 48, 1265 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 48, SE014, 126 );

--[[
--オーラ
SE015 = playSe( spep_2 + 60, 1036 );
setSeVolumeByWorkId( spep_2 + 60, SE015, 63 );
setPitch( spep_2 + 60, SE015, -200 );
setTimeStretch( SE015, 0.87, 10, 1 );
SE016 = playSe( spep_2 + 80, 1036 );
setSeVolumeByWorkId( spep_2 + 80, SE016, 63 );
setPitch( spep_2 + 80, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );
]]
-- ** 次の準備 ** --
spep_3 = spep_2 + 88;
------------------------------------------------------
--	被弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 80, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 78, hit_f, 255 );
setEffAlphaKey( spep_3 + 79, hit_f, 255 );
setEffAlphaKey( spep_3 + 80, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 80, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 78, hit_b, 255 );
setEffAlphaKey( spep_3 + 79, hit_b, 255 );
setEffAlphaKey( spep_3 + 80, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 107 );
changeAnime( spep_3-3 + 16, 1, 108 );

setMoveKey( spep_3 + 0, 1, 115.7, -518.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 116.6, -513.6 , 0 );
setMoveKey( spep_3-3 + 4, 1, 119.3, -500 , 0 );
setMoveKey( spep_3-3 + 6, 1, 123.9, -477.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 130.3, -445.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 138.5, -404.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 148.5, -354.4 , 0 );
setMoveKey( spep_3-3 + 15, 1, 160.4, -295.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 25.3, 3.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 33.6, -24.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 39.7, 17.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 58.4, 24 , 0 );
setMoveKey( spep_3-3 + 24, 1, 81.8, 2.8 , 0 );
setMoveKey( spep_3-3 + 26, 1, 98, 62.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 118.8, 45.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, 180, 107.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 207, 112.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 229.9, 158.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 266.7, 192 , 0 );
setMoveKey( spep_3-3 + 38, 1, 275.3, 167.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 280, 184 , 0 );
setMoveKey( spep_3-3 + 42, 1, 287, 150.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 287.5, 181.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 290.4, 164.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 294.5, 175.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 286.7, 172 , 0 );
setMoveKey( spep_3-3 + 52, 1, 279.2, 162.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 280.7, 164.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 278.7, 154.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 273.2, 159.4 , 0 );
setMoveKey( spep_3-3 + 60, 1, 271, 150.8 , 0 );
setMoveKey( spep_3-3 + 62, 1, 282.1, 147.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 266.6, 152.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 270.3, 144.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, 265.4, 150.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 260.7, 146.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 260.2, 145.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 258, 143.3 , 0 );
setMoveKey( spep_3-3 + 76, 1, 256.9, 142.4 , 0 );
setMoveKey( spep_3-3 + 78, 1, 256.1, 141.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 255.5, 141.3 , 0 );
setMoveKey( spep_3-3 + 82, 1, 255.1, 140.9 , 0 );

setScaleKey( spep_3 + 0, 1, 4.6, 4.6 );
--setScaleKey( spep_3-3 + 2, 1, 4.57, 4.57 );
setScaleKey( spep_3-3 + 4, 1, 4.49, 4.49 );
setScaleKey( spep_3-3 + 6, 1, 4.34, 4.34 );
setScaleKey( spep_3-3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_3-3 + 10, 1, 3.89, 3.89 );
setScaleKey( spep_3-3 + 12, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 15, 1, 3.2, 3.2 );
setScaleKey( spep_3-3 + 16, 1, 6.3, 6.3 );
setScaleKey( spep_3-3 + 18, 1, 6.14, 6.14 );
setScaleKey( spep_3-3 + 20, 1, 5.91, 5.91 );
setScaleKey( spep_3-3 + 22, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 24, 1, 5.21, 5.21 );
setScaleKey( spep_3-3 + 26, 1, 4.75, 4.75 );
setScaleKey( spep_3-3 + 28, 1, 4.21, 4.21 );
setScaleKey( spep_3-3 + 30, 1, 3.59, 3.59 );
setScaleKey( spep_3-3 + 32, 1, 2.89, 2.89 );
setScaleKey( spep_3-3 + 34, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 38, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 40, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_3-3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 52, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 54, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 56, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 58, 1, 0.33, 0.33 );
setScaleKey( spep_3-3 + 60, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 62, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 64, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 66, 1, 0.19, 0.19 );
setScaleKey( spep_3-3 + 68, 1, 0.16, 0.16 );
setScaleKey( spep_3-3 + 70, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 72, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 74, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 76, 1, 0.09, 0.09 );
setScaleKey( spep_3-3 + 78, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 80, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 82, 1, 0.07, 0.07 );

setRotateKey( spep_3-3 + 0, 1, -135 );
setRotateKey( spep_3-3 + 15, 1, -135 );
setRotateKey( spep_3-3 + 16, 1, -11 );
setRotateKey( spep_3-3 + 82, 1, -11 );

--SE
--17号気弾溜め
stopSe( spep_3 + 4, SE012, 14 );
stopSe( spep_3 + 4, SE013, 14 );
stopSe( spep_3 + 4, SE014, 14 );

--気弾ヒット
SE018 = playSe( spep_3 + 0, 1027 );
setSeVolumeByWorkId( spep_3 + 0, SE018, 85 );
SE019 = playSe( spep_3 + 0, 1258 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 70 );
stopSe( spep_3 + 44, SE019, 34 );
SE017 = playSe( spep_3 + 6, 1212 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 0 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 29.8 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 60 );
setStartTimeMs( SE017,  600 );
stopSe( spep_3 + 38, SE017, 28 );

--フリーザ向かっていく
SE020 = playSe( spep_3 + 22, 1278 );
setSeVolumeByWorkId( spep_3 + 22, SE020, 62 );
SE021 = playSe( spep_3 + 22, 9 );
SE022 = playSe( spep_3 + 32, 1167 );
setSeVolumeByWorkId( spep_3 + 32, SE022, 35 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 82, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
--	後半
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 966, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 966, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 966, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 966, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 966, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 966, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 966, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 966, fighting_b, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_4-5 + 8,  10016, 18, 0x100, -1, 0, 93.3, 186.7 );--ズンッ
setEffShake( spep_4-5 + 8, ctzun, 18, 10 );
setEffMoveKey( spep_4-5 + 8, ctzun, 93.3, 186.7 , 0 );
setEffMoveKey( spep_4-5 + 10, ctzun, 107.3, 273.9 , 0 );
setEffMoveKey( spep_4-5 + 12, ctzun, 119.9, 287.6 , 0 );
setEffMoveKey( spep_4-5 + 14, ctzun, 112.6, 290.8 , 0 );
setEffMoveKey( spep_4-5 + 16, ctzun, 111.2, 287.6 , 0 );
setEffMoveKey( spep_4-5 + 18, ctzun, 113.8, 299.3 , 0 );
setEffMoveKey( spep_4-5 + 20, ctzun, 130.7, 303.9 , 0 );
setEffMoveKey( spep_4-5 + 22, ctzun, 127.1, 308.9 , 0 );
setEffMoveKey( spep_4-5 + 24, ctzun, 141.8, 325.8 , 0 );
setEffMoveKey( spep_4-5 + 26, ctzun, 148.4, 334.4 , 0 );

setEffScaleKey( spep_4-5 + 10, ctzun, 2.05, 2.05 );
setEffScaleKey( spep_4-5 + 12, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_4-5 + 14, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_4-5 + 16, ctzun, 2.23, 2.23 );
setEffScaleKey( spep_4-5 + 18, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_4-5 + 20, ctzun, 2.51, 2.51 );
setEffScaleKey( spep_4-5 + 22, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_4-5 + 24, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_4-5 + 26, ctzun, 2.93, 2.93 );

setEffRotateKey( spep_4-5 + 8, ctzun, 20.2 );
setEffRotateKey( spep_4-5 + 26, ctzun, 20.2 );

setEffAlphaKey( spep_4-5 + 8, ctzun, 255 );
setEffAlphaKey( spep_4-5 + 16, ctzun, 255 );
setEffAlphaKey( spep_4-5 + 18, ctzun, 204 );
setEffAlphaKey( spep_4-5 + 20, ctzun, 153 );
setEffAlphaKey( spep_4-5 + 22, ctzun, 102 );
setEffAlphaKey( spep_4-5 + 24, ctzun, 51 );
setEffAlphaKey( spep_4-5 + 26, ctzun, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_4-3 + 48,  10017, 68, 0x100, -1, 0, -32.4, 231.3 );--ドガガガッ
setEffShake( spep_4-3 + 48, ctdogagaga, 68, 10 );
setEffMoveKey( spep_4-3 + 48, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_4-3 + 50, ctdogagaga, -31.5, 245.9 , 0 );
setEffMoveKey( spep_4-3 + 52, ctdogagaga, -39.3, 229.1 , 0 );
setEffMoveKey( spep_4-3 + 54, ctdogagaga, -23.9, 241.9 , 0 );
setEffMoveKey( spep_4-3 + 56, ctdogagaga, -38.1, 234.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdogagaga, -33.1, 228.5 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdogagaga, -25.3, 241.7 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdogagaga, -40.8, 235.1 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdogagaga, -27.4, 242.5 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdogagaga, -33.3, 228.8 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdogagaga, -29.5, 245.7 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdogagaga, -37.3, 227.2 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdogagaga, -23, 240.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdogagaga, -42.1, 234.8 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdogagaga, -23.3, 236.5 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdogagaga, -39.1, 238.9 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdogagaga, -28.3, 230.8 , 0 );
setEffMoveKey( spep_4-3 + 84, ctdogagaga, -32, 238.1 , 0 );
setEffMoveKey( spep_4-3 + 86, ctdogagaga, -37.8, 240.8 , 0 );
setEffMoveKey( spep_4-3 + 88, ctdogagaga, -21.4, 242.4 , 0 );
setEffMoveKey( spep_4-3 + 90, ctdogagaga, -38.7, 238 , 0 );
setEffMoveKey( spep_4-3 + 92, ctdogagaga, -27.7, 231.5 , 0 );
setEffMoveKey( spep_4-3 + 94, ctdogagaga, -43.2, 238.6 , 0 );
setEffMoveKey( spep_4-3 + 96, ctdogagaga, -24.3, 228.4 , 0 );
setEffMoveKey( spep_4-3 + 98, ctdogagaga, -39.6, 239.8 , 0 );
setEffMoveKey( spep_4-3 + 100, ctdogagaga, -25.7, 237.7 , 0 );
setEffMoveKey( spep_4-3 + 102, ctdogagaga, -37.4, 243.2 , 0 );
setEffMoveKey( spep_4-3 + 104, ctdogagaga, -27.1, 233.3 , 0 );
setEffMoveKey( spep_4-3 + 106, ctdogagaga, -30.2, 245.1 , 0 );
setEffMoveKey( spep_4-3 + 108, ctdogagaga, -32.4, 231.3 , 0 );
setEffMoveKey( spep_4-3 + 110, ctdogagaga, -25.3, 241.8 , 0 );
setEffMoveKey( spep_4-3 + 112, ctdogagaga, -37.6, 248.3 , 0 );
setEffMoveKey( spep_4-3 + 114, ctdogagaga, -32, 284.9 , 0 );
setEffMoveKey( spep_4-3 + 116, ctdogagaga, -35.4, 306.5 , 0 );

setEffScaleKey( spep_4-3 + 48, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 110, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_4-3 + 112, ctdogagaga, 2.88, 2.88 );
setEffScaleKey( spep_4-3 + 114, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_4-3 + 116, ctdogagaga, 3.59, 3.59 );

setEffRotateKey( spep_4-3 + 48, ctdogagaga, 0 );
setEffRotateKey( spep_4-3 + 116, ctdogagaga, 0 );

setEffAlphaKey( spep_4-3 + 48, ctdogagaga, 255 );
setEffAlphaKey( spep_4-3 + 110, ctdogagaga, 255 );
setEffAlphaKey( spep_4-3 + 112, ctdogagaga, 170 );
setEffAlphaKey( spep_4-3 + 114, ctdogagaga, 85 );
setEffAlphaKey( spep_4-3 + 116, ctdogagaga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_4-3 + 146,  10021, 22, 0x100, -1, 0, -71.9, 364.5 );--バゴォッ
setEffShake( spep_4-3 + 146, ctbago, 68, 10 );
setEffMoveKey( spep_4-3 + 146, ctbago, -71.9, 364.5 , 0 );
setEffMoveKey( spep_4-3 + 148, ctbago, -73.2, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 150, ctbago, -58, 397.4 , 0 );
setEffMoveKey( spep_4-3 + 152, ctbago, -62.5, 391.9 , 0 );
setEffMoveKey( spep_4-3 + 154, ctbago, -68.5, 382.4 , 0 );
setEffMoveKey( spep_4-3 + 156, ctbago, -55, 405.6 , 0 );
setEffMoveKey( spep_4-3 + 158, ctbago, -66, 394.1 , 0 );
setEffMoveKey( spep_4-3 + 160, ctbago, -48.1, 398.6 , 0 );
setEffMoveKey( spep_4-3 + 162, ctbago, -58, 404 , 0 );
setEffMoveKey( spep_4-3 + 164, ctbago, -64, 395.2 , 0 );
setEffMoveKey( spep_4-3 + 166, ctbago, -49, 421.2 , 0 );
setEffMoveKey( spep_4-3 + 168, ctbago, -47.5, 425.3 , 0 );

setEffScaleKey( spep_4-3 + 146, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_4-3 + 148, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 150, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_4-3 + 152, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_4-3 + 154, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_4-3 + 156, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_4-3 + 158, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_4-3 + 160, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_4-3 + 162, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_4-3 + 164, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_4-3 + 166, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_4-3 + 168, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_4-3 + 146, ctbago, -20 );
setEffRotateKey( spep_4-3 + 168, ctbago, -20 );

setEffAlphaKey( spep_4-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_4-3 + 162, ctbago, 255 );
setEffAlphaKey( spep_4-3 + 164, ctbago, 170 );
setEffAlphaKey( spep_4-3 + 166, ctbago, 85 );
setEffAlphaKey( spep_4-3 + 168, ctbago, 0 );


--敵の動き
setDisp( spep_4-3 + 149, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 8, 1, 108 );
changeAnime( spep_4-3 + 48, 1, 106 );
changeAnime( spep_4-3 + 53, 1, 108 );
changeAnime( spep_4-3 + 54, 1, 106 );
changeAnime( spep_4-3 + 58, 1, 108 );
changeAnime( spep_4-3 + 62, 1, 106 );
changeAnime( spep_4-3 + 66, 1, 108 );
changeAnime( spep_4-3 + 70, 1, 106 );
changeAnime( spep_4-3 + 74, 1, 108 );
changeAnime( spep_4-3 + 79, 1, 106 );
changeAnime( spep_4-3 + 80, 1, 108 );
changeAnime( spep_4-3 + 84, 1, 106 );
changeAnime( spep_4-3 + 88, 1, 108 );
changeAnime( spep_4-3 + 93, 1, 106 );
changeAnime( spep_4-3 + 94, 1, 108 );
changeAnime( spep_4-3 + 98, 1, 106 );
changeAnime( spep_4-3 + 102, 1, 108 );
changeAnime( spep_4-3 + 106, 1, 106 );
changeAnime( spep_4-3 + 111, 1, 108 );
changeAnime( spep_4-3 + 112, 1, 106 );
changeAnime( spep_4-3 + 146, 1, 108 );

setMoveKey( spep_4 + 0, 1, 88.7, 49.1 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 105.4, 49.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 115.4, 49.1 , 0 );
setMoveKey( spep_4-3 + 7, 1, 118.7, 49.1 , 0 );
setMoveKey( spep_4-3 + 8, 1, 141.7, 73 , 0 );
setMoveKey( spep_4-3 + 10, 1, 146.5, 60 , 0 );
setMoveKey( spep_4-3 + 12, 1, 135.6, 58 , 0 );
setMoveKey( spep_4-3 + 14, 1, 121, 75 , 0 );
setMoveKey( spep_4-3 + 16, 1, 98.4, 66 , 0 );
setMoveKey( spep_4-3 + 18, 1, 88.5, 74 , 0 );
setMoveKey( spep_4-3 + 20, 1, 85.9, 56 , 0 );
setMoveKey( spep_4-3 + 22, 1, 88.7, 59 , 0 );
setMoveKey( spep_4-3 + 24, 1, 102.6, 89 , 0 );
setMoveKey( spep_4-3 + 26, 1, 89.4, 55 , 0 );
setMoveKey( spep_4-3 + 28, 1, 89, 68 , 0 );
setMoveKey( spep_4-3 + 30, 1, 82.4, 65 , 0 );
setMoveKey( spep_4-3 + 32, 1, 82.6, 65 , 0 );
setMoveKey( spep_4-3 + 34, 1, 85.7, 69 , 0 );
setMoveKey( spep_4-3 + 36, 1, 90.6, 55 , 0 );
setMoveKey( spep_4-3 + 38, 1, 91.4, 65 , 0 );
setMoveKey( spep_4-3 + 40, 1, 95, 58 , 0 );
setMoveKey( spep_4-3 + 42, 1, 95.4, 58 , 0 );
setMoveKey( spep_4-3 + 44, 1, 96.6, 66 , 0 );
setMoveKey( spep_4-3 + 47, 1, 94.7, 57 , 0 );
setMoveKey( spep_4-3 + 48, 1, 13.1, 13.4 , 0 );
setMoveKey( spep_4-3 + 51, 1, 13.2, 2.9 , 0 );
setMoveKey( spep_4-3 + 53, 1, 76.4, 5.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 36.2, -4.1 , 0 );
setMoveKey( spep_4-3 + 57, 1, 15.2, -1.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 54.2, 23 , 0 );
setMoveKey( spep_4-3 + 61, 1, 58.2, 8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 87.4, -7.1 , 0 );
setMoveKey( spep_4-3 + 65, 1, 81.4, -5.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 106.4, 48.2 , 0 );
setMoveKey( spep_4-3 + 69, 1, 96.4, 34.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, 47.2, -10.1 , 0 );
setMoveKey( spep_4-3 + 73, 1, 35.2, 2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.4, -17 , 0 );
setMoveKey( spep_4-3 + 77, 1, 118.4, -5 , 0 );
setMoveKey( spep_4-3 + 79, 1, 65.3, 12.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 79.4, 62.3 , 0 );
setMoveKey( spep_4-3 + 83, 1, 75.4, 86.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 25.2, -2.1 , 0 );
setMoveKey( spep_4-3 + 87, 1, 4.2, 0.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 76.3, -4.1 , 0 );
setMoveKey( spep_4-3 + 91, 1, 80.3, -19.1 , 0 );
setMoveKey( spep_4-3 + 93, 1, 88.4, -20.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 73.2, 11.1 , 0 );
setMoveKey( spep_4-3 + 97, 1, 85.2, 15.1 , 0 );
setMoveKey( spep_4-3 + 98, 1, 101.4, 52.1 , 0 );
setMoveKey( spep_4-3 + 101, 1, 113.4, 48.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 65.2, 12.1 , 0 );
setMoveKey( spep_4-3 + 105, 1, 85.3, 14.1 , 0 );
setMoveKey( spep_4-3 + 106, 1, 83.3, 3.9 , 0 );
setMoveKey( spep_4-3 + 109, 1, 67.3, -18.1 , 0 );
setMoveKey( spep_4-3 + 111, 1, 110.3, -35.1 , 0 );
setMoveKey( spep_4-3 + 112, 1, 41.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 114, 1, 62, 2.3 , 0 );
setMoveKey( spep_4-3 + 116, 1, 11.5, 13.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, 11.1, 14.7 , 0 );
setMoveKey( spep_4-3 + 120, 1, 17.7, 15.8 , 0 );
setMoveKey( spep_4-3 + 122, 1, 23.2, 17 , 0 );
setMoveKey( spep_4-3 + 124, 1, 22.8, 13.2 , 0 );
setMoveKey( spep_4-3 + 126, 1, 20.4, 17.4 , 0 );
setMoveKey( spep_4-3 + 128, 1, 20.9, 17.5 , 0 );
setMoveKey( spep_4-3 + 130, 1, 21.5, 17.6 , 0 );
setMoveKey( spep_4-3 + 132, 1, 22.1, 17.6 , 0 );
setMoveKey( spep_4-3 + 134, 1, 22.6, 17.7 , 0 );
setMoveKey( spep_4-3 + 136, 1, 23.2, 17.8 , 0 );
setMoveKey( spep_4-3 + 138, 1, 23.8, 17.9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 24.3, 18 , 0 );
setMoveKey( spep_4-3 + 142, 1, 24.9, 18 , 0 );
setMoveKey( spep_4-3 + 145, 1, 25.5, 18.1 , 0 );
setMoveKey( spep_4-3 + 146, 1, 7.5, -151.2 , 0 );
setMoveKey( spep_4-3 + 149, 1, 5.5, -178.2 , 0 );

setScaleKey( spep_4+0, 1, 1.28, 1.28 );
setScaleKey( spep_4-3 + 149, 1, 1.28, 1.28 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 47, 1, 0 );
setRotateKey( spep_4-3 + 48, 1, -45 );
setRotateKey( spep_4-3 + 51, 1, -45 );
setRotateKey( spep_4-3 + 53, 1, 0 );
setRotateKey( spep_4-3 + 54, 1, -45 );
setRotateKey( spep_4-3 + 57, 1, -45 );
setRotateKey( spep_4-3 + 58, 1, 0 );
setRotateKey( spep_4-3 + 61, 1, 0 );
setRotateKey( spep_4-3 + 62, 1, -27.3 );
setRotateKey( spep_4-3 + 65, 1, -27.3 );
setRotateKey( spep_4-3 + 66, 1, 0 );
setRotateKey( spep_4-3 + 69, 1, 0 );
setRotateKey( spep_4-3 + 70, 1, -45 );
setRotateKey( spep_4-3 + 73, 1, -45 );
setRotateKey( spep_4-3 + 74, 1, 0 );
setRotateKey( spep_4-3 + 77, 1, 0 );
setRotateKey( spep_4-3 + 79, 1, -37.5 );
setRotateKey( spep_4-3 + 80, 1, -16 );
setRotateKey( spep_4-3 + 83, 1, -16 );
setRotateKey( spep_4-3 + 84, 1, -43.5 );
setRotateKey( spep_4-3 + 87, 1, -43.5 );
setRotateKey( spep_4-3 + 88, 1, 0 );
setRotateKey( spep_4-3 + 91, 1, 0 );
setRotateKey( spep_4-3 + 93, 1, -45 );
setRotateKey( spep_4-3 + 94, 1, 4 );
setRotateKey( spep_4-3 + 97, 1, 4 );
setRotateKey( spep_4-3 + 98, 1, -35.8 );
setRotateKey( spep_4-3 + 101, 1, -35.8 );
setRotateKey( spep_4-3 + 102, 1, 0 );
setRotateKey( spep_4-3 + 105, 1, 0 );
setRotateKey( spep_4-3 + 106, 1, -41.8 );
setRotateKey( spep_4-3 + 109, 1, -41.8 );
setRotateKey( spep_4-3 + 111, 1, -9.2 );
setRotateKey( spep_4-3 + 112, 1, -9.2 );
setRotateKey( spep_4-3 + 114, 1, -9 );
setRotateKey( spep_4-3 + 116, 1, -8.8 );
setRotateKey( spep_4-3 + 118, 1, -8.6 );
setRotateKey( spep_4-3 + 120, 1, -8.4 );
setRotateKey( spep_4-3 + 122, 1, -8.2 );
setRotateKey( spep_4-3 + 124, 1, -8 );
setRotateKey( spep_4-3 + 126, 1, -7.8 );
setRotateKey( spep_4-3 + 128, 1, -7.6 );
setRotateKey( spep_4-3 + 130, 1, -7.4 );
setRotateKey( spep_4-3 + 132, 1, -7.2 );
setRotateKey( spep_4-3 + 134, 1, -7 );
setRotateKey( spep_4-3 + 136, 1, -6.8 );
setRotateKey( spep_4-3 + 138, 1, -6.6 );
setRotateKey( spep_4-3 + 140, 1, -6.4 );
setRotateKey( spep_4-3 + 142, 1, -6.2 );
setRotateKey( spep_4-3 + 145, 1, -6 );
setRotateKey( spep_4-3 + 146, 1, 89.3 );
setRotateKey( spep_4-3 + 149, 1, 89.3 );

--敵の動き
setDisp( spep_4-3 + 236, 1, 1 );
setDisp( spep_4-3 + 302, 1, 0 );

changeAnime( spep_4-3 + 236, 1, 108 );
changeAnime( spep_4-3 + 252, 1, 106 );
changeAnime( spep_4-3 + 256, 1, 108 );
changeAnime( spep_4-3 + 258, 1, 106 );
changeAnime( spep_4-3 + 262, 1, 108 );
changeAnime( spep_4-3 + 266, 1, 106 );
changeAnime( spep_4-3 + 270, 1, 108 );
changeAnime( spep_4-3 + 274, 1, 106 );
changeAnime( spep_4-3 + 278, 1, 108 );
changeAnime( spep_4-3 + 280, 1, 106 );
changeAnime( spep_4-3 + 284, 1, 108 );
changeAnime( spep_4-3 + 288, 1, 106 );
changeAnime( spep_4-3 + 292, 1, 108 );

setMoveKey( spep_4-3 + 236, 1, -1.4, -86.6 , 0 );
setMoveKey( spep_4-3 + 238, 1, 0.3, -87.3 , 0 );
setMoveKey( spep_4-3 + 240, 1, 2.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 242, 1, 2.2, -96 , 0 );
setMoveKey( spep_4-3 + 244, 1, 2.4, -102.1 , 0 );
setMoveKey( spep_4-3 + 246, 1, 2.5, -105.3 , 0 );
setMoveKey( spep_4-3 + 248, 1, 2.7, -108.1 , 0 );
setMoveKey( spep_4-3 + 250, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_4-3 + 251, 1, 2.8, -110.4 , 0 );
setMoveKey( spep_4-3 + 252, 1, 8.5, -66.3 , 0 );
setMoveKey( spep_4-3 + 255, 1, 9.1, -58.1 , 0 );
setMoveKey( spep_4-3 + 256, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_4-3 + 257, 1, 0.8, -86.8 , 0 );
setMoveKey( spep_4-3 + 258, 1, 3.1, -67.6 , 0 );
setMoveKey( spep_4-3 + 260, 1, -3, -76.4 , 0 );
setMoveKey( spep_4-3 + 261, 1, -3, -76.4 , 0 );
setMoveKey( spep_4-3 + 262, 1, 1.2, -78.4 , 0 );
setMoveKey( spep_4-3 + 264, 1, 1.2, -77 , 0 );
setMoveKey( spep_4-3 + 265, 1, 1.2, -77 , 0 );
setMoveKey( spep_4-3 + 266, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_4-3 + 268, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_4-3 + 269, 1, 7.3, -88.6 , 0 );
setMoveKey( spep_4-3 + 270, 1, 5.3, -83.3 , 0 );
setMoveKey( spep_4-3 + 272, 1, 9, -89.8 , 0 );
setMoveKey( spep_4-3 + 273, 1, 9, -89.8 , 0 );
setMoveKey( spep_4-3 + 274, 1, 3.5, -81.3 , 0 );
setMoveKey( spep_4-3 + 276, 1, 5.5, -73.6 , 0 );
setMoveKey( spep_4-3 + 277, 1, 5.5, -73.6 , 0 )
setMoveKey( spep_4-3 + 278, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_4-3 + 279, 1, -3.2, -95.4 , 0 );
setMoveKey( spep_4-3 + 280, 1, 16.7, -56.2 , 0 );
setMoveKey( spep_4-3 + 282, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_4-3 + 283, 1, 17.6, -54.4 , 0 );
setMoveKey( spep_4-3 + 284, 1, 5, -81 , 0 );
setMoveKey( spep_4-3 + 286, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_4-3 + 287, 1, 4.1, -81.2 , 0 );
setMoveKey( spep_4-3 + 288, 1, 2.8, -65.8 , 0 );
setMoveKey( spep_4-3 + 290, 1, 1.9, -88 , 0 );
setMoveKey( spep_4-3 + 291, 1, 1.9, -88 , 0 );
setMoveKey( spep_4-3 + 292, 1, 2.6, -114 , 0 );
setMoveKey( spep_4-3 + 293, 1, 2.6, -114 , 0 );
setMoveKey( spep_4-3 + 294, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_4-3 + 295, 1, 1.7, -132.2 , 0 );
setMoveKey( spep_4-3 + 296, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_4-3 + 297, 1, -2.2, -90.3 , 0 );
setMoveKey( spep_4-3 + 298, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_4-3 + 299, 1, -15.6, -136.6 , 0 );
setMoveKey( spep_4-3 + 300, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_4-3 + 301, 1, -7.2, -126.3 , 0 );
setMoveKey( spep_4-3 + 302, 1, -5.7, -135.2 , 0 );

setScaleKey( spep_4-3 + 236, 1,0.71,0.71);
setScaleKey( spep_4-3 + 291, 1,0.71,0.71);
setScaleKey( spep_4-3 + 292, 1,0.89,0.89);
setScaleKey( spep_4-3 + 294, 1,0.89,0.89);
setScaleKey( spep_4-3 + 295, 1,0.89,0.89);
setScaleKey( spep_4-3 + 296, 1,1.08,1.08);
setScaleKey( spep_4-3 + 302, 1,1.08,1.08);

setRotateKey( spep_4-3 + 236, 1, 90 );
setRotateKey( spep_4-3 + 251, 1, 90 );
setRotateKey( spep_4-3 + 252, 1, 65.5 );
setRotateKey( spep_4-3 + 255, 1, 65.5 );
setRotateKey( spep_4-3 + 256, 1, 90 );
setRotateKey( spep_4-3 + 257, 1, 90 );
setRotateKey( spep_4-3 + 258, 1, 65.5 );
setRotateKey( spep_4-3 + 261, 1, 65.5 );
setRotateKey( spep_4-3 + 262, 1, 105.7 );
setRotateKey( spep_4-3 + 265, 1, 105.7 );
setRotateKey( spep_4-3 + 266, 1, 65.5 );
setRotateKey( spep_4-3 + 269, 1, 65.5 );
setRotateKey( spep_4-3 + 270, 1, 90 );
setRotateKey( spep_4-3 + 273, 1, 90 );
setRotateKey( spep_4-3 + 274, 1, 65.5 );
setRotateKey( spep_4-3 + 277, 1, 65.5 );
setRotateKey( spep_4-3 + 278, 1, 90 );
setRotateKey( spep_4-3 + 279, 1, 90 );
setRotateKey( spep_4-3 + 280, 1, 65.5 );
setRotateKey( spep_4-3 + 283, 1, 65.5 )
setRotateKey( spep_4-3 + 284, 1, 90 );
setRotateKey( spep_4-3 + 286, 1, 90 );
setRotateKey( spep_4-3 + 288, 1, 65.5 );
setRotateKey( spep_4-3 + 291, 1, 65.5 );
setRotateKey( spep_4-3 + 292, 1, 90 );
setRotateKey( spep_4-3 + 295, 1, 90 );
setRotateKey( spep_4-3 + 296, 1, 91.8 );
setRotateKey( spep_4-3 + 302, 1, 91.8 );

--敵の動き
setDisp( spep_4-3 + 476, 1, 1 );
setDisp( spep_4-1 + 534, 1, 0 );

changeAnime( spep_4-3 + 476, 1,8 );
changeAnime( spep_4-3 + 498, 1,6 );

setMoveKey( spep_4-3 + 476, 1, -26.1, -21.9 , 0 );
setMoveKey( spep_4-3 + 478, 1, -26.1, -18.1 , 0 );
setMoveKey( spep_4-3 + 480, 1, -26.1, -14.7 , 0 );
setMoveKey( spep_4-3 + 482, 1, -26.1, -11.7 , 0 );
setMoveKey( spep_4-3 + 484, 1, -26.1, -9.1 , 0 );
setMoveKey( spep_4-3 + 486, 1, -26.1, -6.9 , 0 );
setMoveKey( spep_4-3 + 488, 1, -26.1, -5.1 , 0 );
setMoveKey( spep_4-3 + 490, 1, -26.1, -3.7 , 0 );
setMoveKey( spep_4-3 + 492, 1, -26.1, -2.7 , 0 );
setMoveKey( spep_4-3 + 494, 1, -26.1, -2.1 , 0 );
setMoveKey( spep_4-3 + 496, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_4-3 + 497, 1, -26.1, -1.9 , 0 );
setMoveKey( spep_4-3 + 498, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_4-3 + 499, 1, 41.5, -13.7 , 0 );
setMoveKey( spep_4-3 + 500, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_4-3 + 501, 1, 47.5, -65.1 , 0 );
setMoveKey( spep_4-3 + 502, 1, 44.5, -39 , 0 );
setMoveKey( spep_4-3 + 503, 1, 44.5, -39 , 0 );
setMoveKey( spep_4-3 + 504, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_4-3 + 505, 1, 44.4, -48.6 , 0 );
setMoveKey( spep_4-3 + 506, 1, 40, -22.5 , 0 );
setMoveKey( spep_4-3 + 507, 1, 40, -22.5 , 0 );
setMoveKey( spep_4-3 + 508, 1, 31, -60.5 , 0 );
setMoveKey( spep_4-3 + 509, 1, 31, -60.5 , 0 );
setMoveKey( spep_4-3 + 510, 1, 28, -24.1 , 0 );
setMoveKey( spep_4-3 + 511, 1, 28, -24.1 , 0 );
setMoveKey( spep_4-3 + 512, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_4-3 + 513, 1, 39.9, -54.7 , 0 );
setMoveKey( spep_4-3 + 514, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 515, 1, 25.1, -18.4 , 0 );
setMoveKey( spep_4-3 + 516, 1, 37, -49 , 0 );
setMoveKey( spep_4-3 + 517, 1, 37, -49 , 0 );
setMoveKey( spep_4-3 + 518, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_4-3 + 519, 1, 38.5, -17.2 , 0 );
setMoveKey( spep_4-3 + 520, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_4-3 + 521, 1, 35.5, -53.9 , 0 );
setMoveKey( spep_4-3 + 522, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_4-3 + 523, 1, 41.5, -31.1 , 0 );
setMoveKey( spep_4-3 + 524, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_4-3 + 525, 1, 41.5, -44.1 , 0 );
setMoveKey( spep_4-3 + 526, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_4-3 + 527, 1, 32.5, -13.8 , 0 );
setMoveKey( spep_4-3 + 528, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_4-3 + 529, 1, 29.5, -46.3 , 0 );
setMoveKey( spep_4-3 + 530, 1, 40, -25.1 , 0 );
setMoveKey( spep_4-3 + 531, 1, 40, -25.1 , 0 );
setMoveKey( spep_4-3 + 532, 1, 32.5, -36.7 , 0 );
setMoveKey( spep_4-1 + 534, 1, 32.6, -21.6 , 0 );

setScaleKey( spep_4-3 + 476, 1,2.06,2.06);
setScaleKey( spep_4-3 + 497, 1,2.06,2.06);
setScaleKey( spep_4-3 + 498, 1,2.18,2.18);
setScaleKey( spep_4-1 + 534, 1,2.18,2.18);

setRotateKey( spep_4-3 + 476, 1, 0 );
setRotateKey( spep_4-3 + 496, 1, 0 );
setRotateKey( spep_4-3 + 497, 1, 0 );
setRotateKey( spep_4-3 + 498, 1, 45 );
setRotateKey( spep_4-1 + 534, 1, 45 );

--敵の動き
setDisp( spep_4-3 + 570, 1, 1 );
setDisp( spep_4-3 + 710, 1, 0 );

changeAnime( spep_4-3 + 570, 1,106 );
changeAnime( spep_4-3 + 580, 1,108 );
changeAnime( spep_4-3 + 664, 1,6 );

setBlendColor(spep_4-3 + 630,1, 3 , 0.2 , 0.6 , 1 ,0.44);
setBlendColor(spep_4-3 + 663,1, 3 , 0.2 , 0.6 , 1 ,0.44);
setBlendColor(spep_4-3 + 664,1, 3 , 0.4 , 1 , 1 ,0.25);
setBlendColor(spep_4-3 + 712,1, 3 , 0.4 , 1 , 1 ,0.25);
setBlendColor(spep_4-3 + 714,1, 3 , 0.4 , 1 , 1 ,0);

setMoveKey( spep_4-3 + 570, 1, -21.8, 42.1 , 0 );
setMoveKey( spep_4-3 + 572, 1, -21.9, 42.1 , 0 );
setMoveKey( spep_4-3 + 574, 1, -22.1, 41.9 , 0 );
setMoveKey( spep_4-3 + 576, 1, -21.1, 33.4 , 0 );
setMoveKey( spep_4-3 + 579, 1, -21.1, 33.4 , 0 );
setMoveKey( spep_4-3 + 580, 1, 205.5, 120.4 , 0 );
setMoveKey( spep_4-3 + 581, 1, 205.5, 120.4 , 0 );
setMoveKey( spep_4-3 + 582, 1, 222.5, 97.4 , 0 );
setMoveKey( spep_4-3 + 583, 1, 222.5, 97.4 , 0 );
setMoveKey( spep_4-3 + 584, 1, 219.4, 135.1 , 0 );
setMoveKey( spep_4-3 + 585, 1, 219.4, 135.1 , 0 );
setMoveKey( spep_4-3 + 586, 1, 229.9, 128.3 , 0 );
setMoveKey( spep_4-3 + 587, 1, 229.9, 128.3 , 0 );
setMoveKey( spep_4-3 + 588, 1, 230.6, 132.9 , 0 );
setMoveKey( spep_4-3 + 589, 1, 230.6, 132.9 , 0 );
setMoveKey( spep_4-3 + 590, 1, 142.9, 113.3 , 0 );
setMoveKey( spep_4-3 + 591, 1, 142.9, 113.3 , 0 );
setMoveKey( spep_4-3 + 592, 1, 143.7, 117.4 , 0 );
setMoveKey( spep_4-3 + 593, 1, 143.7, 117.4 , 0 );
setMoveKey( spep_4-3 + 594, 1, 54.7, 93.7 , 0 );
setMoveKey( spep_4-3 + 596, 1, 54.7, 99.7 , 0 );
setMoveKey( spep_4-3 + 598, 1, 54.8, 100.3 , 0 );
setMoveKey( spep_4-3 + 600, 1, 52.9, 100.2 , 0 );
setMoveKey( spep_4-3 + 602, 1, 54, 95.6 , 0 );
setMoveKey( spep_4-3 + 604, 1, 53, 98.2 , 0 );
setMoveKey( spep_4-3 + 606, 1, 52.8, 96.2 , 0 );
setMoveKey( spep_4-3 + 608, 1, 53.7, 99.2 , 0 );
setMoveKey( spep_4-3 + 610, 1, 54, 96.6 , 0 );
setMoveKey( spep_4-3 + 612, 1, 53, 97.8 , 0 );
setMoveKey( spep_4-3 + 614, 1, 54, 97.3 , 0 );
setMoveKey( spep_4-3 + 616, 1, 53.7, 97.5 , 0 );
setMoveKey( spep_4-3 + 618, 1, 53.8, 97.5 , 0 );
setMoveKey( spep_4-3 + 629, 1, 53.8, 97.5 , 0 );

setMoveKey( spep_4-3 + 630, 1, -532.5, -38.8 , 0 );
setMoveKey( spep_4-3 + 632, 1, -530.3, -37.3 , 0 );
setMoveKey( spep_4-3 + 634, 1, -528, -35.8 , 0 );
setMoveKey( spep_4-3 + 636, 1, -525.8, -34.3 , 0 );
setMoveKey( spep_4-3 + 638, 1, -523.5, -33.6 , 0 );
setMoveKey( spep_4-3 + 640, 1, -522.5, -34 , 0 );
setMoveKey( spep_4-3 + 642, 1, -525, -35.1 , 0 );
setMoveKey( spep_4-3 + 644, 1, -527.4, -36.1 , 0 );
setMoveKey( spep_4-3 + 646, 1, -529.8, -37.2 , 0 );
setMoveKey( spep_4-3 + 648, 1, -532.3, -38.2 , 0 );
setMoveKey( spep_4-3 + 650, 1, -534.8, -39.3 , 0 );
setMoveKey( spep_4-3 + 652, 1, -534.5, -41.2 , 0 );
setMoveKey( spep_4-3 + 654, 1, -533.8, -42.4 , 0 );
setMoveKey( spep_4-3 + 656, 1, -533, -43.6 , 0 );
setMoveKey( spep_4-3 + 658, 1, -532.1, -41.5 , 0 );
setMoveKey( spep_4-3 + 660, 1, -531.1, -39.4 , 0 );
setMoveKey( spep_4-3 + 662, 1, -530.2, -37.3 , 0 );
setMoveKey( spep_4-3 + 663, 1, -530.2, -37.3 , 0 );

x=0;
a=-13;

setMoveKey( spep_4-3 + 664, 1, 10.3+x, -2.7+a , 0 );
setMoveKey( spep_4-3 + 665, 1, 10.3+x, -2.7+a , 0 );
setMoveKey( spep_4-3 + 666, 1, 10.3+x, -2.7+a , 0 );
setMoveKey( spep_4-3 + 667, 1, 10.3+x, -2.7+a , 0 );
setMoveKey( spep_4-3 + 668, 1, 13.3+x, 1.8+a , 0 );
setMoveKey( spep_4-3 + 669, 1, 13.3+x, 1.8+a , 0 );
setMoveKey( spep_4-3 + 670, 1, 13.3+x, -1.9+a , 0 );
setMoveKey( spep_4-3 + 671, 1, 13.3+x, -1.9+a , 0 );
setMoveKey( spep_4-3 + 672, 1, 12.6+x, -4.9+a , 0 );
setMoveKey( spep_4-3 + 673, 1, 12.6+x, -4.9+a , 0 );
setMoveKey( spep_4-3 + 674, 1, -3.1+x, 4+a , 0 );
setMoveKey( spep_4-3 + 675, 1, -3.1+x, 4+a , 0 );
setMoveKey( spep_4-3 + 676, 1, 4.4+x, -23.5+a , 0 );
setMoveKey( spep_4-3 + 677, 1, 4.4+x, -23.5+a , 0 );
setMoveKey( spep_4-3 + 678, 1, 11.1+x, -0.5+a , 0 );
setMoveKey( spep_4-3 + 679, 1, 11.1+x, -0.5+a , 0 );
setMoveKey( spep_4-3 + 680, 1, 12.6+x, 8.5+a , 0 );
setMoveKey( spep_4-3 + 681, 1, 12.6+x, 8.5+a , 0 );
setMoveKey( spep_4-3 + 682, 1, 1.4+x, -10.1+a , 0 );
setMoveKey( spep_4-3 + 683, 1, 1.4+x, -10.1+a , 0 );
setMoveKey( spep_4-3 + 684, 1, 2.9+x, -1.9+a , 0 );
setMoveKey( spep_4-3 + 685, 1, 2.9+x, -1.9+a , 0 );
setMoveKey( spep_4-3 + 686, 1, 16.3+x, -15.3+a , 0 );
setMoveKey( spep_4-3 + 687, 1, 16.3+x, -15.3+a , 0 );
setMoveKey( spep_4-3 + 688, 1, 20+x, -6.4+a , 0 );
setMoveKey( spep_4-3 + 689, 1, 20+x, -6.4+a , 0 );
setMoveKey( spep_4-3 + 690, 1, 5.9+x, -13.8+a , 0 );
setMoveKey( spep_4-3 + 691, 1, 5.9+x, -13.8+a , 0 );
setMoveKey( spep_4-3 + 692, 1, 8.8+x, -8.6+a , 0 );
setMoveKey( spep_4-3 + 693, 1, 8.8+x, -8.6+a , 0 );
setMoveKey( spep_4-3 + 694, 1, 13.3+x, -13.8+a , 0 );
setMoveKey( spep_4-3 + 695, 1, 13.3+x, -13.8+a , 0 );
setMoveKey( spep_4-3 + 696, 1, 16.3+x, 8.5+a , 0 );
setMoveKey( spep_4-3 + 697, 1, 16.3+x, 8.5+a , 0 );
setMoveKey( spep_4-3 + 698, 1, 3.6+x, -8.6+a , 0 );
setMoveKey( spep_4-3 + 699, 1, 3.6+x, -8.6+a , 0 );
setMoveKey( spep_4-3 + 700, 1, 4.4+x, -5.6+a , 0 );
setMoveKey( spep_4-3 + 701, 1, 4.4+x, -5.6+a , 0 );
setMoveKey( spep_4-3 + 702, 1, 10.3+x, -3.4+a , 0 );
setMoveKey( spep_4-3 + 703, 1, 10.3+x, -3.4+a , 0 );
setMoveKey( spep_4-3 + 704, 1, 13.3+x, -12.3+a , 0 );
setMoveKey( spep_4-3 + 705, 1, 13.3+x, -12.3+a , 0 );
setMoveKey( spep_4-3 + 706, 1, 14.8+x, -0.4+a , 0 );
setMoveKey( spep_4-3 + 707, 1, 14.8+x, -0.4+a , 0 );
setMoveKey( spep_4-3 + 708, 1, 12.6+x, -3.4+a , 0 );
setMoveKey( spep_4-3 + 709, 1, 12.6+x, -3.4+a , 0 );
setMoveKey( spep_4-3 + 710, 1, 9.6+x, -2.6+a , 0 );

setScaleKey( spep_4-3 + 570, 1,1.51,1.51);
setScaleKey( spep_4-3 + 579, 1,1.51,1.51);
setScaleKey( spep_4-3 + 580, 1,1.58,1.58);
setScaleKey( spep_4-3 + 584, 1,1.58,1.58);
setScaleKey( spep_4-3 + 586, 1,1.63,1.63);
setScaleKey( spep_4-3 + 629, 1,1.63,1.63);

setScaleKey( spep_4-3 + 630, 1, 14.06, 14.06 );
setScaleKey( spep_4-3 + 663, 1, 14.06, 14.06 );

setScaleKey( spep_4-3 + 664, 1,0.56,0.56);
setScaleKey( spep_4-3 + 710, 1,0.56,0.56);


setRotateKey( spep_4-3 + 570, 1, -65.5 );
setRotateKey( spep_4-3 + 579, 1, -65.5 );
setRotateKey( spep_4-3 + 580, 1, -25.1 );
setRotateKey( spep_4-3 + 582, 1, -21.9 );
setRotateKey( spep_4-3 + 584, 1, -21.9 );
setRotateKey( spep_4-3 + 586, 1, -23.2 );
setRotateKey( spep_4-3 + 629, 1, -23.2 );

setRotateKey( spep_4-3 + 630, 1, 18 );
setRotateKey( spep_4-3 + 662, 1, 18 );
setRotateKey( spep_4-3 + 663, 1, 18 );

setRotateKey( spep_4-3 + 664, 1, 51.9 );
setRotateKey( spep_4-3 + 710, 1, 51.9 );

--SE
--フリーザ向かっていく
stopSe( spep_4 + 12, SE020, 2 );

--初手パンチ
SE023 = playSe( spep_4 + 6, 1233 );	
setSeVolumeByWorkId( spep_4 + 6, SE023, 0 );
setSeVolumeByWorkId( spep_4 + 7, SE023, 50 );
setSeVolumeByWorkId( spep_4 + 8, SE023, 100 );
setStartTimeMs( SE023,  117 );
SE024 = playSe( spep_4 + 10, 1135 );
setPitch( spep_4 + 10, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );
SE025 = playSe( spep_4 + 10, 1016 );
SE026 = playSe( spep_4 + 14, 1187 );

--横向きラッシュ
SE027 = playSe( spep_4 + 50, 1189 );
setSeVolumeByWorkId( spep_4 + 50, SE027, 126 );
SE028 = playSe( spep_4 + 56, 1009 );
setSeVolumeByWorkId( spep_4 + 56, SE028, 83 );
SE029 = playSe( spep_4 + 56, 1110 );
SE030 = playSe( spep_4 + 66, 1006 );
SE031 = playSe( spep_4 + 76, 1110 );
SE032 = playSe( spep_4 + 76, 1001 );
setSeVolumeByWorkId( spep_4 + 76, SE032, 65 );
stopSe(spep_4 + 142 - 18,SE032,18);
SE033 = playSe( spep_4 + 86, 1110 );
stopSe(spep_4 + 142 - 18,SE033,18)
SE034 = playSe( spep_4 + 106, 1072 );
setSeVolumeByWorkId( spep_4 + 106, SE034, 0 );
setSeVolumeByWorkId( spep_4 + 107, SE034, 14 );
setSeVolumeByWorkId( spep_4 + 108, SE034, 28 );
setSeVolumeByWorkId( spep_4 + 109, SE034, 42 );
setSeVolumeByWorkId( spep_4 + 110, SE034, 56 );
setSeVolumeByWorkId( spep_4 + 111, SE034, 70 );
setSeVolumeByWorkId( spep_4 + 112, SE034, 84 );
setStartTimeMs( SE034,  317 );
SE035 = playSe( spep_4 + 96, 1010 );
setSeVolumeByWorkId( spep_4 + 96, SE035, 85 );
SE036 = playSe( spep_4 + 98, 1110 );
setSeVolumeByWorkId( spep_4 + 98, SE036, 90 );
stopSe(spep_4 + 142 - 10,SE036,10);
SE037 = playSe( spep_4 + 110, 1110 );
SE038 = playSe( spep_4 + 110, 1000 );

--岩たたきつけ
SE039 = playSe( spep_4 + 144, 1061 );
stopSe( spep_4 + 162, SE039, 12 );
SE040 = playSe( spep_4 + 148, 1182 );
setSeVolumeByWorkId( spep_4 + 148, SE040, 141 );
stopSe( spep_4 + 158, SE040, 6 );
SE041 = playSe( spep_4 + 150, 1188 );
SE042 = playSe( spep_4 + 164, 1159 );
setSeVolumeByWorkId( spep_4 + 164, SE042, 79 );

--岩反対側爆発
SE043 = playSe( spep_4 + 172, 1023 );
SE044 = playSe( spep_4 + 174, 1068 );
SE045 = playSe( spep_4 + 174, 1024 );
setSeVolumeByWorkId( spep_4 + 174, SE045, 87 );

--落ちていく
SE046 = playSe( spep_4 + 204, 1121 );
setSeVolumeByWorkId( spep_4 + 204, SE046, 57 );
stopSe( spep_4 + 296, SE046, 26 );

--下向きラッシュ
SE047 = playSe( spep_4 + 248, 1000 );
setSeVolumeByWorkId( spep_4 + 248, SE047, 67 );
SE048 = playSe( spep_4 + 248, 1110 );
setSeVolumeByWorkId( spep_4 + 248, SE048, 54 );
SE049 = playSe( spep_4 + 258, 1000 );
setSeVolumeByWorkId( spep_4 + 258, SE049, 55 );
SE050 = playSe( spep_4 + 258, 1110 );
setSeVolumeByWorkId( spep_4 + 258, SE050, 54 );
SE052 = playSe( spep_4 + 268, 1001 );
setSeVolumeByWorkId( spep_4 + 268, SE052, 47 );
SE053 = playSe( spep_4 + 270, 1110 );
setSeVolumeByWorkId( spep_4 + 270, SE053, 45 );
SE054 = playSe( spep_4 + 282, 1110 );
setSeVolumeByWorkId( spep_4 + 282, SE054, 68 );
SE055 = playSe( spep_4 + 282, 1009 );
setSeVolumeByWorkId( spep_4 + 282, SE055, 89 );

--地面激突
SE056 = playSe( spep_4 + 294, 1061 );
setSeVolumeByWorkId( spep_4 + 294, SE056, 110 );
SE057 = playSe( spep_4 + 298, 1159  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 298, SE057, 81 );
SE058 = playSe( spep_4 + 298, 1188 );
setSeVolumeByWorkId( spep_4 + 298, SE058, 72 );
SE051 = playSe( spep_4 + 298, 1168  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 298, SE051, 0 );
setSeVolumeByWorkId( spep_4 + 299, SE051, 2.7 );
setSeVolumeByWorkId( spep_4 + 300, SE051, 5.4 );
setSeVolumeByWorkId( spep_4 + 301, SE051, 8.1 );
setSeVolumeByWorkId( spep_4 + 302, SE051, 10.8 );
setSeVolumeByWorkId( spep_4 + 303, SE051, 13.5 );
setSeVolumeByWorkId( spep_4 + 304, SE051, 16.2 );
setSeVolumeByWorkId( spep_4 + 305, SE051, 18.9 );
setSeVolumeByWorkId( spep_4 + 306, SE051, 21.6 );
setSeVolumeByWorkId( spep_4 + 307, SE051, 24.3 );
setSeVolumeByWorkId( spep_4 + 308, SE051, 27 );
setSeVolumeByWorkId( spep_4 + 309, SE051, 29.7 );
setSeVolumeByWorkId( spep_4 + 310, SE051, 32.4 );
setSeVolumeByWorkId( spep_4 + 311, SE051, 35.1 );
setSeVolumeByWorkId( spep_4 + 312, SE051, 37.8 );
setSeVolumeByWorkId( spep_4 + 313, SE051, 40.5 );
setSeVolumeByWorkId( spep_4 + 314, SE051, 43.2 );
setSeVolumeByWorkId( spep_4 + 315, SE051, 45.9 );
setSeVolumeByWorkId( spep_4 + 316, SE051, 48.6 );
setSeVolumeByWorkId( spep_4 + 317, SE051, 51.3 );
setSeVolumeByWorkId( spep_4 + 318, SE051, 54 );
setSeVolumeByWorkId( spep_4 + 319, SE051, 56.7 );
setSeVolumeByWorkId( spep_4 + 320, SE051, 59.4 );
setSeVolumeByWorkId( spep_4 + 321, SE051, 62.1 );
setSeVolumeByWorkId( spep_4 + 322, SE051, 64.8 );
setSeVolumeByWorkId( spep_4 + 323, SE051, 67.5 );
setSeVolumeByWorkId( spep_4 + 324, SE051, 70.2 );
setSeVolumeByWorkId( spep_4 + 325, SE051, 72.9 );
setSeVolumeByWorkId( spep_4 + 326, SE051, 77 );
setStartTimeMs( SE051,  650 );

--岩持ち上げる
SE059 = playSe( spep_4 + 442, 1190 );
setSeVolumeByWorkId( spep_4 + 442, SE059, 87 );
SE060 = playSe( spep_4 + 442, 1170 );
setPitch( spep_4 + 442, SE060, -400 );
setTimeStretch( SE060, 0.73, 10, 1 );
SE061 = playSe( spep_4 + 444, 1047 );

--岩挟まれる
SE063 = playSe( spep_4 + 492, 1061  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 492, SE063, 200 );
setPitch( spep_4 + 492, SE063, -1000 );
setTimeStretch( SE063, 0.33, 10, 1 );
SE064 = playSe( spep_4 + 496, 1188  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 496, SE064, 81 );
SE065 = playSe( spep_4 + 498, 1160  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 498, SE065, 84 );
SE062 = playSe( spep_4 + 498, 1168  ,"",0.6);
setSeVolumeByWorkId( spep_4 + 498, SE062, 0 );
setSeVolumeByWorkId( spep_4 + 499, SE062, 12.5 );
setSeVolumeByWorkId( spep_4 + 500, SE062, 25 );
setSeVolumeByWorkId( spep_4 + 501, SE062, 37.5 );
setSeVolumeByWorkId( spep_4 + 502, SE062, 50 );
setSeVolumeByWorkId( spep_4 + 503, SE062, 62.5 );
setSeVolumeByWorkId( spep_4 + 504, SE062, 75 );
setSeVolumeByWorkId( spep_4 + 505, SE062, 87.5 );
setSeVolumeByWorkId( spep_4 + 506, SE062, 100 );	
setStartTimeMs( SE062,  583 );
stopSe( spep_4 + 556, SE062, 52 );

--17号タックル
SE066 = playSe( spep_4 + 578, 1182 );
SE067 = playSe( spep_4 + 578, 1027 );
SE068 = playSe( spep_4 + 578, 1314 );
stopSe( spep_4 + 662, SE068, 10 );

--気弾溜め
SE069 = playSe( spep_4 + 628, 1281 ,"",0.6);
setPitch( spep_4 + 628, SE069, -200 );
setTimeStretch( SE069, 0.87, 10, 1 );
stopSe( spep_4 + 666, SE069, 4 );
SE070 = playSe( spep_4 + 628, 1255 ,"",0.6);
stopSe( spep_4 + 666, SE070, 4 );

--バリア張る
SE071 = playSe( spep_4 + 662, 1302 );
SE072 = playSe( spep_4 + 664, 1313 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 664, SE072, 40 );
stopSe( spep_4 + 698, SE072, 10 );
SE073 = playSe( spep_4 + 664, 1042 );
setSeVolumeByWorkId( spep_4 + 664, SE073, 78 );
stopSe( spep_4 + 682, SE073, 10 );
SE074 = playSe( spep_4 + 668, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 668, SE074, 240 );
setPitch( spep_4 + 668, SE074, 500 );
setTimeStretch( SE074, 0.89, 10, 1 );
SE075 = playSe( spep_4 + 668, 1224 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 668, SE075, 180 );
setPitch( spep_4 + 668, SE075, -600 );
setTimeStretch( SE075, 0.6, 10, 1 );
stopSe( spep_4 + 702, SE075, 10 );

--バリア光る
SE076 = playSe( spep_4 + 708, 1306 );
setSeVolumeByWorkId( spep_4 + 708, SE076, 69 );
stopSe( spep_4 + 726, SE076, 20 );
SE077 = playSe( spep_4 + 708, 1277 );
setSeVolumeByWorkId( spep_4 + 708, SE077, 158 );
setPitch( spep_4 + 708, SE077, 100 );
setTimeStretch( SE077, 1.07, 10, 1 );
stopSe( spep_4 + 736, SE077, 18 );

--バリア内爆発
SE078 = playSe( spep_4 + 720, 1188 );

--バリア弾ける
SE079 = playSe( spep_4 + 766, 1115 );
setSeVolumeByWorkId( spep_4 + 766, SE079, 0 );
setSeVolumeByWorkId( spep_4 + 767, SE079, 25 );
setSeVolumeByWorkId( spep_4 + 768, SE079, 50 );
setSeVolumeByWorkId( spep_4 + 769, SE079, 75 );
setSeVolumeByWorkId( spep_4 + 770, SE079, 100 );
setStartTimeMs( SE079,  533 );
setPitch( spep_4 + 766, SE079, 900 );
setTimeStretch( SE079, 1.6, 10, 1 );
stopSe( spep_4 + 788, SE079, 36 );
SE080 = playSe( spep_4 + 766, 1126 );
setSeVolumeByWorkId( spep_4 + 766, SE080, 86 );
stopSe( spep_4 + 780, SE080, 46 );

--ラスト爆発
SE081 = playSe( spep_4 + 802, 1188 );
setSeVolumeByWorkId( spep_4 + 802, SE081, 77 );
SE082 = playSe( spep_4 + 804, 1068 );
setSeVolumeByWorkId( spep_4 + 804, SE082, 70 );
SE083 = playSe( spep_4 + 806, 1159 );
setSeVolumeByWorkId( spep_4 + 806, SE083, 72 );

entryFadeBg( spep_4 , 0, 920, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 804 );
endPhase( spep_4 + 920 );
end