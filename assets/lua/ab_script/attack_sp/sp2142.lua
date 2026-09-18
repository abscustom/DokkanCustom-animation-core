--1021200:ベルモッド_破壊神の奇策
--sp_effect_a9_00080

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
SP_01 =	156940	;--	登場～気弾作成
SP_02 =	156941	;--	セリフカットイン
SP_03 =	156942	;--	気弾投擲
SP_04 =	156943	;--	敵に気弾が迫り直撃
SP_05 =	156944	;--	敵に気弾が迫り直撃
SP_06 =	156945	;--	オレンジのギャン
SP_07 =	156946	;--	フィニッシュ

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
-- 登場～気弾作成
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 146, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 144, beginning, 255 );
setEffAlphaKey( spep_0 + 145, beginning, 255 );
setEffAlphaKey( spep_0 + 146, beginning, 0 );

--SE
--腕あげる
SE002 = playSe( spep_0 + 14, 1189 );

--気弾溜め
SE003 = playSe( spep_0 +4 + 16, 1131 );
setPitch( spep_0 +4 + 16, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );
SE004 = playSe( spep_0 +4 + 16, 1271,"",0.6 );
SE005 = playSe( spep_0 +4 + 16, 1248,"",0.7 );
SE001 = playSe( spep_0 +4 + 26, 1255 );
setSeVolumeByWorkId( spep_0 +4 + 26, SE001, 0 );
setSeVolumeByWorkId( spep_0 +4 + 27, SE001, 4.5 );
setSeVolumeByWorkId( spep_0 +4 + 28, SE001, 9 );
setSeVolumeByWorkId( spep_0 +4 + 29, SE001, 13.5 );
setSeVolumeByWorkId( spep_0 +4 + 30, SE001, 18 );
setSeVolumeByWorkId( spep_0 +4 + 31, SE001, 22.5 );
setSeVolumeByWorkId( spep_0 +4 + 32, SE001, 27 );
setSeVolumeByWorkId( spep_0 +4 + 33, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 +4 + 34, SE001, 36 );
setSeVolumeByWorkId( spep_0 +4 + 35, SE001, 40.5 );
setSeVolumeByWorkId( spep_0 +4 + 36, SE001, 45 );
setSeVolumeByWorkId( spep_0 +4 + 37, SE001, 49.5 );
setSeVolumeByWorkId( spep_0 +4 + 38, SE001, 54 );
setSeVolumeByWorkId( spep_0 +4 + 39, SE001, 58.5 );
setSeVolumeByWorkId( spep_0 +4 + 40, SE001, 63 );
setSeVolumeByWorkId( spep_0 +4 + 41, SE001, 67.5 );
setSeVolumeByWorkId( spep_0 +4 + 42, SE001, 72 );
setSeVolumeByWorkId( spep_0 +4 + 43, SE001, 76.5 );
setSeVolumeByWorkId( spep_0 +4 + 44, SE001, 81 );
setSeVolumeByWorkId( spep_0 +4 + 45, SE001, 85.5 );
setSeVolumeByWorkId( spep_0 +4 + 46, SE001, 90 );
setSeVolumeByWorkId( spep_0 +4 + 47, SE001, 94.5 );
setSeVolumeByWorkId( spep_0 +4 + 48, SE001, 100 );
setStartTimeMs( SE001,  433 );
stopSe( spep_0 +4 + 106, SE001, 28 );
SE006 = playSe( spep_0 +4 + 34, 1214 );
setSeVolumeByWorkId( spep_0 +4 + 34, SE006, 141 );

--気弾溜め二段階目
SE007 = playSe( spep_0 +4 + 100, 1017 );
SE008 = playSe( spep_0 +4 + 100, 1275,"",0.6 );
setSeVolumeByWorkId( spep_0 +4 + 100, SE008, 200 );
setPitch( spep_0 +4 + 100, SE008, -700 );
setTimeStretch( SE008, 0.53, 10, 1 );
SE009 = playSe( spep_0 +4 + 100, 1240,"",0.6 );
setSeVolumeByWorkId( spep_0 +4 + 100, SE009, 126 );
SE010 = playSe( spep_0 +4 + 104, 1011 );

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--顔カットイン
SE011 = playSe( spep_x + 12, 1018 );

--気弾溜め二段階目
stopSe( spep_1 + 68, SE009, 34 );

--白フェード
entryFade( spep_1 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_2=spep_1+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_2 + 0, SE_05 );

--気弾溜め
stopSe( spep_2 + 2, SE004, 0 );
stopSe( spep_2 + 2, SE006, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾投擲
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 80, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 78, beam, 255 );
setEffAlphaKey( spep_3 + 79, beam, 255 );
setEffAlphaKey( spep_3 + 80, beam, 0 );

--SE
--発射前溜め
SE013 = playSe( spep_3 + 6, 1214 );
setSeVolumeByWorkId( spep_3 + 6, SE013, 224 );
SE014 = playSe( spep_3 + 6, 1240 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );



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
--SE
--発射前溜め
stopSe( spep_3 + 54, SE013, 18 );
stopSe( spep_3 + 48, SE014, 16 );

--気弾発射
SE015 = playSe( spep_3 + 30, 1027 );
setSeVolumeByWorkId( spep_3 + 30, SE015, 81 );
SE016 = playSe( spep_3 + 30, 1146,"",0.6 );
setSeVolumeByWorkId( spep_3 + 30, SE016, 79 );
SE017 = playSe( spep_3 + 30, 1193,"",0.6 );
setSeVolumeByWorkId( spep_3 + 30, SE017, 141 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 敵に気弾が迫り直撃
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 255 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 255 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

a=-400;
b=110;
c=80;
d=-300

setMoveKey( spep_4 + 0, 1, 647.2+a, -272.4+b , 0 );
setMoveKey( spep_4 + 2, 1, 596.9+a, -246+b , 0 );
--setMoveKey( spep_4 + 4, 1, 534.1+a, -219.6+b , 0 );
--setMoveKey( spep_4 + 6, 1, 469.1+a, -193.2+b , 0 );
setMoveKey( spep_4 + 8, 1, 420.9+d, -166.9+c , 0 );
setMoveKey( spep_4 + 10, 1, 424.1+d, -174.8+c , 0 );
setMoveKey( spep_4 + 12, 1, 418.8+d, -165.9+c , 0 );
setMoveKey( spep_4 + 14, 1, 413.6+d, -159.1+c , 0 );
setMoveKey( spep_4 + 16, 1, 416.8+d, -164.9+c , 0 );
setMoveKey( spep_4 + 18, 1, 424.1+d, -164.4+c , 0 );
setMoveKey( spep_4 + 20, 1, 414.7+d, -164+c , 0 );
setMoveKey( spep_4 + 22, 1, 405.2+d, -163.5+c , 0 );
setMoveKey( spep_4 + 24, 1, 412.6+d, -163+c , 0 );
setMoveKey( spep_4 + 26, 1, 415.8+d, -173+c , 0 );
setMoveKey( spep_4 + 28, 1, 410.5+d, -162+c , 0 );
setMoveKey( spep_4 + 30, 1, 403.2+d, -155.2+c , 0 );
setMoveKey( spep_4 + 32, 1, 408.4+d, -161+c , 0 );
setMoveKey( spep_4 + 34, 1, 411.6+d, -152.2+c , 0 );
setMoveKey( spep_4 + 36, 1, 406.3+d, -160.1+c , 0 );
setMoveKey( spep_4 + 38, 1, 392.7+d, -168+c , 0 );
setMoveKey( spep_4 + 40, 1, 404.3+d, -159.1+c , 0 );
setMoveKey( spep_4 + 42, 1, 413.7+d, -158.6+c , 0 );
setMoveKey( spep_4 + 44, 1, 402.2+d, -158.1+c , 0 );
setMoveKey( spep_4 + 46, 1, 392.7+d, -157.7+c , 0 );
setMoveKey( spep_4 + 48, 1, 400.1+d, -157.2+c , 0 );
setMoveKey( spep_4 + 50, 1, 399.1+d, -148.3+c , 0 );
setMoveKey( spep_4 + 52, 1, 398+d, -156.2+c , 0 );
setMoveKey( spep_4 + 54, 1, 399.1+d, -166.2+c , 0 );
setMoveKey( spep_4 + 56, 1, 395.9+d, -155.2+c , 0 );
setMoveKey( spep_4 + 58, 1, 401.2+d, -154.8+c , 0 );

setScaleKey( spep_4 + 0, 1,2.89,2.89);
setScaleKey( spep_4 + 2, 1,2.65,2.65);
setScaleKey( spep_4 + 4, 1,2.41,2.41);
setScaleKey( spep_4 + 6, 1,2.12,2.12);
setScaleKey( spep_4 + 8, 1,1.88,1.88);
setScaleKey( spep_4 + 26, 1,1.88,1.88);
setScaleKey( spep_4 + 28, 1,1.82,1.82);
setScaleKey( spep_4 + 52, 1,1.82,1.82);
setScaleKey( spep_4 + 54, 1,1.77,1.77);
setScaleKey( spep_4 + 58, 1,1.77,1.77);

setRotateKey( spep_4 + 0, 1, 10.7 );
setRotateKey( spep_4 + 58, 1, 10.7 );

--SE
--気弾発射
stopSe( spep_4 + 54, SE017, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;
------------------------------------------------------
-- オレンジのギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

--ギャン
SE018 = playSe( spep_5 + 0, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 敵に気弾が迫り直撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--爆発
SE019 = playSe( spep_6 + 0, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場～気弾作成
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, -1.0, 1.0 );
setEffScaleKey( spep_0 + 146, beginning, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 146, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 144, beginning, 255 );
setEffAlphaKey( spep_0 + 145, beginning, 255 );
setEffAlphaKey( spep_0 + 146, beginning, 0 );

--SE
--腕あげる
SE002 = playSe( spep_0 + 14, 1189 );

--気弾溜め
SE003 = playSe( spep_0 +4 + 16, 1131 );
setPitch( spep_0 +4 + 16, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );
SE004 = playSe( spep_0 +4 + 16, 1271,"",0.6 );
SE005 = playSe( spep_0 +4 + 16, 1248,"",0.7 );
SE001 = playSe( spep_0 +4 + 26, 1255 );
setSeVolumeByWorkId( spep_0 +4 + 26, SE001, 0 );
setSeVolumeByWorkId( spep_0 +4 + 27, SE001, 4.5 );
setSeVolumeByWorkId( spep_0 +4 + 28, SE001, 9 );
setSeVolumeByWorkId( spep_0 +4 + 29, SE001, 13.5 );
setSeVolumeByWorkId( spep_0 +4 + 30, SE001, 18 );
setSeVolumeByWorkId( spep_0 +4 + 31, SE001, 22.5 );
setSeVolumeByWorkId( spep_0 +4 + 32, SE001, 27 );
setSeVolumeByWorkId( spep_0 +4 + 33, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 +4 + 34, SE001, 36 );
setSeVolumeByWorkId( spep_0 +4 + 35, SE001, 40.5 );
setSeVolumeByWorkId( spep_0 +4 + 36, SE001, 45 );
setSeVolumeByWorkId( spep_0 +4 + 37, SE001, 49.5 );
setSeVolumeByWorkId( spep_0 +4 + 38, SE001, 54 );
setSeVolumeByWorkId( spep_0 +4 + 39, SE001, 58.5 );
setSeVolumeByWorkId( spep_0 +4 + 40, SE001, 63 );
setSeVolumeByWorkId( spep_0 +4 + 41, SE001, 67.5 );
setSeVolumeByWorkId( spep_0 +4 + 42, SE001, 72 );
setSeVolumeByWorkId( spep_0 +4 + 43, SE001, 76.5 );
setSeVolumeByWorkId( spep_0 +4 + 44, SE001, 81 );
setSeVolumeByWorkId( spep_0 +4 + 45, SE001, 85.5 );
setSeVolumeByWorkId( spep_0 +4 + 46, SE001, 90 );
setSeVolumeByWorkId( spep_0 +4 + 47, SE001, 94.5 );
setSeVolumeByWorkId( spep_0 +4 + 48, SE001, 100 );
setStartTimeMs( SE001,  433 );
stopSe( spep_0 +4 + 106, SE001, 28 );
SE006 = playSe( spep_0 +4 + 34, 1214 );
setSeVolumeByWorkId( spep_0 +4 + 34, SE006, 141 );

--気弾溜め二段階目
SE007 = playSe( spep_0 +4 + 100, 1017 );
SE008 = playSe( spep_0 +4 + 100, 1275,"",0.6 );
setSeVolumeByWorkId( spep_0 +4 + 100, SE008, 200 );
setPitch( spep_0 +4 + 100, SE008, -700 );
setTimeStretch( SE008, 0.53, 10, 1 );
SE009 = playSe( spep_0 +4 + 100, 1240,"",0.6 );
setSeVolumeByWorkId( spep_0 +4 + 100, SE009, 126 );
SE010 = playSe( spep_0 +4 + 104, 1011 );

--次の準備
spep_1=spep_0+146;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
SE011 = playSe( spep_x + 12, 1018 );

--気弾溜め二段階目
stopSe( spep_1 + 68, SE009, 34 );

--白フェード
entryFade( spep_1 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_2=spep_1+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_2 + 0, SE_05 );

--気弾溜め
stopSe( spep_2 + 2, SE004, 0 );
stopSe( spep_2 + 2, SE006, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾投擲
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80, beam, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 80, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 78, beam, 255 );
setEffAlphaKey( spep_3 + 79, beam, 255 );
setEffAlphaKey( spep_3 + 80, beam, 0 );

--SE
--発射前溜め
SE013 = playSe( spep_3 + 6, 1214 );
setSeVolumeByWorkId( spep_3 + 6, SE013, 224 );
SE014 = playSe( spep_3 + 6, 1240 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );



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
--SE
--発射前溜め
stopSe( spep_3 + 54, SE013, 18 );
stopSe( spep_3 + 48, SE014, 16 );

--気弾発射
SE015 = playSe( spep_3 + 30, 1027 );
setSeVolumeByWorkId( spep_3 + 30, SE015, 81 );
SE016 = playSe( spep_3 + 30, 1146,"",0.6 );
setSeVolumeByWorkId( spep_3 + 30, SE016, 79 );
SE017 = playSe( spep_3 + 30, 1193,"",0.6 );
setSeVolumeByWorkId( spep_3 + 30, SE017, 141 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 敵に気弾が迫り直撃
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 56, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 54, hit_f, 255 );
setEffAlphaKey( spep_4 + 55, hit_f, 255 );
setEffAlphaKey( spep_4 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 56, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 54, hit_b, 255 );
setEffAlphaKey( spep_4 + 55, hit_b, 255 );
setEffAlphaKey( spep_4 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 118 );

a=-400;
b=110;
c=80;
d=-300

setMoveKey( spep_4 + 0, 1, 647.2+a, -272.4+b , 0 );
setMoveKey( spep_4 + 2, 1, 596.9+a, -246+b , 0 );
--setMoveKey( spep_4 + 4, 1, 534.1+a, -219.6+b , 0 );
--setMoveKey( spep_4 + 6, 1, 469.1+a, -193.2+b , 0 );
setMoveKey( spep_4 + 8, 1, 420.9+d, -166.9+c , 0 );
setMoveKey( spep_4 + 10, 1, 424.1+d, -174.8+c , 0 );
setMoveKey( spep_4 + 12, 1, 418.8+d, -165.9+c , 0 );
setMoveKey( spep_4 + 14, 1, 413.6+d, -159.1+c , 0 );
setMoveKey( spep_4 + 16, 1, 416.8+d, -164.9+c , 0 );
setMoveKey( spep_4 + 18, 1, 424.1+d, -164.4+c , 0 );
setMoveKey( spep_4 + 20, 1, 414.7+d, -164+c , 0 );
setMoveKey( spep_4 + 22, 1, 405.2+d, -163.5+c , 0 );
setMoveKey( spep_4 + 24, 1, 412.6+d, -163+c , 0 );
setMoveKey( spep_4 + 26, 1, 415.8+d, -173+c , 0 );
setMoveKey( spep_4 + 28, 1, 410.5+d, -162+c , 0 );
setMoveKey( spep_4 + 30, 1, 403.2+d, -155.2+c , 0 );
setMoveKey( spep_4 + 32, 1, 408.4+d, -161+c , 0 );
setMoveKey( spep_4 + 34, 1, 411.6+d, -152.2+c , 0 );
setMoveKey( spep_4 + 36, 1, 406.3+d, -160.1+c , 0 );
setMoveKey( spep_4 + 38, 1, 392.7+d, -168+c , 0 );
setMoveKey( spep_4 + 40, 1, 404.3+d, -159.1+c , 0 );
setMoveKey( spep_4 + 42, 1, 413.7+d, -158.6+c , 0 );
setMoveKey( spep_4 + 44, 1, 402.2+d, -158.1+c , 0 );
setMoveKey( spep_4 + 46, 1, 392.7+d, -157.7+c , 0 );
setMoveKey( spep_4 + 48, 1, 400.1+d, -157.2+c , 0 );
setMoveKey( spep_4 + 50, 1, 399.1+d, -148.3+c , 0 );
setMoveKey( spep_4 + 52, 1, 398+d, -156.2+c , 0 );
setMoveKey( spep_4 + 54, 1, 399.1+d, -166.2+c , 0 );
setMoveKey( spep_4 + 56, 1, 395.9+d, -155.2+c , 0 );
setMoveKey( spep_4 + 58, 1, 401.2+d, -154.8+c , 0 );

setScaleKey( spep_4 + 0, 1,2.89,2.89);
setScaleKey( spep_4 + 2, 1,2.65,2.65);
setScaleKey( spep_4 + 4, 1,2.41,2.41);
setScaleKey( spep_4 + 6, 1,2.12,2.12);
setScaleKey( spep_4 + 8, 1,1.88,1.88);
setScaleKey( spep_4 + 26, 1,1.88,1.88);
setScaleKey( spep_4 + 28, 1,1.82,1.82);
setScaleKey( spep_4 + 52, 1,1.82,1.82);
setScaleKey( spep_4 + 54, 1,1.77,1.77);
setScaleKey( spep_4 + 58, 1,1.77,1.77);

setRotateKey( spep_4 + 0, 1, 10.7 );
setRotateKey( spep_4 + 58, 1, 10.7 );

--SE
--気弾発射
stopSe( spep_4 + 54, SE017, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;
------------------------------------------------------
-- オレンジのギャン
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

--ギャン
SE018 = playSe( spep_5 + 0, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;
------------------------------------------------------
-- 敵に気弾が迫り直撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--爆発
SE019 = playSe( spep_6 + 0, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 110 );
end