--1022440:ピッコロ_捨て身の援護射撃
--sp_effect_b1_00159

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
SP_01=	157865	;--	敵と対峙する(味方側)
SP_02=	157866	;--	敵と対峙する(味方側)
SP_03=	157869	;--	画面に向かってダッシュしてくる
SP_04=	157870	;--	画面に向かってダッシュしてくる
SP_05=	157871	;--	蹴り飛ばす（味方側）
SP_06=	157872	;--	蹴り飛ばす（味方側）
SP_07=	157875	;--	蹴った敵が吹っ飛ぶ（味方側）
SP_08=	157876	;--	蹴った敵が吹っ飛ぶ（味方側）
SP_09=	157879	;--	叩き落とす・フィニッシュ（味方側）
SP_10=	157880	;--	叩き落とす・フィニッシュ（味方側）

--エフェクト(てき)
SP_01x=	157867	;--	敵と対峙する(敵側)
SP_02x=	157868	;--	敵と対峙する(敵側)
SP_03x=	157869	;--	画面に向かってダッシュしてくる
SP_04x=	157870	;--	画面に向かってダッシュしてくる
SP_05x=	157873	;--	蹴り飛ばす（敵側）
SP_06x=	157874	;--	蹴り飛ばす（敵側）
SP_07x=	157877	;--	蹴った敵が吹っ飛ぶ（敵側）
SP_08x=	157878	;--	蹴った敵が吹っ飛ぶ（敵側）
SP_09x=	157881	;--	叩き落とす・フィニッシュ（敵側）
SP_10x=	157882	;--	叩き落とす・フィニッシュ（敵側）

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 86, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 84, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 85, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 86, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 86, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 84, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 85, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 86, confrontation_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 1, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 2, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 3, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 4, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 5, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 6, 1, 172.1, -17.1 , 0 );
setMoveKey( spep_0 + 8, 1, 176.8, -16.8 , 0 );
setMoveKey( spep_0 + 10, 1, 181.5, -16.5 , 0 );
setMoveKey( spep_0 + 12, 1, 186.3, -16.2 , 0 );
setMoveKey( spep_0 + 14, 1, 191, -15.9 , 0 );
setMoveKey( spep_0 + 16, 1, 195.7, -15.6 , 0 );
setMoveKey( spep_0 + 18, 1, 200.5, -15.3 , 0 );
setMoveKey( spep_0 + 20, 1, 205.2, -15 , 0 );
setMoveKey( spep_0 + 22, 1, 209.9, -14.7 , 0 );
setMoveKey( spep_0 + 24, 1, 214.7, -14.4 , 0 );
setMoveKey( spep_0 + 26, 1, 219.5, -14.1 , 0 );
setMoveKey( spep_0 + 28, 1, 224.2, -13.8 , 0 );
setMoveKey( spep_0 + 30, 1, 413.8, -7.5 , 0 );
setMoveKey( spep_0 + 32, 1, 632.6, -1.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.58,2.58);
setScaleKey( spep_0 + 1, 1, 2.58,2.58);
setScaleKey( spep_0 + 2, 1, 2.58,2.58);
setScaleKey( spep_0 + 3, 1, 2.58,2.58);
setScaleKey( spep_0 + 4, 1, 2.64,2.64);
setScaleKey( spep_0 + 5, 1, 2.64,2.64);
setScaleKey( spep_0 + 6, 1, 2.64,2.64);
setScaleKey( spep_0 + 8, 1, 2.7,2.7);
setScaleKey( spep_0 + 12, 1, 2.77,2.77);
setScaleKey( spep_0 + 16, 1, 2.83,2.83);
setScaleKey( spep_0 + 18, 1, 2.89,2.89);
setScaleKey( spep_0 + 20, 1, 2.96,2.96);
setScaleKey( spep_0 + 22, 1, 2.96,2.96);
setScaleKey( spep_0 + 26, 1, 3.02,3.02);
setScaleKey( spep_0 + 28, 1, 3.08,3.08);
setScaleKey( spep_0 + 30, 1, 4.91,4.91);
setScaleKey( spep_0 + 32, 1, 7.18,7.18);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 32, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
--[[入り
SE001 = playSe( spep_0 + 0, 1072 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );]]

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+86;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 34, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 34, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 34, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 34, dash, 255 );

--SE
--[[ダッシュ
SE003 = playSe( spep_1 + 0, 1189 );
SE004 = playSe( spep_1 + 6, 9 );
SE005 = playSe( spep_1 + 6, 1182 );]]

--ダッシュ
SE003 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 6, 9, "",spep_1 +40, 0, 2, -1);
SE005 = playSeVer2( spep_1 + 6, 1182, "",spep_1 + 40, 0, 2, -1);

--白フェード
entryFade( spep_1 + 26, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+34;
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
--[[ダッシュ
stopSe( spep_2 + 4, SE004, 2 );
stopSe( spep_2 + 4, SE005, 2 );

--カードカットイン
playSe( spep_2 + 0, SE_05 );]]

--カードカットイン
SE006 = playSeVer2( spep_2 + 0, 1035, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, dash2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 74, dash2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash2, 0 );
setEffRotateKey( spep_3 + 74, dash2, 0 );
setEffAlphaKey( spep_3 + 0, dash2, 255 );
setEffAlphaKey( spep_3 + 72, dash2, 255 );
setEffAlphaKey( spep_3 + 73+1, dash2, 255 );
--setEffAlphaKey( spep_3 + 74, dash2, 0 );

--SE
--[[向かってくる
SE007 = playSe( spep_3 + 0, 1314 );
SE008 = playSe( spep_3 + 0, 1175 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 64 );
SE009 = playSe( spep_3 + 26, 1072 );]]

--向かってくる
SE007 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 88, 0, 18, -1);
SE008 = playSeVer2( spep_3 + 0, 1175, "",spep_3 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 0, SE008, 64 );
SE009 = playSeVer2( spep_3 + 26, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );



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
--[[向かってくる
stopSe( spep_3 + 70, SE007, 18 );
stopSe( spep_3 + 70, SE008, 18 );]]

--次の準備 
spep_4=spep_3+74-2;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 50, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 48, kick_f, 255 );
setEffAlphaKey( spep_4 + 49, kick_f, 255 );
setEffAlphaKey( spep_4 + 50, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 50, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 48, kick_b, 255 );
setEffAlphaKey( spep_4 + 49, kick_b, 255 );
setEffAlphaKey( spep_4 + 50, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 107 );

a=-60;
b=-40;

setMoveKey( spep_4 + 0, 1, -13.8, -184.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -12.3, -161 , 0 );
setMoveKey( spep_4-3 + 4, 1, -10.9, -137.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -9.4, -113.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, -7.9, -89.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -8.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, -8.3, -85.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -8.5, -84 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.7, -82.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -8.9, -80.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, -9.1, -78.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -9.2, -77.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.4, -75.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, -9.8, -71.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -10, -70.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -10.2, -68.4 , 0 );
setMoveKey( spep_4-3 + 35, 1, -10.3, -66.6 , 0 );

setMoveKey( spep_4-3 + 36, 1, 26.2+a, -40.1+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 51.2+a, -52.1+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 20.2+a, -22.1+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 29.1+a, -48.1+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 31.1+a, -29.1+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 21.2+a, -55.1+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 25.2+a, -36.1+b , 0 );
setMoveKey( spep_4-1 + 50, 1, 47.1+a, -55.1+b , 0 );
--setMoveKey( spep_4-1 + 52, 1, 27.2+a, -41.1+b , 0 );
--[[
setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 2.58,2.58);
setScaleKey( spep_4-3 + 52, 1, 2.58,2.58);
]]

setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_4-1 + 50, 1, 1.45,1.45);


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 35, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -55.2 );
setRotateKey( spep_4-1 + 50, 1, -55.2 );

--SE
--[[ピンクの光差す
SE010 = playSe( spep_4 + 0, 1116 ,"",0.6);
setPitch( spep_4 + 0, SE010, -300 );
setTimeStretch( SE010, 0.8, 10, 1 );
stopSe( spep_4 + 26, SE010, 12 );
SE011 = playSe( spep_4 + 6, 1179 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 6, SE011, 184 );
setPitch( spep_4 + 6, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );
stopSe( spep_4 + 40, SE011, 16 );]]

--ピンクの光差す
SE010 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 38, 0, 12, 0.6);
setPitch( spep_4 + 0, SE010, -300 );
setTimeStretch( SE010, 0.8, 10, 1 );
SE011 = playSeVer2( spep_4 + 6, 1179, "",spep_4 +56, 0, 16, 0.6);
setSeVolumeByWorkId( spep_4 + 6, SE011, 184 );
setPitch( spep_4 + 6, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );

--[[キック
SE012 = playSe( spep_4 + 38, 1010 );
setSeVolumeByWorkId( spep_4 + 38, SE012, 82 );
SE013 = playSe( spep_4 + 38, 1187 );
setSeVolumeByWorkId( spep_4 + 38, SE013, 86 );
SE014 = playSe( spep_4 + 40, 1110 );
setSeVolumeByWorkId( spep_4 + 40, SE014, 93 );]]

--キック
SE012 = playSeVer2( spep_4 + 38, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE012, 82 );
SE013 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE013, 86 );
SE014 = playSeVer2( spep_4 + 40, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE014, 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+50;
------------------------------------------------------
--蹴った敵が吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_f, 0 );
setEffRotateKey( spep_5 + 60, fly_f, 0 );
setEffAlphaKey( spep_5 + 0, fly_f, 255 );
setEffAlphaKey( spep_5 + 58, fly_f, 255 );
setEffAlphaKey( spep_5 + 59, fly_f, 255 );
setEffAlphaKey( spep_5 + 60, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_b, 0 );
setEffRotateKey( spep_5 + 60, fly_b, 0 );
setEffAlphaKey( spep_5 + 0, fly_b, 255 );
setEffAlphaKey( spep_5 + 58, fly_b, 255 );
setEffAlphaKey( spep_5 + 59, fly_b, 255 );
setEffAlphaKey( spep_5 + 60, fly_b, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 258.5, 59.5 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 281.8, 55 , 0 );
setMoveKey( spep_5-3 + 4, 1, 295.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, 299.2, 51.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 298.2, 52.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 297.2, 52.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 296.1, 53 , 0 );
setMoveKey( spep_5-3 + 14, 1, 295, 53.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 294, 53.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 292.9, 54 , 0 );
setMoveKey( spep_5-3 + 20, 1, 291.9, 54.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 290.8, 54.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 289.7, 55.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 288.6, 55.5 , 0 );
setMoveKey( spep_5-3 + 28, 1, 287.5, 55.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 286.2, 56.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 284.8, 56.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 283.3, 56.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 231.6, 52.9 , 0 );
setMoveKey( spep_5-3 + 38, 1, 208.8, 51.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 174.6, 49.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, 45.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 104.2, 41 , 0 );
setMoveKey( spep_5-3 + 46, 1, 61.9, 36.5 , 0 );
setMoveKey( spep_5-3 + 48, 1, 55.5, 36.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 49, 35.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 42.6, 35.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 36.2, 34.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, 29.9, 34.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 23.4, 33.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 17.1, 33.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 10.6, 32.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.63,0.63);
--setScaleKey( spep_5-3 + 2, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 4, 1, 0.25,0.25);
setScaleKey( spep_5-3 + 6, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 30, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 32, 1, 0.31,0.31);
setScaleKey( spep_5-3 + 34, 1, 0.44,0.44);
setScaleKey( spep_5-3 + 36, 1, 0.75,0.75);
setScaleKey( spep_5-3 + 38, 1, 1.07,1.07);
setScaleKey( spep_5-3 + 40, 1, 1.44,1.44);
setScaleKey( spep_5-3 + 42, 1, 1.76,1.76);
setScaleKey( spep_5-3 + 44, 1, 2.14,2.14);
setScaleKey( spep_5-3 + 46, 1, 2.52,2.52);
setScaleKey( spep_5-3 + 48, 1, 2.58,2.58);
setScaleKey( spep_5-3 + 50, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 52, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 54, 1, 2.77,2.77);
setScaleKey( spep_5-3 + 56, 1, 2.83,2.83);
setScaleKey( spep_5-3 + 58, 1, 2.89,2.89);
setScaleKey( spep_5-3 + 60, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 62, 1, 3.02,3.02);

setRotateKey( spep_5 + 0, 1, 34 );
--setRotateKey( spep_5-3 + 2, 1, 33.9 );
setRotateKey( spep_5-3 + 4, 1, 33.9 );
setRotateKey( spep_5-3 + 6, 1, 33.8 );
setRotateKey( spep_5-3 + 36, 1, 33.8 );
setRotateKey( spep_5-3 + 38, 1, 33.9 );
setRotateKey( spep_5-3 + 42, 1, 33.9 );
setRotateKey( spep_5-3 + 44, 1, 34 );
setRotateKey( spep_5-3 + 62, 1, 34 );

--SE
--[[敵飛んでいく
SE015 = playSe( spep_5 + 0, 1183 );

--瞬間移動
SE016 = playSe( spep_5 + 60, 1109 );]]

--敵飛んでいく
SE015 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_5 + 60, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+60;
------------------------------------------------------
--叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 228, drop_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 228, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_f, 0 );
setEffRotateKey( spep_6 + 228, drop_f, 0 );
setEffAlphaKey( spep_6 + 0, drop_f, 255 );
setEffAlphaKey( spep_6 + 228, drop_f, 255 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 228, drop_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 228, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_b, 0 );
setEffRotateKey( spep_6 + 228, drop_b, 0 );
setEffAlphaKey( spep_6 + 0, drop_b, 255 );
setEffAlphaKey( spep_6 + 228, drop_b, 255 );

--敵の動き
setDisp( spep_6 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );
changeAnime( spep_6-3 + 40, 1, 106 );

setMoveKey( spep_6 + 0, 1, 51.6, 11.7 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 48.6, 9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 43.1, 4.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 40.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 37.8, 1.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 38.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 39.2, 6.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 40.1, 9.8 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.1, 13.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 42.2, 17.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 43.4, 21.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 44.7, 26.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 46.1, 32.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 47.7, 37.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 49.4, 43.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 35, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 44.4, -86.1 , 0 );

setMoveKey( spep_6-3 + 39, 1, 32.5, -147.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.2, -229.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -22.3, -545.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, -8.5, -594.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, -8.3, -686.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, -8.1, -768.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, -7.8, -840.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, -7.6, -903.5 , 0 );
setMoveKey( spep_6-3 + 54, 1, -7.4, -956.8 , 0 );
setMoveKey( spep_6-3 + 56, 1, -7.2, -1000.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.9,4.9);
setScaleKey( spep_6-3 + 4, 1, 4.05,4.05);
setScaleKey( spep_6-3 + 6, 1, 3.67,3.67);
setScaleKey( spep_6-3 + 8, 1, 3.21,3.21);
setScaleKey( spep_6-3 + 12, 1, 2.83,2.83);
setScaleKey( spep_6-3 + 24, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 34, 1, 2.64,2.64);
setScaleKey( spep_6-3 + 39, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 40, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 42, 1, 2.42,2.42);
setScaleKey( spep_6-3 + 48, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 56, 1, 2.27,2.27);

setRotateKey( spep_6 + 0, 1, 36.6 );
setRotateKey( spep_6-3 + 39, 1, 36.6 );
setRotateKey( spep_6-3 + 40, 1, 126.1 );
setRotateKey( spep_6-3 + 56, 1, 126.1 );

--敵の動き
setDisp( spep_6-3 + 72, 1, 1 );
setDisp( spep_6-1 + 78, 1, 0 );

changeAnime( spep_6-3 + 72, 1, 105 );

setMoveKey( spep_6-3 + 72, 1, 32.2, -39.2 , 0 );
setMoveKey( spep_6-3 + 74, 1, 34.3, -36.5 , 0 );
setMoveKey( spep_6-3 + 76, 1, 36.7, -33.2 , 0 );
setMoveKey( spep_6-1 + 78, 1, 39.5, -29.4 , 0 );

setScaleKey( spep_6-3 + 72, 1, 2.77,2.77);
setScaleKey( spep_6-3 + 74, 1, 2.07,2.07);
setScaleKey( spep_6-3 + 76, 1, 1.26,1.26);
setScaleKey( spep_6-1 + 78, 1, 0.37,0.37);

setRotateKey( spep_6-3 + 72, 1, 0 );
setRotateKey( spep_6-1 + 78, 1, 0 );

--SE
--[[叩きつけ
SE017 = playSe( spep_6 + 34, 1123 );

--敵飛んでいく
SE018 = playSe( spep_6 + 70, 1277 );

--爆発
SE019 = playSe( spep_6 + 78, 1159 );]]

--叩きつけ
SE016 = playSeVer2( spep_6 + 34, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_6 + 70, 1277, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_6 + 78, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 218, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +78 );
endPhase( spep_6 + 218 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 86, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 84, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 85, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 86, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 86, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 84, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 85, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 86, confrontation_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 1, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 2, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 3, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 4, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 5, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 6, 1, 172.1, -17.1 , 0 );
setMoveKey( spep_0 + 8, 1, 176.8, -16.8 , 0 );
setMoveKey( spep_0 + 10, 1, 181.5, -16.5 , 0 );
setMoveKey( spep_0 + 12, 1, 186.3, -16.2 , 0 );
setMoveKey( spep_0 + 14, 1, 191, -15.9 , 0 );
setMoveKey( spep_0 + 16, 1, 195.7, -15.6 , 0 );
setMoveKey( spep_0 + 18, 1, 200.5, -15.3 , 0 );
setMoveKey( spep_0 + 20, 1, 205.2, -15 , 0 );
setMoveKey( spep_0 + 22, 1, 209.9, -14.7 , 0 );
setMoveKey( spep_0 + 24, 1, 214.7, -14.4 , 0 );
setMoveKey( spep_0 + 26, 1, 219.5, -14.1 , 0 );
setMoveKey( spep_0 + 28, 1, 224.2, -13.8 , 0 );
setMoveKey( spep_0 + 30, 1, 413.8, -7.5 , 0 );
setMoveKey( spep_0 + 32, 1, 632.6, -1.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.58,2.58);
setScaleKey( spep_0 + 1, 1, 2.58,2.58);
setScaleKey( spep_0 + 2, 1, 2.58,2.58);
setScaleKey( spep_0 + 3, 1, 2.58,2.58);
setScaleKey( spep_0 + 4, 1, 2.64,2.64);
setScaleKey( spep_0 + 5, 1, 2.64,2.64);
setScaleKey( spep_0 + 6, 1, 2.64,2.64);
setScaleKey( spep_0 + 8, 1, 2.7,2.7);
setScaleKey( spep_0 + 12, 1, 2.77,2.77);
setScaleKey( spep_0 + 16, 1, 2.83,2.83);
setScaleKey( spep_0 + 18, 1, 2.89,2.89);
setScaleKey( spep_0 + 20, 1, 2.96,2.96);
setScaleKey( spep_0 + 22, 1, 2.96,2.96);
setScaleKey( spep_0 + 26, 1, 3.02,3.02);
setScaleKey( spep_0 + 28, 1, 3.08,3.08);
setScaleKey( spep_0 + 30, 1, 4.91,4.91);
setScaleKey( spep_0 + 32, 1, 7.18,7.18);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 32, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
--[[入り
SE001 = playSe( spep_0 + 0, 1072 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );]]

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+86;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 34, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 34, dash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 34, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 34, dash, 255 );

--SE
--[[ダッシュ
SE003 = playSe( spep_1 + 0, 1189 );
SE004 = playSe( spep_1 + 6, 9 );
SE005 = playSe( spep_1 + 6, 1182 );]]

--ダッシュ
SE003 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 6, 9, "",spep_1 +40, 0, 2, -1);
SE005 = playSeVer2( spep_1 + 6, 1182, "",spep_1 + 40, 0, 2, -1);

--白フェード
entryFade( spep_1 + 26, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+34;
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
--[[ダッシュ
stopSe( spep_2 + 4, SE004, 2 );
stopSe( spep_2 + 4, SE005, 2 );

--カードカットイン
playSe( spep_2 + 0, SE_05 );]]

--カードカットイン
SE006 = playSeVer2( spep_2 + 0, 1035, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, dash2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 74, dash2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash2, 0 );
setEffRotateKey( spep_3 + 74, dash2, 0 );
setEffAlphaKey( spep_3 + 0, dash2, 255 );
setEffAlphaKey( spep_3 + 72, dash2, 255 );
setEffAlphaKey( spep_3 + 73+1, dash2, 255 );
--setEffAlphaKey( spep_3 + 74, dash2, 0 );

--SE
--[[向かってくる
SE007 = playSe( spep_3 + 0, 1314 );
SE008 = playSe( spep_3 + 0, 1175 );
setSeVolumeByWorkId( spep_3 + 0, SE008, 64 );
SE009 = playSe( spep_3 + 26, 1072 );]]

--向かってくる
SE007 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 88, 0, 18, -1);
SE008 = playSeVer2( spep_3 + 0, 1175, "",spep_3 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 0, SE008, 64 );
SE009 = playSeVer2( spep_3 + 26, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );



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
--[[向かってくる
stopSe( spep_3 + 70, SE007, 18 );
stopSe( spep_3 + 70, SE008, 18 );]]

--次の準備 
spep_4=spep_3+74-2;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 50, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 48, kick_f, 255 );
setEffAlphaKey( spep_4 + 49, kick_f, 255 );
setEffAlphaKey( spep_4 + 50, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 50, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 48, kick_b, 255 );
setEffAlphaKey( spep_4 + 49, kick_b, 255 );
setEffAlphaKey( spep_4 + 50, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 107 );

a=-60;
b=-40;

setMoveKey( spep_4 + 0, 1, -13.8, -184.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -12.3, -161 , 0 );
setMoveKey( spep_4-3 + 4, 1, -10.9, -137.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -9.4, -113.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, -7.9, -89.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -8.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, -8.3, -85.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -8.5, -84 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.7, -82.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -8.9, -80.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, -9.1, -78.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -9.2, -77.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.4, -75.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, -9.8, -71.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -10, -70.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -10.2, -68.4 , 0 );
setMoveKey( spep_4-3 + 35, 1, -10.3, -66.6 , 0 );

setMoveKey( spep_4-3 + 36, 1, 26.2+a, -40.1+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 51.2+a, -52.1+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 20.2+a, -22.1+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 29.1+a, -48.1+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 31.1+a, -29.1+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 21.2+a, -55.1+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 25.2+a, -36.1+b , 0 );
setMoveKey( spep_4-1 + 50, 1, 47.1+a, -55.1+b , 0 );
--setMoveKey( spep_4-1 + 52, 1, 27.2+a, -41.1+b , 0 );
--[[
setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 2.58,2.58);
setScaleKey( spep_4-3 + 52, 1, 2.58,2.58);
]]

setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_4-1 + 50, 1, 1.45,1.45);


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 35, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -55.2 );
setRotateKey( spep_4-1 + 50, 1, -55.2 );

--SE
--[[ピンクの光差す
SE010 = playSe( spep_4 + 0, 1116 ,"",0.6);
setPitch( spep_4 + 0, SE010, -300 );
setTimeStretch( SE010, 0.8, 10, 1 );
stopSe( spep_4 + 26, SE010, 12 );
SE011 = playSe( spep_4 + 6, 1179 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 6, SE011, 184 );
setPitch( spep_4 + 6, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );
stopSe( spep_4 + 40, SE011, 16 );]]

--ピンクの光差す
SE010 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 38, 0, 12, 0.6);
setPitch( spep_4 + 0, SE010, -300 );
setTimeStretch( SE010, 0.8, 10, 1 );
SE011 = playSeVer2( spep_4 + 6, 1179, "",spep_4 +56, 0, 16, 0.6);
setSeVolumeByWorkId( spep_4 + 6, SE011, 184 );
setPitch( spep_4 + 6, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );

--[[キック
SE012 = playSe( spep_4 + 38, 1010 );
setSeVolumeByWorkId( spep_4 + 38, SE012, 82 );
SE013 = playSe( spep_4 + 38, 1187 );
setSeVolumeByWorkId( spep_4 + 38, SE013, 86 );
SE014 = playSe( spep_4 + 40, 1110 );
setSeVolumeByWorkId( spep_4 + 40, SE014, 93 );]]

--キック
SE012 = playSeVer2( spep_4 + 38, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE012, 82 );
SE013 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE013, 86 );
SE014 = playSeVer2( spep_4 + 40, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE014, 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+50;
------------------------------------------------------
--蹴った敵が吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_f, 0 );
setEffRotateKey( spep_5 + 60, fly_f, 0 );
setEffAlphaKey( spep_5 + 0, fly_f, 255 );
setEffAlphaKey( spep_5 + 58, fly_f, 255 );
setEffAlphaKey( spep_5 + 59, fly_f, 255 );
setEffAlphaKey( spep_5 + 60, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_b, 0 );
setEffRotateKey( spep_5 + 60, fly_b, 0 );
setEffAlphaKey( spep_5 + 0, fly_b, 255 );
setEffAlphaKey( spep_5 + 58, fly_b, 255 );
setEffAlphaKey( spep_5 + 59, fly_b, 255 );
setEffAlphaKey( spep_5 + 60, fly_b, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 258.5, 59.5 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 281.8, 55 , 0 );
setMoveKey( spep_5-3 + 4, 1, 295.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, 299.2, 51.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 298.2, 52.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 297.2, 52.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 296.1, 53 , 0 );
setMoveKey( spep_5-3 + 14, 1, 295, 53.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 294, 53.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 292.9, 54 , 0 );
setMoveKey( spep_5-3 + 20, 1, 291.9, 54.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 290.8, 54.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 289.7, 55.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 288.6, 55.5 , 0 );
setMoveKey( spep_5-3 + 28, 1, 287.5, 55.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 286.2, 56.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 284.8, 56.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 283.3, 56.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 231.6, 52.9 , 0 );
setMoveKey( spep_5-3 + 38, 1, 208.8, 51.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 174.6, 49.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, 45.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 104.2, 41 , 0 );
setMoveKey( spep_5-3 + 46, 1, 61.9, 36.5 , 0 );
setMoveKey( spep_5-3 + 48, 1, 55.5, 36.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 49, 35.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 42.6, 35.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 36.2, 34.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, 29.9, 34.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 23.4, 33.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 17.1, 33.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 10.6, 32.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.63,0.63);
--setScaleKey( spep_5-3 + 2, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 4, 1, 0.25,0.25);
setScaleKey( spep_5-3 + 6, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 30, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 32, 1, 0.31,0.31);
setScaleKey( spep_5-3 + 34, 1, 0.44,0.44);
setScaleKey( spep_5-3 + 36, 1, 0.75,0.75);
setScaleKey( spep_5-3 + 38, 1, 1.07,1.07);
setScaleKey( spep_5-3 + 40, 1, 1.44,1.44);
setScaleKey( spep_5-3 + 42, 1, 1.76,1.76);
setScaleKey( spep_5-3 + 44, 1, 2.14,2.14);
setScaleKey( spep_5-3 + 46, 1, 2.52,2.52);
setScaleKey( spep_5-3 + 48, 1, 2.58,2.58);
setScaleKey( spep_5-3 + 50, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 52, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 54, 1, 2.77,2.77);
setScaleKey( spep_5-3 + 56, 1, 2.83,2.83);
setScaleKey( spep_5-3 + 58, 1, 2.89,2.89);
setScaleKey( spep_5-3 + 60, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 62, 1, 3.02,3.02);

setRotateKey( spep_5 + 0, 1, 34 );
--setRotateKey( spep_5-3 + 2, 1, 33.9 );
setRotateKey( spep_5-3 + 4, 1, 33.9 );
setRotateKey( spep_5-3 + 6, 1, 33.8 );
setRotateKey( spep_5-3 + 36, 1, 33.8 );
setRotateKey( spep_5-3 + 38, 1, 33.9 );
setRotateKey( spep_5-3 + 42, 1, 33.9 );
setRotateKey( spep_5-3 + 44, 1, 34 );
setRotateKey( spep_5-3 + 62, 1, 34 );

--SE
--[[敵飛んでいく
SE015 = playSe( spep_5 + 0, 1183 );

--瞬間移動
SE016 = playSe( spep_5 + 60, 1109 );]]

--敵飛んでいく
SE015 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_5 + 60, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+60;
------------------------------------------------------
--叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 228, drop_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 228, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_f, 0 );
setEffRotateKey( spep_6 + 228, drop_f, 0 );
setEffAlphaKey( spep_6 + 0, drop_f, 255 );
setEffAlphaKey( spep_6 + 228, drop_f, 255 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 228, drop_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 228, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_b, 0 );
setEffRotateKey( spep_6 + 228, drop_b, 0 );
setEffAlphaKey( spep_6 + 0, drop_b, 255 );
setEffAlphaKey( spep_6 + 228, drop_b, 255 );

--敵の動き
setDisp( spep_6 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );
changeAnime( spep_6-3 + 40, 1, 106 );

setMoveKey( spep_6 + 0, 1, 51.6, 11.7 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 48.6, 9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 43.1, 4.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 40.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 37.8, 1.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 38.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 39.2, 6.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 40.1, 9.8 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.1, 13.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 42.2, 17.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 43.4, 21.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 44.7, 26.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 46.1, 32.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 47.7, 37.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 49.4, 43.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 35, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 44.4, -86.1 , 0 );

setMoveKey( spep_6-3 + 39, 1, 32.5, -147.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.2, -229.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -22.3, -545.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, -8.5, -594.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, -8.3, -686.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, -8.1, -768.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, -7.8, -840.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, -7.6, -903.5 , 0 );
setMoveKey( spep_6-3 + 54, 1, -7.4, -956.8 , 0 );
setMoveKey( spep_6-3 + 56, 1, -7.2, -1000.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.9,4.9);
setScaleKey( spep_6-3 + 4, 1, 4.05,4.05);
setScaleKey( spep_6-3 + 6, 1, 3.67,3.67);
setScaleKey( spep_6-3 + 8, 1, 3.21,3.21);
setScaleKey( spep_6-3 + 12, 1, 2.83,2.83);
setScaleKey( spep_6-3 + 24, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 34, 1, 2.64,2.64);
setScaleKey( spep_6-3 + 39, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 40, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 42, 1, 2.42,2.42);
setScaleKey( spep_6-3 + 48, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 56, 1, 2.27,2.27);

setRotateKey( spep_6 + 0, 1, 36.6 );
setRotateKey( spep_6-3 + 39, 1, 36.6 );
setRotateKey( spep_6-3 + 40, 1, 126.1 );
setRotateKey( spep_6-3 + 56, 1, 126.1 );

--敵の動き
setDisp( spep_6-3 + 72, 1, 1 );
setDisp( spep_6-1 + 78, 1, 0 );

changeAnime( spep_6-3 + 72, 1, 105 );

setMoveKey( spep_6-3 + 72, 1, 32.2, -39.2 , 0 );
setMoveKey( spep_6-3 + 74, 1, 34.3, -36.5 , 0 );
setMoveKey( spep_6-3 + 76, 1, 36.7, -33.2 , 0 );
setMoveKey( spep_6-1 + 78, 1, 39.5, -29.4 , 0 );

setScaleKey( spep_6-3 + 72, 1, 2.77,2.77);
setScaleKey( spep_6-3 + 74, 1, 2.07,2.07);
setScaleKey( spep_6-3 + 76, 1, 1.26,1.26);
setScaleKey( spep_6-1 + 78, 1, 0.37,0.37);

setRotateKey( spep_6-3 + 72, 1, 0 );
setRotateKey( spep_6-1 + 78, 1, 0 );

--SE
--[[叩きつけ
SE017 = playSe( spep_6 + 34, 1123 );

--敵飛んでいく
SE018 = playSe( spep_6 + 70, 1277 );

--爆発
SE019 = playSe( spep_6 + 78, 1159 );]]

--叩きつけ
SE016 = playSeVer2( spep_6 + 34, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_6 + 70, 1277, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_6 + 78, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 218, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +78 );
endPhase( spep_6 + 218 );
end