--1021610:亀仙人_萬國驚天掌
--sp_effect_a1_00271

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
SP_01=	156686	;--	亀仙人　登場
SP_02=	156687	;--	合掌〜発射前
SP_03=	156688	;--	発射
SP_04=	156689	;--	萬國驚天掌　手前エフェクト
SP_05=	156690	;--	萬國驚天掌　奥エフェクト　（背景込）


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
-- 亀仙人　登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 100, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 100, appearance, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 77, 0x100, -1, 0, -100, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 78, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, -100 , 0 );
setEffMoveKey( spep_0-3 + 87, shuchusen1, 0, -100 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 87, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 87, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 87, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
SE001 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+100;
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
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 合掌〜発射前
------------------------------------------------------
-- ** エフェクト等 ** --
gassho = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, gassho, 0, 0, 0 );
setEffMoveKey( spep_2 + 296, gassho, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, gassho, 1.0, 1.0 );
setEffScaleKey( spep_2 + 296, gassho, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gassho, 0 );
setEffRotateKey( spep_2 + 296, gassho, 0 );
setEffAlphaKey( spep_2 + 0, gassho, 255 );
setEffAlphaKey( spep_2 + 294, gassho, 255 );
setEffAlphaKey( spep_2 + 295, gassho, 255 );
setEffAlphaKey( spep_2 + 296, gassho, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 14,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 14, shuchusen2, 8, 20 );
setEffMoveKey( spep_2-3 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 22, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 14, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_2-3 + 22, shuchusen2, 1.25, 1.25 );

setEffRotateKey( spep_2-3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 22, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 16, shuchusen2, 191 );
setEffAlphaKey( spep_2-3 + 18, shuchusen2, 128 );
setEffAlphaKey( spep_2-3 + 20, shuchusen2, 64 );
setEffAlphaKey( spep_2-3 + 22, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 168,  906, 211, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 168, shuchusen3, 211, 20 );
setEffMoveKey( spep_2-3 + 168, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 168, shuchusen3, 1.25, 1.25 );
setEffScaleKey( spep_2 + 376, shuchusen3, 1.25, 1.25 );

setEffRotateKey( spep_2-3 + 168, shuchusen3, 180 );
setEffRotateKey( spep_2 + 376, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 168, shuchusen3, 64 );
setEffAlphaKey( spep_2-3 + 170, shuchusen3, 128 );
setEffAlphaKey( spep_2-3 + 172, shuchusen3, 191 );
setEffAlphaKey( spep_2-3 + 174, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 376, shuchusen3, 255 );

--SE
--手合わせる
SE003 = playSe( spep_2 + 6, 1233 );
setSeVolumeByWorkId( spep_2 + 6, SE003, 0 );
setSeVolumeByWorkId( spep_2 + 7, SE003, 40.2 );
setSeVolumeByWorkId( spep_2 + 8, SE003, 80 );
setStartTimeMs( SE003,  117 );
SE004 = playSe( spep_2 + 8, 1192 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 0 );
setSeVolumeByWorkId( spep_2 + 9, SE004, 39.2 );
setSeVolumeByWorkId( spep_2 + 10, SE004, 78.4 );
setSeVolumeByWorkId( spep_2 + 11, SE004, 117.6 );
setSeVolumeByWorkId( spep_2 + 12, SE004, 157 );
setStartTimeMs( SE004,  150 );
stopSe( spep_2 + 20, SE004, 12 );
SE005 = playSe( spep_2 + 8, 1006 );
stopSe( spep_2 + 16, SE005, 6 );

--手光る
SE006 = playSe( spep_2 + 90, 1115 );
setSeVolumeByWorkId( spep_2 + 90, SE006, 0 );
setSeVolumeByWorkId( spep_2 + 91, SE006, 4 );
setSeVolumeByWorkId( spep_2 + 92, SE006, 8 );
setSeVolumeByWorkId( spep_2 + 93, SE006, 12 );
setSeVolumeByWorkId( spep_2 + 94, SE006, 16 );
setSeVolumeByWorkId( spep_2 + 95, SE006, 20 );
setSeVolumeByWorkId( spep_2 + 96, SE006, 24 );
setSeVolumeByWorkId( spep_2 + 97, SE006, 28 );
setSeVolumeByWorkId( spep_2 + 98, SE006, 32 );
setSeVolumeByWorkId( spep_2 + 99, SE006, 36 );
setSeVolumeByWorkId( spep_2 + 100, SE006, 40 );
setSeVolumeByWorkId( spep_2 + 101, SE006, 44 );
setSeVolumeByWorkId( spep_2 + 102, SE006, 48 );
setSeVolumeByWorkId( spep_2 + 103, SE006, 52 );
setSeVolumeByWorkId( spep_2 + 104, SE006, 56 );
setSeVolumeByWorkId( spep_2 + 105, SE006, 60 );
setSeVolumeByWorkId( spep_2 + 106, SE006, 64 );
setSeVolumeByWorkId( spep_2 + 107, SE006, 68 );
setSeVolumeByWorkId( spep_2 + 108, SE006, 72 );
setStartTimeMs( SE006,  1033 );
stopSe( spep_2 + 158, SE006, 24 );
SE008 = playSe( spep_2 + 86, 1265 );
setSeVolumeByWorkId( spep_2 + 86, SE008, 0 );
setSeVolumeByWorkId( spep_2 + 87, SE008, 2.2 );
setSeVolumeByWorkId( spep_2 + 88, SE008, 4.4 );
setSeVolumeByWorkId( spep_2 + 89, SE008, 6.6 );
setSeVolumeByWorkId( spep_2 + 90, SE008, 8.8 );
setSeVolumeByWorkId( spep_2 + 91, SE008, 11 );
setSeVolumeByWorkId( spep_2 + 92, SE008, 13.2 );
setSeVolumeByWorkId( spep_2 + 93, SE008, 15.4 );
setSeVolumeByWorkId( spep_2 + 94, SE008, 17.6 );
setSeVolumeByWorkId( spep_2 + 95, SE008, 19.8 );
setSeVolumeByWorkId( spep_2 + 96, SE008, 22 );
setSeVolumeByWorkId( spep_2 + 97, SE008, 24.2 );
setSeVolumeByWorkId( spep_2 + 98, SE008, 26.4 );
setSeVolumeByWorkId( spep_2 + 99, SE008, 28.6 );
setSeVolumeByWorkId( spep_2 + 100, SE008, 30.8 );
setSeVolumeByWorkId( spep_2 + 101, SE008, 33 );
setSeVolumeByWorkId( spep_2 + 102, SE008, 35.2 );
setSeVolumeByWorkId( spep_2 + 103, SE008, 37.4 );
setSeVolumeByWorkId( spep_2 + 104, SE008, 39.6 );
setSeVolumeByWorkId( spep_2 + 105, SE008, 41.8 );
setSeVolumeByWorkId( spep_2 + 106, SE008, 44 );
setSeVolumeByWorkId( spep_2 + 107, SE008, 46.2 );
setSeVolumeByWorkId( spep_2 + 108, SE008, 48.4 );
setSeVolumeByWorkId( spep_2 + 109, SE008, 50.6 );
setSeVolumeByWorkId( spep_2 + 110, SE008, 52.8 );
setSeVolumeByWorkId( spep_2 + 111, SE008, 55 );
setSeVolumeByWorkId( spep_2 + 112, SE008, 57.2 );
setSeVolumeByWorkId( spep_2 + 113, SE008, 59.4 );
setSeVolumeByWorkId( spep_2 + 114, SE008, 61.6 );
setSeVolumeByWorkId( spep_2 + 115, SE008, 63.8 );
setSeVolumeByWorkId( spep_2 + 116, SE008, 66 );
setSeVolumeByWorkId( spep_2 + 117, SE008, 68.2 );
setSeVolumeByWorkId( spep_2 + 118, SE008, 70.4 );
setSeVolumeByWorkId( spep_2 + 119, SE008, 72.6 );
setSeVolumeByWorkId( spep_2 + 120, SE008, 75);
setStartTimeMs( SE008,  450 );
stopSe( spep_2 + 156, SE008, 26 );
SE009 = playSe( spep_2 + 82, 1263 );
setSeVolumeByWorkId( spep_2 + 82, SE009, 74 );

--力む
SE007 = playSe( spep_2 + 34, 1250 );
setPitch( spep_2 + 34, SE007, -900 );
setTimeStretch( SE007, 0.4, 10, 1 );
stopSe( spep_2 + 96, SE007, 14 );

--背景光る
SE010 = playSe( spep_2 + 156, 1284 );
setSeVolumeByWorkId( spep_2 + 156, SE010, 30 );
SE011 = playSe( spep_2 + 156, 1221 );

--手を前に
SE012 = playSe( spep_2 + 180, 1189 );
setSeVolumeByWorkId( spep_2 + 180, SE012, 127 );

--気弾溜める
SE013 = playSe( spep_2 + 236, 49 );
setSeVolumeByWorkId( spep_2 + 236, SE013, 86 );
SE014 = playSe( spep_2 + 236, 1144 );
setSeVolumeByWorkId( spep_2 + 236, SE014, 66 );
stopSe( spep_2 + 280, SE014, 34 );
SE015 = playSe( spep_2 + 250, 1147 );
setSeVolumeByWorkId( spep_2 + 250, SE015, 32 );
SE016 = playSe( spep_2 + 256, 1132 );
setSeVolumeByWorkId( spep_2 + 256, SE016, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 296;
------------------------------------------------------
-- 発射
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
setEffAlphaKey( spep_3 + 80, beam, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
   
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

--文字エントリー
ctzudodo = entryEffectLife( spep_3-3 + 50,  10014, 28, 0x100, -1, 0, -7.7, 110 );--ズドドドッ

setEffMoveKey( spep_3-3 + 50, ctzudodo, -7.7, 110 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzudodo, -9.3, 110.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzudodo, -11.7, 125.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzudodo, -16.3, 159.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzudodo, -17, 133.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzudodo, -19.6, 136.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzudodo, -21.3, 179.6 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzudodo, -18.9, 159.1 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzudodo, -20.6, 201.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzudodo, -18.2, 181.5 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzudodo, -19.9, 224.3 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzudodo, -17.5, 203.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzudodo, -19.2, 246.7 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzudodo, -16.9, 226.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzudodo, -16.5, 237.4 , 0 );

setEffScaleKey( spep_3-3 + 50, ctzudodo,1.5,1.5);
setEffScaleKey( spep_3-3 + 52, ctzudodo,2.3,2.3);
setEffScaleKey( spep_3-3 + 54, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 56, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 58, ctzudodo,3.3,3.3);
setEffScaleKey( spep_3-3 + 50, ctzudodo,1.5,1.5);
setEffScaleKey( spep_3-3 + 52, ctzudodo,2.3,2.3);
setEffScaleKey( spep_3-3 + 54, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 56, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 58, ctzudodo,3.3,3.3);
setEffScaleKey( spep_3-3 + 60, ctzudodo,3.4,3.4);
setEffScaleKey( spep_3-3 + 78, ctzudodo,3.4,3.4);

setEffRotateKey( spep_3-3 + 50, ctzudodo, 15 );
setEffRotateKey( spep_3-3 + 78, ctzudodo, 15 );

setEffAlphaKey( spep_3-3 + 50, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 62, ctzudodo, 227 );
setEffAlphaKey( spep_3-3 + 64, ctzudodo, 198 );
setEffAlphaKey( spep_3-3 + 66, ctzudodo, 170 );
setEffAlphaKey( spep_3-3 + 68, ctzudodo, 142 );
setEffAlphaKey( spep_3-3 + 70, ctzudodo, 113 );
setEffAlphaKey( spep_3-3 + 72, ctzudodo, 85 );
setEffAlphaKey( spep_3-3 + 74, ctzudodo, 57 );
setEffAlphaKey( spep_3-3 + 76, ctzudodo, 28 );
setEffAlphaKey( spep_3-3 + 78, ctzudodo, 0 );

--SE
--気弾発射
SE017 = playSe( spep_3 + 48, 1177 );
setSeVolumeByWorkId( spep_3 + 48, SE017, 76 );
SE018 = playSe( spep_3 + 48, 1258 );
setSeVolumeByWorkId( spep_3 + 48, SE018, 50 );
SE019 = playSe( spep_3 + 48, 1022 );

--白フェード
entryFade( spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 萬國驚天掌　手前エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 190, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 190, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 190, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 190, finish_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 18,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 18, shuchusen4, 10, 20 );
setEffMoveKey( spep_4-3 + 18, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 18, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4-3 + 28, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4-3 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 18, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 20, shuchusen4, 204 );
setEffAlphaKey( spep_4-3 + 22, shuchusen4, 153 );
setEffAlphaKey( spep_4-3 + 24, shuchusen4, 102 );
setEffAlphaKey( spep_4-3 + 26, shuchusen4, 51 );
setEffAlphaKey( spep_4-3 + 28, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 117 );
changeAnime( spep_4-3 + 18, 1, 106 );

setBlendColor(spep_4 -3+ 102,1,3,0,0,0,0.08);
setBlendColor(spep_4 -3+ 103,1,3,0,0,0,0.16);
setBlendColor(spep_4 -3+ 104,1,3,0,0,0,0.24);
setBlendColor(spep_4 -3+ 105,1,3,0,0,0,0.32);
setBlendColor(spep_4 -3+ 106,1,3,0,0,0,0.4);
setBlendColor(spep_4 + 178,1,3,0,0,0,0);

setMoveKey( spep_4 + 0, 1, 58.7, -136.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 58.7, -138.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 58.7, -134.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 58.7, -137.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 58.7, -134.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 58.7, -137.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 58.5, -134.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 58.5, -137.6 , 0 );
setMoveKey( spep_4-3 + 17, 1, 58.7, -135 , 0 );
setMoveKey( spep_4-3 + 18, 1, 60.8, -68.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 68, -46.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 61.3, -31.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 67.8, 3.6 , 0 );
setMoveKey( spep_4-3 + 26, 1, 61.6, 33.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 67.4, 86.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 67.9, 131 , 0 );
setMoveKey( spep_4-3 + 32, 1, 61.3, 174.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 67.7, 233.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, 61.6, 278 , 0 );
setMoveKey( spep_4-3 + 38, 1, 67.3, 330.1 , 0 );
setMoveKey( spep_4-3 + 40, 1, 68, 365.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 61.3, 382.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 67.8, 399 , 0 );
setMoveKey( spep_4-3 + 46, 1, 61.6, 389.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, 67.4, 381.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 67.9, 360.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 61.3, 327.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 67.7, 305.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, 61.6, 269 , 0 );
setMoveKey( spep_4-3 + 58, 1, 67.3, 246.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 64.5, 212.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 67.3, 195.2 , 0 );
setMoveKey( spep_4-3 + 64, 1, 68, 172.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 63.1, 146.7 , 0 );
setMoveKey( spep_4-3 + 68, 1, 67.8, 134 , 0 );
setMoveKey( spep_4-3 + 70, 1, 64.7, 91.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 67.4, 61.9 , 0 );
setMoveKey( spep_4-3 + 74, 1, 64.5, 27 , 0 );
setMoveKey( spep_4-3 + 76, 1, 67.4, 3.5 , 0 );
setMoveKey( spep_4-3 + 78, 1, 67.9, -20.5 , 0 );
setMoveKey( spep_4-3 + 80, 1, 66.4, -23.1 , 0 );
setMoveKey( spep_4-3 + 82, 1, 67.7, -20.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 66.4, -23.2 , 0 );
setMoveKey( spep_4-3 + 86, 1, 67.3, -20.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 68, -21.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 66.4, -23 , 0 );
setMoveKey( spep_4-3 + 92, 1, 67.8, -21.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 66.9, -23 , 0 );
setMoveKey( spep_4-3 + 96, 1, 67.4, -22.4 , 0 );
setMoveKey( spep_4-3 + 98, 1, 67.6, -23.1 , 0 );
setMoveKey( spep_4-3 + 101, 1, 67.8, -21.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 67, -20.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 67.6, -15.5 , 0 );
setMoveKey( spep_4-3 + 106, 1, 67.1, -14 , 0 );
setMoveKey( spep_4-3 + 108, 1, 66.6, -10.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 66.1, -31.4 , 0 );
setMoveKey( spep_4-3 + 112, 1, 65.6, -51.8 , 0 );
setMoveKey( spep_4-3 + 114, 1, 65.2, -72.3 , 0 );
setMoveKey( spep_4-3 + 116, 1, 64.7, -92.8 , 0 );
setMoveKey( spep_4-3 + 118, 1, 64.3, -113.3 , 0 );
setMoveKey( spep_4-3 + 120, 1, 63.9, -133.8 , 0 );
setMoveKey( spep_4-3 + 122, 1, 63.5, -154.3 , 0 );
setMoveKey( spep_4-3 + 124, 1, 63, -174.8 , 0 );
setMoveKey( spep_4-3 + 126, 1, 62.5, -195.3 , 0 );
setMoveKey( spep_4-3 + 128, 1, 62.1, -215.7 , 0 );
setMoveKey( spep_4-3 + 130, 1, 61.6, -236.2 , 0 );
setMoveKey( spep_4-3 + 132, 1, 67.4, -250.4 , 0 );
setMoveKey( spep_4-3 + 134, 1, 64.3, -226.7 , 0 );
setMoveKey( spep_4-3 + 136, 1, 67.4, -241.1 , 0 );
setMoveKey( spep_4-3 + 138, 1, 68, -244.4 , 0 );
setMoveKey( spep_4-3 + 140, 1, 63.2, -254 , 0 );
setMoveKey( spep_4-3 + 142, 1, 67.8, -252.3 , 0 );
setMoveKey( spep_4-3 + 144, 1, 64.8, -260.7 , 0 );
setMoveKey( spep_4-3 + 146, 1, 67.4, -259.7 , 0 );
setMoveKey( spep_4-3 + 148, 1, 63.2, -267.3 , 0 );
setMoveKey( spep_4-3 + 150, 1, 67.8, -262.5 , 0 );
setMoveKey( spep_4-3 + 152, 1, 64.7, -267.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, 67.4, -263.7 , 0 );
setMoveKey( spep_4-3 + 156, 1, 64.5, -268.7 , 0 );
setMoveKey( spep_4-3 + 158, 1, 67.4, -265.1 , 0 );
setMoveKey( spep_4-3 + 160, 1, 68, -265.5 , 0 );
setMoveKey( spep_4-3 + 162, 1, 66.4, -268 , 0 );
setMoveKey( spep_4-3 + 164, 1, 67.8, -266.6 , 0 );
setMoveKey( spep_4-3 + 166, 1, 67, -268 , 0 );
setMoveKey( spep_4-3 + 168, 1, 67.4, -266.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, 67.8, -267.2 , 0 );
setMoveKey( spep_4-3 + 174, 1, 67.8, -267.2 , 0 );
setMoveKey( spep_4-3 + 176, 1, 67.8, -267.3 , 0 );
setMoveKey( spep_4-3 + 178, 1, 67.8, -267.4 , 0 );
setMoveKey( spep_4-3 + 180, 1, 67.8, -267.6 , 0 );
setMoveKey( spep_4-3 + 182, 1, 67.8, -267.7 , 0 );
setMoveKey( spep_4-3 + 184, 1, 67.8, -267.8 , 0 );
setMoveKey( spep_4-3 + 186, 1, 67.8, -267.9 , 0 );
setMoveKey( spep_4-3 + 188, 1, 67.9, -268 , 0 );

setScaleKey( spep_4 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 17, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 188, 1, 1.44, 1.44 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 17, 1, 0 );
setRotateKey( spep_4-3 + 18, 1, 3 );
setRotateKey( spep_4-3 + 20, 1, 0 );
setRotateKey( spep_4-3 + 22, 1, 3 );
setRotateKey( spep_4-3 + 24, 1, 0 );
setRotateKey( spep_4-3 + 26, 1, 3 );
setRotateKey( spep_4-3 + 28, 1, 0 );
setRotateKey( spep_4-3 + 30, 1, 3 );
setRotateKey( spep_4-3 + 32, 1, 0 );
setRotateKey( spep_4-3 + 34, 1, 3 );
setRotateKey( spep_4-3 + 36, 1, 0 );
setRotateKey( spep_4-3 + 38, 1, 3 );
setRotateKey( spep_4-3 + 40, 1, 0 );
setRotateKey( spep_4-3 + 42, 1, 3 );
setRotateKey( spep_4-3 + 44, 1, 0 );
setRotateKey( spep_4-3 + 46, 1, 3 );
setRotateKey( spep_4-3 + 48, 1, 0 );
setRotateKey( spep_4-3 + 50, 1, 3 );
setRotateKey( spep_4-3 + 52, 1, 0 );
setRotateKey( spep_4-3 + 54, 1, 3 );
setRotateKey( spep_4-3 + 56, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, 3 );
setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-3 + 62, 1, 3 );
setRotateKey( spep_4-3 + 64, 1, 0 );
setRotateKey( spep_4-3 + 66, 1, 3 );
setRotateKey( spep_4-3 + 68, 1, 0 );
setRotateKey( spep_4-3 + 70, 1, 3 );
setRotateKey( spep_4-3 + 72, 1, 0 );
setRotateKey( spep_4-3 + 74, 1, 3 );
setRotateKey( spep_4-3 + 76, 1, 0 );
setRotateKey( spep_4-3 + 78, 1, 3 );
setRotateKey( spep_4-3 + 80, 1, 0 );
setRotateKey( spep_4-3 + 82, 1, 3 );
setRotateKey( spep_4-3 + 84, 1, 0 );
setRotateKey( spep_4-3 + 86, 1, 3 );
setRotateKey( spep_4-3 + 88, 1, 0 );
setRotateKey( spep_4-3 + 90, 1, 3 );
setRotateKey( spep_4-3 + 92, 1, 0 );
setRotateKey( spep_4-3 + 94, 1, 3 );
setRotateKey( spep_4-3 + 96, 1, 0 );
setRotateKey( spep_4-3 + 98, 1, 3 );
setRotateKey( spep_4-3 + 101, 1, 0 );
setRotateKey( spep_4-3 + 108, 1, 0 );
setRotateKey( spep_4-3 + 110, 1, 2.5 );
setRotateKey( spep_4-3 + 112, 1, 5 );
setRotateKey( spep_4-3 + 114, 1, 7.5 );
setRotateKey( spep_4-3 + 116, 1, 10 );
setRotateKey( spep_4-3 + 118, 1, 12.4 );
setRotateKey( spep_4-3 + 120, 1, 14.9 );
setRotateKey( spep_4-3 + 122, 1, 17.4 );
setRotateKey( spep_4-3 + 124, 1, 19.9 );
setRotateKey( spep_4-3 + 126, 1, 22.4 );
setRotateKey( spep_4-3 + 128, 1, 24.9 );
setRotateKey( spep_4-3 + 130, 1, 27.4 );
setRotateKey( spep_4-3 + 132, 1, 29.9 );
setRotateKey( spep_4-3 + 134, 1, 29.8 );
setRotateKey( spep_4-3 + 152, 1, 29.8 );
setRotateKey( spep_4-3 + 154, 1, 29.9 );
setRotateKey( spep_4-3 + 188, 1, 29.9 );

--SE
--気弾発射
stopSe( spep_4 + 20, SE017, 22 );
stopSe( spep_4 + 30, SE019, 40 );

--敵に当たる
SE020 = playSe( spep_4 + 14, 1027 );
setSeVolumeByWorkId( spep_4 + 14, SE020, 74 );
SE021 = playSe( spep_4 + 14, 1025 );
setSeVolumeByWorkId( spep_4 + 14, SE021, 85 );
SE022 = playSe( spep_4 + 14, 1043 );
setSeVolumeByWorkId( spep_4 + 14, SE022, 68 );
SE023 = playSe( spep_4 + 16, 1162 );

--敵落ちる
SE024 = playSe( spep_4 + 104, 1119 );
setSeVolumeByWorkId( spep_4 + 104, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 108, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 109, SE024, 50 );
setSeVolumeByWorkId( spep_4 + 110, SE024, 100 );
setStartTimeMs( SE024,  717 );
SE025 = playSe( spep_4 + 106, 38 );

--地面爆発
SE026 = playSe( spep_4 + 128, 1014 );
SE027 = playSe( spep_4 + 128, 1033 );

--白フェード
entryFade( spep_4 + 12, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 170, 4, 20, 0, 0, 0, 0, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 80 );
endPhase( spep_4 + 180 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 亀仙人　登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 100, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 100, appearance, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 77, 0x100, -1, 0, -100, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 78, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, -100 , 0 );
setEffMoveKey( spep_0-3 + 87, shuchusen1, 0, -100 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0-3 + 87, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 87, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 87, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
SE001 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+100;
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
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 合掌〜発射前
------------------------------------------------------
-- ** エフェクト等 ** --
gassho = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, gassho, 0, 0, 0 );
setEffMoveKey( spep_2 + 296, gassho, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, gassho, -1.0, 1.0 );
setEffScaleKey( spep_2 + 296, gassho, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gassho, 0 );
setEffRotateKey( spep_2 + 296, gassho, 0 );
setEffAlphaKey( spep_2 + 0, gassho, 255 );
setEffAlphaKey( spep_2 + 294, gassho, 255 );
setEffAlphaKey( spep_2 + 295, gassho, 255 );
setEffAlphaKey( spep_2 + 296, gassho, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 14,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 14, shuchusen2, 8, 20 );
setEffMoveKey( spep_2-3 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 22, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 14, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_2-3 + 22, shuchusen2, 1.25, 1.25 );

setEffRotateKey( spep_2-3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 22, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 16, shuchusen2, 191 );
setEffAlphaKey( spep_2-3 + 18, shuchusen2, 128 );
setEffAlphaKey( spep_2-3 + 20, shuchusen2, 64 );
setEffAlphaKey( spep_2-3 + 22, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 168,  906, 211, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 168, shuchusen3, 211, 20 );
setEffMoveKey( spep_2-3 + 168, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 376, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 168, shuchusen3, 1.25, 1.25 );
setEffScaleKey( spep_2 + 376, shuchusen3, 1.25, 1.25 );

setEffRotateKey( spep_2-3 + 168, shuchusen3, 180 );
setEffRotateKey( spep_2 + 376, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 168, shuchusen3, 64 );
setEffAlphaKey( spep_2-3 + 170, shuchusen3, 128 );
setEffAlphaKey( spep_2-3 + 172, shuchusen3, 191 );
setEffAlphaKey( spep_2-3 + 174, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 376, shuchusen3, 255 );

--SE
--手合わせる
SE003 = playSe( spep_2 + 6, 1233 );
setSeVolumeByWorkId( spep_2 + 6, SE003, 0 );
setSeVolumeByWorkId( spep_2 + 7, SE003, 40.2 );
setSeVolumeByWorkId( spep_2 + 8, SE003, 80 );
setStartTimeMs( SE003,  117 );
SE004 = playSe( spep_2 + 8, 1192 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 0 );
setSeVolumeByWorkId( spep_2 + 9, SE004, 39.2 );
setSeVolumeByWorkId( spep_2 + 10, SE004, 78.4 );
setSeVolumeByWorkId( spep_2 + 11, SE004, 117.6 );
setSeVolumeByWorkId( spep_2 + 12, SE004, 157 );
setStartTimeMs( SE004,  150 );
stopSe( spep_2 + 20, SE004, 12 );
SE005 = playSe( spep_2 + 8, 1006 );
stopSe( spep_2 + 16, SE005, 6 );

--手光る
SE006 = playSe( spep_2 + 90, 1115 );
setSeVolumeByWorkId( spep_2 + 90, SE006, 0 );
setSeVolumeByWorkId( spep_2 + 91, SE006, 4 );
setSeVolumeByWorkId( spep_2 + 92, SE006, 8 );
setSeVolumeByWorkId( spep_2 + 93, SE006, 12 );
setSeVolumeByWorkId( spep_2 + 94, SE006, 16 );
setSeVolumeByWorkId( spep_2 + 95, SE006, 20 );
setSeVolumeByWorkId( spep_2 + 96, SE006, 24 );
setSeVolumeByWorkId( spep_2 + 97, SE006, 28 );
setSeVolumeByWorkId( spep_2 + 98, SE006, 32 );
setSeVolumeByWorkId( spep_2 + 99, SE006, 36 );
setSeVolumeByWorkId( spep_2 + 100, SE006, 40 );
setSeVolumeByWorkId( spep_2 + 101, SE006, 44 );
setSeVolumeByWorkId( spep_2 + 102, SE006, 48 );
setSeVolumeByWorkId( spep_2 + 103, SE006, 52 );
setSeVolumeByWorkId( spep_2 + 104, SE006, 56 );
setSeVolumeByWorkId( spep_2 + 105, SE006, 60 );
setSeVolumeByWorkId( spep_2 + 106, SE006, 64 );
setSeVolumeByWorkId( spep_2 + 107, SE006, 68 );
setSeVolumeByWorkId( spep_2 + 108, SE006, 72 );
setStartTimeMs( SE006,  1033 );
stopSe( spep_2 + 158, SE006, 24 );
SE008 = playSe( spep_2 + 86, 1265 );
setSeVolumeByWorkId( spep_2 + 86, SE008, 0 );
setSeVolumeByWorkId( spep_2 + 87, SE008, 2.2 );
setSeVolumeByWorkId( spep_2 + 88, SE008, 4.4 );
setSeVolumeByWorkId( spep_2 + 89, SE008, 6.6 );
setSeVolumeByWorkId( spep_2 + 90, SE008, 8.8 );
setSeVolumeByWorkId( spep_2 + 91, SE008, 11 );
setSeVolumeByWorkId( spep_2 + 92, SE008, 13.2 );
setSeVolumeByWorkId( spep_2 + 93, SE008, 15.4 );
setSeVolumeByWorkId( spep_2 + 94, SE008, 17.6 );
setSeVolumeByWorkId( spep_2 + 95, SE008, 19.8 );
setSeVolumeByWorkId( spep_2 + 96, SE008, 22 );
setSeVolumeByWorkId( spep_2 + 97, SE008, 24.2 );
setSeVolumeByWorkId( spep_2 + 98, SE008, 26.4 );
setSeVolumeByWorkId( spep_2 + 99, SE008, 28.6 );
setSeVolumeByWorkId( spep_2 + 100, SE008, 30.8 );
setSeVolumeByWorkId( spep_2 + 101, SE008, 33 );
setSeVolumeByWorkId( spep_2 + 102, SE008, 35.2 );
setSeVolumeByWorkId( spep_2 + 103, SE008, 37.4 );
setSeVolumeByWorkId( spep_2 + 104, SE008, 39.6 );
setSeVolumeByWorkId( spep_2 + 105, SE008, 41.8 );
setSeVolumeByWorkId( spep_2 + 106, SE008, 44 );
setSeVolumeByWorkId( spep_2 + 107, SE008, 46.2 );
setSeVolumeByWorkId( spep_2 + 108, SE008, 48.4 );
setSeVolumeByWorkId( spep_2 + 109, SE008, 50.6 );
setSeVolumeByWorkId( spep_2 + 110, SE008, 52.8 );
setSeVolumeByWorkId( spep_2 + 111, SE008, 55 );
setSeVolumeByWorkId( spep_2 + 112, SE008, 57.2 );
setSeVolumeByWorkId( spep_2 + 113, SE008, 59.4 );
setSeVolumeByWorkId( spep_2 + 114, SE008, 61.6 );
setSeVolumeByWorkId( spep_2 + 115, SE008, 63.8 );
setSeVolumeByWorkId( spep_2 + 116, SE008, 66 );
setSeVolumeByWorkId( spep_2 + 117, SE008, 68.2 );
setSeVolumeByWorkId( spep_2 + 118, SE008, 70.4 );
setSeVolumeByWorkId( spep_2 + 119, SE008, 72.6 );
setSeVolumeByWorkId( spep_2 + 120, SE008, 75);
setStartTimeMs( SE008,  450 );
stopSe( spep_2 + 156, SE008, 26 );
SE009 = playSe( spep_2 + 82, 1263 );
setSeVolumeByWorkId( spep_2 + 82, SE009, 74 );

--力む
SE007 = playSe( spep_2 + 34, 1250 );
setPitch( spep_2 + 34, SE007, -900 );
setTimeStretch( SE007, 0.4, 10, 1 );
stopSe( spep_2 + 96, SE007, 14 );

--背景光る
SE010 = playSe( spep_2 + 156, 1284 );
setSeVolumeByWorkId( spep_2 + 156, SE010, 30 );
SE011 = playSe( spep_2 + 156, 1221 );

--手を前に
SE012 = playSe( spep_2 + 180, 1189 );
setSeVolumeByWorkId( spep_2 + 180, SE012, 127 );

--気弾溜める
SE013 = playSe( spep_2 + 236, 49 );
setSeVolumeByWorkId( spep_2 + 236, SE013, 86 );
SE014 = playSe( spep_2 + 236, 1144 );
setSeVolumeByWorkId( spep_2 + 236, SE014, 66 );
stopSe( spep_2 + 280, SE014, 34 );
SE015 = playSe( spep_2 + 250, 1147 );
setSeVolumeByWorkId( spep_2 + 250, SE015, 32 );
SE016 = playSe( spep_2 + 256, 1132 );
setSeVolumeByWorkId( spep_2 + 256, SE016, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 296;
------------------------------------------------------
-- 発射
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
setEffAlphaKey( spep_3 + 80, beam, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
   
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

--文字エントリー
ctzudodo = entryEffectLife( spep_3-3 + 50,  10014, 28, 0x100, -1, 0, 7.7, 110 );--ズドドドッ

setEffMoveKey( spep_3-3 + 50, ctzudodo, 7.7, 110 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzudodo, 9.3, 110.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzudodo, 11.7, 125.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzudodo, 16.3, 159.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzudodo, 17, 133.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzudodo, 19.6, 136.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzudodo, 21.3, 179.6 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzudodo, 18.9, 159.1 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzudodo, 20.6, 201.9 , 0 );
setEffMoveKey( spep_3-3 + 68, ctzudodo, 18.2, 181.5 , 0 );
setEffMoveKey( spep_3-3 + 70, ctzudodo, 19.9, 224.3 , 0 );
setEffMoveKey( spep_3-3 + 72, ctzudodo, 17.5, 203.8 , 0 );
setEffMoveKey( spep_3-3 + 74, ctzudodo, 19.2, 246.7 , 0 );
setEffMoveKey( spep_3-3 + 76, ctzudodo, 16.9, 226.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctzudodo, 16.5, 237.4 , 0 );

setEffScaleKey( spep_3-3 + 50, ctzudodo,1.5,1.5);
setEffScaleKey( spep_3-3 + 52, ctzudodo,2.3,2.3);
setEffScaleKey( spep_3-3 + 54, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 56, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 58, ctzudodo,3.3,3.3);
setEffScaleKey( spep_3-3 + 50, ctzudodo,1.5,1.5);
setEffScaleKey( spep_3-3 + 52, ctzudodo,2.3,2.3);
setEffScaleKey( spep_3-3 + 54, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 56, ctzudodo,3.1,3.1);
setEffScaleKey( spep_3-3 + 58, ctzudodo,3.3,3.3);
setEffScaleKey( spep_3-3 + 60, ctzudodo,3.4,3.4);
setEffScaleKey( spep_3-3 + 78, ctzudodo,3.4,3.4);

setEffRotateKey( spep_3-3 + 50, ctzudodo, -15 );
setEffRotateKey( spep_3-3 + 78, ctzudodo, -15 );

setEffAlphaKey( spep_3-3 + 50, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzudodo, 255 );
setEffAlphaKey( spep_3-3 + 62, ctzudodo, 227 );
setEffAlphaKey( spep_3-3 + 64, ctzudodo, 198 );
setEffAlphaKey( spep_3-3 + 66, ctzudodo, 170 );
setEffAlphaKey( spep_3-3 + 68, ctzudodo, 142 );
setEffAlphaKey( spep_3-3 + 70, ctzudodo, 113 );
setEffAlphaKey( spep_3-3 + 72, ctzudodo, 85 );
setEffAlphaKey( spep_3-3 + 74, ctzudodo, 57 );
setEffAlphaKey( spep_3-3 + 76, ctzudodo, 28 );
setEffAlphaKey( spep_3-3 + 78, ctzudodo, 0 );

--SE
--気弾発射
SE017 = playSe( spep_3 + 48, 1177 );
setSeVolumeByWorkId( spep_3 + 48, SE017, 76 );
SE018 = playSe( spep_3 + 48, 1258 );
setSeVolumeByWorkId( spep_3 + 48, SE018, 50 );
SE019 = playSe( spep_3 + 48, 1022 );

--白フェード
entryFade( spep_3 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;
------------------------------------------------------
-- 萬國驚天掌　手前エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 190, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 190, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 190, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 190, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 190, finish_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 18,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 18, shuchusen4, 10, 20 );
setEffMoveKey( spep_4-3 + 18, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 18, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4-3 + 28, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4-3 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 18, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 20, shuchusen4, 204 );
setEffAlphaKey( spep_4-3 + 22, shuchusen4, 153 );
setEffAlphaKey( spep_4-3 + 24, shuchusen4, 102 );
setEffAlphaKey( spep_4-3 + 26, shuchusen4, 51 );
setEffAlphaKey( spep_4-3 + 28, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 117 );
changeAnime( spep_4-3 + 18, 1, 106 );

setBlendColor(spep_4 -3+ 102,1,3,0,0,0,0.08);
setBlendColor(spep_4 -3+ 103,1,3,0,0,0,0.16);
setBlendColor(spep_4 -3+ 104,1,3,0,0,0,0.24);
setBlendColor(spep_4 -3+ 105,1,3,0,0,0,0.32);
setBlendColor(spep_4 -3+ 106,1,3,0,0,0,0.4);
setBlendColor(spep_4 + 178,1,3,0,0,0,0);

setMoveKey( spep_4 + 0, 1, 58.7, -136.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 58.7, -138.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 58.7, -134.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 58.7, -137.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 58.7, -134.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 58.7, -137.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 58.5, -134.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 58.5, -137.6 , 0 );
setMoveKey( spep_4-3 + 17, 1, 58.7, -135 , 0 );
setMoveKey( spep_4-3 + 18, 1, 60.8, -68.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 68, -46.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 61.3, -31.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 67.8, 3.6 , 0 );
setMoveKey( spep_4-3 + 26, 1, 61.6, 33.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 67.4, 86.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 67.9, 131 , 0 );
setMoveKey( spep_4-3 + 32, 1, 61.3, 174.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 67.7, 233.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, 61.6, 278 , 0 );
setMoveKey( spep_4-3 + 38, 1, 67.3, 330.1 , 0 );
setMoveKey( spep_4-3 + 40, 1, 68, 365.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 61.3, 382.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 67.8, 399 , 0 );
setMoveKey( spep_4-3 + 46, 1, 61.6, 389.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, 67.4, 381.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 67.9, 360.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 61.3, 327.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 67.7, 305.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, 61.6, 269 , 0 );
setMoveKey( spep_4-3 + 58, 1, 67.3, 246.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 64.5, 212.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 67.3, 195.2 , 0 );
setMoveKey( spep_4-3 + 64, 1, 68, 172.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 63.1, 146.7 , 0 );
setMoveKey( spep_4-3 + 68, 1, 67.8, 134 , 0 );
setMoveKey( spep_4-3 + 70, 1, 64.7, 91.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 67.4, 61.9 , 0 );
setMoveKey( spep_4-3 + 74, 1, 64.5, 27 , 0 );
setMoveKey( spep_4-3 + 76, 1, 67.4, 3.5 , 0 );
setMoveKey( spep_4-3 + 78, 1, 67.9, -20.5 , 0 );
setMoveKey( spep_4-3 + 80, 1, 66.4, -23.1 , 0 );
setMoveKey( spep_4-3 + 82, 1, 67.7, -20.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 66.4, -23.2 , 0 );
setMoveKey( spep_4-3 + 86, 1, 67.3, -20.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 68, -21.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 66.4, -23 , 0 );
setMoveKey( spep_4-3 + 92, 1, 67.8, -21.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 66.9, -23 , 0 );
setMoveKey( spep_4-3 + 96, 1, 67.4, -22.4 , 0 );
setMoveKey( spep_4-3 + 98, 1, 67.6, -23.1 , 0 );
setMoveKey( spep_4-3 + 101, 1, 67.8, -21.4 , 0 );
setMoveKey( spep_4-3 + 102, 1, 67, -20.1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 67.6, -15.5 , 0 );
setMoveKey( spep_4-3 + 106, 1, 67.1, -14 , 0 );
setMoveKey( spep_4-3 + 108, 1, 66.6, -10.9 , 0 );
setMoveKey( spep_4-3 + 110, 1, 66.1, -31.4 , 0 );
setMoveKey( spep_4-3 + 112, 1, 65.6, -51.8 , 0 );
setMoveKey( spep_4-3 + 114, 1, 65.2, -72.3 , 0 );
setMoveKey( spep_4-3 + 116, 1, 64.7, -92.8 , 0 );
setMoveKey( spep_4-3 + 118, 1, 64.3, -113.3 , 0 );
setMoveKey( spep_4-3 + 120, 1, 63.9, -133.8 , 0 );
setMoveKey( spep_4-3 + 122, 1, 63.5, -154.3 , 0 );
setMoveKey( spep_4-3 + 124, 1, 63, -174.8 , 0 );
setMoveKey( spep_4-3 + 126, 1, 62.5, -195.3 , 0 );
setMoveKey( spep_4-3 + 128, 1, 62.1, -215.7 , 0 );
setMoveKey( spep_4-3 + 130, 1, 61.6, -236.2 , 0 );
setMoveKey( spep_4-3 + 132, 1, 67.4, -250.4 , 0 );
setMoveKey( spep_4-3 + 134, 1, 64.3, -226.7 , 0 );
setMoveKey( spep_4-3 + 136, 1, 67.4, -241.1 , 0 );
setMoveKey( spep_4-3 + 138, 1, 68, -244.4 , 0 );
setMoveKey( spep_4-3 + 140, 1, 63.2, -254 , 0 );
setMoveKey( spep_4-3 + 142, 1, 67.8, -252.3 , 0 );
setMoveKey( spep_4-3 + 144, 1, 64.8, -260.7 , 0 );
setMoveKey( spep_4-3 + 146, 1, 67.4, -259.7 , 0 );
setMoveKey( spep_4-3 + 148, 1, 63.2, -267.3 , 0 );
setMoveKey( spep_4-3 + 150, 1, 67.8, -262.5 , 0 );
setMoveKey( spep_4-3 + 152, 1, 64.7, -267.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, 67.4, -263.7 , 0 );
setMoveKey( spep_4-3 + 156, 1, 64.5, -268.7 , 0 );
setMoveKey( spep_4-3 + 158, 1, 67.4, -265.1 , 0 );
setMoveKey( spep_4-3 + 160, 1, 68, -265.5 , 0 );
setMoveKey( spep_4-3 + 162, 1, 66.4, -268 , 0 );
setMoveKey( spep_4-3 + 164, 1, 67.8, -266.6 , 0 );
setMoveKey( spep_4-3 + 166, 1, 67, -268 , 0 );
setMoveKey( spep_4-3 + 168, 1, 67.4, -266.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, 67.8, -267.2 , 0 );
setMoveKey( spep_4-3 + 174, 1, 67.8, -267.2 , 0 );
setMoveKey( spep_4-3 + 176, 1, 67.8, -267.3 , 0 );
setMoveKey( spep_4-3 + 178, 1, 67.8, -267.4 , 0 );
setMoveKey( spep_4-3 + 180, 1, 67.8, -267.6 , 0 );
setMoveKey( spep_4-3 + 182, 1, 67.8, -267.7 , 0 );
setMoveKey( spep_4-3 + 184, 1, 67.8, -267.8 , 0 );
setMoveKey( spep_4-3 + 186, 1, 67.8, -267.9 , 0 );
setMoveKey( spep_4-3 + 188, 1, 67.9, -268 , 0 );

setScaleKey( spep_4 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 17, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 188, 1, 1.44, 1.44 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 17, 1, 0 );
setRotateKey( spep_4-3 + 18, 1, 3 );
setRotateKey( spep_4-3 + 20, 1, 0 );
setRotateKey( spep_4-3 + 22, 1, 3 );
setRotateKey( spep_4-3 + 24, 1, 0 );
setRotateKey( spep_4-3 + 26, 1, 3 );
setRotateKey( spep_4-3 + 28, 1, 0 );
setRotateKey( spep_4-3 + 30, 1, 3 );
setRotateKey( spep_4-3 + 32, 1, 0 );
setRotateKey( spep_4-3 + 34, 1, 3 );
setRotateKey( spep_4-3 + 36, 1, 0 );
setRotateKey( spep_4-3 + 38, 1, 3 );
setRotateKey( spep_4-3 + 40, 1, 0 );
setRotateKey( spep_4-3 + 42, 1, 3 );
setRotateKey( spep_4-3 + 44, 1, 0 );
setRotateKey( spep_4-3 + 46, 1, 3 );
setRotateKey( spep_4-3 + 48, 1, 0 );
setRotateKey( spep_4-3 + 50, 1, 3 );
setRotateKey( spep_4-3 + 52, 1, 0 );
setRotateKey( spep_4-3 + 54, 1, 3 );
setRotateKey( spep_4-3 + 56, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, 3 );
setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-3 + 62, 1, 3 );
setRotateKey( spep_4-3 + 64, 1, 0 );
setRotateKey( spep_4-3 + 66, 1, 3 );
setRotateKey( spep_4-3 + 68, 1, 0 );
setRotateKey( spep_4-3 + 70, 1, 3 );
setRotateKey( spep_4-3 + 72, 1, 0 );
setRotateKey( spep_4-3 + 74, 1, 3 );
setRotateKey( spep_4-3 + 76, 1, 0 );
setRotateKey( spep_4-3 + 78, 1, 3 );
setRotateKey( spep_4-3 + 80, 1, 0 );
setRotateKey( spep_4-3 + 82, 1, 3 );
setRotateKey( spep_4-3 + 84, 1, 0 );
setRotateKey( spep_4-3 + 86, 1, 3 );
setRotateKey( spep_4-3 + 88, 1, 0 );
setRotateKey( spep_4-3 + 90, 1, 3 );
setRotateKey( spep_4-3 + 92, 1, 0 );
setRotateKey( spep_4-3 + 94, 1, 3 );
setRotateKey( spep_4-3 + 96, 1, 0 );
setRotateKey( spep_4-3 + 98, 1, 3 );
setRotateKey( spep_4-3 + 101, 1, 0 );
setRotateKey( spep_4-3 + 108, 1, 0 );
setRotateKey( spep_4-3 + 110, 1, 2.5 );
setRotateKey( spep_4-3 + 112, 1, 5 );
setRotateKey( spep_4-3 + 114, 1, 7.5 );
setRotateKey( spep_4-3 + 116, 1, 10 );
setRotateKey( spep_4-3 + 118, 1, 12.4 );
setRotateKey( spep_4-3 + 120, 1, 14.9 );
setRotateKey( spep_4-3 + 122, 1, 17.4 );
setRotateKey( spep_4-3 + 124, 1, 19.9 );
setRotateKey( spep_4-3 + 126, 1, 22.4 );
setRotateKey( spep_4-3 + 128, 1, 24.9 );
setRotateKey( spep_4-3 + 130, 1, 27.4 );
setRotateKey( spep_4-3 + 132, 1, 29.9 );
setRotateKey( spep_4-3 + 134, 1, 29.8 );
setRotateKey( spep_4-3 + 152, 1, 29.8 );
setRotateKey( spep_4-3 + 154, 1, 29.9 );
setRotateKey( spep_4-3 + 188, 1, 29.9 );

--SE
--気弾発射
stopSe( spep_4 + 20, SE017, 22 );
stopSe( spep_4 + 30, SE019, 40 );

--敵に当たる
SE020 = playSe( spep_4 + 14, 1027 );
setSeVolumeByWorkId( spep_4 + 14, SE020, 74 );
SE021 = playSe( spep_4 + 14, 1025 );
setSeVolumeByWorkId( spep_4 + 14, SE021, 85 );
SE022 = playSe( spep_4 + 14, 1043 );
setSeVolumeByWorkId( spep_4 + 14, SE022, 68 );
SE023 = playSe( spep_4 + 16, 1162 );

--敵落ちる
SE024 = playSe( spep_4 + 104, 1119 );
setSeVolumeByWorkId( spep_4 + 104, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 108, SE024, 0 );
setSeVolumeByWorkId( spep_4 + 109, SE024, 50 );
setSeVolumeByWorkId( spep_4 + 110, SE024, 100 );
setStartTimeMs( SE024,  717 );
SE025 = playSe( spep_4 + 106, 38 );

--地面爆発
SE026 = playSe( spep_4 + 128, 1014 );
SE027 = playSe( spep_4 + 128, 1033 );

--白フェード
entryFade( spep_4 + 12, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 170, 4, 20, 0, 0, 0, 0, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 80 );
endPhase( spep_4 + 180 );
end