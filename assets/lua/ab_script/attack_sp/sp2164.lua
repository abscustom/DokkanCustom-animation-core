--1020050:グレートサイヤマン(SS2)_爆力魔閃
--sp_effect_a2_00155
--sp2164

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
SP_01=	157054	;--	サイヤマンと敵が空中で向き合う
SP_02=	157056	;--	パンチするサイヤマン
SP_03=	157057	;--	パンチするサイヤマン
SP_04=	157060	;--	キックするサイヤマン
SP_05=	157061	;--	キックするサイヤマン
SP_06=	157064	;--	敵が落ちる
SP_07=	157065	;--	敵が落ちる
SP_08=	157066	;--	下を見るサイヤマン～セリフカットイン～気弾準備
SP_09=	157068	;--	気弾を連打するサイヤマン
SP_10=	157070	;--	気弾を連打するサイヤマン

--エフェクト(てき)
SP_01x=	157055	;--	サイヤマンと敵が空中で向き合う	(敵)
SP_02x=	157058	;--	パンチするサイヤマン	(敵)
SP_03x=	157059	;--	パンチするサイヤマン	(敵)
SP_04x=	157062	;--	キックするサイヤマン	(敵)
SP_05x=	157063	;--	キックするサイヤマン	(敵)
SP_06x=	157064	;--	敵が落ちる	
SP_07x=	157065	;--	敵が落ちる	
SP_08x=	157067	;--	下を見るサイヤマン～セリフカットイン～気弾準備	(敵)
SP_09x=	157069	;--	気弾を連打するサイヤマン	(敵)
SP_10x=	157070	;--	気弾を連打するサイヤマン	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- サイヤマンと敵が空中で向き合う
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 102, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 102, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 102, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 102, confrontation, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

a=30;

setMoveKey( spep_0 + 0, 1, 229.9, -66.3+a , 0 );
setMoveKey( spep_0 + 1, 1, 229.9, -66.3+a , 0 );
setMoveKey( spep_0 + 2, 1, 230.1, -66.3+a , 0 );
setMoveKey( spep_0 + 3, 1, 230.1, -66.3+a , 0 );
setMoveKey( spep_0 + 4, 1, 230.4, -66.2+a , 0 );
setMoveKey( spep_0 + 5, 1, 230.4, -66.2+a , 0 );
setMoveKey( spep_0 + 6, 1, 230.6, -66.3+a , 0 );
setMoveKey( spep_0 + 8, 1, 230.9, -66.2+a , 0 );
setMoveKey( spep_0 + 10, 1, 231.1, -66.3+a , 0 );
setMoveKey( spep_0 + 12, 1, 231.4, -66.3+a , 0 );
setMoveKey( spep_0 + 14, 1, 231.6, -66.3+a , 0 );
setMoveKey( spep_0 + 16, 1, 231.9, -66.3+a , 0 );
setMoveKey( spep_0 + 18, 1, 234.9, -66.4+a , 0 );
setMoveKey( spep_0 + 20, 1, 237.8, -66.5+a , 0 );
setMoveKey( spep_0 + 22, 1, 240.8, -66.5+a , 0 );
setMoveKey( spep_0 + 24, 1, 258.5, -66.9+a , 0 );
setMoveKey( spep_0 + 26, 1, 276.3, -67.3+a , 0 );
setMoveKey( spep_0 + 28, 1, 294, -67.7+a , 0 );
setMoveKey( spep_0 + 30, 1, 311.7, -68.1+a , 0 );
setMoveKey( spep_0 + 32, 1, 467, -71.5+a , 0 );
setMoveKey( spep_0 + 34, 1, 622.4, -74.9+a , 0 );
setMoveKey( spep_0 + 36, 1, 777.7, -78.3+a , 0 );
setMoveKey( spep_0 + 38, 1, 933.1, -81.7+a , 0 );
setMoveKey( spep_0 + 40, 1, 1088.4, -85.2+a , 0 );
setMoveKey( spep_0 + 42, 1, 1229.6, -88.3+a , 0 );
setMoveKey( spep_0 + 44, 1, 1291.5, -89.6+a , 0 );
setMoveKey( spep_0 + 46, 1, 1353.2, -91+a , 0 );
setMoveKey( spep_0 + 48, 1, 1379.4, -91.5+a , 0 );
setMoveKey( spep_0 + 50, 1, 1382.3, -91.6+a , 0 );
setMoveKey( spep_0 + 52, 1, 1385.1, -91.7+a , 0 );
setMoveKey( spep_0 + 54, 1, 1387.9, -91.7+a , 0 );
setMoveKey( spep_0 + 56, 1, 1390.8, -91.8+a , 0 );
setMoveKey( spep_0 + 58, 1, 1393.6, -91.8+a , 0 );
setMoveKey( spep_0 + 60, 1, 1396.4, -91.9+a , 0 );
setMoveKey( spep_0 + 62, 1, 1399.3, -92+a , 0 );
setMoveKey( spep_0 + 64, 1, 1402.1, -92+a , 0 );
setMoveKey( spep_0 + 66, 1, 1405, -92.1+a , 0 );
setMoveKey( spep_0 + 68, 1, 1407.8, -92.2+a , 0 );
setMoveKey( spep_0 + 70, 1, 1410.6, -92.2+a , 0 );
setMoveKey( spep_0 + 72, 1, 1413.4, -92.3+a , 0 );
setMoveKey( spep_0 + 74, 1, 1416.3, -92.3+a , 0 );
setMoveKey( spep_0 + 76, 1, 1419.1, -92.4+a , 0 );
setMoveKey( spep_0 + 78, 1, 1422, -92.5+a , 0 );

setScaleKey( spep_0 + 0, 1,2.2,2.2);
setScaleKey( spep_0 + 1, 1,2.2,2.2);
setScaleKey( spep_0 + 2, 1,2.2,2.2);
setScaleKey( spep_0 + 3, 1,2.2,2.2);
setScaleKey( spep_0 + 4, 1,2.2,2.2);
setScaleKey( spep_0 + 5, 1,2.2,2.2);
setScaleKey( spep_0 + 6, 1,2.2,2.2);
setScaleKey( spep_0 + 22, 1,2.2,2.2);
setScaleKey( spep_0 + 24, 1,2.32,2.32);
setScaleKey( spep_0 + 26, 1,2.37,2.37);
setScaleKey( spep_0 + 28, 1,2.43,2.43);
setScaleKey( spep_0 + 30, 1,2.49,2.49);
setScaleKey( spep_0 + 32, 1,3.19,3.19);
setScaleKey( spep_0 + 34, 1,3.82,3.82);
setScaleKey( spep_0 + 36, 1,4.46,4.46);
setScaleKey( spep_0 + 38, 1,5.16,5.16);
setScaleKey( spep_0 + 40, 1,5.8,5.8);
setScaleKey( spep_0 + 42, 1,6.38,6.38);
setScaleKey( spep_0 + 44, 1,6.67,6.67);
setScaleKey( spep_0 + 46, 1,6.9,6.9);
setScaleKey( spep_0 + 48, 1,7.01,7.01);
setScaleKey( spep_0 + 52, 1,7.01,7.01);
setScaleKey( spep_0 + 54, 1,7.07,7.07);
setScaleKey( spep_0 + 62, 1,7.07,7.07);
setScaleKey( spep_0 + 64, 1,7.13,7.13);
setScaleKey( spep_0 + 72, 1,7.13,7.13);
setScaleKey( spep_0 + 74, 1,7.19,7.19);
setScaleKey( spep_0 + 78, 1,7.19,7.19);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 +78, 1, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--カメラ遷移
SE002 = playSe( spep_0 + 8, 1072,"",0.6  );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 71 );
SE004 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
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
--オーラ
SE005 = playSe( spep_0 + 72, 1036 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 71 );

--ダッシュ
SE006 = playSe( spep_0 + 80, 1182 );
SE007 = playSe( spep_0 + 80, 9 );

--オーラ
SE008 = playSe( spep_0 + 96, 1036 );
setSeVolumeByWorkId( spep_0 + 96, SE008, 56 );
SE009 = playSe( spep_0 + 120, 1036 );
setSeVolumeByWorkId( spep_0 + 120, SE009, 56 );

--次の準備
spep_1=spep_0+102;
------------------------------------------------------
-- パンチするサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 56, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 56, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 56, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 56, punch_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 46, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 28, 1, 106 );

setBlendColor(spep_1+25,1,3,0,0,0,1);
setBlendColor(spep_1+33,1,3,0,0,0,0);

setMoveKey( spep_1 + 0, 1, 450, 11.6 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 410.3, 11.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 373.7, 11.6 , 0 );
setMoveKey( spep_1-3 + 6, 1, 340.2, 11.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 310, 11.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 283, 11.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, 259.1, 11.6 , 0 );
setMoveKey( spep_1-3 + 14, 1, 238.4, 11.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 220.9, 11.6 , 0 );
setMoveKey( spep_1-3 + 18, 1, 206.6, 11.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, 195.4, 11.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 187.5, 11.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 182.7, 11.6 , 0 );
setMoveKey( spep_1-3 + 27, 1, 181.1, 11.6 , 0 );
setMoveKey( spep_1-3 + 28, 1, 197.7, -12.5 , 0 )
setMoveKey( spep_1-3 + 29, 1, 197.7, -12.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 201.4, -12.5 , 0 );
setMoveKey( spep_1-3 + 31, 1, 201.4, -12.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 242, -65.8 , 0 );
setMoveKey( spep_1-3 + 31, 1, 242, -65.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 208.8, -12.5 , 0 );
setMoveKey( spep_1-3 + 35, 1, 208.8, -12.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, 348.6, -26.7 , 0 );
setMoveKey( spep_1-3 + 37, 1, 348.6, -26.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 465.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 39, 1, 465.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 487.3, -91.2 , 0 );
setMoveKey( spep_1-3 + 41, 1, 487.3, -91.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, 513.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 43, 1, 513.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 605.6, -131 , 0 );
setMoveKey( spep_1-3 + 45, 1, 605.6, -131 , 0 );
setMoveKey( spep_1-1 + 46, 1, 664.7, -151 , 0 );

setScaleKey( spep_1 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_1-1 + 46, 1, 1.77,1.77 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 27, 1, 0 );
setRotateKey( spep_1-3 + 28, 1, -29.7 );
setRotateKey( spep_1-3 + 30, 1, -27.6 );
setRotateKey( spep_1-3 + 32, 1, -25.4 );
setRotateKey( spep_1-3 + 34, 1, -23.2 );
setRotateKey( spep_1-3 + 36, 1, 2.4 );
setRotateKey( spep_1-3 + 38, 1, 2.5 );
setRotateKey( spep_1-3 + 40, 1, 2.5 );
setRotateKey( spep_1-3 + 42, 1, 2.6 );
setRotateKey( spep_1-1 + 46, 1, 2.7 );

--SE
--オーラ
SE009 = playSe( spep_1 + 18, 1036 );
setSeVolumeByWorkId( spep_1 + 18, SE009, 56 );

--突っ込んできてパンチ
SE010 = playSe( spep_1 + 26, 1189 );
setSeVolumeByWorkId( spep_1 + 26, SE010, 126 );
SE011 = playSe( spep_1 + 32, 1009 );
SE012 = playSe( spep_1 + 34, 1000 );
SE013 = playSe( spep_1 + 36, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+58 -2;
------------------------------------------------------
-- キックするサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 86, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 86, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 86, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 86, kick_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 52, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 42, 1, 108 );

b=30;

setMoveKey( spep_2 + 0, 1, -310.2, 387.3+b , 0 );
--setMoveKey( spep_2-3 + 2, 1, -285.4, 357.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, -261.9, 328.9+b , 0 );
setMoveKey( spep_2-3 + 6, 1, -239.7, 302+b , 0 );
setMoveKey( spep_2-3 + 8, 1, -218.7, 276.7+b , 0 );
setMoveKey( spep_2-3 + 10, 1, -199.1, 252.9+b , 0 );
setMoveKey( spep_2-3 + 12, 1, -180.6, 230.6+b , 0 );
setMoveKey( spep_2-3 + 14, 1, -163.5, 209.8+b , 0 );
setMoveKey( spep_2-3 + 16, 1, -147.6, 190.6+b , 0 );
setMoveKey( spep_2-3 + 18, 1, -133, 173+b , 0 );
setMoveKey( spep_2-3 + 20, 1, -119.7, 156.8+b , 0 );
setMoveKey( spep_2-3 + 22, 1, -107.6, 142.3+b , 0 );
setMoveKey( spep_2-3 + 24, 1, -96.8, 129.2+b , 0 );
setMoveKey( spep_2-3 + 26, 1, -87.3, 117.7+b , 0 );
setMoveKey( spep_2-3 + 28, 1, -79.1, 107.7+b , 0 );
setMoveKey( spep_2-3 + 30, 1, -72.1, 99.2+b , 0 );
setMoveKey( spep_2-3 + 32, 1, -66.4, 92.3+b , 0 );
setMoveKey( spep_2-3 + 34, 1, -61.9, 87+b , 0 );
setMoveKey( spep_2-3 + 36, 1, -58.7, 83.1+b , 0 );
setMoveKey( spep_2-3 + 38, 1, -56.8, 80.8+b , 0 );
setMoveKey( spep_2-3 + 41, 1, -56.2, 80+b , 0 );
setMoveKey( spep_2-3 + 42, 1, 84.2, -1.2+b , 0 );
setMoveKey( spep_2-3 + 44, 1, 216.9, -124.3+b , 0 );
setMoveKey( spep_2-3 + 46, 1, 330.6, -239.7+b , 0 );
setMoveKey( spep_2-3 + 48, 1, 503.2, -392.4+b , 0 );
setMoveKey( spep_2-3 + 50, 1, 550.1, -516.8+b , 0 );
setMoveKey( spep_2-3 + 52, 1, 598.6, -481.7+b , 0 );

setScaleKey( spep_2 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 41, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 52, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 64 );
setRotateKey( spep_2-3 + 41, 1, 64 );
setRotateKey( spep_2-3 + 42, 1, 53.2 );
setRotateKey( spep_2-3 + 52, 1, 53.2 );

--SE
--敵飛んでいく
SE014 = playSe( spep_2 + 0, 1183 );	
stopSe( spep_2 + 46, SE014, 16 );

--蹴り
SE015 = playSe( spep_2 + 40, 1187 );
setSeVolumeByWorkId( spep_2 + 40, SE015, 67 );
SE016 = playSe( spep_2 + 40, 1001 );
setSeVolumeByWorkId( spep_2 + 40, SE016, 50 );
SE017 = playSe( spep_2 + 42, 1010 );
SE018 = playSe( spep_2 + 44, 1110 );
setSeVolumeByWorkId( spep_2 + 44, SE018, 82 );

--敵落ちる
SE019 = playSe( spep_2 + 76, 1121 );
setSeVolumeByWorkId( spep_2 + 76, SE019, 63 );
SE020 = playSe( spep_2 + 76, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+84;
------------------------------------------------------
-- 敵が落ちる
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,down_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86,down_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,down_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86,down_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,down_f, 0 );
setEffRotateKey( spep_3 + 86,down_f, 0 );
setEffAlphaKey( spep_3 + 0,down_f, 255 );
setEffAlphaKey( spep_3 + 86,down_f, 255 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,down_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86,down_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,down_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86,down_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,down_b, 0 );
setEffRotateKey( spep_3 + 86,down_b, 0 );
setEffAlphaKey( spep_3 + 0,down_b, 255 );
setEffAlphaKey( spep_3 + 86,down_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 22, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

c=10;

setMoveKey( spep_3 + 0, 1, -520.6, 740.5+c , 0 );
--setMoveKey( spep_3 + 2, 1, -516.6, 731.2+b , 0 );
setMoveKey( spep_3-3 + 4, 1, -504.2, 703.3+c , 0 );
setMoveKey( spep_3-3 + 6, 1, -483.7, 656.7+c , 0 );
setMoveKey( spep_3-3 + 8, 1, -454.9, 591.5+c , 0 );
setMoveKey( spep_3-3 + 10, 1, -417.9, 507.7+c , 0 );
setMoveKey( spep_3-3 + 12, 1, -372.7, 405.3+c , 0 );
setMoveKey( spep_3-3 + 14, 1, -319.3, 284.2+c , 0 );
setMoveKey( spep_3-3 + 16, 1, -257.7, 144.5+c , 0 );
setMoveKey( spep_3-3 + 18, 1, -187.8, -13.8+c , 0 );
setMoveKey( spep_3-3 + 20, 1, -109.7, -190.8+c , 0 );
setMoveKey( spep_3-3 + 22, 1, -23.4, -386.4+c , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3-1 + 22, 1, 1.7, 1.7 );

setRotateKey( spep_3 + 0, 1, 97.6 );
setRotateKey( spep_3-1 + 22, 1, 97.6 );

--SE
--敵落ちる
stopSe( spep_3 + 20, SE019, 6 );
stopSe( spep_3 + 20, SE020, 6 );

--地面激突
SE021 = playSe( spep_3 + 20, 1159 );
setSeVolumeByWorkId( spep_3 + 20, SE021, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+84;
------------------------------------------------------
-- 下を見るサイヤマン～セリフカットイン～気弾準備
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 120,tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120,tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,tame, 0 );
setEffRotateKey( spep_4 + 120,tame, 0 );
setEffAlphaKey( spep_4 + 0,tame, 255 );
setEffAlphaKey( spep_4 + 120,tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +30;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -70, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -70,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  -70,  510);

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
--オーラ
SE022 = playSe( spep_4 + 0, 1036 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 63 );
SE023 = playSe( spep_4 + 24, 1036 );
setSeVolumeByWorkId( spep_4 + 24, SE023, 63 );

--顔カットイン
SE024 = playSe( spep_x + 12, 1018 );

--オーラ
SE027 = playSe( spep_4 + 48, 1036 );
setSeVolumeByWorkId( spep_4 + 48, SE027, 63 );

--気弾溜め
SE028 = playSe( spep_4 + 66, 1191 );
SE025 = playSe( spep_4 + 68, 1275 );
setSeVolumeByWorkId( spep_4 + 68, SE025, 0 );
setSeVolumeByWorkId( spep_4 + 69, SE025, 18.7 );
setSeVolumeByWorkId( spep_4 + 70, SE025, 37.4 );
setSeVolumeByWorkId( spep_4 + 71, SE025, 56.1 );
setSeVolumeByWorkId( spep_4 + 72, SE025, 74.8 );
setSeVolumeByWorkId( spep_4 + 73, SE025, 93.5 );
setSeVolumeByWorkId( spep_4 + 74, SE025, 112 );
setStartTimeMs( SE025,  433 );
setPitch( spep_4 + 68, SE025, -200 );
setTimeStretch( SE025, 0.87, 10, 1 );
SE029 = playSe( spep_4 + 70, 1276 );

--オーラ
SE030 = playSe( spep_4 + 72, 1036 );
setSeVolumeByWorkId( spep_4 + 72, SE030, 63 );
SE031 = playSe( spep_4 + 96, 1036 );
setSeVolumeByWorkId( spep_4 + 96, SE031, 63 );

--白フェード
entryFade( spep_4 + 112, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_05 );

--気弾溜め
stopSe( spep_5 + 4, SE028, 0 );
stopSe( spep_5 + 4, SE025, 0 );
stopSe( spep_5 + 4, SE029, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- 気弾を連打するサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_6 + 116,beam, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116,beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,beam, 0 );
setEffRotateKey( spep_6 + 116,beam, 0 );
setEffAlphaKey( spep_6 + 0,beam, 255 );
setEffAlphaKey( spep_6 + 116,beam, 255 );

--連続気弾発射
SE033 = playSe( spep_6 + 0, 1025 );
setSeVolumeByWorkId( spep_6 + 0, SE033, 79 );
stopSe( spep_6 + 18, SE033, 12 );
SE034 = playSe( spep_6 + 0, 1155 );
setSeVolumeByWorkId( spep_6 + 0, SE034, 141 );
setPitch( spep_6 + 0, SE034, -200 );
setTimeStretch( SE034, 0.87, 10, 1 );

--オーラ
SE035 = playSe( spep_6 + 0, 1036 );
setSeVolumeByWorkId( spep_6 + 0, SE035, 71 );

--気弾発射開始
SE036 = playSe( spep_6 + 0, 1021 );
setSeVolumeByWorkId( spep_6 + 0, SE036, 73 );
SE037 = playSe( spep_6 + 18, 1025 );
setSeVolumeByWorkId( spep_6 + 18, SE037, 79 );
stopSe( spep_6 + 38, SE037, 12 );
SE038 = playSe( spep_6 + 18, 1155 );
setSeVolumeByWorkId( spep_6 + 18, SE038, 141 );
setPitch( spep_6 + 18, SE038, -200 );
setTimeStretch( SE038, 0.87, 10, 1 );

--オーラ
SE039 = playSe( spep_6 + 24, 1036 );
setSeVolumeByWorkId( spep_6 + 24, SE039, 71 );

--連続気弾発射
SE040 = playSe( spep_6 + 36, 1025 );
setSeVolumeByWorkId( spep_6 + 36, SE040, 79 );
stopSe( spep_6 + 56, SE040, 12 );
SE041 = playSe( spep_6 + 36, 1155 );
setSeVolumeByWorkId( spep_6 + 36, SE041, 141 );
setPitch( spep_6 + 36, SE041, -200 );
setTimeStretch( SE041, 0.87, 10, 1 );

--オーラ
SE042 = playSe( spep_6 + 48, 1036 );
setSeVolumeByWorkId( spep_6 + 48, SE042, 71 );

--連続気弾発射
SE043 = playSe( spep_6 + 52, 1025 );
setSeVolumeByWorkId( spep_6 + 52, SE043, 79 );
stopSe( spep_6 + 72, SE043, 10 );
SE044 = playSe( spep_6 + 52, 1155 );
setSeVolumeByWorkId( spep_6 + 52, SE044, 141 );
setPitch( spep_6 + 52, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );
SE045 = playSe( spep_6 + 70, 1025 );
setSeVolumeByWorkId( spep_6 + 70, SE045, 79 );
stopSe( spep_6 + 90, SE045, 12 );
SE046 = playSe( spep_6 + 70, 1155 );
setSeVolumeByWorkId( spep_6 + 70, SE046, 141 );
setPitch( spep_6 + 70, SE046, -200 );
setTimeStretch( SE046, 0.87, 10, 1 );

--オーラ
SE047 = playSe( spep_6 + 72, 1036 );
setSeVolumeByWorkId( spep_6 + 72, SE047, 71 );

--連続気弾発射
SE048 = playSe( spep_6 + 90, 1025 );
setSeVolumeByWorkId( spep_6 + 90, SE048, 79 );
stopSe( spep_6 + 110, SE048, 12 );
SE049 = playSe( spep_6 + 90, 1155 );
setSeVolumeByWorkId( spep_6 + 90, SE049, 141 );
setPitch( spep_6 + 90, SE049, -200 );
setTimeStretch( SE049, 0.87, 10, 1 );

--オーラ
SE050 = playSe( spep_6 + 96, 1036 );
setSeVolumeByWorkId( spep_6 + 96, SE050, 71 );

--連続気弾発射
SE051 = playSe( spep_6 + 110, 1025 );
setSeVolumeByWorkId( spep_6 + 110, SE051, 79 );
SE052 = playSe( spep_6 + 110, 1155 );
setSeVolumeByWorkId( spep_6 + 110, SE052, 141 );
setPitch( spep_6 + 110, SE052, -200 );
setTimeStretch( SE052, 0.87, 10, 1 );


-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;
------------------------------------------------------
-- 気弾を連打するサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 150,finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150,finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish, 0 );
setEffRotateKey( spep_7 + 150,finish, 0 );
setEffAlphaKey( spep_7 + 0,finish, 255 );
setEffAlphaKey( spep_7 + 150,finish, 255 );

--SE
SE053 = playSe( spep_7 + 10, 1159 );
SE054 = playSe( spep_7 + 22, 1023 );
SE055 = playSe( spep_7 + 34, 1025 );
setSeVolumeByWorkId( spep_7 + 34, SE055, 82 );
stopSe( spep_7 + 54, SE055, 16 );
SE056 = playSe( spep_7 + 48, 1025 );
setSeVolumeByWorkId( spep_7 + 48, SE056, 80 );
stopSe( spep_7 + 68, SE056, 16 );
SE057 = playSe( spep_7 + 60, 1024 );
setSeVolumeByWorkId( spep_7 + 60, SE057, 90 );
SE058 = playSe( spep_7 + 66, 1025 );
setSeVolumeByWorkId( spep_7 + 66, SE058, 79 );
stopSe( spep_7 + 86, SE058, 18 );
SE059 = playSe( spep_7 + 82, 1025 );
setSeVolumeByWorkId( spep_7 + 82, SE059, 74 );
stopSe( spep_7 + 102, SE059, 16 );--連続爆発


-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 140 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- サイヤマンと敵が空中で向き合う
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 102, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 102, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 102, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 102, confrontation, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

a=30;

setMoveKey( spep_0 + 0, 1, 229.9, -66.3+a , 0 );
setMoveKey( spep_0 + 1, 1, 229.9, -66.3+a , 0 );
setMoveKey( spep_0 + 2, 1, 230.1, -66.3+a , 0 );
setMoveKey( spep_0 + 3, 1, 230.1, -66.3+a , 0 );
setMoveKey( spep_0 + 4, 1, 230.4, -66.2+a , 0 );
setMoveKey( spep_0 + 5, 1, 230.4, -66.2+a , 0 );
setMoveKey( spep_0 + 6, 1, 230.6, -66.3+a , 0 );
setMoveKey( spep_0 + 8, 1, 230.9, -66.2+a , 0 );
setMoveKey( spep_0 + 10, 1, 231.1, -66.3+a , 0 );
setMoveKey( spep_0 + 12, 1, 231.4, -66.3+a , 0 );
setMoveKey( spep_0 + 14, 1, 231.6, -66.3+a , 0 );
setMoveKey( spep_0 + 16, 1, 231.9, -66.3+a , 0 );
setMoveKey( spep_0 + 18, 1, 234.9, -66.4+a , 0 );
setMoveKey( spep_0 + 20, 1, 237.8, -66.5+a , 0 );
setMoveKey( spep_0 + 22, 1, 240.8, -66.5+a , 0 );
setMoveKey( spep_0 + 24, 1, 258.5, -66.9+a , 0 );
setMoveKey( spep_0 + 26, 1, 276.3, -67.3+a , 0 );
setMoveKey( spep_0 + 28, 1, 294, -67.7+a , 0 );
setMoveKey( spep_0 + 30, 1, 311.7, -68.1+a , 0 );
setMoveKey( spep_0 + 32, 1, 467, -71.5+a , 0 );
setMoveKey( spep_0 + 34, 1, 622.4, -74.9+a , 0 );
setMoveKey( spep_0 + 36, 1, 777.7, -78.3+a , 0 );
setMoveKey( spep_0 + 38, 1, 933.1, -81.7+a , 0 );
setMoveKey( spep_0 + 40, 1, 1088.4, -85.2+a , 0 );
setMoveKey( spep_0 + 42, 1, 1229.6, -88.3+a , 0 );
setMoveKey( spep_0 + 44, 1, 1291.5, -89.6+a , 0 );
setMoveKey( spep_0 + 46, 1, 1353.2, -91+a , 0 );
setMoveKey( spep_0 + 48, 1, 1379.4, -91.5+a , 0 );
setMoveKey( spep_0 + 50, 1, 1382.3, -91.6+a , 0 );
setMoveKey( spep_0 + 52, 1, 1385.1, -91.7+a , 0 );
setMoveKey( spep_0 + 54, 1, 1387.9, -91.7+a , 0 );
setMoveKey( spep_0 + 56, 1, 1390.8, -91.8+a , 0 );
setMoveKey( spep_0 + 58, 1, 1393.6, -91.8+a , 0 );
setMoveKey( spep_0 + 60, 1, 1396.4, -91.9+a , 0 );
setMoveKey( spep_0 + 62, 1, 1399.3, -92+a , 0 );
setMoveKey( spep_0 + 64, 1, 1402.1, -92+a , 0 );
setMoveKey( spep_0 + 66, 1, 1405, -92.1+a , 0 );
setMoveKey( spep_0 + 68, 1, 1407.8, -92.2+a , 0 );
setMoveKey( spep_0 + 70, 1, 1410.6, -92.2+a , 0 );
setMoveKey( spep_0 + 72, 1, 1413.4, -92.3+a , 0 );
setMoveKey( spep_0 + 74, 1, 1416.3, -92.3+a , 0 );
setMoveKey( spep_0 + 76, 1, 1419.1, -92.4+a , 0 );
setMoveKey( spep_0 + 78, 1, 1422, -92.5+a , 0 );

setScaleKey( spep_0 + 0, 1,2.2,2.2);
setScaleKey( spep_0 + 1, 1,2.2,2.2);
setScaleKey( spep_0 + 2, 1,2.2,2.2);
setScaleKey( spep_0 + 3, 1,2.2,2.2);
setScaleKey( spep_0 + 4, 1,2.2,2.2);
setScaleKey( spep_0 + 5, 1,2.2,2.2);
setScaleKey( spep_0 + 6, 1,2.2,2.2);
setScaleKey( spep_0 + 22, 1,2.2,2.2);
setScaleKey( spep_0 + 24, 1,2.32,2.32);
setScaleKey( spep_0 + 26, 1,2.37,2.37);
setScaleKey( spep_0 + 28, 1,2.43,2.43);
setScaleKey( spep_0 + 30, 1,2.49,2.49);
setScaleKey( spep_0 + 32, 1,3.19,3.19);
setScaleKey( spep_0 + 34, 1,3.82,3.82);
setScaleKey( spep_0 + 36, 1,4.46,4.46);
setScaleKey( spep_0 + 38, 1,5.16,5.16);
setScaleKey( spep_0 + 40, 1,5.8,5.8);
setScaleKey( spep_0 + 42, 1,6.38,6.38);
setScaleKey( spep_0 + 44, 1,6.67,6.67);
setScaleKey( spep_0 + 46, 1,6.9,6.9);
setScaleKey( spep_0 + 48, 1,7.01,7.01);
setScaleKey( spep_0 + 52, 1,7.01,7.01);
setScaleKey( spep_0 + 54, 1,7.07,7.07);
setScaleKey( spep_0 + 62, 1,7.07,7.07);
setScaleKey( spep_0 + 64, 1,7.13,7.13);
setScaleKey( spep_0 + 72, 1,7.13,7.13);
setScaleKey( spep_0 + 74, 1,7.19,7.19);
setScaleKey( spep_0 + 78, 1,7.19,7.19);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 +78, 1, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--カメラ遷移
SE002 = playSe( spep_0 + 8, 1072,"",0.6  );

--オーラ
SE003 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 71 );
SE004 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE004, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
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
--オーラ
SE005 = playSe( spep_0 + 72, 1036 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 71 );

--ダッシュ
SE006 = playSe( spep_0 + 80, 1182 );
SE007 = playSe( spep_0 + 80, 9 );

--オーラ
SE008 = playSe( spep_0 + 96, 1036 );
setSeVolumeByWorkId( spep_0 + 96, SE008, 56 );
SE009 = playSe( spep_0 + 120, 1036 );
setSeVolumeByWorkId( spep_0 + 120, SE009, 56 );

--次の準備
spep_1=spep_0+102;
------------------------------------------------------
-- パンチするサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 56, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 56, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 56, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 56, punch_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 46, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 28, 1, 106 );

setBlendColor(spep_1+25,1,3,0,0,0,1);
setBlendColor(spep_1+33,1,3,0,0,0,0);

setMoveKey( spep_1 + 0, 1, 450, 11.6 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 410.3, 11.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 373.7, 11.6 , 0 );
setMoveKey( spep_1-3 + 6, 1, 340.2, 11.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 310, 11.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 283, 11.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, 259.1, 11.6 , 0 );
setMoveKey( spep_1-3 + 14, 1, 238.4, 11.6 , 0 );
setMoveKey( spep_1-3 + 16, 1, 220.9, 11.6 , 0 );
setMoveKey( spep_1-3 + 18, 1, 206.6, 11.6 , 0 );
setMoveKey( spep_1-3 + 20, 1, 195.4, 11.6 , 0 );
setMoveKey( spep_1-3 + 22, 1, 187.5, 11.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 182.7, 11.6 , 0 );
setMoveKey( spep_1-3 + 27, 1, 181.1, 11.6 , 0 );
setMoveKey( spep_1-3 + 28, 1, 197.7, -12.5 , 0 )
setMoveKey( spep_1-3 + 29, 1, 197.7, -12.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 201.4, -12.5 , 0 );
setMoveKey( spep_1-3 + 31, 1, 201.4, -12.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 242, -65.8 , 0 );
setMoveKey( spep_1-3 + 31, 1, 242, -65.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 208.8, -12.5 , 0 );
setMoveKey( spep_1-3 + 35, 1, 208.8, -12.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, 348.6, -26.7 , 0 );
setMoveKey( spep_1-3 + 37, 1, 348.6, -26.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 465.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 39, 1, 465.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 40, 1, 487.3, -91.2 , 0 );
setMoveKey( spep_1-3 + 41, 1, 487.3, -91.2 , 0 );
setMoveKey( spep_1-3 + 42, 1, 513.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 43, 1, 513.6, -131.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 605.6, -131 , 0 );
setMoveKey( spep_1-3 + 45, 1, 605.6, -131 , 0 );
setMoveKey( spep_1-1 + 46, 1, 664.7, -151 , 0 );

setScaleKey( spep_1 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_1-1 + 46, 1, 1.77,1.77 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 27, 1, 0 );
setRotateKey( spep_1-3 + 28, 1, -29.7 );
setRotateKey( spep_1-3 + 30, 1, -27.6 );
setRotateKey( spep_1-3 + 32, 1, -25.4 );
setRotateKey( spep_1-3 + 34, 1, -23.2 );
setRotateKey( spep_1-3 + 36, 1, 2.4 );
setRotateKey( spep_1-3 + 38, 1, 2.5 );
setRotateKey( spep_1-3 + 40, 1, 2.5 );
setRotateKey( spep_1-3 + 42, 1, 2.6 );
setRotateKey( spep_1-1 + 46, 1, 2.7 );

--SE
--オーラ
SE009 = playSe( spep_1 + 18, 1036 );
setSeVolumeByWorkId( spep_1 + 18, SE009, 56 );

--突っ込んできてパンチ
SE010 = playSe( spep_1 + 26, 1189 );
setSeVolumeByWorkId( spep_1 + 26, SE010, 126 );
SE011 = playSe( spep_1 + 32, 1009 );
SE012 = playSe( spep_1 + 34, 1000 );
SE013 = playSe( spep_1 + 36, 1110 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+58 -2;
------------------------------------------------------
-- キックするサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 86, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 86, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 86, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 86, kick_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 52, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 42, 1, 108 );

b=30;

setMoveKey( spep_2 + 0, 1, -310.2, 387.3+b , 0 );
--setMoveKey( spep_2-3 + 2, 1, -285.4, 357.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, -261.9, 328.9+b , 0 );
setMoveKey( spep_2-3 + 6, 1, -239.7, 302+b , 0 );
setMoveKey( spep_2-3 + 8, 1, -218.7, 276.7+b , 0 );
setMoveKey( spep_2-3 + 10, 1, -199.1, 252.9+b , 0 );
setMoveKey( spep_2-3 + 12, 1, -180.6, 230.6+b , 0 );
setMoveKey( spep_2-3 + 14, 1, -163.5, 209.8+b , 0 );
setMoveKey( spep_2-3 + 16, 1, -147.6, 190.6+b , 0 );
setMoveKey( spep_2-3 + 18, 1, -133, 173+b , 0 );
setMoveKey( spep_2-3 + 20, 1, -119.7, 156.8+b , 0 );
setMoveKey( spep_2-3 + 22, 1, -107.6, 142.3+b , 0 );
setMoveKey( spep_2-3 + 24, 1, -96.8, 129.2+b , 0 );
setMoveKey( spep_2-3 + 26, 1, -87.3, 117.7+b , 0 );
setMoveKey( spep_2-3 + 28, 1, -79.1, 107.7+b , 0 );
setMoveKey( spep_2-3 + 30, 1, -72.1, 99.2+b , 0 );
setMoveKey( spep_2-3 + 32, 1, -66.4, 92.3+b , 0 );
setMoveKey( spep_2-3 + 34, 1, -61.9, 87+b , 0 );
setMoveKey( spep_2-3 + 36, 1, -58.7, 83.1+b , 0 );
setMoveKey( spep_2-3 + 38, 1, -56.8, 80.8+b , 0 );
setMoveKey( spep_2-3 + 41, 1, -56.2, 80+b , 0 );
setMoveKey( spep_2-3 + 42, 1, 84.2, -1.2+b , 0 );
setMoveKey( spep_2-3 + 44, 1, 216.9, -124.3+b , 0 );
setMoveKey( spep_2-3 + 46, 1, 330.6, -239.7+b , 0 );
setMoveKey( spep_2-3 + 48, 1, 503.2, -392.4+b , 0 );
setMoveKey( spep_2-3 + 50, 1, 550.1, -516.8+b , 0 );
setMoveKey( spep_2-3 + 52, 1, 598.6, -481.7+b , 0 );

setScaleKey( spep_2 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 41, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 52, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 64 );
setRotateKey( spep_2-3 + 41, 1, 64 );
setRotateKey( spep_2-3 + 42, 1, 53.2 );
setRotateKey( spep_2-3 + 52, 1, 53.2 );

--SE
--敵飛んでいく
SE014 = playSe( spep_2 + 0, 1183 );	
stopSe( spep_2 + 46, SE014, 16 );

--蹴り
SE015 = playSe( spep_2 + 40, 1187 );
setSeVolumeByWorkId( spep_2 + 40, SE015, 67 );
SE016 = playSe( spep_2 + 40, 1001 );
setSeVolumeByWorkId( spep_2 + 40, SE016, 50 );
SE017 = playSe( spep_2 + 42, 1010 );
SE018 = playSe( spep_2 + 44, 1110 );
setSeVolumeByWorkId( spep_2 + 44, SE018, 82 );

--敵落ちる
SE019 = playSe( spep_2 + 76, 1121 );
setSeVolumeByWorkId( spep_2 + 76, SE019, 63 );
SE020 = playSe( spep_2 + 76, 1183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+84;
------------------------------------------------------
-- 敵が落ちる
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,down_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86,down_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,down_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86,down_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,down_f, 0 );
setEffRotateKey( spep_3 + 86,down_f, 0 );
setEffAlphaKey( spep_3 + 0,down_f, 255 );
setEffAlphaKey( spep_3 + 86,down_f, 255 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,down_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86,down_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,down_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86,down_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,down_b, 0 );
setEffRotateKey( spep_3 + 86,down_b, 0 );
setEffAlphaKey( spep_3 + 0,down_b, 255 );
setEffAlphaKey( spep_3 + 86,down_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 22, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

c=10;

setMoveKey( spep_3 + 0, 1, -520.6, 740.5+c , 0 );
--setMoveKey( spep_3 + 2, 1, -516.6, 731.2+b , 0 );
setMoveKey( spep_3-3 + 4, 1, -504.2, 703.3+c , 0 );
setMoveKey( spep_3-3 + 6, 1, -483.7, 656.7+c , 0 );
setMoveKey( spep_3-3 + 8, 1, -454.9, 591.5+c , 0 );
setMoveKey( spep_3-3 + 10, 1, -417.9, 507.7+c , 0 );
setMoveKey( spep_3-3 + 12, 1, -372.7, 405.3+c , 0 );
setMoveKey( spep_3-3 + 14, 1, -319.3, 284.2+c , 0 );
setMoveKey( spep_3-3 + 16, 1, -257.7, 144.5+c , 0 );
setMoveKey( spep_3-3 + 18, 1, -187.8, -13.8+c , 0 );
setMoveKey( spep_3-3 + 20, 1, -109.7, -190.8+c , 0 );
setMoveKey( spep_3-3 + 22, 1, -23.4, -386.4+c , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3-1 + 22, 1, 1.7, 1.7 );

setRotateKey( spep_3 + 0, 1, 97.6 );
setRotateKey( spep_3-1 + 22, 1, 97.6 );

--SE
--敵落ちる
stopSe( spep_3 + 20, SE019, 6 );
stopSe( spep_3 + 20, SE020, 6 );

--地面激突
SE021 = playSe( spep_3 + 20, 1159 );
setSeVolumeByWorkId( spep_3 + 20, SE021, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+84;
------------------------------------------------------
-- 下を見るサイヤマン～セリフカットイン～気弾準備
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 120,tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120,tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,tame, 0 );
setEffRotateKey( spep_4 + 120,tame, 0 );
setEffAlphaKey( spep_4 + 0,tame, 255 );
setEffAlphaKey( spep_4 + 120,tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_4 +30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 90, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  90,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  90,  510);

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
--オーラ
SE022 = playSe( spep_4 + 0, 1036 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 63 );
SE023 = playSe( spep_4 + 24, 1036 );
setSeVolumeByWorkId( spep_4 + 24, SE023, 63 );

--顔カットイン
SE024 = playSe( spep_x + 12, 1018 );

--オーラ
SE027 = playSe( spep_4 + 48, 1036 );
setSeVolumeByWorkId( spep_4 + 48, SE027, 63 );

--気弾溜め
SE028 = playSe( spep_4 + 66, 1191 );
SE025 = playSe( spep_4 + 68, 1275 );
setSeVolumeByWorkId( spep_4 + 68, SE025, 0 );
setSeVolumeByWorkId( spep_4 + 69, SE025, 18.7 );
setSeVolumeByWorkId( spep_4 + 70, SE025, 37.4 );
setSeVolumeByWorkId( spep_4 + 71, SE025, 56.1 );
setSeVolumeByWorkId( spep_4 + 72, SE025, 74.8 );
setSeVolumeByWorkId( spep_4 + 73, SE025, 93.5 );
setSeVolumeByWorkId( spep_4 + 74, SE025, 112 );
setStartTimeMs( SE025,  433 );
setPitch( spep_4 + 68, SE025, -200 );
setTimeStretch( SE025, 0.87, 10, 1 );
SE029 = playSe( spep_4 + 70, 1276 );

--オーラ
SE030 = playSe( spep_4 + 72, 1036 );
setSeVolumeByWorkId( spep_4 + 72, SE030, 63 );
SE031 = playSe( spep_4 + 96, 1036 );
setSeVolumeByWorkId( spep_4 + 96, SE031, 63 );

--白フェード
entryFade( spep_4 + 112, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5=spep_4+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--気弾溜め
stopSe( spep_5 + 4, SE028, 0 );
stopSe( spep_5 + 4, SE025, 0 );
stopSe( spep_5 + 4, SE029, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;
------------------------------------------------------
-- 気弾を連打するサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_6 + 116,beam, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116,beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,beam, 0 );
setEffRotateKey( spep_6 + 116,beam, 0 );
setEffAlphaKey( spep_6 + 0,beam, 255 );
setEffAlphaKey( spep_6 + 116,beam, 255 );

--連続気弾発射
SE033 = playSe( spep_6 + 0, 1025 );
setSeVolumeByWorkId( spep_6 + 0, SE033, 79 );
stopSe( spep_6 + 18, SE033, 12 );
SE034 = playSe( spep_6 + 0, 1155 );
setSeVolumeByWorkId( spep_6 + 0, SE034, 141 );
setPitch( spep_6 + 0, SE034, -200 );
setTimeStretch( SE034, 0.87, 10, 1 );

--オーラ
SE035 = playSe( spep_6 + 0, 1036 );
setSeVolumeByWorkId( spep_6 + 0, SE035, 71 );

--気弾発射開始
SE036 = playSe( spep_6 + 0, 1021 );
setSeVolumeByWorkId( spep_6 + 0, SE036, 73 );
SE037 = playSe( spep_6 + 18, 1025 );
setSeVolumeByWorkId( spep_6 + 18, SE037, 79 );
stopSe( spep_6 + 38, SE037, 12 );
SE038 = playSe( spep_6 + 18, 1155 );
setSeVolumeByWorkId( spep_6 + 18, SE038, 141 );
setPitch( spep_6 + 18, SE038, -200 );
setTimeStretch( SE038, 0.87, 10, 1 );

--オーラ
SE039 = playSe( spep_6 + 24, 1036 );
setSeVolumeByWorkId( spep_6 + 24, SE039, 71 );

--連続気弾発射
SE040 = playSe( spep_6 + 36, 1025 );
setSeVolumeByWorkId( spep_6 + 36, SE040, 79 );
stopSe( spep_6 + 56, SE040, 12 );
SE041 = playSe( spep_6 + 36, 1155 );
setSeVolumeByWorkId( spep_6 + 36, SE041, 141 );
setPitch( spep_6 + 36, SE041, -200 );
setTimeStretch( SE041, 0.87, 10, 1 );

--オーラ
SE042 = playSe( spep_6 + 48, 1036 );
setSeVolumeByWorkId( spep_6 + 48, SE042, 71 );

--連続気弾発射
SE043 = playSe( spep_6 + 52, 1025 );
setSeVolumeByWorkId( spep_6 + 52, SE043, 79 );
stopSe( spep_6 + 72, SE043, 10 );
SE044 = playSe( spep_6 + 52, 1155 );
setSeVolumeByWorkId( spep_6 + 52, SE044, 141 );
setPitch( spep_6 + 52, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );
SE045 = playSe( spep_6 + 70, 1025 );
setSeVolumeByWorkId( spep_6 + 70, SE045, 79 );
stopSe( spep_6 + 90, SE045, 12 );
SE046 = playSe( spep_6 + 70, 1155 );
setSeVolumeByWorkId( spep_6 + 70, SE046, 141 );
setPitch( spep_6 + 70, SE046, -200 );
setTimeStretch( SE046, 0.87, 10, 1 );

--オーラ
SE047 = playSe( spep_6 + 72, 1036 );
setSeVolumeByWorkId( spep_6 + 72, SE047, 71 );

--連続気弾発射
SE048 = playSe( spep_6 + 90, 1025 );
setSeVolumeByWorkId( spep_6 + 90, SE048, 79 );
stopSe( spep_6 + 110, SE048, 12 );
SE049 = playSe( spep_6 + 90, 1155 );
setSeVolumeByWorkId( spep_6 + 90, SE049, 141 );
setPitch( spep_6 + 90, SE049, -200 );
setTimeStretch( SE049, 0.87, 10, 1 );

--オーラ
SE050 = playSe( spep_6 + 96, 1036 );
setSeVolumeByWorkId( spep_6 + 96, SE050, 71 );

--連続気弾発射
SE051 = playSe( spep_6 + 110, 1025 );
setSeVolumeByWorkId( spep_6 + 110, SE051, 79 );
SE052 = playSe( spep_6 + 110, 1155 );
setSeVolumeByWorkId( spep_6 + 110, SE052, 141 );
setPitch( spep_6 + 110, SE052, -200 );
setTimeStretch( SE052, 0.87, 10, 1 );


-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;
------------------------------------------------------
-- 気弾を連打するサイヤマン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 150,finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150,finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish, 0 );
setEffRotateKey( spep_7 + 150,finish, 0 );
setEffAlphaKey( spep_7 + 0,finish, 255 );
setEffAlphaKey( spep_7 + 150,finish, 255 );

--SE
SE053 = playSe( spep_7 + 10, 1159 );
SE054 = playSe( spep_7 + 22, 1023 );
SE055 = playSe( spep_7 + 34, 1025 );
setSeVolumeByWorkId( spep_7 + 34, SE055, 82 );
stopSe( spep_7 + 54, SE055, 16 );
SE056 = playSe( spep_7 + 48, 1025 );
setSeVolumeByWorkId( spep_7 + 48, SE056, 80 );
stopSe( spep_7 + 68, SE056, 16 );
SE057 = playSe( spep_7 + 60, 1024 );
setSeVolumeByWorkId( spep_7 + 60, SE057, 90 );
SE058 = playSe( spep_7 + 66, 1025 );
setSeVolumeByWorkId( spep_7 + 66, SE058, 79 );
stopSe( spep_7 + 86, SE058, 18 );
SE059 = playSe( spep_7 + 82, 1025 );
setSeVolumeByWorkId( spep_7 + 82, SE059, 74 );
stopSe( spep_7 + 102, SE059, 16 );--連続爆発


-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 140 );
end