--1023320:魔神プティン_アイシクルイリュージョン
--sp_effect_a7_00047

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
SP_01=	158618	;--	カットイン、杖を回す
SP_02=	158619	;--	氷を放つ
SP_03=	158621	;--	攻撃HIT～フィニッシュ
SP_04=	158622	;--	攻撃HIT～フィニッシュ

--エフェクト(てき)
SP_01x=	158618	;--	カットイン、杖を回す	
SP_02x=	158620	;--	氷を放つ	(敵)
SP_03x=	158623	;--	攻撃HIT～フィニッシュ	(敵)
SP_04x=	158624	;--	攻撃HIT～フィニッシュ	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


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
--カットイン、杖を回す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
wand = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, wand, 0, 0, 0 );
setEffMoveKey( spep_0 + 222, wand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, wand, 1.0, 1.0 );
setEffScaleKey( spep_0 + 222, wand, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, wand, 0 );
setEffRotateKey( spep_0 + 222, wand, 0 );
setEffAlphaKey( spep_0 + 0, wand, 255 );
setEffAlphaKey( spep_0 + 222, wand, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

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
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 78 );
SE002 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--魔法陣生成
SE004 = playSeVer2( spep_0 + 104, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE004, 85 );
SE005 = playSeVer2( spep_0 + 104, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE005, 178 );
SE006 = playSeVer2( spep_0 + 104, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE006, 35 );

--氷生成
SE007 = playSeVer2( spep_0 + 120, 1241, "",spep_0 + 230, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 81 );
SE008 = playSeVer2( spep_0 + 120, 1240, "",spep_0 + 230, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 123 );
SE009 = playSeVer2( spep_0 + 124, 1263, "",spep_0 + 230, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 138 );

--杖まわす
SE010 = playSeVer2( spep_0 + 140, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE010, 269 );

--白フェード
entryFade( spep_0 + 214, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+222;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 92; 
------------------------------------------------------
--氷を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
ice = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ice, 0, 0, 0 );
setEffMoveKey( spep_2 + 52, ice, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ice, 1.0, 1.0 );
setEffScaleKey( spep_2 + 52, ice, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ice, 0 );
setEffRotateKey( spep_2 + 52, ice, 0 );
setEffAlphaKey( spep_2 + 0, ice, 255 );
setEffAlphaKey( spep_2 + 52, ice, 255 );

--SE
--発射前溜め
SE012 = playSeVer2( spep_2 + 0, 1308, "",spep_2 + 60, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 145 );
SE013 = playSeVer2( spep_2 + 0, 1288, "",spep_2 + 120, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE013, 132 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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
--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 24,  906, 28, 0x100, -1, 0, 0, -96.9 );
setEffShake( spep_2-3 + 24, shuchusen1, 28, 20 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 0, -96.9 , 0 );
setEffMoveKey( spep_2-3 + 52, shuchusen1, 0, -96.9 , 0 );

setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.27, 1.06 );
setEffScaleKey( spep_2-3 + 52, shuchusen1, 1.27, 1.06 );

setEffRotateKey( spep_2-3 + 24, shuchusen1, 0 );
setEffRotateKey( spep_2-3 + 52, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );

--SE
--氷発射
SE014 = playSeVer2( spep_2 + 28, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 28, 1264, "",spep_2 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 28, SE015, 71 );

--白フェード
entryFade( spep_2 + 44 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 52; 
------------------------------------------------------
--攻撃HIT～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 202, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 202, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 202, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 202, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 202, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 202, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 42, 1, 1 );

changeAnime( spep_3-3 + 42, 1, 108 );
changeAnime( spep_3-3 + 106, 1, 106 );

setMoveKey( spep_3-3 + 42, 1, 912.4, 119.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 23.9, 60 , 0 );
setMoveKey( spep_3-3 + 46, 1, 23.9, 24.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 12.2, 42.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, 23.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 23.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 18.3, 25.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 12.6, 8.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 12.2, 6.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 11.7, 5.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 11.6, 5.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 11.6, 5.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 11.6, 5.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 11.6, 5.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, 11.6, 5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 11.5, 4.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 11.5, 4.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, 11.5, 4.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 11.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 105, 1, 11.5, 4.7 , 0 );

setMoveKey( spep_3-3 + 106, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 108, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 110, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 114, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 116, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 118, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 120, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 124, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 126, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 128, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 130, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 132, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 138, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 142, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 144, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 146, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 150, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 152, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 154, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 158, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3 + 190, 1, -0.5, 2.8 , 0 );

setScaleKey( spep_3-3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 58, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 64, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 72, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 80, 1, 1, 1 );
setScaleKey( spep_3-3 + 82, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 105, 1, 0.99, 0.99 );

setScaleKey( spep_3-3 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 190, 1, 0.63, 0.63 );

setRotateKey( spep_3-3 + 42, 1, 0 );
setRotateKey( spep_3-3 + 105, 1, 0 );

setRotateKey( spep_3-3 + 106, 1, -28 );
setRotateKey( spep_3 +190, 1, -28 );

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 44,  906, 156, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 44, shuchusen2, 156, 20 );
setEffMoveKey( spep_3-3 + 44, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 200, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 44, shuchusen2, 1.17, 1.11 );
setEffScaleKey( spep_3-3 + 200, shuchusen2, 1.17, 1.11 );

setEffRotateKey( spep_3-3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_3-3 + 200, shuchusen2, 0 );

setEffAlphaKey( spep_3-3 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 200, shuchusen2, 255 );

--SE
--氷飛んでいく
SE016 = playSeVer2( spep_3 + 0, 1241, "",spep_3 + 80, 0, 18, 0.6);

--氷になる
SE017 = playSeVer2( spep_3 + 58, 1250, "",spep_3 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 58, SE017, 229 );
SE018 = playSeVer2( spep_3 + 60, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE018, 136 );
setPitch( spep_3 + 60, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 4 );
SE019 = playSeVer2( spep_3 + 60, 1330, "",spep_3 + 128, 0, 16, -1);

--ラスト爆発
SE020 = playSeVer2( spep_3 + 116, 1017, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 90 );
endPhase( spep_3 + 190 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--カットイン、杖を回す
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
wand = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, wand, 0, 0, 0 );
setEffMoveKey( spep_0 + 222, wand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, wand, -1.0, 1.0 );
setEffScaleKey( spep_0 + 222, wand, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, wand, 0 );
setEffRotateKey( spep_0 + 222, wand, 0 );
setEffAlphaKey( spep_0 + 0, wand, 255 );
setEffAlphaKey( spep_0 + 222, wand, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

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
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 78 );
SE002 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--魔法陣生成
SE004 = playSeVer2( spep_0 + 104, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE004, 85 );
SE005 = playSeVer2( spep_0 + 104, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE005, 178 );
SE006 = playSeVer2( spep_0 + 104, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE006, 35 );

--氷生成
SE007 = playSeVer2( spep_0 + 120, 1241, "",spep_0 + 230, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 81 );
SE008 = playSeVer2( spep_0 + 120, 1240, "",spep_0 + 230, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 123 );
SE009 = playSeVer2( spep_0 + 124, 1263, "",spep_0 + 230, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 138 );

--杖まわす
SE010 = playSeVer2( spep_0 + 140, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE010, 269 );

--白フェード
entryFade( spep_0 + 214, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+222;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 92; 
------------------------------------------------------
--氷を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
ice = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ice, 0, 0, 0 );
setEffMoveKey( spep_2 + 52, ice, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ice, 1.0, 1.0 );
setEffScaleKey( spep_2 + 52, ice, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ice, 0 );
setEffRotateKey( spep_2 + 52, ice, 0 );
setEffAlphaKey( spep_2 + 0, ice, 255 );
setEffAlphaKey( spep_2 + 52, ice, 255 );

--SE
--発射前溜め
SE012 = playSeVer2( spep_2 + 0, 1308, "",spep_2 + 60, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 145 );
SE013 = playSeVer2( spep_2 + 0, 1288, "",spep_2 + 120, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE013, 132 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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
--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 24,  906, 28, 0x100, -1, 0, 0, -96.9 );
setEffShake( spep_2-3 + 24, shuchusen1, 28, 20 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 0, -96.9 , 0 );
setEffMoveKey( spep_2-3 + 52, shuchusen1, 0, -96.9 , 0 );

setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.27, 1.06 );
setEffScaleKey( spep_2-3 + 52, shuchusen1, 1.27, 1.06 );

setEffRotateKey( spep_2-3 + 24, shuchusen1, 0 );
setEffRotateKey( spep_2-3 + 52, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );

--SE
--氷発射
SE014 = playSeVer2( spep_2 + 28, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 28, 1264, "",spep_2 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 28, SE015, 71 );

--白フェード
entryFade( spep_2 + 44 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 52; 
------------------------------------------------------
--攻撃HIT～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 202, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 202, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 202, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 202, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 202, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 202, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 42, 1, 1 );

changeAnime( spep_3-3 + 42, 1, 108 );
changeAnime( spep_3-3 + 106, 1, 106 );

setMoveKey( spep_3-3 + 42, 1, 912.4, 119.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 23.9, 60 , 0 );
setMoveKey( spep_3-3 + 46, 1, 23.9, 24.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 12.2, 42.4 , 0 );
setMoveKey( spep_3-3 + 50, 1, 23.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 56, 1, 23.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 18.3, 25.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 12.6, 8.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 12.2, 6.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 11.7, 5.4 , 0 );
setMoveKey( spep_3-3 + 66, 1, 11.6, 5.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 11.6, 5.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 11.6, 5.1 , 0 );
setMoveKey( spep_3-3 + 72, 1, 11.6, 5.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, 11.6, 5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 11.5, 4.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 11.5, 4.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, 11.5, 4.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 11.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 105, 1, 11.5, 4.7 , 0 );

setMoveKey( spep_3-3 + 106, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 108, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3-3 + 110, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 114, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 116, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 118, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 120, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 124, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 126, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 128, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 130, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 132, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 138, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 140, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 142, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 144, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 146, 1, -7.5, 11.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_3-3 + 150, 1, 8.8, 2.9 , 0 );
setMoveKey( spep_3-3 + 152, 1, -11.6, -1.1 , 0 );
setMoveKey( spep_3-3 + 154, 1, 14.9, 8.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, 9.1, -11.2 , 0 );
setMoveKey( spep_3-3 + 158, 1, -0.5, 2.8 , 0 );
setMoveKey( spep_3 + 190, 1, -0.5, 2.8 , 0 );

setScaleKey( spep_3-3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 58, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 64, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 72, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 80, 1, 1, 1 );
setScaleKey( spep_3-3 + 82, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 105, 1, 0.99, 0.99 );

setScaleKey( spep_3-3 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 190, 1, 0.63, 0.63 );

setRotateKey( spep_3-3 + 42, 1, 0 );
setRotateKey( spep_3-3 + 105, 1, 0 );

setRotateKey( spep_3-3 + 106, 1, -28 );
setRotateKey( spep_3 +190, 1, -28 );

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 44,  906, 156, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 44, shuchusen2, 156, 20 );
setEffMoveKey( spep_3-3 + 44, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 200, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 44, shuchusen2, 1.17, 1.11 );
setEffScaleKey( spep_3-3 + 200, shuchusen2, 1.17, 1.11 );

setEffRotateKey( spep_3-3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_3-3 + 200, shuchusen2, 0 );

setEffAlphaKey( spep_3-3 + 44, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 200, shuchusen2, 255 );

--SE
--氷飛んでいく
SE016 = playSeVer2( spep_3 + 0, 1241, "",spep_3 + 80, 0, 18, 0.6);

--氷になる
SE017 = playSeVer2( spep_3 + 58, 1250, "",spep_3 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 58, SE017, 229 );
SE018 = playSeVer2( spep_3 + 60, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE018, 136 );
setPitch( spep_3 + 60, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 4 );
SE019 = playSeVer2( spep_3 + 60, 1330, "",spep_3 + 128, 0, 16, -1);

--ラスト爆発
SE020 = playSeVer2( spep_3 + 116, 1017, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 90 );
endPhase( spep_3 + 190 );
end