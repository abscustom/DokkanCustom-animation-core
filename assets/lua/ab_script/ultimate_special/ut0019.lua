--1022340:桃白白_最後の悪あがき
--sp_effect_b4_00195

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
SP_01=	157596	;--	アクティブスキル　手前
SP_02=	157597	;--	アクティブスキル　奥

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 300 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 738);      -- スキップ先フレーム指定

           --爆発
           SE017 = playSe( spep_0 + 738, 1159 );
           setSeVolumeByWorkId( spep_0 + 738, SE017, 86 );
           SE018 = playSe( spep_0 + 738, 1023 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アクティブスキル
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 876, finish_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 876, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 876, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 876, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 876, finish_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 876, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 876, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 876, finish_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 132.3, 152 , 0 );
setMoveKey( spep_0 + 1, 1, 132.3, 152 , 0 );
setMoveKey( spep_0 + 2, 1, 132.4, 161 , 0 );
setMoveKey( spep_0 + 3, 1, 132.4, 161 , 0 );
setMoveKey( spep_0 + 4, 1, 132.4, 169.9 , 0 );
setMoveKey( spep_0 + 5, 1, 132.4, 169.9 , 0 );
setMoveKey( spep_0 + 6, 1, 132.4, 178.9 , 0 );
setMoveKey( spep_0 + 8, 1, 132.4, 187.9 , 0 );
setMoveKey( spep_0 + 10, 1, 132.4, 196.8 , 0 );
setMoveKey( spep_0 + 12, 1, 132.4, 205.8 , 0 );
setMoveKey( spep_0 + 14, 1, 132.4, 206.1 , 0 );
setMoveKey( spep_0 + 16, 1, 132.4, 206.3 , 0 );
setMoveKey( spep_0 + 18, 1, 132.4, 206.6 , 0 );
setMoveKey( spep_0 + 20, 1, 132.4, 206.9 , 0 );
setMoveKey( spep_0 + 22, 1, 132.4, 207.2 , 0 );
setMoveKey( spep_0 + 24, 1, 132.4, 207.5 , 0 );
setMoveKey( spep_0 + 26, 1, 132.4, 207.8 , 0 );
setMoveKey( spep_0 + 28, 1, 132.4, 208.1 , 0 );
setMoveKey( spep_0 + 30, 1, 132.4, 208.4 , 0 );
setMoveKey( spep_0 + 32, 1, 132.4, 208.7 , 0 );
setMoveKey( spep_0 + 34, 1, 132.4, 209 , 0 );
setMoveKey( spep_0 + 36, 1, 132.4, 209.3 , 0 );
setMoveKey( spep_0 + 38, 1, 132.4, 209.5 , 0 );
setMoveKey( spep_0 + 40, 1, 132.4, 209.9 , 0 );
setMoveKey( spep_0 + 42, 1, 132.4, 210.1 , 0 );
setMoveKey( spep_0 + 44, 1, 132.4, 210.4 , 0 );
setMoveKey( spep_0 + 46, 1, 132.4, 210.7 , 0 );
setMoveKey( spep_0 + 48, 1, 132.4, 211 , 0 );
setMoveKey( spep_0 + 50, 1, 132.4, 211.3 , 0 );
setMoveKey( spep_0 + 52, 1, 132.4, 211.6 , 0 );
setMoveKey( spep_0 + 54, 1, 132.4, 211.9 , 0 );
setMoveKey( spep_0 + 56, 1, 132.4, 212.2 , 0 );
setMoveKey( spep_0 + 58, 1, 132.4, 212.5 , 0 );
setMoveKey( spep_0 + 60, 1, 132.4, 212.8 , 0 );
setMoveKey( spep_0 + 62, 1, 132.4, 213.1 , 0 );
setMoveKey( spep_0 + 64, 1, 132.4, 213.3 , 0 );
setMoveKey( spep_0 + 66, 1, 132.4, 213.6 , 0 );
setMoveKey( spep_0 + 68, 1, 132.4, 214 , 0 );
setMoveKey( spep_0 + 70, 1, 132.4, 214.2 , 0 );
setMoveKey( spep_0 + 72, 1, 132.4, 214.5 , 0 );
setMoveKey( spep_0 + 74, 1, 132.4, 214.8 , 0 );
setMoveKey( spep_0 + 76, 1, 132.4, 215.1 , 0 );
setMoveKey( spep_0 + 78, 1, 132.4, 215.4 , 0 );
setMoveKey( spep_0 + 80, 1, 132.4, 215.7 , 0 );
setMoveKey( spep_0 + 82, 1, 132.4, 216 , 0 );
setMoveKey( spep_0 + 84, 1, 132.4, 216.3 , 0 );
setMoveKey( spep_0 + 86, 1, 132.4, 216.6 , 0 );
setMoveKey( spep_0 + 90, 1, 132.4, 216.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 1, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 2, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 3, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 4, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 5, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 90, 1, 1.66, 1.66 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 90, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 262, 1, 1 );

changeAnime( spep_0-3 + 262, 1, 117 );
changeAnime( spep_0-3 + 272, 1, 100 );

setMoveKey( spep_0-3 + 262, 1, 158, -38 , 0 );
setMoveKey( spep_0-3 + 264, 1, 158.1, -37.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 158.1, -37.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, 158.1, -37.6 , 0 );
setMoveKey( spep_0-3 + 270, 1, 158.1, -37.5 , 0 );
setMoveKey( spep_0-3 + 271, 1, 158.1, -37.5 , 0 );

setMoveKey( spep_0-3 + 272, 1, 165.8, -22.8 , 0 );
setMoveKey( spep_0-3 + 274, 1, 167.6, -18.3 , 0 );
setMoveKey( spep_0-3 + 276, 1, 169.5, -13.8 , 0 );
setMoveKey( spep_0-3 + 278, 1, 171.3, -9.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 173.1, -5 , 0 );
setMoveKey( spep_0-3 + 282, 1, 173.1, -4.8 , 0 );
setMoveKey( spep_0-3 + 284, 1, 173.1, -4.7 , 0 );
setMoveKey( spep_0-3 + 286, 1, 173.1, -4.6 , 0 );
setMoveKey( spep_0-3 + 288, 1, 173.2, -4.4 , 0 );
setMoveKey( spep_0-3 + 290, 1, 173.1, -4.4 , 0 );
setMoveKey( spep_0-3 + 292, 1, 173.2, -4.3 , 0 );
setMoveKey( spep_0-3 + 294, 1, 173.1, -4.1 , 0 );
setMoveKey( spep_0-3 + 296, 1, 173.2, -4 , 0 );
setMoveKey( spep_0-3 + 298, 1, 173.1, -3.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 173.2, -3.8 , 0 );
setMoveKey( spep_0-3 + 302, 1, 173.2, -3.7 , 0 );

setScaleKey( spep_0-3 + 262, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 268, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 270, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 271, 1, 1.3, 1.3 );

setScaleKey( spep_0-3 + 272, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 274, 1, 1.44, 1.44 );
setScaleKey( spep_0-3 + 276, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 278, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 280, 1, 1.64, 1.64 );
setScaleKey( spep_0-3 + 282, 1, 1.65, 1.65 );
setScaleKey( spep_0-3 + 290, 1, 1.65, 1.65 );
setScaleKey( spep_0-3 + 292, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 298, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 300, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 302, 1, 1.67, 1.67 );

setRotateKey( spep_0-3 + 262, 1, -9 );
setRotateKey( spep_0-3 + 302, 1, -9 );

--SE
--手つく
SE001 = playSe( spep_0 + 10, 1197 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 68 );
SE002 = playSe( spep_0 + 10, 1192 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 143 );
SE003 = playSe( spep_0 + 14, 1135 );
setBandpassFilter( spep_0 + 14, SE003, 1000, 24000 );

--画面遷移
SE004 = playSe( spep_0 + 70, 1072 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 71, SE004, 12.5 );
setSeVolumeByWorkId( spep_0 + 72, SE004, 25 );
setSeVolumeByWorkId( spep_0 + 73, SE004, 37.5 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 50 );
setSeVolumeByWorkId( spep_0 + 75, SE004, 62.5 );
setSeVolumeByWorkId( spep_0 + 76, SE004, 75 );
setSeVolumeByWorkId( spep_0 + 77, SE004, 87.5 );
setSeVolumeByWorkId( spep_0 + 78, SE004, 100 );
setStartTimeMs( SE004,  383 );

--土下座
SE005 = playSe( spep_0 + 192, 20 );

--！？
SE006 = playSe( spep_0 + 270, 48 );

--ボイス
--「すっすまん!!!
--わたしがわるかった!!
--ゆるしてくれっ!!」
playVoice( spep_0 + 0, 289 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 300 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 173.2, -3.7 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.67, 1.67 );
    setRotateKey( SP_dodge + 9, 1, -9 );


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
setDisp( spep_0-1 + 318, 1, 0 );

setMoveKey( spep_0-3 + 304, 1, 173.2, -3.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, 173.2, -3.4 , 0 );
setMoveKey( spep_0-3 + 308, 1, 173.2, -3.4 , 0 );
setMoveKey( spep_0-3 + 310, 1, 173.2, -3.2 , 0 );
setMoveKey( spep_0-3 + 312, 1, 173.2, -3.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, 173.2, -3 , 0 );
setMoveKey( spep_0-3 + 316, 1, 173.2, -2.9 , 0 );
setMoveKey( spep_0-1 + 318, 1, 173.2, -2.8 , 0 );

setScaleKey( spep_0-3 + 306, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 308, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 316, 1, 1.68, 1.68 );
setScaleKey( spep_0-1 + 318, 1, 1.69, 1.69 );

setRotateKey( spep_0-1 + 318, 1, -9 );

--敵の動き
setDisp( spep_0-3 + 530, 1, 1 );
setDisp( spep_0-1 + 578, 1, 0 );

changeAnime( spep_0-3 + 530, 1, 100 );
changeAnime( spep_0-3 + 548, 1, 104 );

setMoveKey( spep_0-3 + 530, 1, 135.1, -68.8 , 0 );
setMoveKey( spep_0-3 + 532, 1, 136.9, -60.8 , 0 );
setMoveKey( spep_0-3 + 534, 1, 138.7, -52.8 , 0 );
setMoveKey( spep_0-3 + 536, 1, 140.5, -44.8 , 0 );
setMoveKey( spep_0-3 + 538, 1, 142.4, -36.8 , 0 );
setMoveKey( spep_0-3 + 540, 1, 144.2, -28.8 , 0 );
setMoveKey( spep_0-3 + 542, 1, 144.6, -26.9 , 0 );
setMoveKey( spep_0-3 + 544, 1, 145, -25.1 , 0 );
setMoveKey( spep_0-3 + 546, 1, 145.4, -23.2 , 0 );
setMoveKey( spep_0-3 + 547, 1, 145.4, -23.2 , 0 );

setMoveKey( spep_0-3 + 548, 1, 145.8, -25.6 , 0 );
setMoveKey( spep_0-3 + 550, 1, 146.3, -23.7 , 0 );
setMoveKey( spep_0-3 + 552, 1, 146.7, -22 , 0 );
setMoveKey( spep_0-3 + 554, 1, 147.1, -20.1 , 0 );
setMoveKey( spep_0-3 + 556, 1, 147.6, -18.4 , 0 );
setMoveKey( spep_0-3 + 558, 1, 148, -16.5 , 0 );
setMoveKey( spep_0-3 + 560, 1, 148.4, -14.7 , 0 );
setMoveKey( spep_0-3 + 562, 1, 148.8, -12.9 , 0 );
setMoveKey( spep_0-3 + 564, 1, 149.2, -11.1 , 0 );
setMoveKey( spep_0-1 + 578, 1, 149.7, -9.3 , 0 );

setScaleKey( spep_0-3 + 530, 1, 1.19, 1.19 );
setScaleKey( spep_0-3 + 532, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 534, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 536, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 538, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 540, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 542, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 544, 1, 1.55, 1.55 );
setScaleKey( spep_0-3 + 546, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 547, 1, 1.57, 1.57 );

setScaleKey( spep_0-3 + 548, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 550, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 552, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 554, 1, 1.63, 1.63 );
setScaleKey( spep_0-3 + 556, 1, 1.65, 1.65 );
setScaleKey( spep_0-3 + 558, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 560, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 562, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 564, 1, 1.71, 1.71 );
setScaleKey( spep_0-1 + 578, 1, 1.73, 1.73 );

setRotateKey( spep_0-3 + 530, 1, 0 );
setRotateKey( spep_0-1 + 578, 1, 0 );

--SE
--顔カットイン
SE007 = playSe( spep_0 + 320, 1018 );

--ピンを抜く
SE008 = playSe( spep_0 + 430, 1042 );
setSeVolumeByWorkId( spep_0 + 430, SE008, 0 );
setSeVolumeByWorkId( spep_0 + 431, SE008, 31.9 );
setSeVolumeByWorkId( spep_0 + 432, SE008, 63.8 );
setSeVolumeByWorkId( spep_0 + 433, SE008, 95.7 );
setSeVolumeByWorkId( spep_0 + 434, SE008, 127 );
stopSe( spep_0 + 440, SE008, 12 );
setStartTimeMs( SE008,  67 );
setPitch( spep_0 + 430, SE008, 600 );
setTimeStretch( SE008, 1.4, 10, 1 );
SE009 = playSe( spep_0 + 426, 22 );
setSeVolumeByWorkId( spep_0 + 426, SE009, 123 );
stopSe( spep_0 + 434, SE009, 12 );
SE010 = playSe( spep_0 + 426, 1116 );
setSeVolumeByWorkId( spep_0 + 426, SE010, 49 );
stopSe( spep_0 + 450, SE010, 16 );

--投げる
SE011 = playSe( spep_0 + 480, 1027 );
SE012 = playSe( spep_0 + 480, 1117 );

--手榴弾飛んでいく
SE013 = playSe( spep_0 + 502, 1119 );

--ジャンプ
SE014 = playSe( spep_0 + 622, 1207 );
setSeVolumeByWorkId( spep_0 + 622, SE014, 76 );
SE015 = playSe( spep_0 + 622, 1007 );
setSeVolumeByWorkId( spep_0 + 622, SE015, 72 );
SE016 = playSe( spep_0 + 630, 1006 );
setSeVolumeByWorkId( spep_0 + 630, SE016, 68 );

--爆発
SE017 = playSe( spep_0 + 732, 1159 );
setSeVolumeByWorkId( spep_0 + 732, SE017, 86 );
SE018 = playSe( spep_0 + 732, 1023 );

--ボイス
--「ふはははははっ!!!
--ひっかかったなっ!!!!」
playVoice( spep_0 + 311, 290 );

--「さらばだ!!
--死ねーーーっ!!!」
playVoice( spep_0 + 571, 291 );

--終わり
dealDamage( spep_0 +738 );
endPhase( spep_0 + 866 );
else end