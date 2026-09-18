--1024990:パン(GT)_デンジャラスコンビネーション(ユニット必殺)
--sp_effect_a1_00363
--sp2401

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
SP_01=	160223	;--	ギル&パン　ジャンプ
SP_02=	160224	;--	蹴り
SP_03=	160225	;--	ギル&パン　合流
SP_04=	160226	;--	攻撃
SP_05=	160227	;--	攻撃ヒット
SP_06=	160228	;--	喜ぶ二人
SP_07=	160229	;--	背景
SP_08=	160230	;--	背景

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
--冒頭、崖ジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
jump = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, jump, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, jump, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump, 0 );
setEffRotateKey( spep_0 + 66, jump, 0 );
setEffAlphaKey( spep_0 + 0, jump, 255 );
setEffAlphaKey( spep_0 + 64, jump, 255 );
setEffAlphaKey( spep_0 + 65, jump, 255 );
setEffAlphaKey( spep_0 + 66, jump, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );

--走ってくる
SE002 = playSeVer2( spep_0 + 8, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 230 );
setBandpassFilter( spep_0 + 8, SE002, 24, 1000 );
SE003 = playSeVer2( spep_0 + 8, 1111, "",spep_0 + 20, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 79 );
SE004 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 230 );
setBandpassFilter( spep_0 + 20, SE004, 24, 1000 );
SE005 = playSeVer2( spep_0 + 20, 1111, "",spep_0 + 32, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 79 );

--白フェード
entryFade( spep_0 +0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    
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
--SE
--走ってくる
SE006 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE006, 230 );
setBandpassFilter( spep_0 + 30, SE006, 24, 1000 );
SE007 = playSeVer2( spep_0 + 30, 1111, "",spep_0 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
SE009 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE009, 230 );
SE010 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 54, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 40, SE010, 79 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 34, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 38, 1117, "",spep_0 + 90, 0, 10, -1);
-- ** 次の準備 ** --
spep_1= spep_0 + 66;
------------------------------------------------------
--蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 110,kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110,kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_f, 0 );
setEffRotateKey( spep_1 + 110,kick_f, 0 );
setEffAlphaKey( spep_1 + 0,kick_f, 255 );
setEffAlphaKey( spep_1 + 108,kick_f, 255 );
setEffAlphaKey( spep_1 + 109,kick_f, 255 );
setEffAlphaKey( spep_1 + 110,kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 110,kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110,kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_b, 0 );
setEffRotateKey( spep_1 + 110,kick_b, 0 );
setEffAlphaKey( spep_1 + 0,kick_b, 255 );
setEffAlphaKey( spep_1 + 108,kick_b, 255 );
setEffAlphaKey( spep_1 + 109,kick_b, 255 );
setEffAlphaKey( spep_1 + 110,kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1+1 + 74, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1+1 + 40, 1, 106 );

a=-40;
b=40;

setMoveKey( spep_1 + 0, 1, 53.6+a, -141.8+b , 0 );
--setMoveKey( spep_1+1 + 2, 1, 53.6, -141.7 , 0 );
setMoveKey( spep_1+1 + 12, 1, 53.6+a, -141.7+b , 0 );
setMoveKey( spep_1+1 + 14, 1, 53.6+a, -142.4+b , 0 );
setMoveKey( spep_1+1 + 16, 1, 53.6+a, -141.4+b , 0 );
setMoveKey( spep_1+1 + 18, 1, 53.6+a, -142.2+b , 0 );
setMoveKey( spep_1+1 + 20, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 22, 1, 53.6+a, -142.1+b , 0 );
setMoveKey( spep_1+1 + 24, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 26, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 28, 1, 53.6+a, -137.7+b , 0 );
setMoveKey( spep_1+1 + 30, 1, 53.6+a, -141.8+b , 0 );
setMoveKey( spep_1+1 + 32, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 39, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 40, 1, 34.8+a, 200.6+b , 0 );
setMoveKey( spep_1+1 + 42, 1, 36.6+a, 181.8+b , 0 );
setMoveKey( spep_1+1 + 44, 1, 40.3+a, 194.5+b , 0 );
setMoveKey( spep_1+1 + 46, 1, 44.3+a, 185.8+b , 0 );
setMoveKey( spep_1+1 + 48, 1, 48.6+a, 201+b , 0 );
setMoveKey( spep_1+1 + 50, 1, 52.8+a, 195.7+b , 0 );
setMoveKey( spep_1+1 + 52, 1, 57.1+a, 206.8+b , 0 );
setMoveKey( spep_1+1 + 54, 1, 142.5+a, 398.3+b , 0 );
setMoveKey( spep_1+1 + 56, 1, 173.8+a, 474.9+b , 0 );
setMoveKey( spep_1+1 + 58, 1, 195.8+a, 522.3+b , 0 );
setMoveKey( spep_1+1 + 60, 1, 212.9+a, 563.6+b , 0 );
setMoveKey( spep_1+1 + 62, 1, 226.7+a, 594.4+b , 0 );
setMoveKey( spep_1+1 + 64, 1, 237.9+a, 621.2+b , 0 );
setMoveKey( spep_1+1 + 66, 1, 247+a, 642.2+b , 0 );
setMoveKey( spep_1+1 + 68, 1, 254.2+a, 658.9+b , 0 );
setMoveKey( spep_1+1 + 70, 1, 259.6+a, 671.4+b , 0 );
setMoveKey( spep_1+1 + 72, 1, 263.1+a, 679.6+b , 0 );
setMoveKey( spep_1+1 + 74, 1, 264+a, 682.3+b , 0 );

setScaleKey( spep_1 + 0, 1, 2,2);
setScaleKey( spep_1+1 + 39, 1, 2,2);
setScaleKey( spep_1+1 + 40, 1, 2.2,2.2);
setScaleKey( spep_1+1 + 42, 1, 2.03,2.03);
setScaleKey( spep_1+1 + 44, 1, 1.98,1.98);
setScaleKey( spep_1+1 + 46, 1, 1.96,1.96);
setScaleKey( spep_1+1 + 48, 1, 1.94,1.94);
setScaleKey( spep_1+1 + 50, 1, 1.93,1.93);
setScaleKey( spep_1+1 + 52, 1, 1.92,1.92);
setScaleKey( spep_1+1 + 54, 1, 1.42,1.42);
setScaleKey( spep_1+1 + 56, 1, 1.23,1.23);
setScaleKey( spep_1+1 + 58, 1, 1.1,1.1);
setScaleKey( spep_1+1 + 60, 1, 1,1);
setScaleKey( spep_1+1 + 62, 1, 0.92,0.92);
setScaleKey( spep_1+1 + 64, 1, 0.86,0.86);
setScaleKey( spep_1+1 + 66, 1, 0.8,0.8);
setScaleKey( spep_1+1 + 68, 1, 0.76,0.76);
setScaleKey( spep_1+1 + 70, 1, 0.73,0.73);
setScaleKey( spep_1+1 + 72, 1, 0.71,0.71);
setScaleKey( spep_1+1 + 74, 1, 0.7,0.7);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1+1 + 39, 1, 0 );
setRotateKey( spep_1+1 + 40, 1, -43 );
setRotateKey( spep_1+1 + 42, 1, -42.4 );
setRotateKey( spep_1+1 + 44, 1, -41.8 );
setRotateKey( spep_1+1 + 46, 1, -41.3 );
setRotateKey( spep_1+1 + 48, 1, -40.7 );
setRotateKey( spep_1+1 + 50, 1, -40.2 );
setRotateKey( spep_1+1 + 52, 1, -39.6 );
setRotateKey( spep_1+1 + 54, 1, -32.1 );
setRotateKey( spep_1+1 + 56, 1, -29.3 );
setRotateKey( spep_1+1 + 58, 1, -27.3 );
setRotateKey( spep_1+1 + 60, 1, -25.8 );
setRotateKey( spep_1+1 + 62, 1, -24.6 );
setRotateKey( spep_1+1 + 64, 1, -23.6 );
setRotateKey( spep_1+1 + 66, 1, -22.8 );
setRotateKey( spep_1+1 + 68, 1, -22.2 );
setRotateKey( spep_1+1 + 70, 1, -21.7 );
setRotateKey( spep_1+1 + 72, 1, -21.4 );
setRotateKey( spep_1+1 + 74, 1, -21.3 );

--SE
--着地
SE012 = playSeVer2( spep_1 + 12, 1106, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, -1);

--サマーソルト
SE014 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 38, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 38, 1110, "", 0, 0, 0, -1);

--着地
SE017 = playSeVer2( spep_1 + 68, 1192, "",spep_1 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 68, SE017, 65 );
SE018 = playSeVer2( spep_1 + 72, 1108, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 72, SE018, 24, 1500 );
SE019 = playSeVer2( spep_1 + 74, 1107, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 74, SE019, 24, 1500 );

--ジャンプ
SE020 = playSeVer2( spep_1 + 90, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE020, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 110-2;
------------------------------------------------------
--ギル&パン　合流
------------------------------------------------------
-- ** エフェクト等 ** --
confluence = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,confluence, 0, 0, 0 );
setEffMoveKey( spep_2 + 130,confluence, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,confluence, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130,confluence, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,confluence, 0 );
setEffRotateKey( spep_2 + 130,confluence, 0 );
setEffAlphaKey( spep_2 + 0,confluence, 255 );
setEffAlphaKey( spep_2 + 130,confluence, 255 );

--顔カットインのタイミング指定
spep_x=spep_2 +30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
--[[ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

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
]]

--SE
--ギル飛んでくる
SE021 = playSeVer2( spep_2 + 0, 1345, "",spep_2 + 108, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE021, 146 );
setPitch( spep_2 + 0, SE021, 600 );
setTimeStretch( SE021, 1.4, 30, 4 );

--顔カットイン
SE022 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--ミサイル構える
SE023 = playSeVer2( spep_2 + 94, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE023, 78 );
setStartTimeMs( SE023,  433 );
SE024 = playSeVer2( spep_2 + 98, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE024, 52 );
SE025 = playSeVer2( spep_2 + 98, 1013, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_2 +122 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 130;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--ギル&攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 66, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 64, beam, 255 );
setEffAlphaKey( spep_4 + 65, beam, 255 );
setEffAlphaKey( spep_4 + 66, beam, 0 );

--SE
--発射前気弾溜め
SE027 = playSeVer2( spep_4 + 0, 1262, "",spep_4 + 36, 0, 14, -1);
SE028 = playSeVer2( spep_4 + 0, 1276, "",spep_4 + 36, 0, 14, -1);

--気弾発射
SE029 = playSeVer2( spep_4 + 18, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 18, SE029, 120 );
SE030 = playSeVer2( spep_4 + 18, 1284, "",spep_4 + 154, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 18, SE030, 56 );
SE031 = playSeVer2( spep_4 + 20, 1145, "",spep_4 + 154, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 20, SE031, 67 );
SE032 = playSeVer2( spep_4 + 22, 1177, "",spep_4 + 154, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 22, SE032, 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 66-2;
------------------------------------------------------
--攻撃ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 126,hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126,hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,hit_f, 0 );
setEffRotateKey( spep_5 + 126,hit_f, 0 );
setEffAlphaKey( spep_5 + 0,hit_f, 255 );
setEffAlphaKey( spep_5 + 124,hit_f, 255 );
setEffAlphaKey( spep_5 + 125,hit_f, 255 );
setEffAlphaKey( spep_5 + 126,hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 126,hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126,hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,hit_b, 0 );
setEffRotateKey( spep_5 + 126,hit_b, 0 );
setEffAlphaKey( spep_5 + 0,hit_b, 255 );
setEffAlphaKey( spep_5 + 124,hit_b, 255 );
setEffAlphaKey( spep_5 + 125,hit_b, 255 );
setEffAlphaKey( spep_5 + 126,hit_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 128, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 1877.5, 141.3 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 1872.9, 142.4 , 0 );
setMoveKey( spep_5-3 + 4, 1, 1857.2, 137 , 0 );
setMoveKey( spep_5-3 + 6, 1, 1827.8, 139 , 0 );
setMoveKey( spep_5-3 + 8, 1, 1781.4, 130.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, 1714.9, 128.4 , 0 );
setMoveKey( spep_5-3 + 12, 1, 1627.2, 116.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 1521.6, 111.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 1405.9, 97.5 , 0 );
setMoveKey( spep_5-3 + 18, 1, 1289, 88.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, 1177.4, 75.9 , 0 );
setMoveKey( spep_5-3 + 22, 1, 1074.3, 71.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 980.4, 58.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 895.4, 54.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 818.4, 44.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 748.6, 41.9 , 0 );
setMoveKey( spep_5-3 + 32, 1, 685.1, 32.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 627.1, 29 , 0 );
setMoveKey( spep_5-3 + 36, 1, 574.1, 21.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 525.3, 22 , 0 );
setMoveKey( spep_5-3 + 40, 1, 480.6, 13.5 , 0 );
setMoveKey( spep_5-3 + 42, 1, 439.4, 13.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 401.3, 6.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 366.1, 7.5 , 0 );
setMoveKey( spep_5-3 + 48, 1, 333.5, 1.2 , 0 );
setMoveKey( spep_5-3 + 50, 1, 303.3, -0.1 , 0 );
setMoveKey( spep_5-3 + 52, 1, 275.3, -5.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 249.4, -2.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 225.3, -9.4 , 0 );
setMoveKey( spep_5-3 + 58, 1, 203, -7.4 , 0 );
setMoveKey( spep_5-3 + 60, 1, 182.3, -12.9 , 0 );
setMoveKey( spep_5-3 + 62, 1, 163.2, -10.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 145.5, -15.8 , 0 );
setMoveKey( spep_5-3 + 66, 1, 129.1, -15.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 114, -15.3 , 0 );
setMoveKey( spep_5-3 + 70, 1, 100.1, -26.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 87.3, -6.3 , 0 );
setMoveKey( spep_5-3 + 74, 1, 75.6, -28 , 0 );
setMoveKey( spep_5-3 + 76, 1, 64.8, -10.4 , 0 );
setMoveKey( spep_5-3 + 78, 1, 55.1, -29.6 , 0 );
setMoveKey( spep_5-3 + 80, 1, 46.3, -12.4 , 0 );
setMoveKey( spep_5-3 + 82, 1, 38.3, -30.6 , 0 );
setMoveKey( spep_5-3 + 84, 1, 31.2, -14.4 , 0 );
setMoveKey( spep_5-3 + 86, 1, 24.9, -31.4 , 0 );
setMoveKey( spep_5-3 + 88, 1, 19.3, -17.3 , 0 );
setMoveKey( spep_5-3 + 90, 1, 19.3, -30.9 , 0 );
setMoveKey( spep_5-3 + 92, 1, 19.3, -18.6 , 0 );
setMoveKey( spep_5-3 + 94, 1, 19.3, -28.8 , 0 );
setMoveKey( spep_5-3 + 96, 1, 19.3, -15.4 , 0 );
setMoveKey( spep_5-3 + 98, 1, 19.3, -31.9 , 0 );
setMoveKey( spep_5-3 + 100, 1, 19.3, -17.4 , 0 );
setMoveKey( spep_5-3 + 102, 1, 19.3, -30.9 , 0 );
setMoveKey( spep_5-3 + 104, 1, 19.3, -18.6 , 0 );
setMoveKey( spep_5-3 + 106, 1, 19.3, -28.8 , 0 );
setMoveKey( spep_5-3 + 108, 1, 19.3, -19.7 , 0 );
setMoveKey( spep_5-3 + 110, 1, 19.3, -27.3 , 0 );
setMoveKey( spep_5-3 + 112, 1, 19.3, -20.4 , 0 );
setMoveKey( spep_5-3 + 114, 1, 19.3, -27.1 , 0 );
setMoveKey( spep_5-3 + 116, 1, 19.3, -21.6 , 0 );
setMoveKey( spep_5-3 + 118, 1, 19.3, -26.5 , 0 );
setMoveKey( spep_5-3 + 120, 1, 19.3, -23.3 , 0 );
setMoveKey( spep_5-3 + 122, 1, 19.3, -20.4 , 0 );
setMoveKey( spep_5-3 + 124, 1, 19.3, -27.1 , 0 );
setMoveKey( spep_5-3 + 126, 1, 19.3, -21.6 , 0 );
setMoveKey( spep_5-3 + 128, 1, 19.3, -26.5 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5-3 + 128, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, -8 );
setRotateKey( spep_5-3 + 128, 1, -8 );

--集中線
shuchusen1 = entryEffectLife( spep_5-3 + 30,  906, 98, 0x100, -1, 0, 0, 4.1 );
setEffShake( spep_5-3 + 30, shuchusen1, 98, 20 );
setEffMoveKey( spep_5-3 + 30, shuchusen1, 0, 4.1 , 0 );
setEffMoveKey( spep_5-3 + 128, shuchusen1, 0, 4.1 , 0 );

setEffScaleKey( spep_5-3 + 30, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_5-3 + 128, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_5-3 + 30, shuchusen1, 0 );
setEffRotateKey( spep_5-3 + 128, shuchusen1, 0 );

setEffAlphaKey( spep_5-3 + 30, shuchusen1, 12 );
setEffAlphaKey( spep_5-3 + 32, shuchusen1, 24 );
setEffAlphaKey( spep_5-3 + 34, shuchusen1, 36 );
setEffAlphaKey( spep_5-3 + 36, shuchusen1, 49 );
setEffAlphaKey( spep_5-3 + 38, shuchusen1, 61 );
setEffAlphaKey( spep_5-3 + 40, shuchusen1, 73 );
setEffAlphaKey( spep_5-3 + 42, shuchusen1, 85 );
setEffAlphaKey( spep_5-3 + 44, shuchusen1, 97 );
setEffAlphaKey( spep_5-3 + 46, shuchusen1, 109 );
setEffAlphaKey( spep_5-3 + 48, shuchusen1, 121 );
setEffAlphaKey( spep_5-3 + 50, shuchusen1, 134 );
setEffAlphaKey( spep_5-3 + 52, shuchusen1, 146 );
setEffAlphaKey( spep_5-3 + 54, shuchusen1, 158 );
setEffAlphaKey( spep_5-3 + 56, shuchusen1, 170 );
setEffAlphaKey( spep_5-3 + 58, shuchusen1, 182 );
setEffAlphaKey( spep_5-3 + 60, shuchusen1, 194 );
setEffAlphaKey( spep_5-3 + 62, shuchusen1, 206 );
setEffAlphaKey( spep_5-3 + 64, shuchusen1, 219 );
setEffAlphaKey( spep_5-3 + 66, shuchusen1, 231 );
setEffAlphaKey( spep_5-3 + 68, shuchusen1, 243 );
setEffAlphaKey( spep_5-3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_5-3 + 128, shuchusen1, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_5 + 0,  10014, 68-2, 0x100, -1, 0, -157.8, 128.6 );
setEffShake( spep_5 + 0, ctzudododo, 68-2, 5 );
setEffMoveKey( spep_5 + 0, ctzudododo, -157.8, 128.6 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo, -151.4, 118.2 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo, -148.9, 137.1 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo, -142.5, 126 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo, -140.1, 145.5 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo, -133.6, 133.8 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo, -131.2, 154 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo, -124.7, 141.6 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo, -122.4, 162.4 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo, -115.7, 149.4 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo, -113.6, 170.9 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo, -106.8, 157.2 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo, -104.7, 179.4 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo, -97.9, 164.9 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo, -95.9, 187.8 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo, -89, 172.7 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo, -87.1, 196.3 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo, -80.1, 180.5 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo, -78.2, 204.8 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo, -71.1, 188.3 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo, -69.4, 213.2 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo, -62.2, 196.1 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo, -60.6, 221.7 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo, -53.3, 203.9 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo, -51.7, 230.2 , 0 );
setEffMoveKey( spep_5 + 50, ctzudododo, -44.4, 211.7 , 0 );
setEffMoveKey( spep_5 + 52, ctzudododo, -42.9, 238.6 , 0 );
setEffMoveKey( spep_5 + 54, ctzudododo, -35.5, 219.5 , 0 );
setEffMoveKey( spep_5 + 56, ctzudododo, -34.1, 247.1 , 0 );
setEffMoveKey( spep_5 + 58, ctzudododo, -26.5, 227.3 , 0 );
setEffMoveKey( spep_5 + 60, ctzudododo, -25.2, 255.6 , 0 );
setEffMoveKey( spep_5 + 62, ctzudododo, -17.6, 235.1 , 0 );
setEffMoveKey( spep_5 + 64, ctzudododo, -16.4, 264 , 0 );
setEffMoveKey( spep_5 + 66, ctzudododo, -8.7, 242.9 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo, 1.7,1.7);
setEffScaleKey( spep_5 + 2, ctzudododo, 1.73,1.73);
setEffScaleKey( spep_5 + 4, ctzudododo, 1.76,1.76);
setEffScaleKey( spep_5 + 6, ctzudododo, 1.8,1.8);
setEffScaleKey( spep_5 + 8, ctzudododo, 1.87,1.87);
setEffScaleKey( spep_5 + 10, ctzudododo, 1.9,1.9);
setEffScaleKey( spep_5 + 12, ctzudododo, 1.93,1.93);
setEffScaleKey( spep_5 + 14, ctzudododo, 1.97,1.97);
setEffScaleKey( spep_5 + 16, ctzudododo, 2,2);
setEffScaleKey( spep_5 + 18, ctzudododo, 2.07,2.07);
setEffScaleKey( spep_5 + 20, ctzudododo, 2.1,2.1);
setEffScaleKey( spep_5 + 22, ctzudododo, 2.14,2.14);
setEffScaleKey( spep_5 + 24, ctzudododo, 2.17,2.17);
setEffScaleKey( spep_5 + 26, ctzudododo, 2.21,2.21);
setEffScaleKey( spep_5 + 28, ctzudododo, 2.24,2.24);
setEffScaleKey( spep_5 + 30, ctzudododo, 2.31,2.31);
setEffScaleKey( spep_5 + 32, ctzudododo, 2.34,2.34);
setEffScaleKey( spep_5 + 34, ctzudododo, 2.38,2.38);
setEffScaleKey( spep_5 + 36, ctzudododo, 2.41,2.41);
setEffScaleKey( spep_5 + 38, ctzudododo, 2.44,2.44);
setEffScaleKey( spep_5 + 40, ctzudododo, 2.48,2.48);
setEffScaleKey( spep_5 + 42, ctzudododo, 2.55,2.55);
setEffScaleKey( spep_5 + 44, ctzudododo, 2.58,2.58);
setEffScaleKey( spep_5 + 46, ctzudododo, 2.61,2.61);
setEffScaleKey( spep_5 + 48, ctzudododo, 2.65,2.65);
setEffScaleKey( spep_5 + 50, ctzudododo, 2.68,2.68);
setEffScaleKey( spep_5 + 52, ctzudododo, 2.72,2.72);
setEffScaleKey( spep_5 + 54, ctzudododo, 2.78,2.78);
setEffScaleKey( spep_5 + 56, ctzudododo, 2.82,2.82);
setEffScaleKey( spep_5 + 58, ctzudododo, 2.85,2.85);
setEffScaleKey( spep_5 + 60, ctzudododo, 2.89,2.89);
setEffScaleKey( spep_5 + 62, ctzudododo, 2.92,2.92);
setEffScaleKey( spep_5 + 64, ctzudododo, 2.99,2.99);
setEffScaleKey( spep_5 + 66, ctzudododo, 3.02,3.02);

setEffRotateKey( spep_5 + 0, ctzudododo, 13.7 );
setEffRotateKey( spep_5 + 66, ctzudododo, 13.7 );

setEffAlphaKey( spep_5 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 66, ctzudododo, 255 );

--SE
--気弾飛んでいく
SE033 = playSeVer2( spep_5 + 0, 1202, "", 0, 0, 0, 0.6);

--爆発
SE034 = playSeVer2( spep_5 + 72, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_5 + 72, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 72, SE035, 73 );
SE036 = playSeVer2( spep_5 + 76, 1023, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_5 + 120, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 126;
------------------------------------------------------
--喜ぶ二人
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0,finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 130,finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 130,finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,finish, 0 );
setEffRotateKey( spep_6 + 130,finish, 0 );
setEffAlphaKey( spep_6 + 0,finish, 255 );
setEffAlphaKey( spep_6 + 130,finish, 255 );

--SE
--ギル掴む
SE037 = playSeVer2( spep_6 + 0, 37, "",spep_6 + 32, 0, 12, -1);

--ギル飛ぶ音
SE038 = playSeVer2( spep_6 + 0, 1345, "",spep_6 + 66, 0, 10, -1);
setSeVolumeByWorkId( spep_6 + 0, SE038, 140 );
setPitch( spep_6 + 0, SE038, 600 );
setTimeStretch( SE038, 1.4, 30, 4 );

--ギル抱き寄せる
SE039 = playSeVer2( spep_6 + 40, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 40, SE039, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_6+0);
endPhase( spep_6 + 120 );
else end