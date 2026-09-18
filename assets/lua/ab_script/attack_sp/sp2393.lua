--1024550:超サイヤ人ゴッドSSベジータ&超サイヤ人トランクス(未来)_戦闘民族の怒り_sp2393
--sp_effect_a9_00096
--sp2393

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

--味方側
SP_01 = 160120; --トランクス突進   ef_001
SP_02 = 160122; --トランクスラッシュ　前面  ef_002
SP_03 = 160124; --トランクスラッシュ　背面  ef_003
SP_04 = 160126; --ベジータラッシュ　前面   ef_004
SP_05 = 160128; --ベジータラッシュ　背面   ef_005
SP_06 = 160129; --気弾連射  ef_006
SP_07 = 160131; --フィニッシュ　前面 ef_007
SP_08 = 160133; --フィニッシュ　背面 ef_008
SP_09 = 160134; --ガッ　前面 ef_009
SP_10 = 160135; --ガッ　背面 ef_010

--敵側
SP_01r = 160121;    --トランクス突進　敵側    ef_001e
SP_02r = 160123;    --トランクスラッシュ　前面　敵側   ef_002e
SP_03r = 160125;    --トランクスラッシュ　背面　敵側   ef_003e
SP_04r = 160127;    --ベジータラッシュ　前面　敵側    ef_004e
SP_06r = 160130;    --気弾連射　敵側   ef_006e
SP_07r = 160132;    --フィニッシュ　前面　敵側  ef_007e

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- トランクス突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --トランクス突進  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--トランクス向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 0, SE003, 44 );
setTimeStretch( SE003, 1.67, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 56, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

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
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- トランクスラッシュ(166F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
trash_f = entryEffectLife( spep_1 + 0, SP_02, 166, 0x100, -1, 0, 0, 0 );  --トランクスラッシュ　前面    ef_002
setEffMoveKey( spep_1 + 0, trash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, trash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, trash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trash_f, 0 );
setEffRotateKey( spep_1 + 166, trash_f, 0 );
setEffAlphaKey( spep_1 + 0, trash_f, 255 );
setEffAlphaKey( spep_1 + 166 -1, trash_f, 255 );
setEffAlphaKey( spep_1 + 166, trash_f, 0 );

trash_b = entryEffectLife( spep_1 + 0, SP_03, 166, 0x80, -1, 0, 0, 0 );  --トランクスラッシュ　背面 ef_003
setEffMoveKey( spep_1 + 0, trash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, trash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, trash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trash_b, 0 );
setEffRotateKey( spep_1 + 166, trash_b, 0 );
setEffAlphaKey( spep_1 + 0, trash_b, 255 );
setEffAlphaKey( spep_1 + 166 -1, trash_b, 255 );
setEffAlphaKey( spep_1 + 166, trash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 93, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 8, 1, 106 );
changeAnime( spep_1 -3 + 76, 1, 108 );

setMoveKey( spep_1 + 0, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 73.2, 85.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 73.3, 90.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 79.7, 82.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 82, 92 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 79.9, 84 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 84.3, 91 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 86.4, 87.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 88.7, 90.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 90.9, 90.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 93.1, 91.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 95.3, 92 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 97.6, 92.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 99.7, 93.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 102, 93.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 104.1, 94.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 106.4, 95 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 53.7, 53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 53.7, 54.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 53.8, 54.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 53.8, 55.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 53.9, 55.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 53.9, 56.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 54, 56.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 54, 57.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 54.1, 57.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 54.1, 58.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 54.1, 58.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 54.2, 59.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 54.2, 59.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 54.3, 60.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 54.3, 60.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 54.4, 61.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 54.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 54.4, 62.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 51.9, 65 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 165.5, 189.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 287.1, 297.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 396.6, 420.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 451.3, 463.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 493.7, 502.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 540.3, 543.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 586.8, 585.2 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 633.3, 626.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 75, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 93, 1, 1.25, 1.25 );

setRotateKey( spep_1 + 0, 1, -18.8 );
setRotateKey( spep_1 -3 + 7, 1, -18.8 );
setRotateKey( spep_1 -3 + 8, 1, -48.2 );
setRotateKey( spep_1 -3 + 10, 1, -49.9 );
setRotateKey( spep_1 -3 + 12, 1, -48.2 );
setRotateKey( spep_1 -3 + 14, 1, -49.9 );
setRotateKey( spep_1 -3 + 16, 1, -48.2 );
setRotateKey( spep_1 -3 + 18, 1, -49.9 );
setRotateKey( spep_1 -3 + 20, 1, -48.2 );
setRotateKey( spep_1 -3 + 22, 1, -49.9 );
setRotateKey( spep_1 -3 + 24, 1, -48.2 );
setRotateKey( spep_1 -3 + 26, 1, -49.9 );
setRotateKey( spep_1 -3 + 28, 1, -48.2 );
setRotateKey( spep_1 -3 + 30, 1, -49.9 );
setRotateKey( spep_1 -3 + 32, 1, -48.2 );
setRotateKey( spep_1 -3 + 34, 1, -49.9 );
setRotateKey( spep_1 -3 + 36, 1, -48.2 );
setRotateKey( spep_1 -3 + 38, 1, -49.9 );
setRotateKey( spep_1 -3 + 40, 1, -53.2 );
setRotateKey( spep_1 -3 + 75, 1, -53.2 );
setRotateKey( spep_1 -3 + 76, 1, -41.2 );
setRotateKey( spep_1 -3 + 93, 1, -41.2 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 100, 1, 1 );
setDisp( spep_1 -3 + 162, 1, 0 );
changeAnime( spep_1 -3 + 100, 1, 108 );
changeAnime( spep_1 -3 + 142, 1, 106 );

setMoveKey( spep_1 -3 + 100, 1, -458.1, -130.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -457.1, -129.7 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -454.1, -128.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -449.1, -127 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -442.1, -124.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -433.1, -121.7 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -422.1, -118 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -409.1, -113.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -394.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -377.1, -102.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -358.1, -96.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -337.1, -89.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -314.1, -81.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -289.1, -73.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -262.1, -64.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -233.1, -54.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -202.1, -44.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -169.1, -33.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -134.1, -21.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -97.1, -8.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -58.1, 4.2 , 0 );
setMoveKey( spep_1 -3 + 141, 1, -58.1, 4.2 , 0 );--
setMoveKey( spep_1 -3 + 142, 1, -15.2, 88.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -198.3, 140.7 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -393.5, 209.2 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -415.7, 215.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -452.7, 233.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -485.7, 237.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -518.7, 257.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -544.9, 257 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -583.3, 273.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -605.4, 279.7 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -642.4, 297.1 , 0 );

s1 = 0.2;
setScaleKey( spep_1 -3 + 100, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_1 -3 + 106, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_1 -3 + 108, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_1 -3 + 110, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_1 -3 + 112, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_1 -3 + 114, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_1 -3 + 116, 1, 1.97 -s1, 1.97 -s1 );
setScaleKey( spep_1 -3 + 118, 1, 1.96 -s1, 1.96 -s1 );
setScaleKey( spep_1 -3 + 120, 1, 1.95 -s1, 1.95 -s1 );
setScaleKey( spep_1 -3 + 122, 1, 1.94 -s1, 1.94 -s1 );
setScaleKey( spep_1 -3 + 124, 1, 1.93 -s1, 1.93 -s1 );
setScaleKey( spep_1 -3 + 126, 1, 1.92 -s1, 1.92 -s1 );
setScaleKey( spep_1 -3 + 128, 1, 1.9 -s1, 1.9 -s1 );
setScaleKey( spep_1 -3 + 130, 1, 1.89 -s1, 1.89 -s1 );
setScaleKey( spep_1 -3 + 132, 1, 1.87 -s1, 1.87 -s1 );
setScaleKey( spep_1 -3 + 134, 1, 1.86 -s1, 1.86 -s1 );
setScaleKey( spep_1 -3 + 136, 1, 1.84 -s1, 1.84 -s1 );
setScaleKey( spep_1 -3 + 138, 1, 1.82 -s1, 1.82 -s1 );
setScaleKey( spep_1 -3 + 140, 1, 1.8 -s1, 1.8 -s1 );
setScaleKey( spep_1 -3 + 141, 1, 1.8 -s1, 1.8 -s1 );--
setScaleKey( spep_1 -3 + 142, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 162, 1, 1.6, 1.6 );

setRotateKey( spep_1 -3 + 100, 1, 0 );
setRotateKey( spep_1 -3 + 141, 1, 0 );--
setRotateKey( spep_1 -3 + 142, 1, -60.7 );
setRotateKey( spep_1 -3 + 144, 1, -75.1 );
setRotateKey( spep_1 -3 + 146, 1, -89.4 );
setRotateKey( spep_1 -3 + 148, 1, -90.9 );
setRotateKey( spep_1 -3 + 150, 1, -92.5 );
setRotateKey( spep_1 -3 + 152, 1, -94 );
setRotateKey( spep_1 -3 + 154, 1, -95.6 );
setRotateKey( spep_1 -3 + 156, 1, -97.1 );
setRotateKey( spep_1 -3 + 158, 1, -98.6 );
setRotateKey( spep_1 -3 + 160, 1, -100.2 );
setRotateKey( spep_1 -3 + 162, 1, -101.7 );


-- ** 音 ** --
--トランクスパンチ
SE007 = playSeVer2( spep_1 + 2, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 2, 1000, "", 0, 0, 0, -1);

--トランクス回転
SE009 = playSeVer2( spep_1 + 32, 1117, "", 0, 0, 0, -1);
setPitch( spep_1 + 32, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 42, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE011, 86 );
setPitch( spep_1 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_1 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE012, 92 );
setPitch( spep_1 + 56, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--トランクス回し蹴り
SE013 = playSeVer2( spep_1 + 66, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE013, 72 );
SE014 = playSeVer2( spep_1 + 70, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 79 );
SE015 = playSeVer2( spep_1 + 72, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_1 + 106, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_1 + 136, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE018 = playSeVer2( spep_1 + 162, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 162, 1314, "",spep_1 + 282, 0, 24, -1);
SE020 = playSeVer2( spep_1 + 162, 9, "", 0, 0, 0, -1);
setTimeStretch( SE020, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;


------------------------------------------------------
-- ベジータラッシュ(236F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
brash_f = entryEffectLife( spep_2 + 0, SP_04, 236, 0x100, -1, 0, 0, 0 );  --ベジータラッシュ　前面 ef_004
setEffMoveKey( spep_2 + 0, brash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, brash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, brash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, brash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brash_f, 0 );
setEffRotateKey( spep_2 + 236, brash_f, 0 );
setEffAlphaKey( spep_2 + 0, brash_f, 255 );
setEffAlphaKey( spep_2 + 236 -1, brash_f, 255 );
setEffAlphaKey( spep_2 + 236, brash_f, 0 );

brash_b = entryEffectLife( spep_2 + 0, SP_05, 236, 0x80, -1, 0, 0, 0 );  --ベジータラッシュ　背面  ef_005
setEffMoveKey( spep_2 + 0, brash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, brash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, brash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, brash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brash_b, 0 );
setEffRotateKey( spep_2 + 236, brash_b, 0 );
setEffAlphaKey( spep_2 + 0, brash_b, 255 );
setEffAlphaKey( spep_2 + 236 -1, brash_b, 255 );
setEffAlphaKey( spep_2 + 236, brash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 -3 + 156, 1, 0 );
changeAnime( spep_2 -3 + 80, 1, 106 );
changeAnime( spep_2 -3 + 88, 1, 108 );
changeAnime( spep_2 -3 + 96, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );
changeAnime( spep_2 -3 + 112, 1, 106 );
changeAnime( spep_2 -3 + 120, 1, 108 );
changeAnime( spep_2 -3 + 130, 1, 106 );
changeAnime( spep_2 -3 + 140, 1, 108 );
changeAnime( spep_2 -3 + 150, 1, 106 );

setMoveKey( spep_2 -3 + 80, 1, 3.8, -47.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 25.4, -45.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 47, -43.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 68.6, -42 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 68.6, -42 , 0 );--
setMoveKey( spep_2 -3 + 88, 1, 94.3, -6.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 98.4, -16.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 92.2, -10.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 98.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 98.4, -14.6 , 0 );--
setMoveKey( spep_2 -3 + 96, 1, 96.8, -7.1 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 100.9, -17.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 94.8, -11.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 100.9, -15.3 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 100.9, -15.3 , 0 );--
setMoveKey( spep_2 -3 + 104, 1, 93.5, -10.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 97.6, -20.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 91.5, -14.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 97.6, -18.8 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 97.6, -18.8 , 0 );--
setMoveKey( spep_2 -3 + 112, 1, 97.6, -5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 101.6, -15.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 95.5, -9.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 101.6, -13.2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 101.6, -13.2 , 0 );--
setMoveKey( spep_2 -3 + 120, 1, 95.6, -3 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 99.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 93.5, -7.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 99.7, -11.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 95.6, -3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 95.6, -3 , 0 );--
setMoveKey( spep_2 -3 + 130, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 95.7, -8.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 101.9, -12.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 97.7, -4.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 101.9, -14.8 , 0 );--
setMoveKey( spep_2 -3 + 140, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 83.4, 11 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 79.3, 19.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 83.4, 9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 77.3, 15.1 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, 65.2, 10.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 61.1, 19 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 65.2, 8.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 65.2, 8.7 , 0 );

setScaleKey( spep_2 -3 + 80, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 82, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 87, 1, 1.61, 1.61 );--
setScaleKey( spep_2 -3 + 88, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 90, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 92, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 94, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 95, 1, 1.87, 1.87 );--
setScaleKey( spep_2 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 102, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 103, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 104, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 110, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 111, 1, 1.87, 1.87 );--
setScaleKey( spep_2 -3 + 112, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 118, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 119, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 120, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 124, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 126, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 129, 1, 1.9, 1.9 );--
setScaleKey( spep_2 -3 + 130, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 138, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 139, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 140, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 142, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 144, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 149, 1, 1.9, 1.9 );--
setScaleKey( spep_2 -3 + 150, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 156, 1, 1.7, 1.7 );

setRotateKey( spep_2 -3 + 80, 1, -49.9 );
setRotateKey( spep_2 -3 + 87, 1, -49.9 );--
setRotateKey( spep_2 -3 + 88, 1, -3.3 );
setRotateKey( spep_2 -3 + 94, 1, -3.3 );
setRotateKey( spep_2 -3 + 95, 1, -3.3 );--
setRotateKey( spep_2 -3 + 96, 1, -47.7 );
setRotateKey( spep_2 -3 + 98, 1, -45.7 );
setRotateKey( spep_2 -3 + 100, 1, -47.7 );
setRotateKey( spep_2 -3 + 102, 1, -45.7 );
setRotateKey( spep_2 -3 + 103, 1, -45.7 );--
setRotateKey( spep_2 -3 + 104, 1, -13.5 );
setRotateKey( spep_2 -3 + 110, 1, -13.5 );
setRotateKey( spep_2 -3 + 111, 1, -13.5 );--
setRotateKey( spep_2 -3 + 112, 1, -42 );
setRotateKey( spep_2 -3 + 114, 1, -40 );
setRotateKey( spep_2 -3 + 116, 1, -42 );
setRotateKey( spep_2 -3 + 118, 1, -40 );
setRotateKey( spep_2 -3 + 119, 1, -40 );--
setRotateKey( spep_2 -3 + 120, 1, 5.5 );
setRotateKey( spep_2 -3 + 129, 1, 5.5 );--
setRotateKey( spep_2 -3 + 130, 1, -40.7 );
setRotateKey( spep_2 -3 + 132, 1, -38.8 );
setRotateKey( spep_2 -3 + 134, 1, -40.7 );
setRotateKey( spep_2 -3 + 136, 1, -38.8 );
setRotateKey( spep_2 -3 + 138, 1, -40.7 );
setRotateKey( spep_2 -3 + 139, 1, -40.7 );--
setRotateKey( spep_2 -3 + 140, 1, -17.7 );
setRotateKey( spep_2 -3 + 149, 1, -17.7 );--
setRotateKey( spep_2 -3 + 150, 1, -71.9 );
setRotateKey( spep_2 -3 + 152, 1, -69.9 );
setRotateKey( spep_2 -3 + 154, 1, -71.9 );
setRotateKey( spep_2 -3 + 156, 1, -71.9 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 200, 1, 1 );
setDisp( spep_2 -3 + 239, 1, 0 );
changeAnime( spep_2 -3 + 200, 1, 108 );
changeAnime( spep_2 -3 + 206, 1, 5 );

setMoveKey( spep_2 -3 + 200, 1, 29.5, -33.1 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 58.3, -13.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 87.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 205, 1, 87.2, 6.2 , 0 );--
setMoveKey( spep_2 -3 + 206, 1, 97.6, 9.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 103.6, 33.8 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 109.6, 58.3 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 115.6, 82.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 116.4, 120.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 132.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 125.8, 158.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 147.4, 175.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 139.3, 189.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 139.1, 182.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 133.6, 195.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 143.8, 173.3 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 130.5, 187 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 145.9, 180 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 137.8, 193.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 137.6, 186.8 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 137.3, 187.6 , 0 );
setMoveKey( spep_2 -3 + 239, 1, 137.3, 187.6 , 0 );

setScaleKey( spep_2 -3 + 200, 1, 3, 3 );
setScaleKey( spep_2 -3 + 205, 1, 3, 3 );--
setScaleKey( spep_2 -3 + 206, 1, 2, 2 );
setScaleKey( spep_2 -3 + 208, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 212, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 214, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 216, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 218, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 222, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 232, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 234, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 236, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 238, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 239, 1, 0.32, 0.32 );

setRotateKey( spep_2 -3 + 200, 1, 0 );
setRotateKey( spep_2 -3 + 205, 1, 0 );--
setRotateKey( spep_2 -3 + 206, 1, 0 );
setRotateKey( spep_2 -3 + 239, 1, 0 );

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_2 + 82 +2, 1009, "",spep_2 + 108+2, 0, 8, 0.6);
SE022 = playSeVer2( spep_2 + 82+2, 1110, "",spep_2 + 112+2, 0, 6, -1);
SE023 = playSeVer2( spep_2 + 94+2, 1010, "",spep_2 + 112+2, 0, 4, 0.6);
SE024 = playSeVer2( spep_2 + 94+2, 1110, "",spep_2 + 122+2, 0, 10, -1);
SE025 = playSeVer2( spep_2 + 102+2, 1009, "",spep_2 + 128+2, 0, 8, 0.6);
SE026 = playSeVer2( spep_2 + 102+2, 1110, "",spep_2 + 134+2, 0, 8, -1);
setPitch( spep_2 + 102+2, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_2 + 112+2, 1110, "",spep_2 + 144+2, 0, 8, -1);
SE028 = playSeVer2( spep_2 + 112+2, 1009, "",spep_2 + 138+2, 0, 8, 0.6);
SE029 = playSeVer2( spep_2 + 120+6, 1110, "",spep_2 + 152+4, 0, 8, -1);
SE030 = playSeVer2( spep_2 + 120+6, 1009, "",spep_2 + 146+4, 0, 8, 0.6);
setSeVolumeByWorkId( spep_2 + 120+6, SE030, 89 );
SE031 = playSeVer2( spep_2 + 130+6, 1010, "",spep_2 + 150+4, 0, 6, 0.6);
SE032 = playSeVer2( spep_2 + 130+6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130+6, SE032, 94 );

--ベジータさらに向かっていく
SE033 = playSeVer2( spep_2 + 140, 1278, "",spep_2 + 214, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 140, SE033, 55 );
setPitch( spep_2 + 140, SE033, -300 );
setTimeStretch( SE033, 0.8, 30, 4 );
SE034 = playSeVer2( spep_2 + 150, 1116, "",spep_2 + 196, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 150, SE034, 120 );

--振りかぶる
SE035 = playSeVer2( spep_2 + 182, 1004, "", 0, 0, 0, -1);

--ベジータアッパー
SE036 = playSeVer2( spep_2 + 200, 1187, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 200, SE036, 89 );
SE037 = playSeVer2( spep_2 + 200, 1359, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 200, SE037, 65 );
SE038 = playSeVer2( spep_2 + 202, 1110, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 202, SE038, 85 );
SE039 = playSeVer2( spep_2 + 202, 1060, "",spep_2 + 244, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 236;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
--playSe( spep_3 + 0, SE_05 );

--ベジータ気弾溜め
SE041 = playSeVer2( spep_3 + 80, 1181, "",spep_3 + 158, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 80, SE041, 145 );
SE042 = playSeVer2( spep_3 + 80, 1176, "",spep_3 + 158, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 80, SE042, 72 );
SE043 = playSeVer2( spep_3 + 84, 1296, "",spep_3 + 128, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 84, SE043, 120 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 気弾連射(126F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_4 + 0, SP_06, 126, 0x100, -1, 0, 0, 0 );  --気弾連射  ef_006
setEffMoveKey( spep_4 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, kidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 126, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 126 -1, kidan, 255 );
setEffAlphaKey( spep_4 + 126, kidan, 0 );

-- ** 音 ** --
--連続気弾発射
SE044 = playSeVer2( spep_4 + 16, 1358, "",spep_4 + 42, 0, 12, -1);
SE045 = playSeVer2( spep_4 + 16, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 16, 1109, "",spep_4 + 40, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 16, SE046, 68 );
SE047 = playSeVer2( spep_4 + 26, 1358, "",spep_4 + 50, 0, 10, -1);
SE048 = playSeVer2( spep_4 + 26, 1016, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 26, 1109, "",spep_4 + 50, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 26, SE049, 61 );
SE050 = playSeVer2( spep_4 + 36, 1358, "",spep_4 + 60, 0, 12, -1);
SE051 = playSeVer2( spep_4 + 36, 1016, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 36, 1109, "",spep_4 + 60, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 36, SE052, 61 );
SE053 = playSeVer2( spep_4 + 44, 1358, "",spep_4 + 70, 0, 12, -1);
SE054 = playSeVer2( spep_4 + 44, 1016, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 44, 1109, "",spep_4 + 68, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 44, SE055, 69 );
SE056 = playSeVer2( spep_4 + 54, 1358, "",spep_4 + 80, 0, 14, -1);
SE057 = playSeVer2( spep_4 + 54, 1016, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 54, 1109, "",spep_4 + 78, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 54, SE058, 65 );
SE059 = playSeVer2( spep_4 + 66, 1358, "",spep_4 + 90, 0, 12, -1);
SE060 = playSeVer2( spep_4 + 66, 1016, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_4 + 66, 1109, "",spep_4 + 90, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 66, SE061, 68 );
SE062 = playSeVer2( spep_4 + 76, 1358, "",spep_4 + 102, 0, 12, -1);
SE063 = playSeVer2( spep_4 + 76, 1016, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 76, 1109, "",spep_4 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 76, SE064, 55 );
SE065 = playSeVer2( spep_4 + 84, 1358, "",spep_4 + 110, 0, 12, -1);
SE066 = playSeVer2( spep_4 + 84, 1016, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_4 + 84, 1109, "",spep_4 + 108, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 84, SE067, 68 );
SE068 = playSeVer2( spep_4 + 96, 1358, "",spep_4 + 120, 0, 12, -1);
SE069 = playSeVer2( spep_4 + 96, 1016, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_4 + 96, 1109, "",spep_4 + 120, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 96, SE070, 59 );
SE071 = playSeVer2( spep_4 + 106, 1358, "",spep_4 + 130, 0, 12, -1);
SE072 = playSeVer2( spep_4 + 106, 1016, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_4 + 106, 1109, "",spep_4 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 106, SE073, 55 );

--気弾向かっていく
SE074 = playSeVer2( spep_4 + 114, 1202, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_4 + 114, 1358, "",spep_4 + 140, 0, 14, -1);
SE076 = playSeVer2( spep_4 + 114, 1016, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_4 + 120, 1021, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_4 + 124, 1358, "",spep_4 + 150, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;


------------------------------------------------------
-- フィニッシュ(190F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面  ef_007
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 190, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 190, finish_f, 255 );

finnish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面  ef_008
setEffMoveKey( spep_5 + 0, finnish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finnish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finnish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finnish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finnish_b, 0 );
setEffRotateKey( spep_5 + 190, finnish_b, 0 );
setEffAlphaKey( spep_5 + 0, finnish_b, 255 );
setEffAlphaKey( spep_5 + 190, finnish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, -12.3, -10 , 0 );
setMoveKey( spep_5 + 1, 1, -2.7, 4.2 , 0 );
setMoveKey( spep_5 + 2, 1, 6.8, 18.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 16.4, 32.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 26, 46.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 35.6, 60.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 45.1, 75 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 54.7, 89.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 64.3, 103.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 73.8, 117.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 80.4, 140.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 96, 139.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 88, 150.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 104.3, 145.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 96.3, 156 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 94.3, 160.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 101.5, 146.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 93.5, 157 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 109.8, 152.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 101.8, 162.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 99.8, 167.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 107, 153.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 99, 163.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 115.3, 158.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 107.3, 169.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 105.3, 173.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 112.5, 159.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 104.5, 170.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 120.8, 165.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 112.8, 176.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 112.8, 176.1 , 0 );

setScaleKey( spep_5 + 0, 1, 3, 3 );
setScaleKey( spep_5 + 1, 1, 2.79, 2.79 );
setScaleKey( spep_5 + 2, 1, 2.58, 2.58 );
setScaleKey( spep_5 -3 + 6, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 8, 1, 2.16, 2.16 );
setScaleKey( spep_5 -3 + 10, 1, 1.95, 1.95 );
setScaleKey( spep_5 -3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 14, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 18, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 20, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 22, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 40, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 42, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 48, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 50, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 52, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 56, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 58, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 60, 1, 0.5, 0.5 );

setRotateKey( spep_5 + 0, 1, 44.9 );
setRotateKey( spep_5 + 1, 1, 45 );
setRotateKey( spep_5 -3 + 60, 1, 45 );

-- ** 音 ** --
--気弾向かっていく
SE079 = playSeVer2( spep_5 + 4, 1358, "",spep_5 + 30, 0, 12, -1);
SE080 = playSeVer2( spep_5 + 16, 1358, "",spep_5 + 40, 0, 10, -1);
SE081 = playSeVer2( spep_5 + 26, 1358, "",spep_5 + 52, 0, 12, -1);
SE082 = playSeVer2( spep_5 + 38, 1358, "",spep_5 + 64, 0, 12, -1);

--爆発
SE083 = playSeVer2( spep_5 + 44, 1126, "",spep_5 + 72, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 44, SE083, 64 );
SE084 = playSeVer2( spep_5 + 52, 1023, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_5 + 60, 1024, "", 0, 0, 0, -1);
SE086 = playSeVer2( spep_5 + 66, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 66, SE086, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 190 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
endPhase( spep_5 + 180 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- トランクス突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 96, 0x100, -1, 0, 0, 0 );  --トランクス突進  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--トランクス向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 0, SE003, 44 );
setTimeStretch( SE003, 1.67, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);

--顔カットイン
--SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 56, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

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
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- トランクスラッシュ(166F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
trash_f = entryEffectLife( spep_1 + 0, SP_02r, 166, 0x100, -1, 0, 0, 0 );  --トランクスラッシュ　前面    ef_002
setEffMoveKey( spep_1 + 0, trash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, trash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, trash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trash_f, 0 );
setEffRotateKey( spep_1 + 166, trash_f, 0 );
setEffAlphaKey( spep_1 + 0, trash_f, 255 );
setEffAlphaKey( spep_1 + 166 -1, trash_f, 255 );
setEffAlphaKey( spep_1 + 166, trash_f, 0 );

trash_b = entryEffectLife( spep_1 + 0, SP_03r, 166, 0x80, -1, 0, 0, 0 );  --トランクスラッシュ　背面 ef_003
setEffMoveKey( spep_1 + 0, trash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, trash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, trash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trash_b, 0 );
setEffRotateKey( spep_1 + 166, trash_b, 0 );
setEffAlphaKey( spep_1 + 0, trash_b, 255 );
setEffAlphaKey( spep_1 + 166 -1, trash_b, 255 );
setEffAlphaKey( spep_1 + 166, trash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 93, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 8, 1, 106 );
changeAnime( spep_1 -3 + 76, 1, 108 );

setMoveKey( spep_1 + 0, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 73.2, 85.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 73.3, 90.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 79.7, 82.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 82, 92 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 79.9, 84 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 84.3, 91 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 86.4, 87.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 88.7, 90.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 90.9, 90.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 93.1, 91.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 95.3, 92 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 97.6, 92.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 99.7, 93.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 102, 93.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 104.1, 94.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 106.4, 95 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 53.7, 53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 53.7, 54.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 53.8, 54.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 53.8, 55.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 53.9, 55.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 53.9, 56.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 54, 56.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 54, 57.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 54.1, 57.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 54.1, 58.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 54.1, 58.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 54.2, 59.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 54.2, 59.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 54.3, 60.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 54.3, 60.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 54.4, 61.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 54.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 54.4, 62.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 51.9, 65 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 165.5, 189.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 287.1, 297.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 396.6, 420.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 451.3, 463.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 493.7, 502.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 540.3, 543.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 586.8, 585.2 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 633.3, 626.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 75, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 93, 1, 1.25, 1.25 );

setRotateKey( spep_1 + 0, 1, -18.8 );
setRotateKey( spep_1 -3 + 7, 1, -18.8 );
setRotateKey( spep_1 -3 + 8, 1, -48.2 );
setRotateKey( spep_1 -3 + 10, 1, -49.9 );
setRotateKey( spep_1 -3 + 12, 1, -48.2 );
setRotateKey( spep_1 -3 + 14, 1, -49.9 );
setRotateKey( spep_1 -3 + 16, 1, -48.2 );
setRotateKey( spep_1 -3 + 18, 1, -49.9 );
setRotateKey( spep_1 -3 + 20, 1, -48.2 );
setRotateKey( spep_1 -3 + 22, 1, -49.9 );
setRotateKey( spep_1 -3 + 24, 1, -48.2 );
setRotateKey( spep_1 -3 + 26, 1, -49.9 );
setRotateKey( spep_1 -3 + 28, 1, -48.2 );
setRotateKey( spep_1 -3 + 30, 1, -49.9 );
setRotateKey( spep_1 -3 + 32, 1, -48.2 );
setRotateKey( spep_1 -3 + 34, 1, -49.9 );
setRotateKey( spep_1 -3 + 36, 1, -48.2 );
setRotateKey( spep_1 -3 + 38, 1, -49.9 );
setRotateKey( spep_1 -3 + 40, 1, -53.2 );
setRotateKey( spep_1 -3 + 75, 1, -53.2 );
setRotateKey( spep_1 -3 + 76, 1, -41.2 );
setRotateKey( spep_1 -3 + 93, 1, -41.2 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 100, 1, 1 );
setDisp( spep_1 -3 + 162, 1, 0 );
changeAnime( spep_1 -3 + 100, 1, 108 );
changeAnime( spep_1 -3 + 142, 1, 106 );

setMoveKey( spep_1 -3 + 100, 1, -458.1, -130.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -457.1, -129.7 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -454.1, -128.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -449.1, -127 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -442.1, -124.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -433.1, -121.7 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -422.1, -118 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -409.1, -113.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -394.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -377.1, -102.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -358.1, -96.5 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -337.1, -89.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -314.1, -81.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -289.1, -73.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -262.1, -64.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -233.1, -54.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -202.1, -44.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -169.1, -33.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -134.1, -21.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -97.1, -8.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -58.1, 4.2 , 0 );
setMoveKey( spep_1 -3 + 141, 1, -58.1, 4.2 , 0 );--
setMoveKey( spep_1 -3 + 142, 1, -15.2, 88.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -198.3, 140.7 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -393.5, 209.2 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -415.7, 215.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -452.7, 233.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -485.7, 237.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -518.7, 257.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -544.9, 257 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -583.3, 273.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -605.4, 279.7 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -642.4, 297.1 , 0 );

s1 = 0.2;
setScaleKey( spep_1 -3 + 100, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_1 -3 + 106, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_1 -3 + 108, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_1 -3 + 110, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_1 -3 + 112, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_1 -3 + 114, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_1 -3 + 116, 1, 1.97 -s1, 1.97 -s1 );
setScaleKey( spep_1 -3 + 118, 1, 1.96 -s1, 1.96 -s1 );
setScaleKey( spep_1 -3 + 120, 1, 1.95 -s1, 1.95 -s1 );
setScaleKey( spep_1 -3 + 122, 1, 1.94 -s1, 1.94 -s1 );
setScaleKey( spep_1 -3 + 124, 1, 1.93 -s1, 1.93 -s1 );
setScaleKey( spep_1 -3 + 126, 1, 1.92 -s1, 1.92 -s1 );
setScaleKey( spep_1 -3 + 128, 1, 1.9 -s1, 1.9 -s1 );
setScaleKey( spep_1 -3 + 130, 1, 1.89 -s1, 1.89 -s1 );
setScaleKey( spep_1 -3 + 132, 1, 1.87 -s1, 1.87 -s1 );
setScaleKey( spep_1 -3 + 134, 1, 1.86 -s1, 1.86 -s1 );
setScaleKey( spep_1 -3 + 136, 1, 1.84 -s1, 1.84 -s1 );
setScaleKey( spep_1 -3 + 138, 1, 1.82 -s1, 1.82 -s1 );
setScaleKey( spep_1 -3 + 140, 1, 1.8 -s1, 1.8 -s1 );
setScaleKey( spep_1 -3 + 141, 1, 1.8 -s1, 1.8 -s1 );--
setScaleKey( spep_1 -3 + 142, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 162, 1, 1.6, 1.6 );

setRotateKey( spep_1 -3 + 100, 1, 0 );
setRotateKey( spep_1 -3 + 141, 1, 0 );--
setRotateKey( spep_1 -3 + 142, 1, -60.7 );
setRotateKey( spep_1 -3 + 144, 1, -75.1 );
setRotateKey( spep_1 -3 + 146, 1, -89.4 );
setRotateKey( spep_1 -3 + 148, 1, -90.9 );
setRotateKey( spep_1 -3 + 150, 1, -92.5 );
setRotateKey( spep_1 -3 + 152, 1, -94 );
setRotateKey( spep_1 -3 + 154, 1, -95.6 );
setRotateKey( spep_1 -3 + 156, 1, -97.1 );
setRotateKey( spep_1 -3 + 158, 1, -98.6 );
setRotateKey( spep_1 -3 + 160, 1, -100.2 );
setRotateKey( spep_1 -3 + 162, 1, -101.7 );


-- ** 音 ** --
--トランクスパンチ
SE007 = playSeVer2( spep_1 + 2, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 2, 1000, "", 0, 0, 0, -1);

--トランクス回転
SE009 = playSeVer2( spep_1 + 32, 1117, "", 0, 0, 0, -1);
setPitch( spep_1 + 32, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 42, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE011, 86 );
setPitch( spep_1 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_1 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE012, 92 );
setPitch( spep_1 + 56, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--トランクス回し蹴り
SE013 = playSeVer2( spep_1 + 66, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 66, SE013, 72 );
SE014 = playSeVer2( spep_1 + 70, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 79 );
SE015 = playSeVer2( spep_1 + 72, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_1 + 106, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_1 + 136, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE018 = playSeVer2( spep_1 + 162, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 162, 1314, "",spep_1 + 282, 0, 24, -1);
SE020 = playSeVer2( spep_1 + 162, 9, "", 0, 0, 0, -1);
setTimeStretch( SE020, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;


------------------------------------------------------
-- ベジータラッシュ(236F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
brash_f = entryEffectLife( spep_2 + 0, SP_04r, 236, 0x100, -1, 0, 0, 0 );  --ベジータラッシュ　前面 ef_004
setEffMoveKey( spep_2 + 0, brash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, brash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, brash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, brash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brash_f, 0 );
setEffRotateKey( spep_2 + 236, brash_f, 0 );
setEffAlphaKey( spep_2 + 0, brash_f, 255 );
setEffAlphaKey( spep_2 + 236 -1, brash_f, 255 );
setEffAlphaKey( spep_2 + 236, brash_f, 0 );

brash_b = entryEffectLife( spep_2 + 0, SP_05, 236, 0x80, -1, 0, 0, 0 );  --ベジータラッシュ　背面  ef_005
setEffMoveKey( spep_2 + 0, brash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, brash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, brash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, brash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, brash_b, 0 );
setEffRotateKey( spep_2 + 236, brash_b, 0 );
setEffAlphaKey( spep_2 + 0, brash_b, 255 );
setEffAlphaKey( spep_2 + 236 -1, brash_b, 255 );
setEffAlphaKey( spep_2 + 236, brash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 -3 + 156, 1, 0 );
changeAnime( spep_2 -3 + 80, 1, 106 );
changeAnime( spep_2 -3 + 88, 1, 108 );
changeAnime( spep_2 -3 + 96, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );
changeAnime( spep_2 -3 + 112, 1, 106 );
changeAnime( spep_2 -3 + 120, 1, 108 );
changeAnime( spep_2 -3 + 130, 1, 106 );
changeAnime( spep_2 -3 + 140, 1, 108 );
changeAnime( spep_2 -3 + 150, 1, 106 );

setMoveKey( spep_2 -3 + 80, 1, 3.8, -47.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 25.4, -45.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 47, -43.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 68.6, -42 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 68.6, -42 , 0 );--
setMoveKey( spep_2 -3 + 88, 1, 94.3, -6.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 98.4, -16.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 92.2, -10.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 98.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 98.4, -14.6 , 0 );--
setMoveKey( spep_2 -3 + 96, 1, 96.8, -7.1 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 100.9, -17.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 94.8, -11.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 100.9, -15.3 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 100.9, -15.3 , 0 );--
setMoveKey( spep_2 -3 + 104, 1, 93.5, -10.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 97.6, -20.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 91.5, -14.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 97.6, -18.8 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 97.6, -18.8 , 0 );--
setMoveKey( spep_2 -3 + 112, 1, 97.6, -5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 101.6, -15.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 95.5, -9.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 101.6, -13.2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 101.6, -13.2 , 0 );--
setMoveKey( spep_2 -3 + 120, 1, 95.6, -3 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 99.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 93.5, -7.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 99.7, -11.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 95.6, -3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 95.6, -3 , 0 );--
setMoveKey( spep_2 -3 + 130, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 95.7, -8.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 101.9, -12.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 97.7, -4.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 101.9, -14.8 , 0 );--
setMoveKey( spep_2 -3 + 140, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 83.4, 11 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 79.3, 19.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 83.4, 9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 77.3, 15.1 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, 65.2, 10.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 61.1, 19 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 65.2, 8.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 65.2, 8.7 , 0 );

setScaleKey( spep_2 -3 + 80, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 82, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 87, 1, 1.61, 1.61 );--
setScaleKey( spep_2 -3 + 88, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 90, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 92, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 94, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 95, 1, 1.87, 1.87 );--
setScaleKey( spep_2 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 102, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 103, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 104, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 110, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 111, 1, 1.87, 1.87 );--
setScaleKey( spep_2 -3 + 112, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 118, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 119, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 120, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 124, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 126, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 129, 1, 1.9, 1.9 );--
setScaleKey( spep_2 -3 + 130, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 138, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 139, 1, 1.7, 1.7 );--
setScaleKey( spep_2 -3 + 140, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 142, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 144, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 149, 1, 1.9, 1.9 );--
setScaleKey( spep_2 -3 + 150, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 156, 1, 1.7, 1.7 );

setRotateKey( spep_2 -3 + 80, 1, -49.9 );
setRotateKey( spep_2 -3 + 87, 1, -49.9 );--
setRotateKey( spep_2 -3 + 88, 1, -3.3 );
setRotateKey( spep_2 -3 + 94, 1, -3.3 );
setRotateKey( spep_2 -3 + 95, 1, -3.3 );--
setRotateKey( spep_2 -3 + 96, 1, -47.7 );
setRotateKey( spep_2 -3 + 98, 1, -45.7 );
setRotateKey( spep_2 -3 + 100, 1, -47.7 );
setRotateKey( spep_2 -3 + 102, 1, -45.7 );
setRotateKey( spep_2 -3 + 103, 1, -45.7 );--
setRotateKey( spep_2 -3 + 104, 1, -13.5 );
setRotateKey( spep_2 -3 + 110, 1, -13.5 );
setRotateKey( spep_2 -3 + 111, 1, -13.5 );--
setRotateKey( spep_2 -3 + 112, 1, -42 );
setRotateKey( spep_2 -3 + 114, 1, -40 );
setRotateKey( spep_2 -3 + 116, 1, -42 );
setRotateKey( spep_2 -3 + 118, 1, -40 );
setRotateKey( spep_2 -3 + 119, 1, -40 );--
setRotateKey( spep_2 -3 + 120, 1, 5.5 );
setRotateKey( spep_2 -3 + 129, 1, 5.5 );--
setRotateKey( spep_2 -3 + 130, 1, -40.7 );
setRotateKey( spep_2 -3 + 132, 1, -38.8 );
setRotateKey( spep_2 -3 + 134, 1, -40.7 );
setRotateKey( spep_2 -3 + 136, 1, -38.8 );
setRotateKey( spep_2 -3 + 138, 1, -40.7 );
setRotateKey( spep_2 -3 + 139, 1, -40.7 );--
setRotateKey( spep_2 -3 + 140, 1, -17.7 );
setRotateKey( spep_2 -3 + 149, 1, -17.7 );--
setRotateKey( spep_2 -3 + 150, 1, -71.9 );
setRotateKey( spep_2 -3 + 152, 1, -69.9 );
setRotateKey( spep_2 -3 + 154, 1, -71.9 );
setRotateKey( spep_2 -3 + 156, 1, -71.9 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 200, 1, 1 );
setDisp( spep_2 -3 + 239, 1, 0 );
changeAnime( spep_2 -3 + 200, 1, 108 );
changeAnime( spep_2 -3 + 206, 1, 5 );

setMoveKey( spep_2 -3 + 200, 1, 29.5, -33.1 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 58.3, -13.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 87.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 205, 1, 87.2, 6.2 , 0 );--
setMoveKey( spep_2 -3 + 206, 1, 97.6, 9.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 103.6, 33.8 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 109.6, 58.3 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 115.6, 82.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 116.4, 120.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 132.8, 121.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 125.8, 158.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 147.4, 175.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 139.3, 189.1 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 139.1, 182.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 133.6, 195.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 143.8, 173.3 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 130.5, 187 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 145.9, 180 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 137.8, 193.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 137.6, 186.8 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 137.3, 187.6 , 0 );
setMoveKey( spep_2 -3 + 239, 1, 137.3, 187.6 , 0 );

setScaleKey( spep_2 -3 + 200, 1, 3, 3 );
setScaleKey( spep_2 -3 + 205, 1, 3, 3 );--
setScaleKey( spep_2 -3 + 206, 1, 2, 2 );
setScaleKey( spep_2 -3 + 208, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 212, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 214, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 216, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 218, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 222, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 232, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 234, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 236, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 238, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 239, 1, 0.32, 0.32 );

setRotateKey( spep_2 -3 + 200, 1, 0 );
setRotateKey( spep_2 -3 + 205, 1, 0 );--
setRotateKey( spep_2 -3 + 206, 1, 0 );
setRotateKey( spep_2 -3 + 239, 1, 0 );

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_2 + 82 +2, 1009, "",spep_2 + 108+2, 0, 8, 0.6);
SE022 = playSeVer2( spep_2 + 82+2, 1110, "",spep_2 + 112+2, 0, 6, -1);
SE023 = playSeVer2( spep_2 + 94+2, 1010, "",spep_2 + 112+2, 0, 4, 0.6);
SE024 = playSeVer2( spep_2 + 94+2, 1110, "",spep_2 + 122+2, 0, 10, -1);
SE025 = playSeVer2( spep_2 + 102+2, 1009, "",spep_2 + 128+2, 0, 8, 0.6);
SE026 = playSeVer2( spep_2 + 102+2, 1110, "",spep_2 + 134+2, 0, 8, -1);
setPitch( spep_2 + 102+2, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_2 + 112+2, 1110, "",spep_2 + 144+2, 0, 8, -1);
SE028 = playSeVer2( spep_2 + 112+2, 1009, "",spep_2 + 138+2, 0, 8, 0.6);
SE029 = playSeVer2( spep_2 + 120+6, 1110, "",spep_2 + 152+4, 0, 8, -1);
SE030 = playSeVer2( spep_2 + 120+6, 1009, "",spep_2 + 146+4, 0, 8, 0.6);
setSeVolumeByWorkId( spep_2 + 120+6, SE030, 89 );
SE031 = playSeVer2( spep_2 + 130+6, 1010, "",spep_2 + 150+4, 0, 6, 0.6);
SE032 = playSeVer2( spep_2 + 130+6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130+6, SE032, 94 );

--ベジータさらに向かっていく
SE033 = playSeVer2( spep_2 + 140, 1278, "",spep_2 + 214, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 140, SE033, 55 );
setPitch( spep_2 + 140, SE033, -300 );
setTimeStretch( SE033, 0.8, 30, 4 );
SE034 = playSeVer2( spep_2 + 150, 1116, "",spep_2 + 196, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 150, SE034, 120 );

--振りかぶる
SE035 = playSeVer2( spep_2 + 182, 1004, "", 0, 0, 0, -1);

--ベジータアッパー
SE036 = playSeVer2( spep_2 + 200, 1187, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 200, SE036, 89 );
SE037 = playSeVer2( spep_2 + 200, 1359, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 200, SE037, 65 );
SE038 = playSeVer2( spep_2 + 202, 1110, "",spep_2 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 202, SE038, 85 );
SE039 = playSeVer2( spep_2 + 202, 1060, "",spep_2 + 244, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 236;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_3 + 0, SE_05 );

--ベジータ気弾溜め
SE041 = playSeVer2( spep_3 + 80, 1181, "",spep_3 + 158, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 80, SE041, 145 );
SE042 = playSeVer2( spep_3 + 80, 1176, "",spep_3 + 158, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 80, SE042, 72 );
SE043 = playSeVer2( spep_3 + 84, 1296, "",spep_3 + 128, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 84, SE043, 120 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 気弾連射(126F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_4 + 0, SP_06r, 126, 0x100, -1, 0, 0, 0 );  --気弾連射  ef_006
setEffMoveKey( spep_4 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126, kidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 126, kidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 126, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 126 -1, kidan, 255 );
setEffAlphaKey( spep_4 + 126, kidan, 0 );

-- ** 音 ** --
--連続気弾発射
SE044 = playSeVer2( spep_4 + 16, 1358, "",spep_4 + 42, 0, 12, -1);
SE045 = playSeVer2( spep_4 + 16, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_4 + 16, 1109, "",spep_4 + 40, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 16, SE046, 68 );
SE047 = playSeVer2( spep_4 + 26, 1358, "",spep_4 + 50, 0, 10, -1);
SE048 = playSeVer2( spep_4 + 26, 1016, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 26, 1109, "",spep_4 + 50, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 26, SE049, 61 );
SE050 = playSeVer2( spep_4 + 36, 1358, "",spep_4 + 60, 0, 12, -1);
SE051 = playSeVer2( spep_4 + 36, 1016, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 36, 1109, "",spep_4 + 60, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 36, SE052, 61 );
SE053 = playSeVer2( spep_4 + 44, 1358, "",spep_4 + 70, 0, 12, -1);
SE054 = playSeVer2( spep_4 + 44, 1016, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 44, 1109, "",spep_4 + 68, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 44, SE055, 69 );
SE056 = playSeVer2( spep_4 + 54, 1358, "",spep_4 + 80, 0, 14, -1);
SE057 = playSeVer2( spep_4 + 54, 1016, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 54, 1109, "",spep_4 + 78, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 54, SE058, 65 );
SE059 = playSeVer2( spep_4 + 66, 1358, "",spep_4 + 90, 0, 12, -1);
SE060 = playSeVer2( spep_4 + 66, 1016, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_4 + 66, 1109, "",spep_4 + 90, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 66, SE061, 68 );
SE062 = playSeVer2( spep_4 + 76, 1358, "",spep_4 + 102, 0, 12, -1);
SE063 = playSeVer2( spep_4 + 76, 1016, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_4 + 76, 1109, "",spep_4 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 76, SE064, 55 );
SE065 = playSeVer2( spep_4 + 84, 1358, "",spep_4 + 110, 0, 12, -1);
SE066 = playSeVer2( spep_4 + 84, 1016, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_4 + 84, 1109, "",spep_4 + 108, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 84, SE067, 68 );
SE068 = playSeVer2( spep_4 + 96, 1358, "",spep_4 + 120, 0, 12, -1);
SE069 = playSeVer2( spep_4 + 96, 1016, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_4 + 96, 1109, "",spep_4 + 120, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 96, SE070, 59 );
SE071 = playSeVer2( spep_4 + 106, 1358, "",spep_4 + 130, 0, 12, -1);
SE072 = playSeVer2( spep_4 + 106, 1016, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_4 + 106, 1109, "",spep_4 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 106, SE073, 55 );

--気弾向かっていく
SE074 = playSeVer2( spep_4 + 114, 1202, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_4 + 114, 1358, "",spep_4 + 140, 0, 14, -1);
SE076 = playSeVer2( spep_4 + 114, 1016, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_4 + 120, 1021, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_4 + 124, 1358, "",spep_4 + 150, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 126;


------------------------------------------------------
-- フィニッシュ(190F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --フィニッシュ　前面  ef_007
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 190, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 190, finish_f, 255 );

finnish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面  ef_008
setEffMoveKey( spep_5 + 0, finnish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finnish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finnish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finnish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finnish_b, 0 );
setEffRotateKey( spep_5 + 190, finnish_b, 0 );
setEffAlphaKey( spep_5 + 0, finnish_b, 255 );
setEffAlphaKey( spep_5 + 190, finnish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, -12.3, -10 , 0 );
setMoveKey( spep_5 + 1, 1, -2.7, 4.2 , 0 );
setMoveKey( spep_5 + 2, 1, 6.8, 18.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 16.4, 32.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 26, 46.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 35.6, 60.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 45.1, 75 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 54.7, 89.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 64.3, 103.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 73.8, 117.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 80.4, 140.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 96, 139.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 88, 150.2 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 104.3, 145.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 96.3, 156 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 94.3, 160.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 101.5, 146.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 93.5, 157 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 109.8, 152.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 101.8, 162.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 99.8, 167.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 107, 153.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 99, 163.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 115.3, 158.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 107.3, 169.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 105.3, 173.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 112.5, 159.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 104.5, 170.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 120.8, 165.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 112.8, 176.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 112.8, 176.1 , 0 );

setScaleKey( spep_5 + 0, 1, 3, 3 );
setScaleKey( spep_5 + 1, 1, 2.79, 2.79 );
setScaleKey( spep_5 + 2, 1, 2.58, 2.58 );
setScaleKey( spep_5 -3 + 6, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 8, 1, 2.16, 2.16 );
setScaleKey( spep_5 -3 + 10, 1, 1.95, 1.95 );
setScaleKey( spep_5 -3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 14, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 18, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 20, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 22, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 40, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 42, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 48, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 50, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 52, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 56, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 58, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 60, 1, 0.5, 0.5 );

setRotateKey( spep_5 + 0, 1, 44.9 );
setRotateKey( spep_5 + 1, 1, 45 );
setRotateKey( spep_5 -3 + 60, 1, 45 );

-- ** 音 ** --
--気弾向かっていく
SE079 = playSeVer2( spep_5 + 4, 1358, "",spep_5 + 30, 0, 12, -1);
SE080 = playSeVer2( spep_5 + 16, 1358, "",spep_5 + 40, 0, 10, -1);
SE081 = playSeVer2( spep_5 + 26, 1358, "",spep_5 + 52, 0, 12, -1);
SE082 = playSeVer2( spep_5 + 38, 1358, "",spep_5 + 64, 0, 12, -1);

--爆発
SE083 = playSeVer2( spep_5 + 44, 1126, "",spep_5 + 72, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 44, SE083, 64 );
SE084 = playSeVer2( spep_5 + 52, 1023, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_5 + 60, 1024, "", 0, 0, 0, -1);
SE086 = playSeVer2( spep_5 + 66, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 66, SE086, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 190 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
endPhase( spep_5 + 180 );

end