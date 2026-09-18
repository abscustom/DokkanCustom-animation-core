--7020690:超サイヤ人4孫悟飯_究極龍翔拳
--sp_effect_b1_00130

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
SP_01=	156268	;--	顔をぬぐって〜パンチ後に少し引く
SP_02=	156269	;--	顔をぬぐって〜パンチ後に少し引く
SP_03=	156272	;--	かまえる（ふりかぶる？）
SP_04=	156273	;--	２撃目ヒット
SP_05=	156274	;--	２撃目ヒット

--エフェクト(てき)
SP_01x=	156270	;--	顔をぬぐって〜パンチ後に少し引く	(敵)
SP_02x=	156271	;--	顔をぬぐって〜パンチ後に少し引く	(敵)
SP_03x=	156272	;--	かまえる（ふりかぶる？）	
SP_04x=	156275	;--	２撃目ヒット	(敵)
SP_05x=	156274	;--	２撃目ヒット	
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
-- 冒頭〜叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 226, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 226, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 226, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 226, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 226, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 226, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 226, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 226, panting_b, 255 );

--SE
--鼻かゆい
SE001 = playSe( spep_0 + 20, 1048 );
setPitch( spep_0 + 20, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 )
SE002 = playSe( spep_0 + 24, 4 );
setPitch( spep_0 + 24, SE002, -600 );
setTimeStretch( SE002, 0.6, 10, 1 );

--ZOOMアウト
SE003 = playSe( spep_0 + 62, 1072 );
setSeVolumeByWorkId( spep_0 + 62,SE003,0);
setSeVolumeByWorkId( spep_0 + 63,SE003,6.25);
setSeVolumeByWorkId( spep_0 + 64,SE003,12.5);
setSeVolumeByWorkId( spep_0 + 65,SE003,18.75);
setSeVolumeByWorkId( spep_0 + 66,SE003,25);
setSeVolumeByWorkId( spep_0 + 67,SE003,31.25);
setSeVolumeByWorkId( spep_0 + 68,SE003,37.5);
setSeVolumeByWorkId( spep_0 + 69,SE003,43.75);
setSeVolumeByWorkId( spep_0 + 70,SE003,50);
setSeVolumeByWorkId( spep_0 + 71,SE003,56.25);
setSeVolumeByWorkId( spep_0 + 72,SE003,62.5);
setSeVolumeByWorkId( spep_0 + 73,SE003,68.75);
setSeVolumeByWorkId( spep_0 + 74,SE003,75);
setSeVolumeByWorkId( spep_0 + 75,SE003,81.25);
setSeVolumeByWorkId( spep_0 + 76,SE003,87.5);
setSeVolumeByWorkId( spep_0 + 77,SE003,93.75);
setSeVolumeByWorkId( spep_0 + 78,SE003,100);
SE004 = playSe( spep_0 + 62, 1116 );
stopSe( spep_0 + 86, SE004, 24 );
SE005 = playSe( spep_0 + 62, 1278 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 67 );
setPitch( spep_0 + 62, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--前方ダッシュ
SE006 = playSe( spep_0 + 90, 1182 );
SE007 = playSe( spep_0 + 90, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
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

--敵の動き
setDisp( spep_0-3 + 140, 1, 1);
setDisp( spep_0-1 + 192, 1, 0);

changeAnime( spep_0-3 + 140, 1, 100);
changeAnime( spep_0-3 + 148, 1, 108);

setMoveKey( spep_0-3 + 140, 1, 208, 218 , 0 );
setMoveKey( spep_0-3 + 142, 1, 152, 168.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 96, 119.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, 40, 69.9 , 0 );
setMoveKey( spep_0-3 + 147, 1, 40, 69.9 , 0 );

setMoveKey( spep_0-3 + 148, 1, 88.7, 167.5 , 0 );
setMoveKey( spep_0-3 + 150, 1, 75.2, 178.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 99.2, 165 , 0 );
setMoveKey( spep_0-3 + 154, 1, 79.8, 143.1 , 0 );
setMoveKey( spep_0-3 + 156, 1, 77.9, 181.1 , 0 );
setMoveKey( spep_0-3 + 158, 1, 120.2, 209 , 0 );
setMoveKey( spep_0-3 + 160, 1, 152.2, 223.2 , 0 );
setMoveKey( spep_0-3 + 162, 1, 137.8, 252.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, 186.6, 280.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 172.5, 290.9 , 0 );
setMoveKey( spep_0-3 + 168, 1, 181.8, 321.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 202.9, 305.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, 175.9, 281 , 0 );
setMoveKey( spep_0-3 + 174, 1, 174.3, 322.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, 198.8, 324.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 192.2, 330 , 0 );
setMoveKey( spep_0-3 + 180, 1, 202.5, 321.5 , 0 );
setMoveKey( spep_0-3 + 182, 1, 205.5, 327.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 234.6, 368.9 , 0 );
setMoveKey( spep_0-3 + 186, 1, 259, 425.4 , 0 );
setMoveKey( spep_0-3 + 188, 1, 316.3, 490.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, 382, 565 , 0 );
setMoveKey( spep_0-1 + 192, 1, 467.5, 677 , 0 );

a=0.4;

setScaleKey( spep_0-3 + 140, 1, 1.28+a, 1.28+a );
setScaleKey( spep_0-3 + 142, 1, 1.35+a, 1.35+a );
setScaleKey( spep_0-3 + 144, 1, 1.43+a, 1.43+a );
setScaleKey( spep_0-3 + 146, 1, 1.5+a, 1.5+a );
setScaleKey( spep_0-3 + 147, 1, 1.5+a, 1.5+a );

b=0.4;

setScaleKey( spep_0-3 + 148, 1, 1.38+b, 1.38+b );
setScaleKey( spep_0-3 + 178, 1, 1.38+b, 1.38+b );
setScaleKey( spep_0-3 + 180, 1, 1.37+b, 1.37+b );
setScaleKey( spep_0-3 + 182, 1, 1.35+b, 1.35+b );
setScaleKey( spep_0-3 + 184, 1, 1.32+b, 1.32+b );
setScaleKey( spep_0-3 + 186, 1, 1.28+b, 1.28+b );
setScaleKey( spep_0-3 + 188, 1, 1.21+b, 1.21+b );
setScaleKey( spep_0-3 + 190, 1, 1.13+b, 1.13+b );
setScaleKey( spep_0-1 + 192, 1, 1.02+b, 1.02+b );

setRotateKey( spep_0-3 + 140, 1, -5.7 );
setRotateKey( spep_0-3 + 147, 1, -5.7 );

setRotateKey( spep_0-3 + 148, 1, -26 );
setRotateKey( spep_0-1 + 192, 1, -26 );

--SE
--ZOOMアウト
stopSe( spep_0 + 120, SE005, 34 );

--前方ダッシュ
stopSe( spep_0 + 172, SE007, 76 );

--パンチ
SE008 = playSe( spep_0 + 144, 1003 );
SE009 = playSe( spep_0 + 150, 1000 );
SE010 = playSe( spep_0 + 152, 1010 );
SE011 = playSe( spep_0 + 154, 1110 );

--敵飛んでいく
SE012 = playSe( spep_0 + 176, 1183 );
setSeVolumeByWorkId( spep_0 + 176, SE012, 53 );
stopSe( spep_0 + 214, SE012, 42 );

--次の準備
spep_1=spep_0+226;
------------------------------------------------------
-- かまえる（ふりかぶる？）
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_1 + 94, ready, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, ready, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ready, 0 );
setEffRotateKey( spep_1 + 94, ready, 0 );
setEffAlphaKey( spep_1 + 0, ready, 255 );
setEffAlphaKey( spep_1 + 94, ready, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+4  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+4  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +16, 190006, 72, 0x102, -1, 0,-70, 510, 1600);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +16,  ctgogo,  -70,  510);
setEffMoveKey(  spep_1 +88,  ctgogo,  -70,  510);

setEffAlphaKey( spep_1 +16, ctgogo, 0 );
setEffAlphaKey( spep_1 + 17, ctgogo, 255 );
setEffAlphaKey( spep_1 + 18, ctgogo, 255 );
setEffAlphaKey( spep_1 + 82, ctgogo, 255 );
setEffAlphaKey( spep_1 + 84, ctgogo, 191 );
setEffAlphaKey( spep_1 + 86, ctgogo, 116 );
setEffAlphaKey( spep_1 + 88, ctgogo, 64 );

setEffRotateKey(  spep_1 +16,  ctgogo,  0);
setEffRotateKey(  spep_1 +88,  ctgogo,  0);

setEffScaleKey(  spep_1 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +88,  ctgogo, 1.07, 1.07);

--SE
--構える
SE013 = playSe( spep_1 + 8, 1233 );
SE015 = playSe( spep_1 + 14, 1004 );
setSeVolumeByWorkId( spep_1 + 14, SE015, 158 );
setPitch( spep_1 + 14, SE015, -600 );
setTimeStretch( SE015, 0.6, 10, 1 );

--顔カットイン
SE014 = playSe( spep_1 + 14, 1018 );

--白フェード
entryFade( spep_1 + 86, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+94;
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

--敵叩き落とす
stopSe( spep_2 + 2, SE022, 0 );

--敵落ちていく
stopSe( spep_2 + 2, SE018, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 84, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;
------------------------------------------------------
-- ２撃目ヒット
-----------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 160, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 160, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3-3 + 31, 1, 106 );
changeAnime( spep_3-3 + 32, 1, 5 );

setMoveKey( spep_3 + 0, 1, 100, 127.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 99.9, 127.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 99.7, 127.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, 99.1, 127 , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.9, 125.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 96, 123.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 93.1, 120.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 89, 116.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 83.6, 111.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 76.7, 104.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 68.1, 95.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 60.1, 75.9 , 0 );
setMoveKey( spep_3-3 + 29, 1, 60.1, 75.9 , 0 );
setMoveKey( spep_3-3 + 31, 1, 94, 94 , 0 );
setMoveKey( spep_3-3 + 32, 1, 151.8, 148.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 151.1, 137 , 0 );
setMoveKey( spep_3-3 + 36, 1, 134.7, 149.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 154.7, 124.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 181.3, 123.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 167.4, 155.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 134.8, 158 , 0 );
setMoveKey( spep_3-3 + 46, 1, 160.6, 149.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 130.7, 140.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 184.6, 137.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 177.7, 130.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 157.5, 191.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, 164.1, 158.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 167.1, 160.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 170.2, 163.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, 166.9, 159 , 0 );
setMoveKey( spep_3-3 + 64, 1, 174.4, 153.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 157, 156.4 , 0 );
setMoveKey( spep_3-3 + 68, 1, 172.2, 164.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 161.8, 158.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 174.7, 167.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 176, 168.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 178.7, 170.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 181.4, 171.7 , 0 );
setMoveKey( spep_3-3 + 80, 1, 181, 170 , 0 );
setMoveKey( spep_3-3 + 82, 1, 181.1, 174.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, 183, 171.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 183.6, 177.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, 184.1, 176.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 184, 178.1 , 0 );
setMoveKey( spep_3-3 + 92, 1, 188.3, 181.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 189.7, 179 , 0 );
setMoveKey( spep_3-3 + 96, 1, 191.7, 183.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 191.9, 183.2 , 0 );
setMoveKey( spep_3-3 + 100, 1, 193.9, 184.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 194.7, 185.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 195.6, 186.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 197.6, 188.4 , 0 );
setMoveKey( spep_3-3 + 108, 1, 198.7, 190.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, 200.2, 189.6 , 0 );
setMoveKey( spep_3-3 + 112, 1, 201.6, 191.4 , 0 );
setMoveKey( spep_3-3 + 114, 1, 203.5, 192.7 , 0 );
setMoveKey( spep_3-3 + 116, 1, 203.5, 193.4 , 0 );
setMoveKey( spep_3-3 + 118, 1, 204.9, 194.8 , 0 );
setMoveKey( spep_3-3 + 120, 1, 207, 196.1 , 0 );
setMoveKey( spep_3-3 + 122, 1, 208.2, 196.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 209.3, 198.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, 210.5, 199.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 212, 200.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, 213.3, 201.7 , 0 );
setMoveKey( spep_3-3 + 132, 1, 214.7, 202.9 , 0 );
setMoveKey( spep_3-3 + 134, 1, 216, 204.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, 217.3, 205.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, 218.7, 206.4 , 0 );
setMoveKey( spep_3-3 + 140, 1, 220, 207.6 , 0 );
setMoveKey( spep_3-3 + 142, 1, 221.3, 208.8 , 0 );
setMoveKey( spep_3-3 + 144, 1, 222.7, 210 , 0 );
setMoveKey( spep_3-3 + 146, 1, 224, 211.2 , 0 );
setMoveKey( spep_3-3 + 148, 1, 225.4, 212.4 , 0 );
setMoveKey( spep_3-3 + 150, 1, 226.7, 213.5 , 0 );
setMoveKey( spep_3-3 + 152, 1, 228, 214.7 , 0 );
setMoveKey( spep_3-3 + 154, 1, 229.4, 215.9 , 0 );
setMoveKey( spep_3-3 + 156, 1, 230.7, 217.1 , 0 );
setMoveKey( spep_3-3 + 158, 1, 232, 218.2 , 0 );

c=0.55;

setScaleKey( spep_3 + 0, 1, 0.77+c, 0.77+c );
setScaleKey( spep_3-3 + 8, 1, 0.77+c, 0.77+c );
setScaleKey( spep_3-3 + 10, 1, 0.78+c, 0.78+c );
setScaleKey( spep_3-3 + 12, 1, 0.79+c, 0.79+c );
setScaleKey( spep_3-3 + 14, 1, 0.81+c, 0.81+c );
setScaleKey( spep_3-3 + 16, 1, 0.83+c, 0.83+c );
setScaleKey( spep_3-3 + 18, 1, 0.86+c, 0.86+c );
setScaleKey( spep_3-3 + 20, 1, 0.89+c, 0.89+c );
setScaleKey( spep_3-3 + 22, 1, 1.05+c, 1.05+c );
setScaleKey( spep_3-3 + 31, 1, 1.05+c, 1.05+c );

e=0.35;

setScaleKey( spep_3-3 + 32, 1, 0.73+e, 0.73+e );
setScaleKey( spep_3-3 + 34, 1, 0.72+e, 0.72+e );
setScaleKey( spep_3-3 + 36, 1, 0.72+e, 0.72+e );
setScaleKey( spep_3-3 + 38, 1, 0.71+e, 0.71+e );
setScaleKey( spep_3-3 + 42, 1, 0.71+e, 0.71+e );
setScaleKey( spep_3-3 + 44, 1, 0.7+e, 0.7+e );
setScaleKey( spep_3-3 + 46, 1, 0.7+e, 0.7+e );
setScaleKey( spep_3-3 + 48, 1, 0.69+e, 0.69+e );
setScaleKey( spep_3-3 + 50, 1, 0.69+e, 0.69+e );
setScaleKey( spep_3-3 + 52, 1, 0.68+e, 0.68+e );
setScaleKey( spep_3-3 + 54, 1, 0.68+e, 0.68+e );
setScaleKey( spep_3-3 + 56, 1, 0.67+e, 0.67+e );
setScaleKey( spep_3-3 + 60, 1, 0.67+e, 0.67+e );
setScaleKey( spep_3-3 + 62, 1, 0.66+e, 0.66+e );
setScaleKey( spep_3-3 + 64, 1, 0.66+e, 0.66+e );
setScaleKey( spep_3-3 + 66, 1, 0.65+e, 0.65+e );
setScaleKey( spep_3-3 + 68, 1, 0.65+e, 0.65+e );
setScaleKey( spep_3-3 + 70, 1, 0.64+e, 0.64+e );
setScaleKey( spep_3-3 + 72, 1, 0.64+e, 0.64+e );
setScaleKey( spep_3-3 + 74, 1, 0.63+e, 0.63+e );
setScaleKey( spep_3-3 + 78, 1, 0.63+e, 0.63+e );
setScaleKey( spep_3-3 + 80, 1, 0.62+e, 0.62+e );
setScaleKey( spep_3-3 + 82, 1, 0.62+e, 0.62+e );
setScaleKey( spep_3-3 + 84, 1, 0.61+e, 0.61+e );
setScaleKey( spep_3-3 + 86, 1, 0.61+e, 0.61+e );
setScaleKey( spep_3-3 + 88, 1, 0.6+e, 0.6+e );
setScaleKey( spep_3-3 + 90, 1, 0.6+e, 0.6+e );
setScaleKey( spep_3-3 + 92, 1, 0.59+e, 0.59+e );
setScaleKey( spep_3-3 + 94, 1, 0.59+e, 0.59+e );
setScaleKey( spep_3-3 + 96, 1, 0.58+e, 0.58+e );
setScaleKey( spep_3-3 + 100, 1, 0.58+e, 0.58+e );
setScaleKey( spep_3-3 + 102, 1, 0.57+e, 0.57+e );
setScaleKey( spep_3-3 + 104, 1, 0.57+e, 0.57+e );
setScaleKey( spep_3-3 + 106, 1, 0.56+e, 0.56+e );
setScaleKey( spep_3-3 + 108, 1, 0.56+e, 0.56+e );
setScaleKey( spep_3-3 + 110, 1, 0.55+e, 0.55+e );
setScaleKey( spep_3-3 + 112, 1, 0.55+e, 0.55+e );
setScaleKey( spep_3-3 + 114, 1, 0.54+e, 0.54+e );
setScaleKey( spep_3-3 + 118, 1, 0.54+e, 0.54+e );
setScaleKey( spep_3-3 + 120, 1, 0.53+e, 0.53+e );
setScaleKey( spep_3-3 + 122, 1, 0.53+e, 0.53+e );
setScaleKey( spep_3-3 + 124, 1, 0.52+e, 0.52+e );
setScaleKey( spep_3-3 + 126, 1, 0.52+e, 0.52+e );
setScaleKey( spep_3-3 + 128, 1, 0.51+e, 0.51+e );
setScaleKey( spep_3-3 + 130, 1, 0.51+e, 0.51+e );
setScaleKey( spep_3-3 + 132, 1, 0.5+e, 0.5+e );
setScaleKey( spep_3-3 + 136, 1, 0.5+e, 0.5+e );
setScaleKey( spep_3-3 + 138, 1, 0.49+e, 0.49+e );
setScaleKey( spep_3-3 + 140, 1, 0.49+e, 0.49+e );
setScaleKey( spep_3-3 + 142, 1, 0.48+e, 0.48+e );
setScaleKey( spep_3-3 + 144, 1, 0.48+e, 0.48+e );
setScaleKey( spep_3-3 + 146, 1, 0.47+e, 0.47+e );
setScaleKey( spep_3-3 + 148, 1, 0.47+e, 0.47+e );
setScaleKey( spep_3-3 + 150, 1, 0.46+e, 0.46+e );
setScaleKey( spep_3-3 + 154, 1, 0.46+e, 0.46+e );
setScaleKey( spep_3-3 + 156, 1, 0.45+e, 0.45+e );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3-3 + 31, 1, -40 );
setRotateKey( spep_3-3 + 32, 1, 81.8 );
setRotateKey( spep_3-3 + 156, 1, 81.8 );

--SE
--敵に向かっていく
SE017 = playSe( spep_3 + 0, 1116 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 141 );
stopSe( spep_3 + 20, SE017, 20 );
SE018 = playSe( spep_3 + 0, 1117 );
setSeVolumeByWorkId( spep_3 + 0, SE018, 76 );
stopSe( spep_3 + 26, SE018, 22 );

--昇竜拳
SE019 = playSe( spep_3-4 + 24 -10, 1003 );
SE020 = playSe( spep_3-4 + 28 -10, 1123 );
SE021 = playSe( spep_3-4 + 32 -10, 1000 );
SE022 = playSe( spep_3-4 + 32 -10, 1187 );
setSeVolumeByWorkId( spep_3-4 + 32 -10, SE022, 85 );
SE023 = playSe( spep_3-4 + 32 -10, 1126 );
setSeVolumeByWorkId( spep_3-4 + 32 -10, SE023, 23 );
setPitch( spep_3-4 + 32 -10, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );
SE024 = playSe( spep_3-4 + 36 -10, 1110 );
setSeVolumeByWorkId( spep_3-4 + 36 -10, SE024, 79 );

--終わり
dealDamage( spep_3 +50 );
endPhase( spep_3 + 150 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜叩き落としまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 226, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 226, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 226, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 226, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 226, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 226, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 226, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 226, panting_b, 255 );

--SE
--鼻かゆい
SE001 = playSe( spep_0 + 20, 1048 );
setPitch( spep_0 + 20, SE001, -600 );
setTimeStretch( SE001, 0.6, 10, 1 )
SE002 = playSe( spep_0 + 24, 4 );
setPitch( spep_0 + 24, SE002, -600 );
setTimeStretch( SE002, 0.6, 10, 1 );

--ZOOMアウト
SE003 = playSe( spep_0 + 62, 1072 );
setSeVolumeByWorkId( spep_0 + 62,SE003,0);
setSeVolumeByWorkId( spep_0 + 63,SE003,6.25);
setSeVolumeByWorkId( spep_0 + 64,SE003,12.5);
setSeVolumeByWorkId( spep_0 + 65,SE003,18.75);
setSeVolumeByWorkId( spep_0 + 66,SE003,25);
setSeVolumeByWorkId( spep_0 + 67,SE003,31.25);
setSeVolumeByWorkId( spep_0 + 68,SE003,37.5);
setSeVolumeByWorkId( spep_0 + 69,SE003,43.75);
setSeVolumeByWorkId( spep_0 + 70,SE003,50);
setSeVolumeByWorkId( spep_0 + 71,SE003,56.25);
setSeVolumeByWorkId( spep_0 + 72,SE003,62.5);
setSeVolumeByWorkId( spep_0 + 73,SE003,68.75);
setSeVolumeByWorkId( spep_0 + 74,SE003,75);
setSeVolumeByWorkId( spep_0 + 75,SE003,81.25);
setSeVolumeByWorkId( spep_0 + 76,SE003,87.5);
setSeVolumeByWorkId( spep_0 + 77,SE003,93.75);
setSeVolumeByWorkId( spep_0 + 78,SE003,100);
SE004 = playSe( spep_0 + 62, 1116 );
stopSe( spep_0 + 86, SE004, 24 );
SE005 = playSe( spep_0 + 62, 1278 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 67 );
setPitch( spep_0 + 62, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--前方ダッシュ
SE006 = playSe( spep_0 + 90, 1182 );
SE007 = playSe( spep_0 + 90, 9 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
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

--敵の動き
setDisp( spep_0-3 + 140, 1, 1);
setDisp( spep_0-1 + 192, 1, 0);

changeAnime( spep_0-3 + 140, 1, 100);
changeAnime( spep_0-3 + 148, 1, 108);

setMoveKey( spep_0-3 + 140, 1, 208, 218 , 0 );
setMoveKey( spep_0-3 + 142, 1, 152, 168.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 96, 119.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, 40, 69.9 , 0 );
setMoveKey( spep_0-3 + 147, 1, 40, 69.9 , 0 );

setMoveKey( spep_0-3 + 148, 1, 88.7, 167.5 , 0 );
setMoveKey( spep_0-3 + 150, 1, 75.2, 178.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 99.2, 165 , 0 );
setMoveKey( spep_0-3 + 154, 1, 79.8, 143.1 , 0 );
setMoveKey( spep_0-3 + 156, 1, 77.9, 181.1 , 0 );
setMoveKey( spep_0-3 + 158, 1, 120.2, 209 , 0 );
setMoveKey( spep_0-3 + 160, 1, 152.2, 223.2 , 0 );
setMoveKey( spep_0-3 + 162, 1, 137.8, 252.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, 186.6, 280.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 172.5, 290.9 , 0 );
setMoveKey( spep_0-3 + 168, 1, 181.8, 321.8 , 0 );
setMoveKey( spep_0-3 + 170, 1, 202.9, 305.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, 175.9, 281 , 0 );
setMoveKey( spep_0-3 + 174, 1, 174.3, 322.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, 198.8, 324.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 192.2, 330 , 0 );
setMoveKey( spep_0-3 + 180, 1, 202.5, 321.5 , 0 );
setMoveKey( spep_0-3 + 182, 1, 205.5, 327.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 234.6, 368.9 , 0 );
setMoveKey( spep_0-3 + 186, 1, 259, 425.4 , 0 );
setMoveKey( spep_0-3 + 188, 1, 316.3, 490.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, 382, 565 , 0 );
setMoveKey( spep_0-1 + 192, 1, 467.5, 677 , 0 );

a=0.4;

setScaleKey( spep_0-3 + 140, 1, 1.28+a, 1.28+a );
setScaleKey( spep_0-3 + 142, 1, 1.35+a, 1.35+a );
setScaleKey( spep_0-3 + 144, 1, 1.43+a, 1.43+a );
setScaleKey( spep_0-3 + 146, 1, 1.5+a, 1.5+a );
setScaleKey( spep_0-3 + 147, 1, 1.5+a, 1.5+a );

b=0.4;

setScaleKey( spep_0-3 + 148, 1, 1.38+b, 1.38+b );
setScaleKey( spep_0-3 + 178, 1, 1.38+b, 1.38+b );
setScaleKey( spep_0-3 + 180, 1, 1.37+b, 1.37+b );
setScaleKey( spep_0-3 + 182, 1, 1.35+b, 1.35+b );
setScaleKey( spep_0-3 + 184, 1, 1.32+b, 1.32+b );
setScaleKey( spep_0-3 + 186, 1, 1.28+b, 1.28+b );
setScaleKey( spep_0-3 + 188, 1, 1.21+b, 1.21+b );
setScaleKey( spep_0-3 + 190, 1, 1.13+b, 1.13+b );
setScaleKey( spep_0-1 + 192, 1, 1.02+b, 1.02+b );

setRotateKey( spep_0-3 + 140, 1, -5.7 );
setRotateKey( spep_0-3 + 147, 1, -5.7 );

setRotateKey( spep_0-3 + 148, 1, -26 );
setRotateKey( spep_0-1 + 192, 1, -26 );

--SE
--ZOOMアウト
stopSe( spep_0 + 120, SE005, 34 );

--前方ダッシュ
stopSe( spep_0 + 172, SE007, 76 );

--パンチ
SE008 = playSe( spep_0 + 144, 1003 );
SE009 = playSe( spep_0 + 150, 1000 );
SE010 = playSe( spep_0 + 152, 1010 );
SE011 = playSe( spep_0 + 154, 1110 );

--敵飛んでいく
SE012 = playSe( spep_0 + 176, 1183 );
setSeVolumeByWorkId( spep_0 + 176, SE012, 53 );
stopSe( spep_0 + 214, SE012, 42 );

--次の準備
spep_1=spep_0+226;
------------------------------------------------------
-- かまえる（ふりかぶる？）
------------------------------------------------------
-- ** エフェクト等 ** --
ready = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_1 + 94, ready, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_1 + 94, ready, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ready, 0 );
setEffRotateKey( spep_1 + 94, ready, 0 );
setEffAlphaKey( spep_1 + 0, ready, 255 );
setEffAlphaKey( spep_1 + 94, ready, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+4  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+4  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +16, 190006, 72, 0x102, -1, 0, 180, 510, 1600);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +16,  ctgogo,  180,  510);
setEffMoveKey(  spep_1 +88,  ctgogo,  180,  510);

setEffAlphaKey( spep_1 +16, ctgogo, 0 );
setEffAlphaKey( spep_1 + 17, ctgogo, 255 );
setEffAlphaKey( spep_1 + 18, ctgogo, 255 );
setEffAlphaKey( spep_1 + 82, ctgogo, 255 );
setEffAlphaKey( spep_1 + 84, ctgogo, 191 );
setEffAlphaKey( spep_1 + 86, ctgogo, 116 );
setEffAlphaKey( spep_1 + 88, ctgogo, 64 );

setEffRotateKey(  spep_1 +16,  ctgogo,  0);
setEffRotateKey(  spep_1 +88,  ctgogo,  0);

setEffScaleKey(  spep_1 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +88,  ctgogo, -1.07, 1.07);

--SE
--構える
SE013 = playSe( spep_1 + 8, 1233 );
SE015 = playSe( spep_1 + 14, 1004 );
setSeVolumeByWorkId( spep_1 + 14, SE015, 158 );
setPitch( spep_1 + 14, SE015, -600 );
setTimeStretch( SE015, 0.6, 10, 1 );

--顔カットイン
SE014 = playSe( spep_1 + 14, 1018 );

--白フェード
entryFade( spep_1 + 86, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+94;
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

--敵叩き落とす
stopSe( spep_2 + 2, SE022, 0 );

--敵落ちていく
stopSe( spep_2 + 2, SE018, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 84, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;
------------------------------------------------------
-- ２撃目ヒット
-----------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 160, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 160, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3-3 + 31, 1, 106 );
changeAnime( spep_3-3 + 32, 1, 5 );

setMoveKey( spep_3 + 0, 1, 100, 127.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 99.9, 127.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 99.7, 127.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, 99.1, 127 , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.9, 125.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, 96, 123.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 93.1, 120.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 89, 116.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 83.6, 111.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 76.7, 104.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 68.1, 95.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 60.1, 75.9 , 0 );
setMoveKey( spep_3-3 + 29, 1, 60.1, 75.9 , 0 );
setMoveKey( spep_3-3 + 31, 1, 94, 94 , 0 );
setMoveKey( spep_3-3 + 32, 1, 151.8, 148.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 151.1, 137 , 0 );
setMoveKey( spep_3-3 + 36, 1, 134.7, 149.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 154.7, 124.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 181.3, 123.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 167.4, 155.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 134.8, 158 , 0 );
setMoveKey( spep_3-3 + 46, 1, 160.6, 149.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 130.7, 140.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 184.6, 137.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 177.7, 130.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 157.5, 191.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, 164.1, 158.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 167.1, 160.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 170.2, 163.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, 166.9, 159 , 0 );
setMoveKey( spep_3-3 + 64, 1, 174.4, 153.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 157, 156.4 , 0 );
setMoveKey( spep_3-3 + 68, 1, 172.2, 164.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 161.8, 158.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 174.7, 167.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 176, 168.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 178.7, 170.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 181.4, 171.7 , 0 );
setMoveKey( spep_3-3 + 80, 1, 181, 170 , 0 );
setMoveKey( spep_3-3 + 82, 1, 181.1, 174.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, 183, 171.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 183.6, 177.2 , 0 );
setMoveKey( spep_3-3 + 88, 1, 184.1, 176.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 184, 178.1 , 0 );
setMoveKey( spep_3-3 + 92, 1, 188.3, 181.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 189.7, 179 , 0 );
setMoveKey( spep_3-3 + 96, 1, 191.7, 183.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 191.9, 183.2 , 0 );
setMoveKey( spep_3-3 + 100, 1, 193.9, 184.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 194.7, 185.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 195.6, 186.1 , 0 );
setMoveKey( spep_3-3 + 106, 1, 197.6, 188.4 , 0 );
setMoveKey( spep_3-3 + 108, 1, 198.7, 190.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, 200.2, 189.6 , 0 );
setMoveKey( spep_3-3 + 112, 1, 201.6, 191.4 , 0 );
setMoveKey( spep_3-3 + 114, 1, 203.5, 192.7 , 0 );
setMoveKey( spep_3-3 + 116, 1, 203.5, 193.4 , 0 );
setMoveKey( spep_3-3 + 118, 1, 204.9, 194.8 , 0 );
setMoveKey( spep_3-3 + 120, 1, 207, 196.1 , 0 );
setMoveKey( spep_3-3 + 122, 1, 208.2, 196.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 209.3, 198.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, 210.5, 199.4 , 0 );
setMoveKey( spep_3-3 + 128, 1, 212, 200.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, 213.3, 201.7 , 0 );
setMoveKey( spep_3-3 + 132, 1, 214.7, 202.9 , 0 );
setMoveKey( spep_3-3 + 134, 1, 216, 204.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, 217.3, 205.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, 218.7, 206.4 , 0 );
setMoveKey( spep_3-3 + 140, 1, 220, 207.6 , 0 );
setMoveKey( spep_3-3 + 142, 1, 221.3, 208.8 , 0 );
setMoveKey( spep_3-3 + 144, 1, 222.7, 210 , 0 );
setMoveKey( spep_3-3 + 146, 1, 224, 211.2 , 0 );
setMoveKey( spep_3-3 + 148, 1, 225.4, 212.4 , 0 );
setMoveKey( spep_3-3 + 150, 1, 226.7, 213.5 , 0 );
setMoveKey( spep_3-3 + 152, 1, 228, 214.7 , 0 );
setMoveKey( spep_3-3 + 154, 1, 229.4, 215.9 , 0 );
setMoveKey( spep_3-3 + 156, 1, 230.7, 217.1 , 0 );
setMoveKey( spep_3-3 + 158, 1, 232, 218.2 , 0 );

c=0.55;

setScaleKey( spep_3 + 0, 1, 0.77+c, 0.77+c );
setScaleKey( spep_3-3 + 8, 1, 0.77+c, 0.77+c );
setScaleKey( spep_3-3 + 10, 1, 0.78+c, 0.78+c );
setScaleKey( spep_3-3 + 12, 1, 0.79+c, 0.79+c );
setScaleKey( spep_3-3 + 14, 1, 0.81+c, 0.81+c );
setScaleKey( spep_3-3 + 16, 1, 0.83+c, 0.83+c );
setScaleKey( spep_3-3 + 18, 1, 0.86+c, 0.86+c );
setScaleKey( spep_3-3 + 20, 1, 0.89+c, 0.89+c );
setScaleKey( spep_3-3 + 22, 1, 1.05+c, 1.05+c );
setScaleKey( spep_3-3 + 31, 1, 1.05+c, 1.05+c );

e=0.35;

setScaleKey( spep_3-3 + 32, 1, 0.73+e, 0.73+e );
setScaleKey( spep_3-3 + 34, 1, 0.72+e, 0.72+e );
setScaleKey( spep_3-3 + 36, 1, 0.72+e, 0.72+e );
setScaleKey( spep_3-3 + 38, 1, 0.71+e, 0.71+e );
setScaleKey( spep_3-3 + 42, 1, 0.71+e, 0.71+e );
setScaleKey( spep_3-3 + 44, 1, 0.7+e, 0.7+e );
setScaleKey( spep_3-3 + 46, 1, 0.7+e, 0.7+e );
setScaleKey( spep_3-3 + 48, 1, 0.69+e, 0.69+e );
setScaleKey( spep_3-3 + 50, 1, 0.69+e, 0.69+e );
setScaleKey( spep_3-3 + 52, 1, 0.68+e, 0.68+e );
setScaleKey( spep_3-3 + 54, 1, 0.68+e, 0.68+e );
setScaleKey( spep_3-3 + 56, 1, 0.67+e, 0.67+e );
setScaleKey( spep_3-3 + 60, 1, 0.67+e, 0.67+e );
setScaleKey( spep_3-3 + 62, 1, 0.66+e, 0.66+e );
setScaleKey( spep_3-3 + 64, 1, 0.66+e, 0.66+e );
setScaleKey( spep_3-3 + 66, 1, 0.65+e, 0.65+e );
setScaleKey( spep_3-3 + 68, 1, 0.65+e, 0.65+e );
setScaleKey( spep_3-3 + 70, 1, 0.64+e, 0.64+e );
setScaleKey( spep_3-3 + 72, 1, 0.64+e, 0.64+e );
setScaleKey( spep_3-3 + 74, 1, 0.63+e, 0.63+e );
setScaleKey( spep_3-3 + 78, 1, 0.63+e, 0.63+e );
setScaleKey( spep_3-3 + 80, 1, 0.62+e, 0.62+e );
setScaleKey( spep_3-3 + 82, 1, 0.62+e, 0.62+e );
setScaleKey( spep_3-3 + 84, 1, 0.61+e, 0.61+e );
setScaleKey( spep_3-3 + 86, 1, 0.61+e, 0.61+e );
setScaleKey( spep_3-3 + 88, 1, 0.6+e, 0.6+e );
setScaleKey( spep_3-3 + 90, 1, 0.6+e, 0.6+e );
setScaleKey( spep_3-3 + 92, 1, 0.59+e, 0.59+e );
setScaleKey( spep_3-3 + 94, 1, 0.59+e, 0.59+e );
setScaleKey( spep_3-3 + 96, 1, 0.58+e, 0.58+e );
setScaleKey( spep_3-3 + 100, 1, 0.58+e, 0.58+e );
setScaleKey( spep_3-3 + 102, 1, 0.57+e, 0.57+e );
setScaleKey( spep_3-3 + 104, 1, 0.57+e, 0.57+e );
setScaleKey( spep_3-3 + 106, 1, 0.56+e, 0.56+e );
setScaleKey( spep_3-3 + 108, 1, 0.56+e, 0.56+e );
setScaleKey( spep_3-3 + 110, 1, 0.55+e, 0.55+e );
setScaleKey( spep_3-3 + 112, 1, 0.55+e, 0.55+e );
setScaleKey( spep_3-3 + 114, 1, 0.54+e, 0.54+e );
setScaleKey( spep_3-3 + 118, 1, 0.54+e, 0.54+e );
setScaleKey( spep_3-3 + 120, 1, 0.53+e, 0.53+e );
setScaleKey( spep_3-3 + 122, 1, 0.53+e, 0.53+e );
setScaleKey( spep_3-3 + 124, 1, 0.52+e, 0.52+e );
setScaleKey( spep_3-3 + 126, 1, 0.52+e, 0.52+e );
setScaleKey( spep_3-3 + 128, 1, 0.51+e, 0.51+e );
setScaleKey( spep_3-3 + 130, 1, 0.51+e, 0.51+e );
setScaleKey( spep_3-3 + 132, 1, 0.5+e, 0.5+e );
setScaleKey( spep_3-3 + 136, 1, 0.5+e, 0.5+e );
setScaleKey( spep_3-3 + 138, 1, 0.49+e, 0.49+e );
setScaleKey( spep_3-3 + 140, 1, 0.49+e, 0.49+e );
setScaleKey( spep_3-3 + 142, 1, 0.48+e, 0.48+e );
setScaleKey( spep_3-3 + 144, 1, 0.48+e, 0.48+e );
setScaleKey( spep_3-3 + 146, 1, 0.47+e, 0.47+e );
setScaleKey( spep_3-3 + 148, 1, 0.47+e, 0.47+e );
setScaleKey( spep_3-3 + 150, 1, 0.46+e, 0.46+e );
setScaleKey( spep_3-3 + 154, 1, 0.46+e, 0.46+e );
setScaleKey( spep_3-3 + 156, 1, 0.45+e, 0.45+e );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3-3 + 31, 1, -40 );
setRotateKey( spep_3-3 + 32, 1, 81.8 );
setRotateKey( spep_3-3 + 156, 1, 81.8 );

--SE
--敵に向かっていく
SE017 = playSe( spep_3 + 0, 1116 );
setSeVolumeByWorkId( spep_3 + 0, SE017, 141 );
stopSe( spep_3 + 20, SE017, 20 );
SE018 = playSe( spep_3 + 0, 1117 );
setSeVolumeByWorkId( spep_3 + 0, SE018, 76 );
stopSe( spep_3 + 26, SE018, 22 );

--昇竜拳
SE019 = playSe( spep_3-4 + 24 -10, 1003 );
SE020 = playSe( spep_3-4 + 28 -10, 1123 );
SE021 = playSe( spep_3-4 + 32 -10, 1000 );
SE022 = playSe( spep_3-4 + 32 -10, 1187 );
setSeVolumeByWorkId( spep_3-4 + 32 -10, SE022, 85 );
SE023 = playSe( spep_3-4 + 32 -10, 1126 );
setSeVolumeByWorkId( spep_3-4 + 32 -10, SE023, 23 );
setPitch( spep_3-4 + 32 -10, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );
SE024 = playSe( spep_3-4 + 36 -10, 1110 );
setSeVolumeByWorkId( spep_3-4 + 36 -10, SE024, 79 );

--終わり
dealDamage( spep_3 +50 );
endPhase( spep_3 + 150 );
end