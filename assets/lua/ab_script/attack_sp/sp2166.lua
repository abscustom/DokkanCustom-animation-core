--1021720:超サイヤ人トランクス(青年期)_ダブル魔閃光
--sp_effect_a1_00288

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
SP_01=	157046	;--	かまえ
SP_02=	157047	;--	両手を前に〜敵が塔に激突〜両手クロス
SP_03=	157048	;--	両手を前に〜敵が塔に激突〜両手クロス
SP_04=	157051	;--	両手クロス〜気功波が塔に当たり爆発

--エフェクト(敵)
SP_01x=	157046	;--	かまえ	
SP_02x=	157049	;--	両手を前に〜敵が塔に激突〜両手クロス	(敵)
SP_03x=	157050	;--	両手を前に〜敵が塔に激突〜両手クロス	(敵)
SP_04x=	157052	;--	両手クロス〜気功波が塔に当たり爆発	

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
-- かまえ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
--入り
SE001 = playSe( spep_0 + 0, 1072  ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001,100 );
setTimeStretch( SE001, 0.7, 30, 4 );

--オーラ
SE002 = playSe( spep_0 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--顔カットイン
SE003 = playSe( spep_x +12, 1018 );

--オーラ
SE004 = playSe( spep_0 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSe( spep_0 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE006 = playSe( spep_0 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 72, SE006, 63 );
SE007 = playSe( spep_0 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- 両手を前に〜敵が塔に激突〜両手クロス
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 380, beam_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 380, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_f, 0 );
setEffRotateKey( spep_1 + 380, beam_f, 0 );
setEffAlphaKey( spep_1 + 0, beam_f, 255 );
setEffAlphaKey( spep_1 + 380, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 380, beam_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 380, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_b, 0 );
setEffRotateKey( spep_1 + 380, beam_b, 0 );
setEffAlphaKey( spep_1 + 0, beam_b, 255 );
setEffAlphaKey( spep_1 + 380, beam_b, 255 );

--SE
--腕広げる
SE008 = playSe( spep_1 + 0, 1004 );
setPitch( spep_1 + 0, SE008, -600 );
setTimeStretch( SE008, 0.6, 10, 1 );

--オーラ
SE009 = playSe( spep_1 + 14, 1036 );
setSeVolumeByWorkId( spep_1 + 14, SE009, 63 );

--腕を前にして気溜め
SE010 = playSe( spep_1 + 36, 1006 );
setSeVolumeByWorkId( spep_1 + 36, SE010, 79 );
SE011 = playSe( spep_1 + 36, 1007 );
SE012 = playSe( spep_1 + 36, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 36, SE012, 260 );
stopSe( spep_1 + 66, SE012, 8 );

--オーラ
SE013 = playSe( spep_1 + 38, 1036 );
setSeVolumeByWorkId( spep_1 + 38, SE013, 63 );

--連続気弾A
SE014 = playSe( spep_1 + 64, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 64, SE014, 158 );
setPitch( spep_1 + 64, SE014, -200 );
setTimeStretch( SE014, 0.87, 10, 1 );

--連続気弾B
SE015 = playSe( spep_1 + 74, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 74, SE015, 72 );
setBandpassFilter( spep_1 + 74, SE015, 500, 24000 );

--連続気弾A
SE016 = playSe( spep_1 + 78, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 78, SE016, 158 );
setPitch( spep_1 + 78, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 390, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
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

--敵の動き
setDisp( spep_1-3 + 136, 1, 1);
setDisp( spep_1-1 + 258, 1, 0);

changeAnime( spep_1-3 + 136, 1, 100);
changeAnime( spep_1-3 + 150, 1, 104);
changeAnime( spep_1-3 + 230, 1, 5);

setMoveKey( spep_1-3 + 136, 1, -279.9, 275.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, -242.3, 245.2 , 0 );
setMoveKey( spep_1-3 + 140, 1, -205, 214.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, -168.4, 184.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, -132.8, 155.9 , 0 );
setMoveKey( spep_1-3 + 146, 1, -98.4, 127.9 , 0 );
setMoveKey( spep_1-3 + 148, 1, -65.6, 101.1 , 0 );
setMoveKey( spep_1-3 + 149, 1, -65.6, 101.1 , 0 );

setMoveKey( spep_1-3 + 150, 1, -34.4, 75.6 , 0 );
setMoveKey( spep_1-3 + 152, 1, -23.8, 73 , 0 );
setMoveKey( spep_1-3 + 154, 1, -13.8, 70.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, -4, 70.6 , 0 );
setMoveKey( spep_1-3 + 158, 1, 5.1, 70.8 , 0 );
setMoveKey( spep_1-3 + 160, 1, 8.4, 65.1 , 0 );
setMoveKey( spep_1-3 + 162, 1, 19.2, 62.1 , 0 );
setMoveKey( spep_1-3 + 164, 1, 21.9, 61.6 , 0 );
setMoveKey( spep_1-3 + 166, 1, 26.3, 57.5 , 0 );
setMoveKey( spep_1-3 + 168, 1, 39.5, 61.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, 41.7, 52.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, 54, 54.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 56.3, 52.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, 52.1, 55.9 , 0 );
setMoveKey( spep_1-3 + 178, 1, 58.1, 48.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, 63.5, 54.9 , 0 );
setMoveKey( spep_1-3 + 182, 1, 63.5, 47.5 , 0 );
setMoveKey( spep_1-3 + 184, 1, 64.1, 46.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, 63, 46.1 , 0 );
setMoveKey( spep_1-3 + 188, 1, 62.1, 39.7 , 0 );
setMoveKey( spep_1-3 + 190, 1, 63.1, 44.9 , 0 );
setMoveKey( spep_1-3 + 192, 1, 69.2, 41.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 69.2, 40.2 , 0 );
setMoveKey( spep_1-3 + 196, 1, 70.4, 43.8 , 0 );
setMoveKey( spep_1-3 + 198, 1, 69.8, 36.1 , 0 );
setMoveKey( spep_1-3 + 200, 1, 67.2, 41 , 0 );
setMoveKey( spep_1-3 + 202, 1, 70.1, 33.7 , 0 );
setMoveKey( spep_1-3 + 204, 1, 70.3, 35.1 , 0 );
setMoveKey( spep_1-3 + 206, 1, 72.3, 31.6 , 0 );
setMoveKey( spep_1-3 + 208, 1, 73.4, 27.8 , 0 );
setMoveKey( spep_1-3 + 210, 1, 69.3, 22.5 , 0 );
setMoveKey( spep_1-3 + 212, 1, 73.4, 26.4 , 0 );
setMoveKey( spep_1-3 + 214, 1, 80.7, 26.2 , 0 );
setMoveKey( spep_1-3 + 216, 1, 82.4, 17.8 , 0 );
setMoveKey( spep_1-3 + 218, 1, 75.7, 19.2 , 0 );
setMoveKey( spep_1-3 + 220, 1, 78.3, 17.7 , 0 );
setMoveKey( spep_1-3 + 222, 1, 76.6, 15.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 80.5, 16.4 , 0 );
setMoveKey( spep_1-3 + 226, 1, 80.6, 12.3 , 0 );
setMoveKey( spep_1-3 + 228, 1, 80.3, 14.7 , 0 );
setMoveKey( spep_1-3 + 229, 1, 80.3, 14.7 , 0 );

setMoveKey( spep_1-3 + 230, 1, 111.9, -25.4 , 0 );
setMoveKey( spep_1-3 + 232, 1, 116.4, -37.9 , 0 );
setMoveKey( spep_1-3 + 234, 1, 127, -42.5 , 0 );
setMoveKey( spep_1-3 + 236, 1, 132.1, -55.4 , 0 );
setMoveKey( spep_1-3 + 238, 1, 137.2, -62.8 , 0 );
setMoveKey( spep_1-3 + 240, 1, 140.1, -69.6 , 0 );
setMoveKey( spep_1-3 + 242, 1, 143.3, -70.5 , 0 );
setMoveKey( spep_1-3 + 244, 1, 144.6, -79.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 146.3, -82.3 , 0 );
setMoveKey( spep_1-3 + 248, 1, 147.5, -84.5 , 0 );
setMoveKey( spep_1-3 + 250, 1, 148.3, -86 , 0 );
setMoveKey( spep_1-3 + 252, 1, 148.7, -86.9 , 0 );
setMoveKey( spep_1-3 + 254, 1, 149, -87.3 , 0 );
setMoveKey( spep_1-3 + 256, 1, 149.1, -87.5 , 0 );
setMoveKey( spep_1-1 + 258, 1, 149.1, -87.5 , 0 );

setScaleKey( spep_1-3 + 136, 1, 3.91, 3.91 );
setScaleKey( spep_1-3 + 138, 1, 3.56, 3.56 );
setScaleKey( spep_1-3 + 140, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 142, 1, 2.88, 2.88 );
setScaleKey( spep_1-3 + 144, 1, 2.55, 2.55 );
setScaleKey( spep_1-3 + 146, 1, 2.23, 2.23 );
setScaleKey( spep_1-3 + 148, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 149, 1, 1.92, 1.92 );

setScaleKey( spep_1-3 + 150, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 152, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 154, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 156, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 158, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 162, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 164, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 168, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_1-3 + 172, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 174, 1, 1.02, 1.02 );
setScaleKey( spep_1-3 + 176, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 178, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 180, 1, 0.95, 0.95 );
setScaleKey( spep_1-3 + 182, 1, 0.94, 0.94 );
setScaleKey( spep_1-3 + 184, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 186, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 188, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 190, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 192, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 194, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 196, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 198, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 200, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 202, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 204, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 206, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 210, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 212, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 214, 1, 0.78, 0.78 );
setScaleKey( spep_1-3 + 216, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 218, 1, 0.76, 0.76 );
setScaleKey( spep_1-3 + 220, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 222, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 224, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 226, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 228, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 229, 1, 0.71, 0.71 );

setScaleKey( spep_1-3 + 230, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 232, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 234, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 236, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 238, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 240, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 242, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 244, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 246, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 248, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 250, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 252, 1, 0.17, 0.17 );
setScaleKey( spep_1-1 + 258, 1, 0.17, 0.17 );

setRotateKey( spep_1-3 + 136, 1, 12.5 );
setRotateKey( spep_1-3 + 149, 1, 12.5 );

setRotateKey( spep_1-3 + 150, 1, 12.5 );
setRotateKey( spep_1-3 + 178, 1, 12.5 );
setRotateKey( spep_1-3 + 180, 1, 12.6 );
setRotateKey( spep_1-3 + 182, 1, 12.6 );
setRotateKey( spep_1-3 + 184, 1, 12.7 );
setRotateKey( spep_1-3 + 186, 1, 12.8 );
setRotateKey( spep_1-3 + 188, 1, 12.9 );
setRotateKey( spep_1-3 + 190, 1, 13 );
setRotateKey( spep_1-3 + 192, 1, 13 );
setRotateKey( spep_1-3 + 194, 1, 13.1 );
setRotateKey( spep_1-3 + 196, 1, 13.2 );
setRotateKey( spep_1-3 + 198, 1, 13.3 );
setRotateKey( spep_1-3 + 200, 1, 13.4 );
setRotateKey( spep_1-3 + 202, 1, 13.4 );
setRotateKey( spep_1-3 + 204, 1, 13.5 );
setRotateKey( spep_1-3 + 206, 1, 13.6 );
setRotateKey( spep_1-3 + 208, 1, 13.7 );
setRotateKey( spep_1-3 + 210, 1, 13.8 );
setRotateKey( spep_1-3 + 212, 1, 13.8 );
setRotateKey( spep_1-3 + 214, 1, 13.9 );
setRotateKey( spep_1-3 + 216, 1, 14 );
setRotateKey( spep_1-3 + 218, 1, 14.1 );
setRotateKey( spep_1-3 + 220, 1, 14.2 );
setRotateKey( spep_1-3 + 222, 1, 14.2 );
setRotateKey( spep_1-3 + 224, 1, 14.3 );
setRotateKey( spep_1-3 + 226, 1, 14.4 );
setRotateKey( spep_1-3 + 228, 1, 14.5 );
setRotateKey( spep_1-3 + 229, 1, 14.5 );

setRotateKey( spep_1-3 + 230, 1, 62.2 );
setRotateKey( spep_1-3 + 232, 1, 63.9 );
setRotateKey( spep_1-3 + 234, 1, 65.4 );
setRotateKey( spep_1-3 + 236, 1, 66.7 );
setRotateKey( spep_1-3 + 238, 1, 67.7 );
setRotateKey( spep_1-3 + 240, 1, 68.6 );
setRotateKey( spep_1-3 + 242, 1, 69.3 );
setRotateKey( spep_1-3 + 244, 1, 69.8 );
setRotateKey( spep_1-3 + 246, 1, 70.2 );
setRotateKey( spep_1-3 + 248, 1, 70.5 );
setRotateKey( spep_1-3 + 250, 1, 70.7 );
setRotateKey( spep_1-3 + 252, 1, 70.8 );
setRotateKey( spep_1-3 + 254, 1, 70.9 );
setRotateKey( spep_1-1 + 258, 1, 70.9 );

--敵の動き
setDisp( spep_1-3 + 268, 1, 1);
setDisp( spep_1-1 + 288, 1, 0);

changeAnime( spep_1-3 + 268, 1, 5);

setMoveKey( spep_1-3 + 268, 1, 27.2, 529.1 , 0 );
setMoveKey( spep_1-3 + 270, 1, 21.8, 429.2 , 0 );
setMoveKey( spep_1-3 + 272, 1, 17, 341 , 0 );
setMoveKey( spep_1-3 + 274, 1, 12.9, 264.6 , 0 );
setMoveKey( spep_1-3 + 276, 1, 9.4, 200 , 0 );
setMoveKey( spep_1-3 + 278, 1, 6.5, 147.1 , 0 );
setMoveKey( spep_1-3 + 280, 1, 4.3, 105.9 , 0 );
setMoveKey( spep_1-3 + 282, 1, 2.7, 76.6 , 0 );
setMoveKey( spep_1-3 + 284, 1, 1.8, 58.9 , 0 );
setMoveKey( spep_1-1 + 288, 1, 1.5, 53 , 0 );

setScaleKey( spep_1-3 + 268, 1, 2.47, 2.47 );
setScaleKey( spep_1-3 + 270, 1, 2, 2 );
setScaleKey( spep_1-3 + 272, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 274, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 276, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 278, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 280, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 282, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 284, 1, 0.26, 0.26 );
setScaleKey( spep_1-1 + 288, 1, 0.23, 0.23 );

setRotateKey( spep_1-3 + 268, 1, 139 );
setRotateKey( spep_1-3 + 270, 1, 142.8 );
setRotateKey( spep_1-3 + 272, 1, 146.2 );
setRotateKey( spep_1-3 + 274, 1, 149.1 );
setRotateKey( spep_1-3 + 276, 1, 151.6 );
setRotateKey( spep_1-3 + 278, 1, 153.7 );
setRotateKey( spep_1-3 + 280, 1, 155.2 );
setRotateKey( spep_1-3 + 282, 1, 156.4 );
setRotateKey( spep_1-3 + 284, 1, 157 );
setRotateKey( spep_1-1 + 288, 1, 157.3 );

--SE
--連続気弾B
stopSe( spep_1 + 96, SE015, 16 );

--連続気弾B
SE017 = playSe( spep_1 + 88, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 88, SE017, 93 );
setBandpassFilter( spep_1 + 88, SE017, 500, 24000 );
stopSe( spep_1 + 110, SE017, 16 );

--連続気弾A
SE018 = playSe( spep_1 + 92, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 92, SE018, 158 );
setPitch( spep_1 + 92, SE018, -200 );
setTimeStretch( SE018, 0.87, 10, 1 );

--連続気弾A
SE019 = playSe( spep_1 + 104, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE019, 158 );
setPitch( spep_1 + 104, SE019, -200 );
setTimeStretch( SE019, 0.87, 10, 1 );

--連続気弾B
SE020 = playSe( spep_1 + 104, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE020, 98 );
setBandpassFilter( spep_1 + 104, SE020, 500, 24000 );
stopSe( spep_1 + 126, SE020, 16 );

--連続気弾A
SE021 = playSe( spep_1 + 118, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 118, SE021, 141 );
setPitch( spep_1 + 118, SE021, -200 );
setTimeStretch( SE021, 0.87, 10, 1 );
stopSe( spep_1 + 164, SE021, 2 );

--連続気弾B
SE022 = playSe( spep_1 + 120, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 120, SE022, 103 );
setBandpassFilter( spep_1 + 120, SE022, 500, 24000 );
stopSe( spep_1 + 142, SE022, 14 );

--連続気弾A
SE023 = playSe( spep_1 + 132, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 132, SE023, 71 );
setPitch( spep_1 + 132, SE023, -200 );
setTimeStretch( SE023, 0.87, 10, 1 );
stopSe( spep_1 + 164, SE023, 2 );

--連続気弾B
SE024 = playSe( spep_1 + 134, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 134, SE024, 80 );
setBandpassFilter( spep_1 + 134, SE024, 500, 24000 );
stopSe( spep_1 + 154, SE024, 16 );

--連続気弾B
SE025 = playSe( spep_1 + 146, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 146, SE025, 87 );
setBandpassFilter( spep_1 + 146, SE025, 500, 24000 );
stopSe( spep_1 + 166, SE025, 18 );

--連続爆発
SE026 = playSe( spep_1 + 156, 1023 );
setSeVolumeByWorkId( spep_1 + 156, SE026, 126 );
stopSe( spep_1 + 180, SE026, 18 );
SE027 = playSe( spep_1 + 168, 1024 );
setSeVolumeByWorkId( spep_1 + 168, SE027, 78 );
SE028 = playSe( spep_1 + 182, 1023 );
setSeVolumeByWorkId( spep_1 + 182, SE028, 66 );
SE029 = playSe( spep_1 + 182, 1025 );
setSeVolumeByWorkId( spep_1 + 182, SE029, 89 );
SE030 = playSe( spep_1 + 208, 1011 );
stopSe( spep_1 + 226, SE030, 62 );

--敵飛んでいく
SE031 = playSe( spep_1 + 212, 1183 );
setSeVolumeByWorkId( spep_1 + 212, SE031, 160 );
stopSe( spep_1 + 284, SE031, 10 );

--塔にヒット
SE032 = playSe( spep_1 + 286, 1159 );
setSeVolumeByWorkId( spep_1 + 286, SE032, 75 );
stopSe( spep_1 + 336, SE032, 46 );

--悟飯と合流
SE033 = playSe( spep_1 + 326, 1117 );
setSeVolumeByWorkId( spep_1 + 326, SE033, 88 );
SE034 = playSe( spep_1 + 326, 44 );
setSeVolumeByWorkId( spep_1 + 326, SE034, 80 );

--白フェード
entryFade( spep_1 + 376, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 380;
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

--悟飯と合流
stopSe( spep_2 + 4, SE034, 0 );
stopSe( spep_2 + 4, SE033, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 両手クロス〜気功波が塔に当たり爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 280, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 280, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 280, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 280, finish, 255 );

--SE
--気弾発射
SE036 = playSe( spep_3 + 14, 1146 );
setSeVolumeByWorkId( spep_3 + 14, SE036, 77 );
SE037 = playSe( spep_3 + 14, 1022 );
SE038 = playSe( spep_3 + 14, 1177 );
setSeVolumeByWorkId( spep_3 + 14, SE038, 90 );
SE039 = playSe( spep_3 + 48, 1124 );
stopSe( spep_3 + 132, SE039, 22 );

--気弾飛んでいく
SE040 = playSe( spep_3 + 114, 1202 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 114, SE040, 200 );

--爆発
SE041 = playSe( spep_3 + 150, 1024 );
setSeVolumeByWorkId( spep_3 + 150, SE041, 91 );
SE042 = playSe( spep_3 + 154, 1159 );
setSeVolumeByWorkId( spep_3 + 154, SE042, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 150 );
endPhase( spep_3 + 250 -6 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- かまえ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
--入り
SE001 = playSe( spep_0 + 0, 1072  ,"",0.6);
setSeVolumeByWorkId( spep_0 + 0, SE001,100 );
setTimeStretch( SE001, 0.7, 30, 4 );

--オーラ
SE002 = playSe( spep_0 + 0, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--顔カットイン
SE003 = playSe( spep_x +12, 1018 );

--オーラ
SE004 = playSe( spep_0 + 24, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSe( spep_0 + 48, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE006 = playSe( spep_0 + 72, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 72, SE006, 63 );
SE007 = playSe( spep_0 + 96, 1036 ,"",0.7);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;
------------------------------------------------------
-- 両手を前に〜敵が塔に激突〜両手クロス
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 380, beam_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 324, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 325, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 380, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_f, 0 );
setEffRotateKey( spep_1 + 380, beam_f, 0 );
setEffAlphaKey( spep_1 + 0, beam_f, 255 );
setEffAlphaKey( spep_1 + 380, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 380, beam_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 380, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_b, 0 );
setEffRotateKey( spep_1 + 380, beam_b, 0 );
setEffAlphaKey( spep_1 + 0, beam_b, 255 );
setEffAlphaKey( spep_1 + 380, beam_b, 255 );

--SE
--腕広げる
SE008 = playSe( spep_1 + 0, 1004 );
setPitch( spep_1 + 0, SE008, -600 );
setTimeStretch( SE008, 0.6, 10, 1 );

--オーラ
SE009 = playSe( spep_1 + 14, 1036 );
setSeVolumeByWorkId( spep_1 + 14, SE009, 63 );

--腕を前にして気溜め
SE010 = playSe( spep_1 + 36, 1006 );
setSeVolumeByWorkId( spep_1 + 36, SE010, 79 );
SE011 = playSe( spep_1 + 36, 1007 );
SE012 = playSe( spep_1 + 36, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 36, SE012, 260 );
stopSe( spep_1 + 66, SE012, 8 );

--オーラ
SE013 = playSe( spep_1 + 38, 1036 );
setSeVolumeByWorkId( spep_1 + 38, SE013, 63 );

--連続気弾A
SE014 = playSe( spep_1 + 64, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 64, SE014, 158 );
setPitch( spep_1 + 64, SE014, -200 );
setTimeStretch( SE014, 0.87, 10, 1 );

--連続気弾B
SE015 = playSe( spep_1 + 74, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 74, SE015, 72 );
setBandpassFilter( spep_1 + 74, SE015, 500, 24000 );

--連続気弾A
SE016 = playSe( spep_1 + 78, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 78, SE016, 158 );
setPitch( spep_1 + 78, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 390, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
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

--敵の動き
setDisp( spep_1-3 + 136, 1, 1);
setDisp( spep_1-1 + 258, 1, 0);

changeAnime( spep_1-3 + 136, 1, 100);
changeAnime( spep_1-3 + 150, 1, 104);
changeAnime( spep_1-3 + 230, 1, 5);

setMoveKey( spep_1-3 + 136, 1, -279.9, 275.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, -242.3, 245.2 , 0 );
setMoveKey( spep_1-3 + 140, 1, -205, 214.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, -168.4, 184.9 , 0 );
setMoveKey( spep_1-3 + 144, 1, -132.8, 155.9 , 0 );
setMoveKey( spep_1-3 + 146, 1, -98.4, 127.9 , 0 );
setMoveKey( spep_1-3 + 148, 1, -65.6, 101.1 , 0 );
setMoveKey( spep_1-3 + 149, 1, -65.6, 101.1 , 0 );

setMoveKey( spep_1-3 + 150, 1, -34.4, 75.6 , 0 );
setMoveKey( spep_1-3 + 152, 1, -23.8, 73 , 0 );
setMoveKey( spep_1-3 + 154, 1, -13.8, 70.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, -4, 70.6 , 0 );
setMoveKey( spep_1-3 + 158, 1, 5.1, 70.8 , 0 );
setMoveKey( spep_1-3 + 160, 1, 8.4, 65.1 , 0 );
setMoveKey( spep_1-3 + 162, 1, 19.2, 62.1 , 0 );
setMoveKey( spep_1-3 + 164, 1, 21.9, 61.6 , 0 );
setMoveKey( spep_1-3 + 166, 1, 26.3, 57.5 , 0 );
setMoveKey( spep_1-3 + 168, 1, 39.5, 61.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, 41.7, 52.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, 54, 54.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 56.3, 52.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, 52.1, 55.9 , 0 );
setMoveKey( spep_1-3 + 178, 1, 58.1, 48.7 , 0 );
setMoveKey( spep_1-3 + 180, 1, 63.5, 54.9 , 0 );
setMoveKey( spep_1-3 + 182, 1, 63.5, 47.5 , 0 );
setMoveKey( spep_1-3 + 184, 1, 64.1, 46.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, 63, 46.1 , 0 );
setMoveKey( spep_1-3 + 188, 1, 62.1, 39.7 , 0 );
setMoveKey( spep_1-3 + 190, 1, 63.1, 44.9 , 0 );
setMoveKey( spep_1-3 + 192, 1, 69.2, 41.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 69.2, 40.2 , 0 );
setMoveKey( spep_1-3 + 196, 1, 70.4, 43.8 , 0 );
setMoveKey( spep_1-3 + 198, 1, 69.8, 36.1 , 0 );
setMoveKey( spep_1-3 + 200, 1, 67.2, 41 , 0 );
setMoveKey( spep_1-3 + 202, 1, 70.1, 33.7 , 0 );
setMoveKey( spep_1-3 + 204, 1, 70.3, 35.1 , 0 );
setMoveKey( spep_1-3 + 206, 1, 72.3, 31.6 , 0 );
setMoveKey( spep_1-3 + 208, 1, 73.4, 27.8 , 0 );
setMoveKey( spep_1-3 + 210, 1, 69.3, 22.5 , 0 );
setMoveKey( spep_1-3 + 212, 1, 73.4, 26.4 , 0 );
setMoveKey( spep_1-3 + 214, 1, 80.7, 26.2 , 0 );
setMoveKey( spep_1-3 + 216, 1, 82.4, 17.8 , 0 );
setMoveKey( spep_1-3 + 218, 1, 75.7, 19.2 , 0 );
setMoveKey( spep_1-3 + 220, 1, 78.3, 17.7 , 0 );
setMoveKey( spep_1-3 + 222, 1, 76.6, 15.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 80.5, 16.4 , 0 );
setMoveKey( spep_1-3 + 226, 1, 80.6, 12.3 , 0 );
setMoveKey( spep_1-3 + 228, 1, 80.3, 14.7 , 0 );
setMoveKey( spep_1-3 + 229, 1, 80.3, 14.7 , 0 );

setMoveKey( spep_1-3 + 230, 1, 111.9, -25.4 , 0 );
setMoveKey( spep_1-3 + 232, 1, 116.4, -37.9 , 0 );
setMoveKey( spep_1-3 + 234, 1, 127, -42.5 , 0 );
setMoveKey( spep_1-3 + 236, 1, 132.1, -55.4 , 0 );
setMoveKey( spep_1-3 + 238, 1, 137.2, -62.8 , 0 );
setMoveKey( spep_1-3 + 240, 1, 140.1, -69.6 , 0 );
setMoveKey( spep_1-3 + 242, 1, 143.3, -70.5 , 0 );
setMoveKey( spep_1-3 + 244, 1, 144.6, -79.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 146.3, -82.3 , 0 );
setMoveKey( spep_1-3 + 248, 1, 147.5, -84.5 , 0 );
setMoveKey( spep_1-3 + 250, 1, 148.3, -86 , 0 );
setMoveKey( spep_1-3 + 252, 1, 148.7, -86.9 , 0 );
setMoveKey( spep_1-3 + 254, 1, 149, -87.3 , 0 );
setMoveKey( spep_1-3 + 256, 1, 149.1, -87.5 , 0 );
setMoveKey( spep_1-1 + 258, 1, 149.1, -87.5 , 0 );

setScaleKey( spep_1-3 + 136, 1, 3.91, 3.91 );
setScaleKey( spep_1-3 + 138, 1, 3.56, 3.56 );
setScaleKey( spep_1-3 + 140, 1, 3.22, 3.22 );
setScaleKey( spep_1-3 + 142, 1, 2.88, 2.88 );
setScaleKey( spep_1-3 + 144, 1, 2.55, 2.55 );
setScaleKey( spep_1-3 + 146, 1, 2.23, 2.23 );
setScaleKey( spep_1-3 + 148, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 149, 1, 1.92, 1.92 );

setScaleKey( spep_1-3 + 150, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 152, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 154, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 156, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 158, 1, 1.36, 1.36 );
setScaleKey( spep_1-3 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 162, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 164, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 168, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_1-3 + 172, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 174, 1, 1.02, 1.02 );
setScaleKey( spep_1-3 + 176, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 178, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 180, 1, 0.95, 0.95 );
setScaleKey( spep_1-3 + 182, 1, 0.94, 0.94 );
setScaleKey( spep_1-3 + 184, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 186, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 188, 1, 0.91, 0.91 );
setScaleKey( spep_1-3 + 190, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 192, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 194, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 196, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 198, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 200, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 202, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 204, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 206, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 210, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 212, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 214, 1, 0.78, 0.78 );
setScaleKey( spep_1-3 + 216, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 218, 1, 0.76, 0.76 );
setScaleKey( spep_1-3 + 220, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 222, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 224, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 226, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 228, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 229, 1, 0.71, 0.71 );

setScaleKey( spep_1-3 + 230, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 232, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 234, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 236, 1, 0.36, 0.36 );
setScaleKey( spep_1-3 + 238, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 240, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 242, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 244, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 246, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 248, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 250, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 252, 1, 0.17, 0.17 );
setScaleKey( spep_1-1 + 258, 1, 0.17, 0.17 );

setRotateKey( spep_1-3 + 136, 1, 12.5 );
setRotateKey( spep_1-3 + 149, 1, 12.5 );

setRotateKey( spep_1-3 + 150, 1, 12.5 );
setRotateKey( spep_1-3 + 178, 1, 12.5 );
setRotateKey( spep_1-3 + 180, 1, 12.6 );
setRotateKey( spep_1-3 + 182, 1, 12.6 );
setRotateKey( spep_1-3 + 184, 1, 12.7 );
setRotateKey( spep_1-3 + 186, 1, 12.8 );
setRotateKey( spep_1-3 + 188, 1, 12.9 );
setRotateKey( spep_1-3 + 190, 1, 13 );
setRotateKey( spep_1-3 + 192, 1, 13 );
setRotateKey( spep_1-3 + 194, 1, 13.1 );
setRotateKey( spep_1-3 + 196, 1, 13.2 );
setRotateKey( spep_1-3 + 198, 1, 13.3 );
setRotateKey( spep_1-3 + 200, 1, 13.4 );
setRotateKey( spep_1-3 + 202, 1, 13.4 );
setRotateKey( spep_1-3 + 204, 1, 13.5 );
setRotateKey( spep_1-3 + 206, 1, 13.6 );
setRotateKey( spep_1-3 + 208, 1, 13.7 );
setRotateKey( spep_1-3 + 210, 1, 13.8 );
setRotateKey( spep_1-3 + 212, 1, 13.8 );
setRotateKey( spep_1-3 + 214, 1, 13.9 );
setRotateKey( spep_1-3 + 216, 1, 14 );
setRotateKey( spep_1-3 + 218, 1, 14.1 );
setRotateKey( spep_1-3 + 220, 1, 14.2 );
setRotateKey( spep_1-3 + 222, 1, 14.2 );
setRotateKey( spep_1-3 + 224, 1, 14.3 );
setRotateKey( spep_1-3 + 226, 1, 14.4 );
setRotateKey( spep_1-3 + 228, 1, 14.5 );
setRotateKey( spep_1-3 + 229, 1, 14.5 );

setRotateKey( spep_1-3 + 230, 1, 62.2 );
setRotateKey( spep_1-3 + 232, 1, 63.9 );
setRotateKey( spep_1-3 + 234, 1, 65.4 );
setRotateKey( spep_1-3 + 236, 1, 66.7 );
setRotateKey( spep_1-3 + 238, 1, 67.7 );
setRotateKey( spep_1-3 + 240, 1, 68.6 );
setRotateKey( spep_1-3 + 242, 1, 69.3 );
setRotateKey( spep_1-3 + 244, 1, 69.8 );
setRotateKey( spep_1-3 + 246, 1, 70.2 );
setRotateKey( spep_1-3 + 248, 1, 70.5 );
setRotateKey( spep_1-3 + 250, 1, 70.7 );
setRotateKey( spep_1-3 + 252, 1, 70.8 );
setRotateKey( spep_1-3 + 254, 1, 70.9 );
setRotateKey( spep_1-1 + 258, 1, 70.9 );

--敵の動き
setDisp( spep_1-3 + 268, 1, 1);
setDisp( spep_1-1 + 288, 1, 0);

changeAnime( spep_1-3 + 268, 1, 5);

setMoveKey( spep_1-3 + 268, 1, 27.2, 529.1 , 0 );
setMoveKey( spep_1-3 + 270, 1, 21.8, 429.2 , 0 );
setMoveKey( spep_1-3 + 272, 1, 17, 341 , 0 );
setMoveKey( spep_1-3 + 274, 1, 12.9, 264.6 , 0 );
setMoveKey( spep_1-3 + 276, 1, 9.4, 200 , 0 );
setMoveKey( spep_1-3 + 278, 1, 6.5, 147.1 , 0 );
setMoveKey( spep_1-3 + 280, 1, 4.3, 105.9 , 0 );
setMoveKey( spep_1-3 + 282, 1, 2.7, 76.6 , 0 );
setMoveKey( spep_1-3 + 284, 1, 1.8, 58.9 , 0 );
setMoveKey( spep_1-1 + 288, 1, 1.5, 53 , 0 );

setScaleKey( spep_1-3 + 268, 1, 2.47, 2.47 );
setScaleKey( spep_1-3 + 270, 1, 2, 2 );
setScaleKey( spep_1-3 + 272, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 274, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 276, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 278, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 280, 1, 0.48, 0.48 );
setScaleKey( spep_1-3 + 282, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 284, 1, 0.26, 0.26 );
setScaleKey( spep_1-1 + 288, 1, 0.23, 0.23 );

setRotateKey( spep_1-3 + 268, 1, 139 );
setRotateKey( spep_1-3 + 270, 1, 142.8 );
setRotateKey( spep_1-3 + 272, 1, 146.2 );
setRotateKey( spep_1-3 + 274, 1, 149.1 );
setRotateKey( spep_1-3 + 276, 1, 151.6 );
setRotateKey( spep_1-3 + 278, 1, 153.7 );
setRotateKey( spep_1-3 + 280, 1, 155.2 );
setRotateKey( spep_1-3 + 282, 1, 156.4 );
setRotateKey( spep_1-3 + 284, 1, 157 );
setRotateKey( spep_1-1 + 288, 1, 157.3 );

--SE
--連続気弾B
stopSe( spep_1 + 96, SE015, 16 );

--連続気弾B
SE017 = playSe( spep_1 + 88, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 88, SE017, 93 );
setBandpassFilter( spep_1 + 88, SE017, 500, 24000 );
stopSe( spep_1 + 110, SE017, 16 );

--連続気弾A
SE018 = playSe( spep_1 + 92, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 92, SE018, 158 );
setPitch( spep_1 + 92, SE018, -200 );
setTimeStretch( SE018, 0.87, 10, 1 );

--連続気弾A
SE019 = playSe( spep_1 + 104, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE019, 158 );
setPitch( spep_1 + 104, SE019, -200 );
setTimeStretch( SE019, 0.87, 10, 1 );

--連続気弾B
SE020 = playSe( spep_1 + 104, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 104, SE020, 98 );
setBandpassFilter( spep_1 + 104, SE020, 500, 24000 );
stopSe( spep_1 + 126, SE020, 16 );

--連続気弾A
SE021 = playSe( spep_1 + 118, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 118, SE021, 141 );
setPitch( spep_1 + 118, SE021, -200 );
setTimeStretch( SE021, 0.87, 10, 1 );
stopSe( spep_1 + 164, SE021, 2 );

--連続気弾B
SE022 = playSe( spep_1 + 120, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 120, SE022, 103 );
setBandpassFilter( spep_1 + 120, SE022, 500, 24000 );
stopSe( spep_1 + 142, SE022, 14 );

--連続気弾A
SE023 = playSe( spep_1 + 132, 1155 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 132, SE023, 71 );
setPitch( spep_1 + 132, SE023, -200 );
setTimeStretch( SE023, 0.87, 10, 1 );
stopSe( spep_1 + 164, SE023, 2 );

--連続気弾B
SE024 = playSe( spep_1 + 134, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 134, SE024, 80 );
setBandpassFilter( spep_1 + 134, SE024, 500, 24000 );
stopSe( spep_1 + 154, SE024, 16 );

--連続気弾B
SE025 = playSe( spep_1 + 146, 1060 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 146, SE025, 87 );
setBandpassFilter( spep_1 + 146, SE025, 500, 24000 );
stopSe( spep_1 + 166, SE025, 18 );

--連続爆発
SE026 = playSe( spep_1 + 156, 1023 );
setSeVolumeByWorkId( spep_1 + 156, SE026, 126 );
stopSe( spep_1 + 180, SE026, 18 );
SE027 = playSe( spep_1 + 168, 1024 );
setSeVolumeByWorkId( spep_1 + 168, SE027, 78 );
SE028 = playSe( spep_1 + 182, 1023 );
setSeVolumeByWorkId( spep_1 + 182, SE028, 66 );
SE029 = playSe( spep_1 + 182, 1025 );
setSeVolumeByWorkId( spep_1 + 182, SE029, 89 );
SE030 = playSe( spep_1 + 208, 1011 );
stopSe( spep_1 + 226, SE030, 62 );

--敵飛んでいく
SE031 = playSe( spep_1 + 212, 1183 );
setSeVolumeByWorkId( spep_1 + 212, SE031, 160 );
stopSe( spep_1 + 284, SE031, 10 );

--塔にヒット
SE032 = playSe( spep_1 + 286, 1159 );
setSeVolumeByWorkId( spep_1 + 286, SE032, 75 );
stopSe( spep_1 + 336, SE032, 46 );

--悟飯と合流
SE033 = playSe( spep_1 + 326, 1117 );
setSeVolumeByWorkId( spep_1 + 326, SE033, 88 );
SE034 = playSe( spep_1 + 326, 44 );
setSeVolumeByWorkId( spep_1 + 326, SE034, 80 );

--白フェード
entryFade( spep_1 + 376, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 380;
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

--悟飯と合流
stopSe( spep_2 + 4, SE034, 0 );
stopSe( spep_2 + 4, SE033, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 両手クロス〜気功波が塔に当たり爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 280, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_3 + 280, finish, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 280, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 280, finish, 255 );

--SE
--気弾発射
SE036 = playSe( spep_3 + 14, 1146 );
setSeVolumeByWorkId( spep_3 + 14, SE036, 77 );
SE037 = playSe( spep_3 + 14, 1022 );
SE038 = playSe( spep_3 + 14, 1177 );
setSeVolumeByWorkId( spep_3 + 14, SE038, 90 );
SE039 = playSe( spep_3 + 48, 1124 );
stopSe( spep_3 + 132, SE039, 22 );

--気弾飛んでいく
SE040 = playSe( spep_3 + 114, 1202 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 114, SE040, 200 );

--爆発
SE041 = playSe( spep_3 + 150, 1024 );
setSeVolumeByWorkId( spep_3 + 150, SE041, 91 );
SE042 = playSe( spep_3 + 154, 1159 );
setSeVolumeByWorkId( spep_3 + 154, SE042, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 150 );
endPhase( spep_3 + 250 -6 );
end