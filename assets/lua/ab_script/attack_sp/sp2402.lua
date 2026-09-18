--1024990:パン(GT)_ユニオンシューティング(ユニット必殺)
--sp_effect_a1_00362
--sp2402

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
SP_01=	160231	;--	崖ジャンプ
SP_02=	160232	;--	パン着地→サマーソルト
SP_03=	160233	;--	パン着地→サマーソルト
SP_04=	160234	;--	飛ぶトランクス→瞬間移動
SP_05=	160235	;--	蹴るトランクス、パン近寄る
SP_06=	160236	;--	蹴るトランクス、パン近寄る
SP_07=	160237	;--	台詞カットイン
SP_08=	160238	;--	台詞カットイン
SP_09=	160239	;--	敵に迫る気弾→爆発
SP_10=	160240	;--	敵に迫る気弾→爆発

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
setEffScaleKey( spep_1 + 114,kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_f, 0 );
setEffRotateKey( spep_1 + 114,kick_f, 0 );
setEffAlphaKey( spep_1 + 0,kick_f, 255 );
setEffAlphaKey( spep_1 + 112,kick_f, 255 );
setEffAlphaKey( spep_1 + 113,kick_f, 255 );
setEffAlphaKey( spep_1 + 114,kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 114,kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 114,kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_b, 0 );
setEffRotateKey( spep_1 + 114,kick_b, 0 );
setEffAlphaKey( spep_1 + 0,kick_b, 255 );
setEffAlphaKey( spep_1 + 112,kick_b, 255 );
setEffAlphaKey( spep_1 + 113,kick_b, 255 );
setEffAlphaKey( spep_1 + 114,kick_b, 0 );

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
entryFadeBg( spep_1 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 114;
------------------------------------------------------
--飛ぶトランクス→瞬間移動
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,fly, 0, 0, 0 );
setEffMoveKey( spep_2 + 56,fly, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,fly, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56,fly, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,fly, 0 );
setEffRotateKey( spep_2 + 56,fly, 0 );
setEffAlphaKey( spep_2 + 0,fly, 255 );
setEffAlphaKey( spep_2 + 54,fly, 255 );
setEffAlphaKey( spep_2 + 55,fly, 255 );
setEffAlphaKey( spep_2 + 56,fly, 0 );

--SE
--トランクス飛んでくる
SE021 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 0, 9, "",spep_2 + 66, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 0, SE022, 74 );

--瞬間移動
SE023 = playSeVer2( spep_2 + 22, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--蹴るトランクス、パン近寄る
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,attack_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 100,attack_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100,attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,attack_f, 0 );
setEffRotateKey( spep_3 + 100,attack_f, 0 );
setEffAlphaKey( spep_3 + 0,attack_f, 255 );
setEffAlphaKey( spep_3 + 98,attack_f, 255 );
setEffAlphaKey( spep_3 + 99,attack_f, 255 );
setEffAlphaKey( spep_3 + 100,attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,attack_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 100,attack_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100,attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,attack_b, 0 );
setEffRotateKey( spep_3 + 100,attack_b, 0 );
setEffAlphaKey( spep_3 + 0,attack_b, 255 );
setEffAlphaKey( spep_3 + 98,attack_b, 255 );
setEffAlphaKey( spep_3 + 99,attack_b, 255 );
setEffAlphaKey( spep_3 + 100,attack_b, 0 );

--敵の動き
shuchusen1 = entryEffectLife( spep_3-3 + 34,  906, 12, 0x100, -1, 0, 0, 8 );
setEffShake( spep_3-3 + 34, shuchusen1, 12, 20 );
setEffMoveKey( spep_3-3 + 34, shuchusen1, 0, 8 , 0 );
setEffMoveKey( spep_3-3 + 46, shuchusen1, 0, 8 , 0 );

setEffScaleKey( spep_3-3 + 34, shuchusen1, 1.4, 1.75 );
setEffScaleKey( spep_3-3 + 46, shuchusen1, 1.4, 1.75 );

setEffRotateKey( spep_3-3 + 34, shuchusen1, 0 );
setEffRotateKey( spep_3-3 + 46, shuchusen1, 0 );

setEffAlphaKey( spep_3-3 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 42, shuchusen1, 255 );
setEffAlphaKey( spep_3-3 + 44, shuchusen1, 128 );
setEffAlphaKey( spep_3-3 + 46, shuchusen1, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 70, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );
changeAnime( spep_3-3 + 34, 1, 105 );

setMoveKey( spep_3 + 0, 1, -299.6, 182.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -290, 174.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, -280.5, 167.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, -271, 159.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, -261.4, 151.8 , 0 );
setMoveKey( spep_3-3 + 10, 1, -251.7, 143.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, -241.6, 135.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, -231.1, 127.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, -220.1, 118.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, -208.4, 108.9 , 0 );
setMoveKey( spep_3-3 + 20, 1, -195.9, 98.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, -182.5, 87.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, -167.9, 76.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -151.8, 63.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, -134.1, 48.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, -114.3, 32.8 , 0 );
setMoveKey( spep_3-3 + 33, 1, -53.4, 53.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 2.1, 16 , 0 );
setMoveKey( spep_3-3 + 36, 1, -26, -49.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, -50.4, -12.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 2.1, 78.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 26.8, 66.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 3.5, 37.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, 37.9, 66.2 , 0 );
setMoveKey( spep_3-3 + 48, 1, 101.4, 93.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 145.7, 101.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 189.9, 109 , 0 );
setMoveKey( spep_3-3 + 54, 1, 234.2, 116.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, 271.1, 119.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 308.1, 121.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 345, 124.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 382, 126.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 418.9, 129.2 , 0 );
setMoveKey( spep_3-3 + 66, 1, 455.9, 131.7 , 0 );
setMoveKey( spep_3-3 + 68, 1, 492.8, 134.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 529.7, 136.7 , 0 );

setScaleKey( spep_3 + 0, 1, 0.42,0.42);
setScaleKey( spep_3-3 + 4, 1, 0.46,0.46);
setScaleKey( spep_3-3 + 6, 1, 0.48,0.48);
setScaleKey( spep_3-3 + 8, 1, 0.5,0.5);
setScaleKey( spep_3-3 + 10, 1, 0.52,0.52);
setScaleKey( spep_3-3 + 12, 1, 0.55,0.55);
setScaleKey( spep_3-3 + 14, 1, 0.57,0.57);
setScaleKey( spep_3-3 + 16, 1, 0.58,0.58);
setScaleKey( spep_3-3 + 18, 1, 0.62,0.62);
setScaleKey( spep_3-3 + 20, 1, 0.64,0.64);
setScaleKey( spep_3-3 + 22, 1, 0.67,0.67);
setScaleKey( spep_3-3 + 24, 1, 0.7,0.7);
setScaleKey( spep_3-3 + 26, 1, 0.74,0.74);
setScaleKey( spep_3-3 + 28, 1, 0.78,0.78);
setScaleKey( spep_3-3 + 30, 1, 0.81,0.81);
setScaleKey( spep_3-3 + 33, 1, 0.86,0.86);
setScaleKey( spep_3-3 + 34, 1, 2.36,2.36);
setScaleKey( spep_3-3 + 36, 1, 2.3,2.3);
setScaleKey( spep_3-3 + 38, 1, 2.25,2.25);
setScaleKey( spep_3-3 + 40, 1, 2.19,2.19);
setScaleKey( spep_3-3 + 42, 1, 2.14,2.14);
setScaleKey( spep_3-3 + 44, 1, 2.08,2.08);
setScaleKey( spep_3-3 + 46, 1, 2.04,2.04);
setScaleKey( spep_3-3 + 48, 1, 1.98,1.98);
setScaleKey( spep_3-3 + 50, 1, 1.9,1.9);
setScaleKey( spep_3-3 + 52, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 54, 1, 1.77,1.77);
setScaleKey( spep_3-3 + 56, 1, 1.7,1.7);
setScaleKey( spep_3-3 + 58, 1, 1.62,1.62);
setScaleKey( spep_3-3 + 60, 1, 1.53,1.53);
setScaleKey( spep_3-3 + 62, 1, 1.46,1.46);
setScaleKey( spep_3-3 + 64, 1, 1.38,1.38);
setScaleKey( spep_3-3 + 66, 1, 1.3,1.3);
setScaleKey( spep_3-3 + 68, 1, 1.22,1.22);
setScaleKey( spep_3-3 + 70, 1, 1.14,1.14);

setRotateKey( spep_3 + 0, 1, -9.9 );
--setRotateKey( spep_3-3 + 2, 1, -9.3 );
setRotateKey( spep_3-3 + 4, 1, -8.6 );
setRotateKey( spep_3-3 + 6, 1, -7.9 );
setRotateKey( spep_3-3 + 8, 1, -7.2 );
setRotateKey( spep_3-3 + 10, 1, -6.6 );
setRotateKey( spep_3-3 + 12, 1, -5.8 );
setRotateKey( spep_3-3 + 14, 1, -5.1 );
setRotateKey( spep_3-3 + 16, 1, -4.3 );
setRotateKey( spep_3-3 + 18, 1, -3.5 );
setRotateKey( spep_3-3 + 20, 1, -2.6 );
setRotateKey( spep_3-3 + 22, 1, -1.7 );
setRotateKey( spep_3-3 + 24, 1, -0.6 );
setRotateKey( spep_3-3 + 26, 1, 0.5 );
setRotateKey( spep_3-3 + 28, 1, 1.8 );
setRotateKey( spep_3-3 + 30, 1, 3.2 );
setRotateKey( spep_3-3 + 33, 1, 4.7 );
setRotateKey( spep_3-3 + 34, 1, 13.7 );
setRotateKey( spep_3-3 + 36, 1, 14.8 );
setRotateKey( spep_3-3 + 38, 1, 15.9 );
setRotateKey( spep_3-3 + 40, 1, 17 );
setRotateKey( spep_3-3 + 42, 1, 18.1 );
setRotateKey( spep_3-3 + 44, 1, 19.2 );
setRotateKey( spep_3-3 + 46, 1, 20.4 );
setRotateKey( spep_3-3 + 48, 1, 21.7 );
setRotateKey( spep_3-3 + 50, 1, 23.1 );
setRotateKey( spep_3-3 + 52, 1, 24.5 );
setRotateKey( spep_3-3 + 54, 1, 25.9 );
setRotateKey( spep_3-3 + 56, 1, 30.4 );
setRotateKey( spep_3-3 + 58, 1, 34.9 );
setRotateKey( spep_3-3 + 60, 1, 39.4 );
setRotateKey( spep_3-3 + 62, 1, 43.9 );
setRotateKey( spep_3-3 + 64, 1, 48.4 );
setRotateKey( spep_3-3 + 66, 1, 52.9 );
setRotateKey( spep_3-3 + 68, 1, 57.4 );
setRotateKey( spep_3-3 + 70, 1, 61.9 );

--SE
--瞬間移動
SE024 = playSeVer2( spep_3 + 2, 1109, "", 0, 0, 0, -1);

--トランクスキック
SE025 = playSeVer2( spep_3 + 24, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 30, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 30, 1010, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 30, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE028, 69 );

--パンちゃん飛んでくる
SE029 = playSeVer2( spep_3 + 60, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 100;
------------------------------------------------------
--台詞カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,cut_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 184,cut_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,cut_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 184,cut_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,cut_f, 0 );
setEffRotateKey( spep_4 + 184,cut_f, 0 );
setEffAlphaKey( spep_4 + 0,cut_f, 255 );
setEffAlphaKey( spep_4 + 184,cut_f, 255 );

-- ** エフェクト等 ** --
cut_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,cut_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 184,cut_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,cut_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 184,cut_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,cut_b, 0 );
setEffRotateKey( spep_4 + 184,cut_b, 0 );
setEffAlphaKey( spep_4 + 0,cut_b, 255 );
setEffAlphaKey( spep_4 + 184,cut_b, 255 );

--SE
--顔カットイン
SE030 = playSeVer2( spep_4 + 14, 1018, "", 0, 0, 0, -1);

--二人構える
SE031 = playSeVer2( spep_4 + 24, 1013, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 24, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 24, SE032, 74 );

--気弾溜め
SE033 = playSeVer2( spep_4 + 46, 1296, "",spep_4 + 192, 0, 8, -1);
SE034 = playSeVer2( spep_4 + 46, 1282, "",spep_4 + 192, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 46, SE034, 58 );
SE035 = playSeVer2( spep_4 + 46, 1037, "", spep_4 + 192, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 46, SE035, 62 );
setTimeStretch( SE035, 1.18, 30, 4 );

--トランクス顔カットイン
SE036 = playSeVer2( spep_4 + 106, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_4 +176 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 184;
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
    SE_CUTIN = playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_5, SE_05);
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
-- playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94;
------------------------------------------------------
--敵に迫る気弾→爆発
------------------------------------------------------
-- ** エフェクト等 ** --
fin_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0,fin_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 206,fin_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,fin_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 206,fin_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,fin_f, 0 );
setEffRotateKey( spep_6 + 206,fin_f, 0 );
setEffAlphaKey( spep_6 + 0,fin_f, 255 );
setEffAlphaKey( spep_6 + 206,fin_f, 255 );

-- ** エフェクト等 ** --
fin_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0,fin_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 206,fin_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,fin_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 206,fin_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,fin_b, 0 );
setEffRotateKey( spep_6 + 206,fin_b, 0 );
setEffAlphaKey( spep_6 + 0,fin_b, 255 );
setEffAlphaKey( spep_6 + 206,fin_b, 255 );

--敵の動き
setDisp( spep_6-3 + 0, 1, 1 );
setDisp( spep_6-1 + 84+2, 1, 0 );

changeAnime( spep_6-3 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 0.7, 282.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 0.7, 282.1 , 0 );
setMoveKey( spep_6-3 + 10, 1, -37.5, 313.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, -37.6, 306.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 38.4, 230.8 , 0 );
setMoveKey( spep_6-3 + 16, 1, -49.2, 262.2 , 0 );
setMoveKey( spep_6-3 + 18, 1, -49.4, 255.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 26.6, 251.8 , 0 );
setMoveKey( spep_6-3 + 22, 1, 26.4, 245.1 , 0 );
setMoveKey( spep_6-3 + 24, 1, -15.4, 237.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, 11.1, 249.9 , 0 );
setMoveKey( spep_6-3 + 28, 1, -0.5, 235.7 , 0 );
setMoveKey( spep_6-3 + 30, 1, -0.7, 229 , 0 );
setMoveKey( spep_6-3 + 32, 1, -0.9, 222.4 , 0 );
setMoveKey( spep_6-3 + 34, 1, -1, 215.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, -1.2, 209.1 , 0 );
setMoveKey( spep_6-3 + 38, 1, -1.4, 202.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -1.5, 195.9 , 0 );
setMoveKey( spep_6-3 + 42, 1, -1.7, 189.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, -1.9, 182.6 , 0 );
setMoveKey( spep_6-3 + 46, 1, -2.1, 176 , 0 );
setMoveKey( spep_6-3 + 48, 1, -2.3, 169.3 , 0 );
setMoveKey( spep_6-3 + 50, 1, -2.5, 162.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, -2.6, 156 , 0 );
setMoveKey( spep_6-3 + 54, 1, -2.8, 149.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, -3, 142.7 , 0 );
setMoveKey( spep_6-3 + 58, 1, -3.2, 136.1 , 0 );
setMoveKey( spep_6-3 + 60, 1, -3.4, 129.4 , 0 );
setMoveKey( spep_6-3 + 62, 1, -3.6, 122.8 , 0 );
setMoveKey( spep_6-3 + 64, 1, -3.8, 116.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, -4, 109.5 , 0 );
setMoveKey( spep_6-3 + 68, 1, -4.2, 102.8 , 0 );
setMoveKey( spep_6-3 + 70, 1, -4.4, 96.2 , 0 );
setMoveKey( spep_6-3 + 72, 1, -4.6, 89.5 , 0 );
setMoveKey( spep_6-3 + 74, 1, -4.8, 82.8 , 0 );
setMoveKey( spep_6-3 + 76, 1, -5, 76.2 , 0 );
setMoveKey( spep_6-3 + 78, 1, -5.2, 69.5 , 0 );
setMoveKey( spep_6-3 + 80, 1, -5.4, 62.9 , 0 );
setMoveKey( spep_6-3 + 82, 1, -5.6, 56.2 , 0 );
setMoveKey( spep_6-1 + 84, 1, -5.8, 49.5 , 0 );

setScaleKey( spep_6 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_6-3 + 14, 1, 0.41, 0.41 );
setScaleKey( spep_6-3 + 16, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 20, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 22, 1, 0.43, 0.43 );
setScaleKey( spep_6-3 + 26, 1, 0.43, 0.43 );
setScaleKey( spep_6-3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_6-3 + 30, 1, 0.44, 0.44 );
setScaleKey( spep_6-3 + 32, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 38, 1, 0.46, 0.46 );
setScaleKey( spep_6-3 + 40, 1, 0.46, 0.46 );
setScaleKey( spep_6-3 + 42, 1, 0.47, 0.47 );
setScaleKey( spep_6-3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_6-3 + 46, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_6-3 + 50, 1, 0.55, 0.55 );
setScaleKey( spep_6-3 + 52, 1, 0.58, 0.58 );
setScaleKey( spep_6-3 + 54, 1, 0.61, 0.61 );
setScaleKey( spep_6-3 + 56, 1, 0.64, 0.64 );
setScaleKey( spep_6-3 + 58, 1, 0.66, 0.66 );
setScaleKey( spep_6-3 + 60, 1, 0.69, 0.69 );
setScaleKey( spep_6-3 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_6-3 + 64, 1, 0.74, 0.74 );
setScaleKey( spep_6-3 + 66, 1, 0.77, 0.77 );
setScaleKey( spep_6-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 70, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 72, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 74, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 76, 1, 0.91, 0.91 );
setScaleKey( spep_6-3 + 78, 1, 0.94, 0.94 );
setScaleKey( spep_6-3 + 80, 1, 0.96, 0.96 );
setScaleKey( spep_6-3 + 82, 1, 0.99, 0.99 );
setScaleKey( spep_6-1 + 84, 1, 1.02, 1.02 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 84, 1, 0 );

--敵の動き
ctzuo = entryEffectLife( spep_6-3 + 10,  10012, 20, 0x100, -1, 0, -59.5, 17.7 );
setEffShake( spep_6-3 + 10, ctzuo, 20, 5 );
setEffMoveKey( spep_6-3 + 10, ctzuo, -59.5, 17.7 , 0 );
setEffMoveKey( spep_6-3 + 12, ctzuo, -47.8, 42.1 , 0 );
setEffMoveKey( spep_6-3 + 14, ctzuo, -5.6, 61.5 , 0 );
setEffMoveKey( spep_6-3 + 16, ctzuo, -18.7, 72.6 , 0 );
setEffMoveKey( spep_6-3 + 18, ctzuo, -49.9, 16.6 , 0 );
setEffMoveKey( spep_6-3 + 20, ctzuo, -58.3, 17.8 , 0 );
setEffMoveKey( spep_6-3 + 22, ctzuo, -46.2, 29.5 , 0 );
setEffMoveKey( spep_6-3 + 24, ctzuo, -55.8, 10.9 , 0 );
setEffMoveKey( spep_6-3 + 26, ctzuo, -60, 24.9 , 0 );
setEffMoveKey( spep_6-3 + 30, ctzuo, -54.6, 15.3 , 0 );

setEffScaleKey( spep_6-3 + 10, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_6-3 + 12, ctzuo, 3.21, 3.21 );
setEffScaleKey( spep_6-3 + 14, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_6-3 + 16, ctzuo, 3.7, 3.7 );
setEffScaleKey( spep_6-3 + 18, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_6-3 + 20, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_6-3 + 22, ctzuo, 3.29, 3.29 );
setEffScaleKey( spep_6-3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_6-3 + 30, ctzuo, 2.73, 2.73 );

setEffRotateKey( spep_6-3 + 10, ctzuo, -27 );
setEffRotateKey( spep_6-3 + 30, ctzuo, -27 );

setEffAlphaKey( spep_6-3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 24, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 26, ctzuo, 170 );
setEffAlphaKey( spep_6-3 + 28, ctzuo, 85 );
setEffAlphaKey( spep_6-3 + 30, ctzuo, 0 );

--敵の動き
shuchusen2 = entryEffectLife( spep_6-3 + 6,  906, 18, 0x100, -1, 0, 0, 50.5 );
setEffShake( spep_6-3 + 6, shuchusen2, 18, 20 );
setEffMoveKey( spep_6-3 + 6, shuchusen2, 0, 50.5 , 0 );
setEffMoveKey( spep_6-3 + 24, shuchusen2, 0, 50.5 , 0 );

setEffScaleKey( spep_6-3 + 6, shuchusen2, 1.09, 1.37 );
setEffScaleKey( spep_6-3 + 24, shuchusen2, 1.09, 1.37 );

setEffRotateKey( spep_6-3 + 6, shuchusen2, 0 );
setEffRotateKey( spep_6-3 + 24, shuchusen2, 0 );

setEffAlphaKey( spep_6-3 + 6, shuchusen2, 255 );
setEffAlphaKey( spep_6-3 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_6-3 + 16, shuchusen2, 204 );
setEffAlphaKey( spep_6-3 + 18, shuchusen2, 153 );
setEffAlphaKey( spep_6-3 + 20, shuchusen2, 102 );
setEffAlphaKey( spep_6-3 + 22, shuchusen2, 51 );
setEffAlphaKey( spep_6-3 + 24, shuchusen2, 0 );

--SE
--気弾発射
SE038 = playSeVer2( spep_6 + 8, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE038, 79 );
SE039 = playSeVer2( spep_6 + 8, 1177, "",spep_6 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 8, SE039, 80 );
SE040 = playSeVer2( spep_6 + 8, 1146, "",spep_6 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 8, SE040, 85 );
SE041 = playSeVer2( spep_6 + 8, 1193, "",spep_6 + 96, 0, 8, -1);

--気弾飛んでいく
SE042 = playSeVer2( spep_6 + 50, 1021, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_6 + 88, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_6 + 88, 1024, "", 0, 0, 0, -1);


-- 終わり
dealDamage(spep_6+90);
endPhase( spep_6 + 196 );
else end