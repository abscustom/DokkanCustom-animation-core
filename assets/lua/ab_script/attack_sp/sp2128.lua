--1021370:ゴールデンフリーザ(天使)&アルティメット孫悟飯_レーザーネット爆裂ラッシュ
--sp_effect_a3_00075

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
SP_01=	156710	;--	構える
SP_02=	156711	;--	悟飯突進
SP_03=	156713	;--	フリーザがレーザー発射
SP_04=	156714	;--	レーザーが飛んでいく
SP_05=	156715	;--	格闘　前面
SP_06=	156717	;--	格闘　背面
SP_07=	156718	;--	回し蹴り
SP_08=	156719	;--	エフェクト
SP_09=	156720	;--	敵が吹っ飛びレーザーにあたる　前面
SP_10=	156721	;--	敵が吹っ飛びレーザーにあたる　背面
SP_11=	156722	;--	悟飯が殴りかかる
SP_12=	156724	;--	ヒットエフェクト
SP_13=	156725	;--	悟飯殴る→岩肌に激突　前面
SP_14=	156727	;--	悟飯殴る→岩肌に激突　背面

--エフェクト(敵がわ)
SP_01x=	156710	;--	構える	
SP_02x=	156712	;--	悟飯突進	(敵)
SP_03x=	156713	;--	フリーザがレーザー発射	
SP_04x=	156714	;--	レーザーが飛んでいく	
SP_05x=	156716	;--	格闘　前面	(敵)
SP_06x=	156717	;--	格闘　背面	
SP_07x=	156718	;--	回し蹴り	
SP_08x=	156719	;--	エフェクト	
SP_09x=	156720	;--	敵が吹っ飛びレーザーにあたる　前面	
SP_10x=	156721	;--	敵が吹っ飛びレーザーにあたる　背面	
SP_11x=	156723	;--	悟飯が殴りかかる	(敵)
SP_12x=	156724	;--	ヒットエフェクト	
SP_13x=	156726	;--	悟飯殴る→岩肌に激突　前面	(敵)
SP_14x=	156727	;--	悟飯殴る→岩肌に激突　背面	
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
-- 構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, hold, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 106, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 104, hold, 255 );
setEffAlphaKey( spep_0 + 105, hold, 255 );
setEffAlphaKey( spep_0 + 106, hold, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 28,  906, 80, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_0-3 + 28, shuchusen1, 80, 20 );
setEffMoveKey( spep_0-3 + 28, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_0-3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 60, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  60,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  60,  510);

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
--構える
SE001 = playSe( spep_0 + 24, 1233 );
setPitch( spep_0 + 24, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );


--白フェード
entryFade( spep_0 + 100, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+106;
------------------------------------------------------
-- 悟飯突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 56, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 54, rush, 255 );
setEffAlphaKey( spep_1 + 55, rush, 255 );
setEffAlphaKey( spep_1 + 56, rush, 0 );

--SE
--悟飯ダッシュ
SE003 = playSe( spep_1 + 0, 1182 );
SE004 = playSe( spep_1 + 0, 1314 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
   
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
--SE
--悟飯ダッシュ
stopSe( spep_1 + 50, SE004, 52 );


--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- フリーザがレーザー発射
------------------------------------------------------
-- ** エフェクト等 ** --
razor = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, razor, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, razor, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, razor, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, razor, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, razor, 0 );
setEffRotateKey( spep_2 + 96, razor, 0 );
setEffAlphaKey( spep_2 + 0, razor, 255 );
setEffAlphaKey( spep_2 + 94, razor, 255 );
setEffAlphaKey( spep_2 + 95, razor, 255 );
setEffAlphaKey( spep_2 + 96, razor, 0 );

--SE
--悟飯ダッシュ
stopSe( spep_2 + 2, SE004, 52 );

--フリーザズームアウト
SE005 = playSe( spep_2 + 0, 1072 );

--レーザー弾発射
SE006 = playSe( spep_2 + 62, 1201 );
SE007 = playSe( spep_2 + 64, 1254 );
setSeVolumeByWorkId( spep_2 + 64, SE007, 57 );
SE008 = playSe( spep_2 + 64, 1212 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 64, SE008, 59 );
SE009 = playSe( spep_2 + 80, 1255 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 80, SE009, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+96;
------------------------------------------------------
-- レーザーが飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 56, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 54, beam, 255 );
setEffAlphaKey( spep_3 + 55, beam, 255 );
setEffAlphaKey( spep_3 + 56, beam, 0 );

--SE
--レーザー弾発射
stopSe( spep_3 + 10, SE008, 20 );
--レーザー網目降る
SE010 = playSe( spep_3 + 10, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 10, SE010, 100 );
stopSe( spep_3 + 18, SE010, 4 )
SE011 = playSe( spep_3 + 10, 1015 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 10, SE011, 68 );
--SE012 = playSe( spep_3 + 0, 1256 );
--setSeVolumeByWorkId( spep_3 + 0, SE012, 79 );
SE013 = playSe( spep_3 + 16, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 16, SE013, 100 );
stopSe( spep_3 + 24, SE013, 4 );
SE014 = playSe( spep_3 + 22, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 22, SE014, 100 );
stopSe( spep_3 + 30, SE014, 4 )
SE015 = playSe( spep_3 + 26, 1256 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 26, SE015, 90 );
SE016 = playSe( spep_3 + 28, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 28, SE016, 100 );
stopSe( spep_3 + 36, SE016, 4 );
SE017 = playSe( spep_3 + 34, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 34, SE017, 100 );
stopSe( spep_3 + 42, SE017, 4 );
SE018 = playSe( spep_3 + 40, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 40, SE018, 100 );
stopSe( spep_3 + 48, SE018, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+56;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--レーザー弾発射
stopSe( spep_4 + 0, SE009, 2 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fighting_f, 0 );
setEffRotateKey( spep_5 + 96, fighting_f, 0 );
setEffAlphaKey( spep_5 + 0, fighting_f, 255 );
setEffAlphaKey( spep_5 + 94, fighting_f, 255 );
setEffAlphaKey( spep_5 + 95, fighting_f, 255 );
setEffAlphaKey( spep_5 + 96, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fighting_b, 0 );
setEffRotateKey( spep_5 + 96, fighting_b, 0 );
setEffAlphaKey( spep_5 + 0, fighting_b, 255 );
setEffAlphaKey( spep_5 + 94, fighting_b, 255 );
setEffAlphaKey( spep_5 + 95, fighting_b, 255 );
setEffAlphaKey( spep_5 + 96, fighting_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 12,  906, 87, 0x100, -1, 0, 0, -20.2 );
setEffShake( spep_5-3 + 12, shuchusen2, 87, 20 );
setEffMoveKey( spep_5-3 + 12, shuchusen2, 0, -20.2 , 0 );
setEffMoveKey( spep_5 + 96, shuchusen2, 0, -20.2 , 0 );

setEffScaleKey( spep_5-3 + 12, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_5 + 96, shuchusen2, 1.12, 1.12 );

setEffRotateKey( spep_5-3 + 12, shuchusen2, 180 );
setEffRotateKey( spep_5 + 96, shuchusen2, 180 );

setEffAlphaKey( spep_5-3 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 96, shuchusen2, 255 );

--書き文字
ctzudodo = entryEffectLife( spep_5-3 + 8,  10014, 90, 0x100, -1, 0, 1.2, 148.4 );--ズドドドッ
setEffShake( spep_5-3 + 8, ctzudodo, 90, 10 );
setEffMoveKey( spep_5-3 + 8, ctzudodo, 1.2, 148.4 , 0 );
setEffMoveKey( spep_5-3 + 10, ctzudodo, -1.1, 161.3 , 0 );
setEffMoveKey( spep_5-3 + 12, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 14, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 16, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 18, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 20, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 22, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 24, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 26, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 28, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 30, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 64, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 66, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 68, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 70, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 72, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 74, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 76, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 86, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 90, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 92, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 94, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 96, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 98, ctzudodo, 5.6, 130.8 , 0 );

setEffScaleKey( spep_5-3 + 8, ctzudodo, 0.01, 0.01 );
setEffScaleKey( spep_5-3 + 10, ctzudodo, 0.92, 0.96 );
setEffScaleKey( spep_5-3 + 12, ctzudodo, 1.83, 1.9 );
setEffScaleKey( spep_5-3 + 98, ctzudodo, 1.83, 1.9 );

setEffRotateKey( spep_5-3 + 8, ctzudodo, -11.8 );
setEffRotateKey( spep_5-3 + 10, ctzudodo, -12 );
setEffRotateKey( spep_5-3 + 98, ctzudodo, -12 );

setEffAlphaKey( spep_5-3 + 8, ctzudodo, 255 );
setEffAlphaKey( spep_5-3 + 98, ctzudodo, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 96, 1, 0 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5-3 + 10, 1, 106 );
changeAnime( spep_5-3 + 20, 1, 108 );
changeAnime( spep_5-3 + 30, 1, 106 );
changeAnime( spep_5-3 + 40, 1, 108 );
changeAnime( spep_5-3 + 50, 1, 106 );
changeAnime( spep_5-3 + 60, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );
changeAnime( spep_5-3 + 80, 1, 108 );
changeAnime( spep_5-3 + 90, 1, 106 );

setMoveKey( spep_5 + 0, 1, 100, -73 , 0 );
setMoveKey( spep_5-3 + 9, 1, 100, -73 , 0 );
setMoveKey( spep_5-3 + 10, 1, 119.5, -58.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, 116.2, -62.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 118.3, -59.9 , 0 );
setMoveKey( spep_5-3 + 16, 1, 117.3, -62.5 , 0 );
setMoveKey( spep_5-3 + 19, 1, 117.6, -61.1 , 0 );
setMoveKey( spep_5-3 + 20, 1, 114.5, -52.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, 111.2, -55.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 113.5, -57.7 , 0 );
setMoveKey( spep_5-3 + 26, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 29, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 30, 1, 113.9, -58.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 112.7, -63.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 39, 1, 112.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 40, 1, 112.6, -58.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 114.5, -56.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 111.2, -59.5 , 0 );
setMoveKey( spep_5-3 + 46, 1, 113.3, -61.9 , 0 );
setMoveKey( spep_5-3 + 49, 1, 112.6, -58.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 116.2, -62.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, 118.3, -59.9 , 0 );
setMoveKey( spep_5-3 + 54, 1, 117.3, -62.5 , 0 );
setMoveKey( spep_5-3 + 56, 1, 117.6, -61.1 , 0 );
setMoveKey( spep_5-3 + 59, 1, 119.5, -58.9 , 0 );
setMoveKey( spep_5-3 + 60, 1, 111.2, -55.3 , 0 );
setMoveKey( spep_5-3 + 62, 1, 113.5, -57.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 66, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 69, 1, 114.5, -52 , 0 );
setMoveKey( spep_5-3 + 70, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 112.7, -63.9 , 0 );
setMoveKey( spep_5-3 + 74, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, 112.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 79, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, 114.5, -56.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, 111.2, -60.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 113.3, -57.9 , 0 );
setMoveKey( spep_5-3 + 86, 1, 112.3, -60.5 , 0 );
setMoveKey( spep_5-3 + 89, 1, 112.6, -59.1 , 0 );
setMoveKey( spep_5-3 + 90, 1, 113.9, -58.9 , 0 );
setMoveKey( spep_5-3 + 92, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 94, 1, 112.9, -63.9 , 0 );
setMoveKey( spep_5 + 96, 1, 112, -60.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 96, 1, 1.09, 1.09 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 9, 1, 0 );
setRotateKey( spep_5-3 + 10, 1, -33 );
setRotateKey( spep_5-3 + 19, 1, -33 );
setRotateKey( spep_5-3 + 20, 1, 0 );
setRotateKey( spep_5-3 + 29, 1, 0 );
setRotateKey( spep_5-3 + 30, 1, -33 );
setRotateKey( spep_5-3 + 39, 1, -33 );
setRotateKey( spep_5-3 + 40, 1, 0 );
setRotateKey( spep_5-3 + 49, 1, 0 );
setRotateKey( spep_5-3 + 50, 1, -33 );
setRotateKey( spep_5-3 + 59, 1, -33 );
setRotateKey( spep_5-3 + 60, 1, 0 );
setRotateKey( spep_5-3 + 69, 1, 0 );
setRotateKey( spep_5-3 + 70, 1, -33 );
setRotateKey( spep_5-3 + 79, 1, -33 );
setRotateKey( spep_5-3 + 80, 1, 0 );
setRotateKey( spep_5-3 + 89, 1, 0 );
setRotateKey( spep_5-3 + 90, 1, -33 );
setRotateKey( spep_5 + 96, 1, -33 );

--SE
--環境音
SE020 = playSe( spep_5 + 0, 1176 );
setSeVolumeByWorkId( spep_5 + 0, SE020, 25 );
SE021 = playSe( spep_5 + 0, 1181 );

--ラッシュ
SE022 = playSe( spep_5 + 0, 1003 );
SE023 = playSe( spep_5 + 6, 1010 );
setSeVolumeByWorkId( spep_5 + 6, SE023, 56 );
stopSe( spep_5 + 18, SE023, 6 );
SE024 = playSe( spep_5 + 6, 1000 );
setSeVolumeByWorkId( spep_5 + 6, SE024, 89 );
SE025 = playSe( spep_5 + 20, 1009 );
setSeVolumeByWorkId( spep_5 + 20, SE025, 68 );
stopSe( spep_5 + 30, SE025, 12 );
SE026 = playSe( spep_5 + 20, 1000 );
setSeVolumeByWorkId( spep_5 + 20, SE026, 94 );
SE027 = playSe( spep_5 + 30, 1009 );
setSeVolumeByWorkId( spep_5 + 30, SE027, 62 )
stopSe( spep_5 + 40, SE027, 8 );
SE028 = playSe( spep_5 + 30, 1001 );
setSeVolumeByWorkId( spep_5 + 30, SE028, 62 );
SE029 = playSe( spep_5 + 40, 1012 );
setSeVolumeByWorkId( spep_5 + 40, SE029, 79 );
SE030 = playSe( spep_5 + 40, 1000 );
setSeVolumeByWorkId( spep_5 + 40, SE030, 84 );
SE031 = playSe( spep_5 + 50, 1009 );
setSeVolumeByWorkId( spep_5 + 50, SE031, 75 );
stopSe( spep_5 + 64, SE031, 4 )
SE032 = playSe( spep_5 + 50, 1000 );
setSeVolumeByWorkId( spep_5 + 50, SE032, 87 );
SE033 = playSe( spep_5 + 62, 1009 );
setSeVolumeByWorkId( spep_5 + 62, SE033, 72 );
stopSe( spep_5 + 74, SE033, 8 );
SE034 = playSe( spep_5 + 62, 1001 );
setSeVolumeByWorkId( spep_5 + 62, SE034, 63 );
SE035 = playSe( spep_5 + 74, 1009 );
setSeVolumeByWorkId( spep_5 + 74, SE035, 65 );
stopSe( spep_5 + 86, SE035, 8 );
SE036 = playSe( spep_5 + 74, 1000 );
setSeVolumeByWorkId( spep_5 + 74, SE036, 75 );
SE037 = playSe( spep_5 + 88, 1009 );
setSeVolumeByWorkId( spep_5 + 88, SE037, 79 );
SE038 = playSe( spep_5 + 88, 1000 );
setSeVolumeByWorkId( spep_5 + 88, SE038, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;
------------------------------------------------------
-- 回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_6 + 24, kick, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_6 + 24, kick, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick, 0 );
setEffRotateKey( spep_6 + 24, kick, 0 );
setEffAlphaKey( spep_6 + 0, kick, 255 );
setEffAlphaKey( spep_6 + 22, kick, 255 );
setEffAlphaKey( spep_6 + 23, kick, 255 );
setEffAlphaKey( spep_6 + 24, kick, 0 );

--SE
--蹴り振りかぶる
SE039 = playSe( spep_6 + 0, 1004 );
SE040 = playSe( spep_6 + 0, 1117 );
stopSe( spep_6 + 24, SE040, 12 );
SE041 = playSe( spep_6 + 10, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 24;
------------------------------------------------------
-- エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
effect = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, effect, 0, 0, 0 );
setEffMoveKey( spep_7 + 12, effect, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, effect, 1.0, 1.0 );
setEffScaleKey( spep_7 + 12, effect, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, effect, 0 );
setEffRotateKey( spep_7 + 12, effect, 0 );
setEffAlphaKey( spep_7 + 0, effect, 255 );
setEffAlphaKey( spep_7 + 10, effect, 255 );
setEffAlphaKey( spep_7 + 11, effect, 255 );
setEffAlphaKey( spep_7 + 12, effect, 0 );

--SE
--環境音
stopSe( spep_7 + 2, SE020, 0 );
stopSe( spep_7 + 2, SE021, 0 );

--蹴り
SE042 = playSe( spep_7 + 0, 1233 );
setSeVolumeByWorkId( spep_7 + 0, SE042, 0 );
setSeVolumeByWorkId( spep_7 + 1, SE042, 25 );
setSeVolumeByWorkId( spep_7 + 2, SE042, 50 );
setSeVolumeByWorkId( spep_7 + 3, SE042, 75 );
setSeVolumeByWorkId( spep_7 + 4, SE042, 100 );
setStartTimeMs( SE042,  133 );
SE043 = playSe( spep_7 + 4, 1187 );
setSeVolumeByWorkId( spep_7 + 4, SE043, 79 );
SE044 = playSe( spep_7 + 6, 1190 );
setSeVolumeByWorkId( spep_7 + 6, SE044, 79 );
SE045 = playSe( spep_7 + 6, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 20, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 12;

------------------------------------------------------
-- 敵が吹っ飛びレーザーにあたる
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_f, 0 );
setEffRotateKey( spep_8 + 56, fly_f, 0 );
setEffAlphaKey( spep_8 + 0, fly_f, 255 );
setEffAlphaKey( spep_8 + 54, fly_f, 255 );
setEffAlphaKey( spep_8 + 55, fly_f, 255 );
setEffAlphaKey( spep_8 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_b, 0 );
setEffRotateKey( spep_8 + 56, fly_b, 0 );
setEffAlphaKey( spep_8 + 0, fly_b, 255 );
setEffAlphaKey( spep_8 + 54, fly_b, 255 );
setEffAlphaKey( spep_8 + 55, fly_b, 255 );
setEffAlphaKey( spep_8 + 56, fly_b, 0 );

--書き文字
ctbibibi = entryEffectLife( spep_8-3 + 18,  10025, 40, 0x100, -1, 0, 15.9, 219.5 );--ビビビッ
setEffShake( spep_8-3 + 18, ctbibibi, 40, 10 );
setEffMoveKey( spep_8-3 + 18, ctbibibi, 15.9, 219.5 , 0 );
setEffMoveKey( spep_8-3 + 20, ctbibibi, 12.2, 225.2 , 0 );
setEffMoveKey( spep_8-3 + 22, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 24, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 26, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 28, ctbibibi, 9, 220.4 , 0 );
setEffMoveKey( spep_8-3 + 30, ctbibibi, 15.8, 209.8 , 0 );
setEffMoveKey( spep_8-3 + 32, ctbibibi, 21.6, 211.5 , 0 );
setEffMoveKey( spep_8-3 + 34, ctbibibi, 20.9, 229.5 , 0 );
setEffMoveKey( spep_8-3 + 36, ctbibibi, 8.6, 230.9 , 0 );
setEffMoveKey( spep_8-3 + 38, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 40, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 42, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 44, ctbibibi, 9, 220.4 , 0 );
setEffMoveKey( spep_8-3 + 46, ctbibibi, 15.8, 209.8 , 0 );
setEffMoveKey( spep_8-3 + 48, ctbibibi, 21.6, 211.5 , 0 );
setEffMoveKey( spep_8-3 + 50, ctbibibi, 8.6, 230.9 , 0 );
setEffMoveKey( spep_8-3 + 52, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 54, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 56, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 58, ctbibibi, 9, 220.4 , 0 );

setEffScaleKey( spep_8-3 + 18, ctbibibi, 0.01, 0.01 );
setEffScaleKey( spep_8-3 + 20, ctbibibi, 0.81, 0.85 );
setEffScaleKey( spep_8-3 + 22, ctbibibi, 1.62, 1.69 );
setEffScaleKey( spep_8-3 + 58, ctbibibi, 1.62, 1.69 );

setEffRotateKey( spep_8-3 + 18, ctbibibi, -29.8 );
setEffRotateKey( spep_8-3 + 20, ctbibibi, -20 );
setEffRotateKey( spep_8-3 + 58, ctbibibi, -20 );

setEffAlphaKey( spep_8-3 + 18, ctbibibi, 255 );
setEffAlphaKey( spep_8-3 + 58, ctbibibi, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 58, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );
changeAnime( spep_8-3 + 20, 1, 106 );

a=-40;

setMoveKey( spep_8 + 0, 1, 71.7+a, -238.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 50.3, -172.2 , 0 );
setMoveKey( spep_8-3 + 4, 1, 40.6+a, -134.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, 34.3+a, -106 , 0 );
setMoveKey( spep_8-3 + 8, 1, 29.8+a, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, 26.5+a, -60.7 , 0 );
setMoveKey( spep_8-3 + 12, 1, 24+a, -41.9 , 0 );
setMoveKey( spep_8-3 + 14, 1, 22.2+a, -24.8 , 0 );
setMoveKey( spep_8-3 + 16, 1, 21+a, -9.4 , 0 );
setMoveKey( spep_8-3 + 19, 1, 20.4+a, 4.4 , 0 );
setMoveKey( spep_8-3 + 20, 1, -11.9, 10.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, -26.7, -8.6 , 0 );
setMoveKey( spep_8-3 + 24, 1, -13.1, -6.1 , 0 );
setMoveKey( spep_8-3 + 26, 1, -25.2, 6.9 , 0 );
setMoveKey( spep_8-3 + 28, 1, -21.6, -1.9 , 0 );
setMoveKey( spep_8-3 + 30, 1, -21.9, 0.9 , 0 );
setMoveKey( spep_8-3 + 32, 1, -21.8, 2.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, -20.9, -0.5 , 0 );
setMoveKey( spep_8-3 + 36, 1, -20.5, 1.1 , 0 );
setMoveKey( spep_8-3 + 38, 1, -19.6, -2.9 , 0 );
setMoveKey( spep_8-3 + 40, 1, -24.3, 0.2 , 0 );
setMoveKey( spep_8-3 + 42, 1, -20, 2.4 , 0 );
setMoveKey( spep_8-3 + 44, 1, -24.8, 2.6 , 0 );
setMoveKey( spep_8-3 + 46, 1, -20.9, 4.3 , 0 );
setMoveKey( spep_8-3 + 48, 1, -20.4, 3.2 , 0 );
setMoveKey( spep_8-3 + 50, 1, -22.4, 3.3 , 0 );
setMoveKey( spep_8-3 + 52, 1, -21, 0.1 , 0 );
setMoveKey( spep_8-3 + 54, 1, -19.3, 1.7 , 0 );
setMoveKey( spep_8-3 + 56, 1, -19.7, 1.3 , 0 );
setMoveKey( spep_8-1 + 58, 1, -21.5, -2.7 , 0 );

setScaleKey( spep_8 + 0, 1,5.83,5.83);
setScaleKey( spep_8-3 + 4,  1,4.06,4.04);
setScaleKey( spep_8-3 + 6,  1,3.45,3.45);
setScaleKey( spep_8-3 + 8,  1,2.94,2.95);
setScaleKey( spep_8-3 + 10, 1,2.52,2.53);
setScaleKey( spep_8-3 + 12, 1,2.17,2.18);
setScaleKey( spep_8-3 + 14, 1,1.86,1.89);
setScaleKey( spep_8-3 + 16, 1,1.62,1.63);
setScaleKey( spep_8-3 + 19, 1,1.42,1.42);
setScaleKey( spep_8-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8-1 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 19, 1, 0 );
setRotateKey( spep_8-3 + 20, 1, -53.2 );
setRotateKey( spep_8-1 + 58, 1, -53.2 );

--SE
--ネットにかかる
SE046 = playSe( spep_8 + 18, 1043 );
SE047 = playSe( spep_8 + 22, 1038 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;
------------------------------------------------------
-- 悟飯が殴りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, punch, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, punch, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, punch, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, punch, 0 );
setEffRotateKey( spep_9 + 56, punch, 0 );
setEffAlphaKey( spep_9 + 0, punch, 255 );
setEffAlphaKey( spep_9 + 54, punch, 255 );
setEffAlphaKey( spep_9 + 55, punch, 255 );
setEffAlphaKey( spep_9 + 56, punch, 0 );

--SE
--ネットにかかる
stopSe( spep_9 + 10, SE046, 14 );

--悟飯ダッシュ
SE048 = playSe( spep_9 + 0, 1182 );
SE049 = playSe( spep_9 + 0, 1314 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;
------------------------------------------------------
-- ヒットエフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_10 + 10, hit, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_10 + 10, hit, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit, 0 );
setEffRotateKey( spep_10 + 10, hit, 0 );
setEffAlphaKey( spep_10 + 0, hit, 255 );
setEffAlphaKey( spep_10 + 8, hit, 255 );
setEffAlphaKey( spep_10 + 9, hit, 255 );
setEffAlphaKey( spep_10 + 10, hit, 0 );

--SE
--悟飯ダッシュ
stopSe( spep_10 + 6, SE049, 10 );

--パンチ
SE050 = playSe( spep_10 + 0, 1003 );
SE051 = playSe( spep_10 + 6, 1120 );
SE052 = playSe( spep_10 + 6, 1009 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 14, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 10;
------------------------------------------------------
-- 悟飯殴る→岩肌に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 120, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_14, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 120, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 120, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 22, 1, 0 );

changeAnime( spep_11 + 0, 1, 105 );

c=-70;

setMoveKey( spep_11 + 0, 1, 144.9+c, -37.3 , 0 );
--setMoveKey( spep_11-3 + 2, 1, 153.6, -37.3 , 0 );
setMoveKey( spep_11-3 + 4, 1, 162.3+c, -37.2 , 0 );
setMoveKey( spep_11-3 + 6, 1, 171.1+c, -37 , 0 );
setMoveKey( spep_11-3 + 8, 1, 243.8+c, -40.6 , 0 );
setMoveKey( spep_11-3 + 10, 1, 320.2+c, -39.2 , 0 );
setMoveKey( spep_11-3 + 12, 1, 239.7+c, -41 , 0 );
setMoveKey( spep_11-3 + 14, 1, 184.7+c, -39 , 0 );
setMoveKey( spep_11-3 + 16, 1, 131.7+c, -33 , 0 );
setMoveKey( spep_11-3 + 18, 1, 113.2+c, -31.2 , 0 );
setMoveKey( spep_11-3 + 20, 1, 101.7+c, -33.8 , 0 );
setMoveKey( spep_11-1 + 22, 1, 104.4+c, -34 , 0 );

setScaleKey( spep_11 + 0, 1,6.55,6.55);
setScaleKey( spep_11-3 + 4,  1,6.24,6.24);
setScaleKey( spep_11-3 + 6,  1,6.09,6.09);
setScaleKey( spep_11-3 + 8,  1,5.44,5.44);
setScaleKey( spep_11-3 + 10, 1,4.8,4.8);
setScaleKey( spep_11-3 + 12, 1,4.63,4.63);
setScaleKey( spep_11-3 + 14, 1,4.35,4.35);
setScaleKey( spep_11-3 + 16, 1,3.88,3.88);
setScaleKey( spep_11-3 + 18, 1,3.27,3.27);
setScaleKey( spep_11-3 + 20, 1,2.52,2.52);
setScaleKey( spep_11-1 + 22, 1,1.6,1.6);

setRotateKey( spep_11 + 0, 1, 26 );
setRotateKey( spep_11-3 + 6, 1, 26 );
setRotateKey( spep_11-3 + 8, 1, 29.5 );
setRotateKey( spep_11-3 + 10, 1, 33 );
setRotateKey( spep_11-3 + 12, 1, 36.5 );
setRotateKey( spep_11-3 + 14, 1, 40 );
setRotateKey( spep_11-3 + 16, 1, 43.5 );
setRotateKey( spep_11-3 + 18, 1, 47 );
setRotateKey( spep_11-3 + 20, 1, 50.5 );
setRotateKey( spep_11-1 + 22, 1, 54 );

--SE
--爆発
SE053 = playSe( spep_11 + 22, 1011 );
setSeVolumeByWorkId( spep_11 + 22, SE053, 87 );
SE054 = playSe( spep_11 + 22, 1168 );
setSeVolumeByWorkId( spep_11 + 22, SE054, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 20 );
endPhase( spep_11 + 110 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, hold, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 106, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 104, hold, 255 );
setEffAlphaKey( spep_0 + 105, hold, 255 );
setEffAlphaKey( spep_0 + 106, hold, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 28,  906, 80, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_0-3 + 28, shuchusen1, 80, 20 );
setEffMoveKey( spep_0-3 + 28, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_0-3 + 28, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 28, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイ(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 60, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  60,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  60,  510);

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
--構える
SE001 = playSe( spep_0 + 24, 1233 );
setPitch( spep_0 + 24, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );


--白フェード
entryFade( spep_0 + 100, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+106;
------------------------------------------------------
-- 悟飯突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 56, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 54, rush, 255 );
setEffAlphaKey( spep_1 + 55, rush, 255 );
setEffAlphaKey( spep_1 + 56, rush, 0 );

--SE
--悟飯ダッシュ
SE003 = playSe( spep_1 + 0, 1182 );
SE004 = playSe( spep_1 + 0, 1314 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
   
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
--SE
--悟飯ダッシュ
stopSe( spep_1 + 50, SE004, 52 );


--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- フリーザがレーザー発射
------------------------------------------------------
-- ** エフェクト等 ** --
razor = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, razor, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, razor, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, razor, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, razor, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, razor, 0 );
setEffRotateKey( spep_2 + 96, razor, 0 );
setEffAlphaKey( spep_2 + 0, razor, 255 );
setEffAlphaKey( spep_2 + 94, razor, 255 );
setEffAlphaKey( spep_2 + 95, razor, 255 );
setEffAlphaKey( spep_2 + 96, razor, 0 );

--SE
--悟飯ダッシュ
stopSe( spep_2 + 2, SE004, 52 );

--フリーザズームアウト
SE005 = playSe( spep_2 + 0, 1072 );

--レーザー弾発射
SE006 = playSe( spep_2 + 62, 1201 );
SE007 = playSe( spep_2 + 64, 1254 );
setSeVolumeByWorkId( spep_2 + 64, SE007, 57 );
SE008 = playSe( spep_2 + 64, 1212 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 64, SE008, 59 );
SE009 = playSe( spep_2 + 80, 1255 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 80, SE009, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+96;
------------------------------------------------------
-- レーザーが飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 56, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 54, beam, 255 );
setEffAlphaKey( spep_3 + 55, beam, 255 );
setEffAlphaKey( spep_3 + 56, beam, 0 );

--SE
--レーザー弾発射
stopSe( spep_3 + 10, SE008, 20 );
--レーザー網目降る
SE010 = playSe( spep_3 + 10, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 10, SE010, 100 );
stopSe( spep_3 + 18, SE010, 4 )
SE011 = playSe( spep_3 + 10, 1015 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 10, SE011, 68 );
--SE012 = playSe( spep_3 + 0, 1256 );
--setSeVolumeByWorkId( spep_3 + 0, SE012, 79 );
SE013 = playSe( spep_3 + 16, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 16, SE013, 100 );
stopSe( spep_3 + 24, SE013, 4 );
SE014 = playSe( spep_3 + 22, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 22, SE014, 100 );
stopSe( spep_3 + 30, SE014, 4 )
SE015 = playSe( spep_3 + 26, 1256 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 26, SE015, 90 );
SE016 = playSe( spep_3 + 28, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 28, SE016, 100 );
stopSe( spep_3 + 36, SE016, 4 );
SE017 = playSe( spep_3 + 34, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 34, SE017, 100 );
stopSe( spep_3 + 42, SE017, 4 );
SE018 = playSe( spep_3 + 40, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_3 + 40, SE018, 100 );
stopSe( spep_3 + 48, SE018, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+56;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--レーザー弾発射
stopSe( spep_4 + 0, SE009, 2 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 96, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fighting_f, 0 );
setEffRotateKey( spep_5 + 96, fighting_f, 0 );
setEffAlphaKey( spep_5 + 0, fighting_f, 255 );
setEffAlphaKey( spep_5 + 94, fighting_f, 255 );
setEffAlphaKey( spep_5 + 95, fighting_f, 255 );
setEffAlphaKey( spep_5 + 96, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fighting_b, 0 );
setEffRotateKey( spep_5 + 96, fighting_b, 0 );
setEffAlphaKey( spep_5 + 0, fighting_b, 255 );
setEffAlphaKey( spep_5 + 94, fighting_b, 255 );
setEffAlphaKey( spep_5 + 95, fighting_b, 255 );
setEffAlphaKey( spep_5 + 96, fighting_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_5-3 + 12,  906, 87, 0x100, -1, 0, 0, -20.2 );
setEffShake( spep_5-3 + 12, shuchusen2, 87, 20 );
setEffMoveKey( spep_5-3 + 12, shuchusen2, 0, -20.2 , 0 );
setEffMoveKey( spep_5 + 96, shuchusen2, 0, -20.2 , 0 );

setEffScaleKey( spep_5-3 + 12, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_5 + 96, shuchusen2, 1.12, 1.12 );

setEffRotateKey( spep_5-3 + 12, shuchusen2, 180 );
setEffRotateKey( spep_5 + 96, shuchusen2, 180 );

setEffAlphaKey( spep_5-3 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 96, shuchusen2, 255 );

--書き文字
ctzudodo = entryEffectLife( spep_5-3 + 8,  10014, 90, 0x100, -1, 0, 1.2, 148.4 );--ズドドドッ
setEffShake( spep_5-3 + 8, ctzudodo, 90, 10 );
setEffMoveKey( spep_5-3 + 8, ctzudodo, 1.2, 148.4 , 0 );
setEffMoveKey( spep_5-3 + 10, ctzudodo, -1.1, 161.3 , 0 );
setEffMoveKey( spep_5-3 + 12, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 14, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 16, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 18, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 20, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 22, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 24, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 26, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 28, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 30, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 64, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 66, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 68, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 70, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 72, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 74, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 76, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzudodo, 5.6, 130.8 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzudodo, 17.2, 162.8 , 0 );
setEffMoveKey( spep_5-3 + 86, ctzudodo, -3.4, 174 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzudodo, 24.1, 167.6 , 0 );
setEffMoveKey( spep_5-3 + 90, ctzudodo, -10.9, 136.8 , 0 );
setEffMoveKey( spep_5-3 + 92, ctzudodo, 10.3, 158 , 0 );
setEffMoveKey( spep_5-3 + 94, ctzudodo, -10.2, 155.4 , 0 );
setEffMoveKey( spep_5-3 + 96, ctzudodo, -5.7, 131.8 , 0 );
setEffMoveKey( spep_5-3 + 98, ctzudodo, 5.6, 130.8 , 0 );

setEffScaleKey( spep_5-3 + 8, ctzudodo, 0.01, 0.01 );
setEffScaleKey( spep_5-3 + 10, ctzudodo, 0.92, 0.96 );
setEffScaleKey( spep_5-3 + 12, ctzudodo, 1.83, 1.9 );
setEffScaleKey( spep_5-3 + 98, ctzudodo, 1.83, 1.9 );

setEffRotateKey( spep_5-3 + 8, ctzudodo, -11.8 );
setEffRotateKey( spep_5-3 + 10, ctzudodo, -12 );
setEffRotateKey( spep_5-3 + 98, ctzudodo, -12 );

setEffAlphaKey( spep_5-3 + 8, ctzudodo, 255 );
setEffAlphaKey( spep_5-3 + 98, ctzudodo, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 96, 1, 0 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5-3 + 10, 1, 106 );
changeAnime( spep_5-3 + 20, 1, 108 );
changeAnime( spep_5-3 + 30, 1, 106 );
changeAnime( spep_5-3 + 40, 1, 108 );
changeAnime( spep_5-3 + 50, 1, 106 );
changeAnime( spep_5-3 + 60, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );
changeAnime( spep_5-3 + 80, 1, 108 );
changeAnime( spep_5-3 + 90, 1, 106 );

setMoveKey( spep_5 + 0, 1, 100, -73 , 0 );
setMoveKey( spep_5-3 + 9, 1, 100, -73 , 0 );
setMoveKey( spep_5-3 + 10, 1, 119.5, -58.9 , 0 );
setMoveKey( spep_5-3 + 12, 1, 116.2, -62.3 , 0 );
setMoveKey( spep_5-3 + 14, 1, 118.3, -59.9 , 0 );
setMoveKey( spep_5-3 + 16, 1, 117.3, -62.5 , 0 );
setMoveKey( spep_5-3 + 19, 1, 117.6, -61.1 , 0 );
setMoveKey( spep_5-3 + 20, 1, 114.5, -52.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, 111.2, -55.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 113.5, -57.7 , 0 );
setMoveKey( spep_5-3 + 26, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 29, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 30, 1, 113.9, -58.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 112.7, -63.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 39, 1, 112.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 40, 1, 112.6, -58.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 114.5, -56.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 111.2, -59.5 , 0 );
setMoveKey( spep_5-3 + 46, 1, 113.3, -61.9 , 0 );
setMoveKey( spep_5-3 + 49, 1, 112.6, -58.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 116.2, -62.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, 118.3, -59.9 , 0 );
setMoveKey( spep_5-3 + 54, 1, 117.3, -62.5 , 0 );
setMoveKey( spep_5-3 + 56, 1, 117.6, -61.1 , 0 );
setMoveKey( spep_5-3 + 59, 1, 119.5, -58.9 , 0 );
setMoveKey( spep_5-3 + 60, 1, 111.2, -55.3 , 0 );
setMoveKey( spep_5-3 + 62, 1, 113.5, -57.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 66, 1, 112.6, -53.9 , 0 );
setMoveKey( spep_5-3 + 69, 1, 114.5, -52 , 0 );
setMoveKey( spep_5-3 + 70, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 112.7, -63.9 , 0 );
setMoveKey( spep_5-3 + 74, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, 112.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 79, 1, 112, -60.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, 114.5, -56.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, 111.2, -60.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 113.3, -57.9 , 0 );
setMoveKey( spep_5-3 + 86, 1, 112.3, -60.5 , 0 );
setMoveKey( spep_5-3 + 89, 1, 112.6, -59.1 , 0 );
setMoveKey( spep_5-3 + 90, 1, 113.9, -58.9 , 0 );
setMoveKey( spep_5-3 + 92, 1, 110.6, -61.5 , 0 );
setMoveKey( spep_5-3 + 94, 1, 112.9, -63.9 , 0 );
setMoveKey( spep_5 + 96, 1, 112, -60.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 96, 1, 1.09, 1.09 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 9, 1, 0 );
setRotateKey( spep_5-3 + 10, 1, -33 );
setRotateKey( spep_5-3 + 19, 1, -33 );
setRotateKey( spep_5-3 + 20, 1, 0 );
setRotateKey( spep_5-3 + 29, 1, 0 );
setRotateKey( spep_5-3 + 30, 1, -33 );
setRotateKey( spep_5-3 + 39, 1, -33 );
setRotateKey( spep_5-3 + 40, 1, 0 );
setRotateKey( spep_5-3 + 49, 1, 0 );
setRotateKey( spep_5-3 + 50, 1, -33 );
setRotateKey( spep_5-3 + 59, 1, -33 );
setRotateKey( spep_5-3 + 60, 1, 0 );
setRotateKey( spep_5-3 + 69, 1, 0 );
setRotateKey( spep_5-3 + 70, 1, -33 );
setRotateKey( spep_5-3 + 79, 1, -33 );
setRotateKey( spep_5-3 + 80, 1, 0 );
setRotateKey( spep_5-3 + 89, 1, 0 );
setRotateKey( spep_5-3 + 90, 1, -33 );
setRotateKey( spep_5 + 96, 1, -33 );

--SE
--環境音
SE020 = playSe( spep_5 + 0, 1176 );
setSeVolumeByWorkId( spep_5 + 0, SE020, 25 );
SE021 = playSe( spep_5 + 0, 1181 );

--ラッシュ
SE022 = playSe( spep_5 + 0, 1003 );
SE023 = playSe( spep_5 + 6, 1010 );
setSeVolumeByWorkId( spep_5 + 6, SE023, 56 );
stopSe( spep_5 + 18, SE023, 6 );
SE024 = playSe( spep_5 + 6, 1000 );
setSeVolumeByWorkId( spep_5 + 6, SE024, 89 );
SE025 = playSe( spep_5 + 20, 1009 );
setSeVolumeByWorkId( spep_5 + 20, SE025, 68 );
stopSe( spep_5 + 30, SE025, 12 );
SE026 = playSe( spep_5 + 20, 1000 );
setSeVolumeByWorkId( spep_5 + 20, SE026, 94 );
SE027 = playSe( spep_5 + 30, 1009 );
setSeVolumeByWorkId( spep_5 + 30, SE027, 62 )
stopSe( spep_5 + 40, SE027, 8 );
SE028 = playSe( spep_5 + 30, 1001 );
setSeVolumeByWorkId( spep_5 + 30, SE028, 62 );
SE029 = playSe( spep_5 + 40, 1012 );
setSeVolumeByWorkId( spep_5 + 40, SE029, 79 );
SE030 = playSe( spep_5 + 40, 1000 );
setSeVolumeByWorkId( spep_5 + 40, SE030, 84 );
SE031 = playSe( spep_5 + 50, 1009 );
setSeVolumeByWorkId( spep_5 + 50, SE031, 75 );
stopSe( spep_5 + 64, SE031, 4 )
SE032 = playSe( spep_5 + 50, 1000 );
setSeVolumeByWorkId( spep_5 + 50, SE032, 87 );
SE033 = playSe( spep_5 + 62, 1009 );
setSeVolumeByWorkId( spep_5 + 62, SE033, 72 );
stopSe( spep_5 + 74, SE033, 8 );
SE034 = playSe( spep_5 + 62, 1001 );
setSeVolumeByWorkId( spep_5 + 62, SE034, 63 );
SE035 = playSe( spep_5 + 74, 1009 );
setSeVolumeByWorkId( spep_5 + 74, SE035, 65 );
stopSe( spep_5 + 86, SE035, 8 );
SE036 = playSe( spep_5 + 74, 1000 );
setSeVolumeByWorkId( spep_5 + 74, SE036, 75 );
SE037 = playSe( spep_5 + 88, 1009 );
setSeVolumeByWorkId( spep_5 + 88, SE037, 79 );
SE038 = playSe( spep_5 + 88, 1000 );
setSeVolumeByWorkId( spep_5 + 88, SE038, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;
------------------------------------------------------
-- 回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_6 + 24, kick, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_6 + 24, kick, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick, 0 );
setEffRotateKey( spep_6 + 24, kick, 0 );
setEffAlphaKey( spep_6 + 0, kick, 255 );
setEffAlphaKey( spep_6 + 22, kick, 255 );
setEffAlphaKey( spep_6 + 23, kick, 255 );
setEffAlphaKey( spep_6 + 24, kick, 0 );

--SE
--蹴り振りかぶる
SE039 = playSe( spep_6 + 0, 1004 );
SE040 = playSe( spep_6 + 0, 1117 );
stopSe( spep_6 + 24, SE040, 12 );
SE041 = playSe( spep_6 + 10, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 24;
------------------------------------------------------
-- エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
effect = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, effect, 0, 0, 0 );
setEffMoveKey( spep_7 + 12, effect, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, effect, -1.0, 1.0 );
setEffScaleKey( spep_7 + 12, effect, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, effect, 0 );
setEffRotateKey( spep_7 + 12, effect, 0 );
setEffAlphaKey( spep_7 + 0, effect, 255 );
setEffAlphaKey( spep_7 + 10, effect, 255 );
setEffAlphaKey( spep_7 + 11, effect, 255 );
setEffAlphaKey( spep_7 + 12, effect, 0 );

--SE
--環境音
stopSe( spep_7 + 2, SE020, 0 );
stopSe( spep_7 + 2, SE021, 0 );

--蹴り
SE042 = playSe( spep_7 + 0, 1233 );
setSeVolumeByWorkId( spep_7 + 0, SE042, 0 );
setSeVolumeByWorkId( spep_7 + 1, SE042, 25 );
setSeVolumeByWorkId( spep_7 + 2, SE042, 50 );
setSeVolumeByWorkId( spep_7 + 3, SE042, 75 );
setSeVolumeByWorkId( spep_7 + 4, SE042, 100 );
setStartTimeMs( SE042,  133 );
SE043 = playSe( spep_7 + 4, 1187 );
setSeVolumeByWorkId( spep_7 + 4, SE043, 79 );
SE044 = playSe( spep_7 + 6, 1190 );
setSeVolumeByWorkId( spep_7 + 6, SE044, 79 );
SE045 = playSe( spep_7 + 6, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 20, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 12;

------------------------------------------------------
-- 敵が吹っ飛びレーザーにあたる
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_8 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_f, 0 );
setEffRotateKey( spep_8 + 56, fly_f, 0 );
setEffAlphaKey( spep_8 + 0, fly_f, 255 );
setEffAlphaKey( spep_8 + 54, fly_f, 255 );
setEffAlphaKey( spep_8 + 55, fly_f, 255 );
setEffAlphaKey( spep_8 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_8 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_b, 0 );
setEffRotateKey( spep_8 + 56, fly_b, 0 );
setEffAlphaKey( spep_8 + 0, fly_b, 255 );
setEffAlphaKey( spep_8 + 54, fly_b, 255 );
setEffAlphaKey( spep_8 + 55, fly_b, 255 );
setEffAlphaKey( spep_8 + 56, fly_b, 0 );

--書き文字
ctbibibi = entryEffectLife( spep_8-3 + 18,  10025, 40, 0x100, -1, 0, 15.9, 219.5 );--ビビビッ
setEffShake( spep_8-3 + 18, ctbibibi, 40, 10 );
setEffMoveKey( spep_8-3 + 18, ctbibibi, 15.9, 219.5 , 0 );
setEffMoveKey( spep_8-3 + 20, ctbibibi, 12.2, 225.2 , 0 );
setEffMoveKey( spep_8-3 + 22, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 24, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 26, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 28, ctbibibi, 9, 220.4 , 0 );
setEffMoveKey( spep_8-3 + 30, ctbibibi, 15.8, 209.8 , 0 );
setEffMoveKey( spep_8-3 + 32, ctbibibi, 21.6, 211.5 , 0 );
setEffMoveKey( spep_8-3 + 34, ctbibibi, 20.9, 229.5 , 0 );
setEffMoveKey( spep_8-3 + 36, ctbibibi, 8.6, 230.9 , 0 );
setEffMoveKey( spep_8-3 + 38, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 40, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 42, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 44, ctbibibi, 9, 220.4 , 0 );
setEffMoveKey( spep_8-3 + 46, ctbibibi, 15.8, 209.8 , 0 );
setEffMoveKey( spep_8-3 + 48, ctbibibi, 21.6, 211.5 , 0 );
setEffMoveKey( spep_8-3 + 50, ctbibibi, 8.6, 230.9 , 0 );
setEffMoveKey( spep_8-3 + 52, ctbibibi, 23.4, 233.2 , 0 );
setEffMoveKey( spep_8-3 + 54, ctbibibi, 12.3, 211.2 , 0 );
setEffMoveKey( spep_8-3 + 56, ctbibibi, 18.5, 225.8 , 0 );
setEffMoveKey( spep_8-3 + 58, ctbibibi, 9, 220.4 , 0 );

setEffScaleKey( spep_8-3 + 18, ctbibibi, 0.01, 0.01 );
setEffScaleKey( spep_8-3 + 20, ctbibibi, 0.81, 0.85 );
setEffScaleKey( spep_8-3 + 22, ctbibibi, 1.62, 1.69 );
setEffScaleKey( spep_8-3 + 58, ctbibibi, 1.62, 1.69 );

setEffRotateKey( spep_8-3 + 18, ctbibibi,19.8 );
setEffRotateKey( spep_8-3 + 20, ctbibibi, 20 );
setEffRotateKey( spep_8-3 + 58, ctbibibi, 20 );

setEffAlphaKey( spep_8-3 + 18, ctbibibi, 255 );
setEffAlphaKey( spep_8-3 + 58, ctbibibi, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 58, 1, 0 );

changeAnime( spep_8 + 0, 1, 105 );
changeAnime( spep_8-3 + 20, 1, 106 );

a=-40;

setMoveKey( spep_8 + 0, 1, 71.7+a, -238.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 50.3, -172.2 , 0 );
setMoveKey( spep_8-3 + 4, 1, 40.6+a, -134.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, 34.3+a, -106 , 0 );
setMoveKey( spep_8-3 + 8, 1, 29.8+a, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, 26.5+a, -60.7 , 0 );
setMoveKey( spep_8-3 + 12, 1, 24+a, -41.9 , 0 );
setMoveKey( spep_8-3 + 14, 1, 22.2+a, -24.8 , 0 );
setMoveKey( spep_8-3 + 16, 1, 21+a, -9.4 , 0 );
setMoveKey( spep_8-3 + 19, 1, 20.4+a, 4.4 , 0 );
setMoveKey( spep_8-3 + 20, 1, -11.9, 10.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, -26.7, -8.6 , 0 );
setMoveKey( spep_8-3 + 24, 1, -13.1, -6.1 , 0 );
setMoveKey( spep_8-3 + 26, 1, -25.2, 6.9 , 0 );
setMoveKey( spep_8-3 + 28, 1, -21.6, -1.9 , 0 );
setMoveKey( spep_8-3 + 30, 1, -21.9, 0.9 , 0 );
setMoveKey( spep_8-3 + 32, 1, -21.8, 2.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, -20.9, -0.5 , 0 );
setMoveKey( spep_8-3 + 36, 1, -20.5, 1.1 , 0 );
setMoveKey( spep_8-3 + 38, 1, -19.6, -2.9 , 0 );
setMoveKey( spep_8-3 + 40, 1, -24.3, 0.2 , 0 );
setMoveKey( spep_8-3 + 42, 1, -20, 2.4 , 0 );
setMoveKey( spep_8-3 + 44, 1, -24.8, 2.6 , 0 );
setMoveKey( spep_8-3 + 46, 1, -20.9, 4.3 , 0 );
setMoveKey( spep_8-3 + 48, 1, -20.4, 3.2 , 0 );
setMoveKey( spep_8-3 + 50, 1, -22.4, 3.3 , 0 );
setMoveKey( spep_8-3 + 52, 1, -21, 0.1 , 0 );
setMoveKey( spep_8-3 + 54, 1, -19.3, 1.7 , 0 );
setMoveKey( spep_8-3 + 56, 1, -19.7, 1.3 , 0 );
setMoveKey( spep_8-1 + 58, 1, -21.5, -2.7 , 0 );

setScaleKey( spep_8 + 0, 1,5.83,5.83);
setScaleKey( spep_8-3 + 4,  1,4.06,4.04);
setScaleKey( spep_8-3 + 6,  1,3.45,3.45);
setScaleKey( spep_8-3 + 8,  1,2.94,2.95);
setScaleKey( spep_8-3 + 10, 1,2.52,2.53);
setScaleKey( spep_8-3 + 12, 1,2.17,2.18);
setScaleKey( spep_8-3 + 14, 1,1.86,1.89);
setScaleKey( spep_8-3 + 16, 1,1.62,1.63);
setScaleKey( spep_8-3 + 19, 1,1.42,1.42);
setScaleKey( spep_8-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8-1 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 19, 1, 0 );
setRotateKey( spep_8-3 + 20, 1, -53.2 );
setRotateKey( spep_8-1 + 58, 1, -53.2 );

--SE
--ネットにかかる
SE046 = playSe( spep_8 + 18, 1043 );
SE047 = playSe( spep_8 + 22, 1038 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;
------------------------------------------------------
-- 悟飯が殴りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
punch = entryEffect( spep_9 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, punch, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, punch, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_9 + 56, punch, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, punch, 0 );
setEffRotateKey( spep_9 + 56, punch, 0 );
setEffAlphaKey( spep_9 + 0, punch, 255 );
setEffAlphaKey( spep_9 + 54, punch, 255 );
setEffAlphaKey( spep_9 + 55, punch, 255 );
setEffAlphaKey( spep_9 + 56, punch, 0 );

--SE
--ネットにかかる
stopSe( spep_9 + 10, SE046, 14 );

--悟飯ダッシュ
SE048 = playSe( spep_9 + 0, 1182 );
SE049 = playSe( spep_9 + 0, 1314 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;
------------------------------------------------------
-- ヒットエフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_10 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_10 + 10, hit, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, hit, -1.0, 1.0 );
setEffScaleKey( spep_10 + 10, hit, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit, 0 );
setEffRotateKey( spep_10 + 10, hit, 0 );
setEffAlphaKey( spep_10 + 0, hit, 255 );
setEffAlphaKey( spep_10 + 8, hit, 255 );
setEffAlphaKey( spep_10 + 9, hit, 255 );
setEffAlphaKey( spep_10 + 10, hit, 0 );

--SE
--悟飯ダッシュ
stopSe( spep_10 + 6, SE049, 10 );

--パンチ
SE050 = playSe( spep_10 + 0, 1003 );
SE051 = playSe( spep_10 + 6, 1120 );
SE052 = playSe( spep_10 + 6, 1009 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 14, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 10;
------------------------------------------------------
-- 悟飯殴る→岩肌に激突
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 120, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_14x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 120, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 120, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 22, 1, 0 );

changeAnime( spep_11 + 0, 1, 105 );

c=-70;

setMoveKey( spep_11 + 0, 1, 144.9+c, -37.3 , 0 );
--setMoveKey( spep_11-3 + 2, 1, 153.6, -37.3 , 0 );
setMoveKey( spep_11-3 + 4, 1, 162.3+c, -37.2 , 0 );
setMoveKey( spep_11-3 + 6, 1, 171.1+c, -37 , 0 );
setMoveKey( spep_11-3 + 8, 1, 243.8+c, -40.6 , 0 );
setMoveKey( spep_11-3 + 10, 1, 320.2+c, -39.2 , 0 );
setMoveKey( spep_11-3 + 12, 1, 239.7+c, -41 , 0 );
setMoveKey( spep_11-3 + 14, 1, 184.7+c, -39 , 0 );
setMoveKey( spep_11-3 + 16, 1, 131.7+c, -33 , 0 );
setMoveKey( spep_11-3 + 18, 1, 113.2+c, -31.2 , 0 );
setMoveKey( spep_11-3 + 20, 1, 101.7+c, -33.8 , 0 );
setMoveKey( spep_11-1 + 22, 1, 104.4+c, -34 , 0 );

setScaleKey( spep_11 + 0, 1,6.55,6.55);
setScaleKey( spep_11-3 + 4,  1,6.24,6.24);
setScaleKey( spep_11-3 + 6,  1,6.09,6.09);
setScaleKey( spep_11-3 + 8,  1,5.44,5.44);
setScaleKey( spep_11-3 + 10, 1,4.8,4.8);
setScaleKey( spep_11-3 + 12, 1,4.63,4.63);
setScaleKey( spep_11-3 + 14, 1,4.35,4.35);
setScaleKey( spep_11-3 + 16, 1,3.88,3.88);
setScaleKey( spep_11-3 + 18, 1,3.27,3.27);
setScaleKey( spep_11-3 + 20, 1,2.52,2.52);
setScaleKey( spep_11-1 + 22, 1,1.6,1.6);

setRotateKey( spep_11 + 0, 1, 26 );
setRotateKey( spep_11-3 + 6, 1, 26 );
setRotateKey( spep_11-3 + 8, 1, 29.5 );
setRotateKey( spep_11-3 + 10, 1, 33 );
setRotateKey( spep_11-3 + 12, 1, 36.5 );
setRotateKey( spep_11-3 + 14, 1, 40 );
setRotateKey( spep_11-3 + 16, 1, 43.5 );
setRotateKey( spep_11-3 + 18, 1, 47 );
setRotateKey( spep_11-3 + 20, 1, 50.5 );
setRotateKey( spep_11-1 + 22, 1, 54 );

--SE
--爆発
SE053 = playSe( spep_11 + 22, 1011 );
setSeVolumeByWorkId( spep_11 + 22, SE053, 87 );
SE054 = playSe( spep_11 + 22, 1168 );
setSeVolumeByWorkId( spep_11 + 22, SE054, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 20 );
endPhase( spep_11 + 110 );
end
