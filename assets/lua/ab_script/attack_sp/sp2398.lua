--1024540:UR超サイヤ人ゴッドSSベジータ&超サイヤ人トランクス(未来)_戦闘民族の怒り_sp2398
--sp_effect_a9_00096

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
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_0 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_0 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_0 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

------------------------------------------------------
-- トランクス突進(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_1 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --トランクス突進  ef_001
setEffMoveKey( spep_1 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, first_f, 0 );
setEffRotateKey( spep_1 + 96, first_f, 0 );
setEffAlphaKey( spep_1 + 0, first_f, 255 );
setEffAlphaKey( spep_1 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_1 + 96, first_f, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--トランクス向かってくる
SE001 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 0, SE003, 44 );
setTimeStretch( SE003, 1.67, 30, 4 );
SE004 = playSeVer2( spep_1 + 0, 1148, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_1 + 56, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 80 ; --エンドフェイズのフレーム数を置き換える
    
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
spep_2 = spep_1 + 96;


------------------------------------------------------
-- トランクスラッシュ(166F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
trash_f = entryEffectLife( spep_2 + 0, SP_02, 166, 0x100, -1, 0, 0, 0 );  --トランクスラッシュ　前面    ef_002
setEffMoveKey( spep_2 + 0, trash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, trash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, trash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, trash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, trash_f, 0 );
setEffRotateKey( spep_2 + 166, trash_f, 0 );
setEffAlphaKey( spep_2 + 0, trash_f, 255 );
setEffAlphaKey( spep_2 + 166 -1, trash_f, 255 );
setEffAlphaKey( spep_2 + 166, trash_f, 0 );

trash_b = entryEffectLife( spep_2 + 0, SP_03, 166, 0x80, -1, 0, 0, 0 );  --トランクスラッシュ　背面 ef_003
setEffMoveKey( spep_2 + 0, trash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, trash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, trash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, trash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, trash_b, 0 );
setEffRotateKey( spep_2 + 166, trash_b, 0 );
setEffAlphaKey( spep_2 + 0, trash_b, 255 );
setEffAlphaKey( spep_2 + 166 -1, trash_b, 255 );
setEffAlphaKey( spep_2 + 166, trash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 93, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 76, 1, 108 );

setMoveKey( spep_2 + 0, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 73.2, 85.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 73.3, 90.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 79.7, 82.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 82, 92 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 79.9, 84 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 84.3, 91 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 86.4, 87.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 88.7, 90.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 90.9, 90.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 93.1, 91.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 95.3, 92 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 97.6, 92.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 99.7, 93.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 102, 93.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 104.1, 94.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 106.4, 95 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 53.7, 53.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 53.7, 54.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 53.8, 54.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 53.8, 55.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 53.9, 55.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 53.9, 56.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 54, 56.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 54, 57.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 54.1, 57.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 54.1, 58.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 54.1, 58.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 54.2, 59.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 54.2, 59.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 54.3, 60.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 54.3, 60.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 54.4, 61.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 54.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 54.4, 62.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 51.9, 65 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 165.5, 189.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 287.1, 297.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 396.6, 420.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 451.3, 463.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 493.7, 502.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 540.3, 543.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 586.8, 585.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 633.3, 626.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 75, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 93, 1, 1.25, 1.25 );

setRotateKey( spep_2 + 0, 1, -18.8 );
setRotateKey( spep_2 -3 + 7, 1, -18.8 );
setRotateKey( spep_2 -3 + 8, 1, -48.2 );
setRotateKey( spep_2 -3 + 10, 1, -49.9 );
setRotateKey( spep_2 -3 + 12, 1, -48.2 );
setRotateKey( spep_2 -3 + 14, 1, -49.9 );
setRotateKey( spep_2 -3 + 16, 1, -48.2 );
setRotateKey( spep_2 -3 + 18, 1, -49.9 );
setRotateKey( spep_2 -3 + 20, 1, -48.2 );
setRotateKey( spep_2 -3 + 22, 1, -49.9 );
setRotateKey( spep_2 -3 + 24, 1, -48.2 );
setRotateKey( spep_2 -3 + 26, 1, -49.9 );
setRotateKey( spep_2 -3 + 28, 1, -48.2 );
setRotateKey( spep_2 -3 + 30, 1, -49.9 );
setRotateKey( spep_2 -3 + 32, 1, -48.2 );
setRotateKey( spep_2 -3 + 34, 1, -49.9 );
setRotateKey( spep_2 -3 + 36, 1, -48.2 );
setRotateKey( spep_2 -3 + 38, 1, -49.9 );
setRotateKey( spep_2 -3 + 40, 1, -53.2 );
setRotateKey( spep_2 -3 + 75, 1, -53.2 );
setRotateKey( spep_2 -3 + 76, 1, -41.2 );
setRotateKey( spep_2 -3 + 93, 1, -41.2 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 100, 1, 1 );
setDisp( spep_2 -3 + 162, 1, 0 );
changeAnime( spep_2 -3 + 100, 1, 108 );
changeAnime( spep_2 -3 + 142, 1, 106 );

setMoveKey( spep_2 -3 + 100, 1, -458.1, -130.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -457.1, -129.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -454.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -449.1, -127 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -442.1, -124.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -433.1, -121.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -422.1, -118 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -409.1, -113.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -394.1, -108.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -377.1, -102.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -358.1, -96.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -337.1, -89.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -314.1, -81.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -289.1, -73.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -262.1, -64.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -233.1, -54.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -202.1, -44.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -169.1, -33.1 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -134.1, -21.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -97.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -58.1, 4.2 , 0 );
setMoveKey( spep_2 -3 + 141, 1, -58.1, 4.2 , 0 );--
setMoveKey( spep_2 -3 + 142, 1, -15.2, 88.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -198.3, 140.7 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -393.5, 209.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -415.7, 215.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -452.7, 233.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -485.7, 237.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -518.7, 257.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -544.9, 257 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -583.3, 273.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -605.4, 279.7 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -642.4, 297.1 , 0 );

s1 = 0.2;
setScaleKey( spep_2 -3 + 100, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_2 -3 + 106, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_2 -3 + 108, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_2 -3 + 110, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_2 -3 + 112, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_2 -3 + 114, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_2 -3 + 116, 1, 1.97 -s1, 1.97 -s1 );
setScaleKey( spep_2 -3 + 118, 1, 1.96 -s1, 1.96 -s1 );
setScaleKey( spep_2 -3 + 120, 1, 1.95 -s1, 1.95 -s1 );
setScaleKey( spep_2 -3 + 122, 1, 1.94 -s1, 1.94 -s1 );
setScaleKey( spep_2 -3 + 124, 1, 1.93 -s1, 1.93 -s1 );
setScaleKey( spep_2 -3 + 126, 1, 1.92 -s1, 1.92 -s1 );
setScaleKey( spep_2 -3 + 128, 1, 1.9 -s1, 1.9 -s1 );
setScaleKey( spep_2 -3 + 130, 1, 1.89 -s1, 1.89 -s1 );
setScaleKey( spep_2 -3 + 132, 1, 1.87 -s1, 1.87 -s1 );
setScaleKey( spep_2 -3 + 134, 1, 1.86 -s1, 1.86 -s1 );
setScaleKey( spep_2 -3 + 136, 1, 1.84 -s1, 1.84 -s1 );
setScaleKey( spep_2 -3 + 138, 1, 1.82 -s1, 1.82 -s1 );
setScaleKey( spep_2 -3 + 140, 1, 1.8 -s1, 1.8 -s1 );
setScaleKey( spep_2 -3 + 141, 1, 1.8 -s1, 1.8 -s1 );--
setScaleKey( spep_2 -3 + 142, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 162, 1, 1.6, 1.6 );

setRotateKey( spep_2 -3 + 100, 1, 0 );
setRotateKey( spep_2 -3 + 141, 1, 0 );--
setRotateKey( spep_2 -3 + 142, 1, -60.7 );
setRotateKey( spep_2 -3 + 144, 1, -75.1 );
setRotateKey( spep_2 -3 + 146, 1, -89.4 );
setRotateKey( spep_2 -3 + 148, 1, -90.9 );
setRotateKey( spep_2 -3 + 150, 1, -92.5 );
setRotateKey( spep_2 -3 + 152, 1, -94 );
setRotateKey( spep_2 -3 + 154, 1, -95.6 );
setRotateKey( spep_2 -3 + 156, 1, -97.1 );
setRotateKey( spep_2 -3 + 158, 1, -98.6 );
setRotateKey( spep_2 -3 + 160, 1, -100.2 );
setRotateKey( spep_2 -3 + 162, 1, -101.7 );


-- ** 音 ** --
--トランクスパンチ
SE007 = playSeVer2( spep_2 + 2, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 2, 1000, "", 0, 0, 0, -1);

--トランクス回転
SE009 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);
setPitch( spep_2 + 32, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 42, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE011, 86 );
setPitch( spep_2 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_2 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE012, 92 );
setPitch( spep_2 + 56, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--トランクス回し蹴り
SE013 = playSeVer2( spep_2 + 66, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE013, 72 );
SE014 = playSeVer2( spep_2 + 70, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE014, 79 );
SE015 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_2 + 106, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_2 + 136, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE018 = playSeVer2( spep_2 + 162, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 162, 1314, "",spep_2 + 282, 0, 24, -1);
SE020 = playSeVer2( spep_2 + 162, 9, "", 0, 0, 0, -1);
setTimeStretch( SE020, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 166;


------------------------------------------------------
-- ベジータラッシュ(236F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
brash_f = entryEffectLife( spep_3 + 0, SP_04, 236, 0x100, -1, 0, 0, 0 );  --ベジータラッシュ　前面 ef_004
setEffMoveKey( spep_3 + 0, brash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 236, brash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, brash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, brash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, brash_f, 0 );
setEffRotateKey( spep_3 + 236, brash_f, 0 );
setEffAlphaKey( spep_3 + 0, brash_f, 255 );
setEffAlphaKey( spep_3 + 236 -1, brash_f, 255 );
setEffAlphaKey( spep_3 + 236, brash_f, 0 );

brash_b = entryEffectLife( spep_3 + 0, SP_05, 236, 0x80, -1, 0, 0, 0 );  --ベジータラッシュ　背面  ef_005
setEffMoveKey( spep_3 + 0, brash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 236, brash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, brash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, brash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, brash_b, 0 );
setEffRotateKey( spep_3 + 236, brash_b, 0 );
setEffAlphaKey( spep_3 + 0, brash_b, 255 );
setEffAlphaKey( spep_3 + 236 -1, brash_b, 255 );
setEffAlphaKey( spep_3 + 236, brash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 80, 1, 1 );
setDisp( spep_3 -3 + 156, 1, 0 );
changeAnime( spep_3 -3 + 80, 1, 106 );
changeAnime( spep_3 -3 + 88, 1, 108 );
changeAnime( spep_3 -3 + 96, 1, 106 );
changeAnime( spep_3 -3 + 104, 1, 108 );
changeAnime( spep_3 -3 + 112, 1, 106 );
changeAnime( spep_3 -3 + 120, 1, 108 );
changeAnime( spep_3 -3 + 130, 1, 106 );
changeAnime( spep_3 -3 + 140, 1, 108 );
changeAnime( spep_3 -3 + 150, 1, 106 );

setMoveKey( spep_3 -3 + 80, 1, 3.8, -47.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 25.4, -45.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 47, -43.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 68.6, -42 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 68.6, -42 , 0 );--
setMoveKey( spep_3 -3 + 88, 1, 94.3, -6.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 98.4, -16.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 92.2, -10.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 98.4, -14.6 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 98.4, -14.6 , 0 );--
setMoveKey( spep_3 -3 + 96, 1, 96.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 100.9, -17.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 94.8, -11.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 100.9, -15.3 , 0 );
setMoveKey( spep_3 -3 + 103, 1, 100.9, -15.3 , 0 );--
setMoveKey( spep_3 -3 + 104, 1, 93.5, -10.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 97.6, -20.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 91.5, -14.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 97.6, -18.8 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 97.6, -18.8 , 0 );--
setMoveKey( spep_3 -3 + 112, 1, 97.6, -5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 101.6, -15.3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 95.5, -9.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 101.6, -13.2 , 0 );
setMoveKey( spep_3 -3 + 119, 1, 101.6, -13.2 , 0 );--
setMoveKey( spep_3 -3 + 120, 1, 95.6, -3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 99.7, -13.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 93.5, -7.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 99.7, -11.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 95.6, -3 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 95.6, -3 , 0 );--
setMoveKey( spep_3 -3 + 130, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 95.7, -8.6 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 101.9, -12.7 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 97.7, -4.5 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 139, 1, 101.9, -14.8 , 0 );--
setMoveKey( spep_3 -3 + 140, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 83.4, 11 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 79.3, 19.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 83.4, 9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 77.3, 15.1 , 0 );--
setMoveKey( spep_3 -3 + 150, 1, 65.2, 10.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 61.1, 19 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 65.2, 8.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 65.2, 8.7 , 0 );

setScaleKey( spep_3 -3 + 80, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 82, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 87, 1, 1.61, 1.61 );--
setScaleKey( spep_3 -3 + 88, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 90, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 92, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 94, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 95, 1, 1.87, 1.87 );--
setScaleKey( spep_3 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 102, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 103, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 104, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 110, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 111, 1, 1.87, 1.87 );--
setScaleKey( spep_3 -3 + 112, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 118, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 119, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 120, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 124, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 126, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 129, 1, 1.9, 1.9 );--
setScaleKey( spep_3 -3 + 130, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 138, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 139, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 140, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 142, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 144, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 149, 1, 1.9, 1.9 );--
setScaleKey( spep_3 -3 + 150, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 156, 1, 1.7, 1.7 );

setRotateKey( spep_3 -3 + 80, 1, -49.9 );
setRotateKey( spep_3 -3 + 87, 1, -49.9 );--
setRotateKey( spep_3 -3 + 88, 1, -3.3 );
setRotateKey( spep_3 -3 + 94, 1, -3.3 );
setRotateKey( spep_3 -3 + 95, 1, -3.3 );--
setRotateKey( spep_3 -3 + 96, 1, -47.7 );
setRotateKey( spep_3 -3 + 98, 1, -45.7 );
setRotateKey( spep_3 -3 + 100, 1, -47.7 );
setRotateKey( spep_3 -3 + 102, 1, -45.7 );
setRotateKey( spep_3 -3 + 103, 1, -45.7 );--
setRotateKey( spep_3 -3 + 104, 1, -13.5 );
setRotateKey( spep_3 -3 + 110, 1, -13.5 );
setRotateKey( spep_3 -3 + 111, 1, -13.5 );--
setRotateKey( spep_3 -3 + 112, 1, -42 );
setRotateKey( spep_3 -3 + 114, 1, -40 );
setRotateKey( spep_3 -3 + 116, 1, -42 );
setRotateKey( spep_3 -3 + 118, 1, -40 );
setRotateKey( spep_3 -3 + 119, 1, -40 );--
setRotateKey( spep_3 -3 + 120, 1, 5.5 );
setRotateKey( spep_3 -3 + 129, 1, 5.5 );--
setRotateKey( spep_3 -3 + 130, 1, -40.7 );
setRotateKey( spep_3 -3 + 132, 1, -38.8 );
setRotateKey( spep_3 -3 + 134, 1, -40.7 );
setRotateKey( spep_3 -3 + 136, 1, -38.8 );
setRotateKey( spep_3 -3 + 138, 1, -40.7 );
setRotateKey( spep_3 -3 + 139, 1, -40.7 );--
setRotateKey( spep_3 -3 + 140, 1, -17.7 );
setRotateKey( spep_3 -3 + 149, 1, -17.7 );--
setRotateKey( spep_3 -3 + 150, 1, -71.9 );
setRotateKey( spep_3 -3 + 152, 1, -69.9 );
setRotateKey( spep_3 -3 + 154, 1, -71.9 );
setRotateKey( spep_3 -3 + 156, 1, -71.9 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 200, 1, 1 );
--setDisp( spep_3 -3 + 239, 1, 0 );
changeAnime( spep_3 -3 + 200, 1, 108 );
changeAnime( spep_3 -3 + 206, 1, 5 );

setMoveKey( spep_3 -3 + 200, 1, 29.5, -33.1 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 58.3, -13.4 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 87.2, 6.2 , 0 );
setMoveKey( spep_3 -3 + 205, 1, 87.2, 6.2 , 0 );--
setMoveKey( spep_3 -3 + 206, 1, 97.6, 9.4 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 103.6, 33.8 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 109.6, 58.3 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 115.6, 82.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 116.4, 120.2 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 132.8, 121.2 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 125.8, 158.7 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 147.4, 175.4 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 139.3, 189.1 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 139.1, 182.1 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 133.6, 195.9 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 143.8, 173.3 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 130.5, 187 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 145.9, 180 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 137.8, 193.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 137.6, 186.8 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 137.3, 187.6 , 0 );
--setMoveKey( spep_3 -3 + 239, 1, 137.3, 187.6 , 0 );

setScaleKey( spep_3 -3 + 200, 1, 3, 3 );
setScaleKey( spep_3 -3 + 205, 1, 3, 3 );--
setScaleKey( spep_3 -3 + 206, 1, 2, 2 );
setScaleKey( spep_3 -3 + 208, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 212, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 214, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 216, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 218, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 222, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 232, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 234, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 236, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 238, 1, 0.32, 0.32 );
--setScaleKey( spep_3 -3 + 239, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 200, 1, 0 );
setRotateKey( spep_3 -3 + 205, 1, 0 );--
setRotateKey( spep_3 -3 + 206, 1, 0 );
setRotateKey( spep_3 -3 + 238, 1, 0 );
--setRotateKey( spep_3 -3 + 239, 1, 0 );

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_3 + 82 +2, 1009, "",spep_3 + 108+2, 0, 8, 0.6);
SE022 = playSeVer2( spep_3 + 82+2, 1110, "",spep_3 + 112+2, 0, 6, -1);
SE023 = playSeVer2( spep_3 + 94+2, 1010, "",spep_3 + 112+2, 0, 4, 0.6);
SE024 = playSeVer2( spep_3 + 94+2, 1110, "",spep_3 + 122+2, 0, 10, -1);
SE025 = playSeVer2( spep_3 + 102+2, 1009, "",spep_3 + 128+2, 0, 8, 0.6);
SE026 = playSeVer2( spep_3 + 102+2, 1110, "",spep_3 + 134+2, 0, 8, -1);
setPitch( spep_3 + 102+2, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_3 + 112+2, 1110, "",spep_3 + 144+2, 0, 8, -1);
SE028 = playSeVer2( spep_3 + 112+2, 1009, "",spep_3 + 138+2, 0, 8, 0.6);
SE029 = playSeVer2( spep_3 + 120+6, 1110, "",spep_3 + 152+4, 0, 8, -1);
SE030 = playSeVer2( spep_3 + 120+6, 1009, "",spep_3 + 146+4, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 120+6, SE030, 89 );
SE031 = playSeVer2( spep_3 + 130+6, 1010, "",spep_3 + 150+4, 0, 6, 0.6);
SE032 = playSeVer2( spep_3 + 130+6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130+6, SE032, 94 );

--ベジータさらに向かっていく
SE033 = playSeVer2( spep_3 + 140, 1278, "",spep_3 + 214, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 140, SE033, 55 );
setPitch( spep_3 + 140, SE033, -300 );
setTimeStretch( SE033, 0.8, 30, 4 );
SE034 = playSeVer2( spep_3 + 150, 1116, "",spep_3 + 196, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 150, SE034, 120 );

--振りかぶる
SE035 = playSeVer2( spep_3 + 182, 1004, "", 0, 0, 0, -1);

--ベジータアッパー
SE036 = playSeVer2( spep_3 + 200, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE037, 89 );
SE037 = playSeVer2( spep_3 + 200, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE038, 65 );
SE038 = playSeVer2( spep_3 + 202, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 202, SE039, 85 );
SE039 = playSeVer2( spep_3 + 202, 1060, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 236;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, 105 );
setRotateKey( spep_4    + 2, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
--[[shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );]]

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE040 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_0 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_0 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_0 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

------------------------------------------------------
-- トランクス突進(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_1 + 0, SP_01r, 96, 0x100, -1, 0, 0, 0 );  --トランクス突進  ef_001
setEffMoveKey( spep_1 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, first_f, 0 );
setEffRotateKey( spep_1 + 96, first_f, 0 );
setEffAlphaKey( spep_1 + 0, first_f, 255 );
setEffAlphaKey( spep_1 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_1 + 96, first_f, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--トランクス向かってくる
SE001 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 0, SE003, 44 );
setTimeStretch( SE003, 1.67, 30, 4 );
SE004 = playSeVer2( spep_1 + 0, 1148, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_1 + 56, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 80 ; --エンドフェイズのフレーム数を置き換える
    
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
spep_2 = spep_1 + 96;


------------------------------------------------------
-- トランクスラッシュ(166F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
trash_f = entryEffectLife( spep_2 + 0, SP_02r, 166, 0x100, -1, 0, 0, 0 );  --トランクスラッシュ　前面    ef_002
setEffMoveKey( spep_2 + 0, trash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, trash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, trash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, trash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, trash_f, 0 );
setEffRotateKey( spep_2 + 166, trash_f, 0 );
setEffAlphaKey( spep_2 + 0, trash_f, 255 );
setEffAlphaKey( spep_2 + 166 -1, trash_f, 255 );
setEffAlphaKey( spep_2 + 166, trash_f, 0 );

trash_b = entryEffectLife( spep_2 + 0, SP_03r, 166, 0x80, -1, 0, 0, 0 );  --トランクスラッシュ　背面 ef_003
setEffMoveKey( spep_2 + 0, trash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, trash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, trash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, trash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, trash_b, 0 );
setEffRotateKey( spep_2 + 166, trash_b, 0 );
setEffAlphaKey( spep_2 + 0, trash_b, 255 );
setEffAlphaKey( spep_2 + 166 -1, trash_b, 255 );
setEffAlphaKey( spep_2 + 166, trash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 93, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 76, 1, 108 );

setMoveKey( spep_2 + 0, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 83.6, 89.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 73.2, 85.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 73.3, 90.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 79.7, 82.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 82, 92 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 79.9, 84 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 84.3, 91 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 86.4, 87.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 88.7, 90.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 90.9, 90.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 93.1, 91.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 95.3, 92 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 97.6, 92.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 99.7, 93.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 102, 93.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 104.1, 94.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 106.4, 95 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 53.7, 53.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 53.7, 54.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 53.8, 54.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 53.8, 55.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 53.9, 55.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 53.9, 56.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 54, 56.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 54, 57.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 54.1, 57.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 54.1, 58.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 54.1, 58.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 54.2, 59.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 54.2, 59.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 54.3, 60.3 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 54.3, 60.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 54.4, 61.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 54.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 54.4, 62.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 51.9, 65 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 165.5, 189.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 287.1, 297.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 396.6, 420.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 451.3, 463.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 493.7, 502.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 540.3, 543.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 586.8, 585.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 633.3, 626.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 75, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 93, 1, 1.25, 1.25 );

setRotateKey( spep_2 + 0, 1, -18.8 );
setRotateKey( spep_2 -3 + 7, 1, -18.8 );
setRotateKey( spep_2 -3 + 8, 1, -48.2 );
setRotateKey( spep_2 -3 + 10, 1, -49.9 );
setRotateKey( spep_2 -3 + 12, 1, -48.2 );
setRotateKey( spep_2 -3 + 14, 1, -49.9 );
setRotateKey( spep_2 -3 + 16, 1, -48.2 );
setRotateKey( spep_2 -3 + 18, 1, -49.9 );
setRotateKey( spep_2 -3 + 20, 1, -48.2 );
setRotateKey( spep_2 -3 + 22, 1, -49.9 );
setRotateKey( spep_2 -3 + 24, 1, -48.2 );
setRotateKey( spep_2 -3 + 26, 1, -49.9 );
setRotateKey( spep_2 -3 + 28, 1, -48.2 );
setRotateKey( spep_2 -3 + 30, 1, -49.9 );
setRotateKey( spep_2 -3 + 32, 1, -48.2 );
setRotateKey( spep_2 -3 + 34, 1, -49.9 );
setRotateKey( spep_2 -3 + 36, 1, -48.2 );
setRotateKey( spep_2 -3 + 38, 1, -49.9 );
setRotateKey( spep_2 -3 + 40, 1, -53.2 );
setRotateKey( spep_2 -3 + 75, 1, -53.2 );
setRotateKey( spep_2 -3 + 76, 1, -41.2 );
setRotateKey( spep_2 -3 + 93, 1, -41.2 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 100, 1, 1 );
setDisp( spep_2 -3 + 162, 1, 0 );
changeAnime( spep_2 -3 + 100, 1, 108 );
changeAnime( spep_2 -3 + 142, 1, 106 );

setMoveKey( spep_2 -3 + 100, 1, -458.1, -130.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -457.1, -129.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -454.1, -128.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -449.1, -127 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -442.1, -124.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -433.1, -121.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -422.1, -118 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -409.1, -113.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -394.1, -108.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -377.1, -102.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -358.1, -96.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -337.1, -89.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -314.1, -81.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -289.1, -73.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -262.1, -64.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -233.1, -54.5 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -202.1, -44.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -169.1, -33.1 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -134.1, -21.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -97.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -58.1, 4.2 , 0 );
setMoveKey( spep_2 -3 + 141, 1, -58.1, 4.2 , 0 );--
setMoveKey( spep_2 -3 + 142, 1, -15.2, 88.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -198.3, 140.7 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -393.5, 209.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -415.7, 215.8 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -452.7, 233.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -485.7, 237.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -518.7, 257.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -544.9, 257 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -583.3, 273.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -605.4, 279.7 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -642.4, 297.1 , 0 );

s1 = 0.2;
setScaleKey( spep_2 -3 + 100, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_2 -3 + 106, 1, 2 -s1, 2 -s1 );
setScaleKey( spep_2 -3 + 108, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_2 -3 + 110, 1, 1.99 -s1, 1.99 -s1 );
setScaleKey( spep_2 -3 + 112, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_2 -3 + 114, 1, 1.98 -s1, 1.98 -s1 );
setScaleKey( spep_2 -3 + 116, 1, 1.97 -s1, 1.97 -s1 );
setScaleKey( spep_2 -3 + 118, 1, 1.96 -s1, 1.96 -s1 );
setScaleKey( spep_2 -3 + 120, 1, 1.95 -s1, 1.95 -s1 );
setScaleKey( spep_2 -3 + 122, 1, 1.94 -s1, 1.94 -s1 );
setScaleKey( spep_2 -3 + 124, 1, 1.93 -s1, 1.93 -s1 );
setScaleKey( spep_2 -3 + 126, 1, 1.92 -s1, 1.92 -s1 );
setScaleKey( spep_2 -3 + 128, 1, 1.9 -s1, 1.9 -s1 );
setScaleKey( spep_2 -3 + 130, 1, 1.89 -s1, 1.89 -s1 );
setScaleKey( spep_2 -3 + 132, 1, 1.87 -s1, 1.87 -s1 );
setScaleKey( spep_2 -3 + 134, 1, 1.86 -s1, 1.86 -s1 );
setScaleKey( spep_2 -3 + 136, 1, 1.84 -s1, 1.84 -s1 );
setScaleKey( spep_2 -3 + 138, 1, 1.82 -s1, 1.82 -s1 );
setScaleKey( spep_2 -3 + 140, 1, 1.8 -s1, 1.8 -s1 );
setScaleKey( spep_2 -3 + 141, 1, 1.8 -s1, 1.8 -s1 );--
setScaleKey( spep_2 -3 + 142, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 162, 1, 1.6, 1.6 );

setRotateKey( spep_2 -3 + 100, 1, 0 );
setRotateKey( spep_2 -3 + 141, 1, 0 );--
setRotateKey( spep_2 -3 + 142, 1, -60.7 );
setRotateKey( spep_2 -3 + 144, 1, -75.1 );
setRotateKey( spep_2 -3 + 146, 1, -89.4 );
setRotateKey( spep_2 -3 + 148, 1, -90.9 );
setRotateKey( spep_2 -3 + 150, 1, -92.5 );
setRotateKey( spep_2 -3 + 152, 1, -94 );
setRotateKey( spep_2 -3 + 154, 1, -95.6 );
setRotateKey( spep_2 -3 + 156, 1, -97.1 );
setRotateKey( spep_2 -3 + 158, 1, -98.6 );
setRotateKey( spep_2 -3 + 160, 1, -100.2 );
setRotateKey( spep_2 -3 + 162, 1, -101.7 );


-- ** 音 ** --
--トランクスパンチ
SE007 = playSeVer2( spep_2 + 2, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 2, 1000, "", 0, 0, 0, -1);

--トランクス回転
SE009 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);
setPitch( spep_2 + 32, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 42, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE011, 86 );
setPitch( spep_2 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_2 + 56, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE012, 92 );
setPitch( spep_2 + 56, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--トランクス回し蹴り
SE013 = playSeVer2( spep_2 + 66, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE013, 72 );
SE014 = playSeVer2( spep_2 + 70, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE014, 79 );
SE015 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_2 + 106, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE017 = playSeVer2( spep_2 + 136, 1120, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE018 = playSeVer2( spep_2 + 162, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 162, 1314, "",spep_2 + 282, 0, 24, -1);
SE020 = playSeVer2( spep_2 + 162, 9, "", 0, 0, 0, -1);
setTimeStretch( SE020, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 166;


------------------------------------------------------
-- ベジータラッシュ(236F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
brash_f = entryEffectLife( spep_3 + 0, SP_04r, 236, 0x100, -1, 0, 0, 0 );  --ベジータラッシュ　前面 ef_004
setEffMoveKey( spep_3 + 0, brash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 236, brash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, brash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, brash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, brash_f, 0 );
setEffRotateKey( spep_3 + 236, brash_f, 0 );
setEffAlphaKey( spep_3 + 0, brash_f, 255 );
setEffAlphaKey( spep_3 + 236 -1, brash_f, 255 );
setEffAlphaKey( spep_3 + 236, brash_f, 0 );

brash_b = entryEffectLife( spep_3 + 0, SP_05, 236, 0x80, -1, 0, 0, 0 );  --ベジータラッシュ　背面  ef_005
setEffMoveKey( spep_3 + 0, brash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 236, brash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, brash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, brash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, brash_b, 0 );
setEffRotateKey( spep_3 + 236, brash_b, 0 );
setEffAlphaKey( spep_3 + 0, brash_b, 255 );
setEffAlphaKey( spep_3 + 236 -1, brash_b, 255 );
setEffAlphaKey( spep_3 + 236, brash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 80, 1, 1 );
setDisp( spep_3 -3 + 156, 1, 0 );
changeAnime( spep_3 -3 + 80, 1, 106 );
changeAnime( spep_3 -3 + 88, 1, 108 );
changeAnime( spep_3 -3 + 96, 1, 106 );
changeAnime( spep_3 -3 + 104, 1, 108 );
changeAnime( spep_3 -3 + 112, 1, 106 );
changeAnime( spep_3 -3 + 120, 1, 108 );
changeAnime( spep_3 -3 + 130, 1, 106 );
changeAnime( spep_3 -3 + 140, 1, 108 );
changeAnime( spep_3 -3 + 150, 1, 106 );

setMoveKey( spep_3 -3 + 80, 1, 3.8, -47.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 25.4, -45.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 47, -43.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 68.6, -42 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 68.6, -42 , 0 );--
setMoveKey( spep_3 -3 + 88, 1, 94.3, -6.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 98.4, -16.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 92.2, -10.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 98.4, -14.6 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 98.4, -14.6 , 0 );--
setMoveKey( spep_3 -3 + 96, 1, 96.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 100.9, -17.4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 94.8, -11.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 100.9, -15.3 , 0 );
setMoveKey( spep_3 -3 + 103, 1, 100.9, -15.3 , 0 );--
setMoveKey( spep_3 -3 + 104, 1, 93.5, -10.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 97.6, -20.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 91.5, -14.7 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 97.6, -18.8 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 97.6, -18.8 , 0 );--
setMoveKey( spep_3 -3 + 112, 1, 97.6, -5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 101.6, -15.3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 95.5, -9.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 101.6, -13.2 , 0 );
setMoveKey( spep_3 -3 + 119, 1, 101.6, -13.2 , 0 );--
setMoveKey( spep_3 -3 + 120, 1, 95.6, -3 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 99.7, -13.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 93.5, -7.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 99.7, -11.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 95.6, -3 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 95.6, -3 , 0 );--
setMoveKey( spep_3 -3 + 130, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 95.7, -8.6 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 101.9, -12.7 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 97.7, -4.5 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 101.9, -14.8 , 0 );
setMoveKey( spep_3 -3 + 139, 1, 101.9, -14.8 , 0 );--
setMoveKey( spep_3 -3 + 140, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 83.4, 11 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 79.3, 19.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 83.4, 9 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 77.3, 15.1 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 77.3, 15.1 , 0 );--
setMoveKey( spep_3 -3 + 150, 1, 65.2, 10.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 61.1, 19 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 65.2, 8.7 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 65.2, 8.7 , 0 );

setScaleKey( spep_3 -3 + 80, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 82, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 87, 1, 1.61, 1.61 );--
setScaleKey( spep_3 -3 + 88, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 90, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 92, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 94, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 95, 1, 1.87, 1.87 );--
setScaleKey( spep_3 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 102, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 103, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 104, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 110, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 111, 1, 1.87, 1.87 );--
setScaleKey( spep_3 -3 + 112, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 118, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 119, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 120, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 124, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 126, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 129, 1, 1.9, 1.9 );--
setScaleKey( spep_3 -3 + 130, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 138, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 139, 1, 1.7, 1.7 );--
setScaleKey( spep_3 -3 + 140, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 142, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 144, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 148, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 149, 1, 1.9, 1.9 );--
setScaleKey( spep_3 -3 + 150, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 156, 1, 1.7, 1.7 );

setRotateKey( spep_3 -3 + 80, 1, -49.9 );
setRotateKey( spep_3 -3 + 87, 1, -49.9 );--
setRotateKey( spep_3 -3 + 88, 1, -3.3 );
setRotateKey( spep_3 -3 + 94, 1, -3.3 );
setRotateKey( spep_3 -3 + 95, 1, -3.3 );--
setRotateKey( spep_3 -3 + 96, 1, -47.7 );
setRotateKey( spep_3 -3 + 98, 1, -45.7 );
setRotateKey( spep_3 -3 + 100, 1, -47.7 );
setRotateKey( spep_3 -3 + 102, 1, -45.7 );
setRotateKey( spep_3 -3 + 103, 1, -45.7 );--
setRotateKey( spep_3 -3 + 104, 1, -13.5 );
setRotateKey( spep_3 -3 + 110, 1, -13.5 );
setRotateKey( spep_3 -3 + 111, 1, -13.5 );--
setRotateKey( spep_3 -3 + 112, 1, -42 );
setRotateKey( spep_3 -3 + 114, 1, -40 );
setRotateKey( spep_3 -3 + 116, 1, -42 );
setRotateKey( spep_3 -3 + 118, 1, -40 );
setRotateKey( spep_3 -3 + 119, 1, -40 );--
setRotateKey( spep_3 -3 + 120, 1, 5.5 );
setRotateKey( spep_3 -3 + 129, 1, 5.5 );--
setRotateKey( spep_3 -3 + 130, 1, -40.7 );
setRotateKey( spep_3 -3 + 132, 1, -38.8 );
setRotateKey( spep_3 -3 + 134, 1, -40.7 );
setRotateKey( spep_3 -3 + 136, 1, -38.8 );
setRotateKey( spep_3 -3 + 138, 1, -40.7 );
setRotateKey( spep_3 -3 + 139, 1, -40.7 );--
setRotateKey( spep_3 -3 + 140, 1, -17.7 );
setRotateKey( spep_3 -3 + 149, 1, -17.7 );--
setRotateKey( spep_3 -3 + 150, 1, -71.9 );
setRotateKey( spep_3 -3 + 152, 1, -69.9 );
setRotateKey( spep_3 -3 + 154, 1, -71.9 );
setRotateKey( spep_3 -3 + 156, 1, -71.9 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 200, 1, 1 );
--setDisp( spep_3 -3 + 239, 1, 0 );
changeAnime( spep_3 -3 + 200, 1, 108 );
changeAnime( spep_3 -3 + 206, 1, 5 );

setMoveKey( spep_3 -3 + 200, 1, 29.5, -33.1 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 58.3, -13.4 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 87.2, 6.2 , 0 );
setMoveKey( spep_3 -3 + 205, 1, 87.2, 6.2 , 0 );--
setMoveKey( spep_3 -3 + 206, 1, 97.6, 9.4 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 103.6, 33.8 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 109.6, 58.3 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 115.6, 82.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 116.4, 120.2 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 132.8, 121.2 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 125.8, 158.7 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 147.4, 175.4 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 139.3, 189.1 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 139.1, 182.1 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 133.6, 195.9 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 143.8, 173.3 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 130.5, 187 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 145.9, 180 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 137.8, 193.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 137.6, 186.8 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 137.3, 187.6 , 0 );
--setMoveKey( spep_3 -3 + 239, 1, 137.3, 187.6 , 0 );

setScaleKey( spep_3 -3 + 200, 1, 3, 3 );
setScaleKey( spep_3 -3 + 205, 1, 3, 3 );--
setScaleKey( spep_3 -3 + 206, 1, 2, 2 );
setScaleKey( spep_3 -3 + 208, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 210, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 212, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 214, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 216, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 218, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 220, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 222, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 232, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 234, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 236, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 238, 1, 0.32, 0.32 );
--setScaleKey( spep_3 -3 + 239, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 200, 1, 0 );
setRotateKey( spep_3 -3 + 205, 1, 0 );--
setRotateKey( spep_3 -3 + 206, 1, 0 );
setRotateKey( spep_3 -3 + 238, 1, 0 );
--setRotateKey( spep_3 -3 + 239, 1, 0 );

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_3 + 82 +2, 1009, "",spep_3 + 108+2, 0, 8, 0.6);
SE022 = playSeVer2( spep_3 + 82+2, 1110, "",spep_3 + 112+2, 0, 6, -1);
SE023 = playSeVer2( spep_3 + 94+2, 1010, "",spep_3 + 112+2, 0, 4, 0.6);
SE024 = playSeVer2( spep_3 + 94+2, 1110, "",spep_3 + 122+2, 0, 10, -1);
SE025 = playSeVer2( spep_3 + 102+2, 1009, "",spep_3 + 128+2, 0, 8, 0.6);
SE026 = playSeVer2( spep_3 + 102+2, 1110, "",spep_3 + 134+2, 0, 8, -1);
setPitch( spep_3 + 102+2, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_3 + 112+2, 1110, "",spep_3 + 144+2, 0, 8, -1);
SE028 = playSeVer2( spep_3 + 112+2, 1009, "",spep_3 + 138+2, 0, 8, 0.6);
SE029 = playSeVer2( spep_3 + 120+6, 1110, "",spep_3 + 152+4, 0, 8, -1);
SE030 = playSeVer2( spep_3 + 120+6, 1009, "",spep_3 + 146+4, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 120+6, SE030, 89 );
SE031 = playSeVer2( spep_3 + 130+6, 1010, "",spep_3 + 150+4, 0, 6, 0.6);
SE032 = playSeVer2( spep_3 + 130+6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130+6, SE032, 94 );

--ベジータさらに向かっていく
SE033 = playSeVer2( spep_3 + 140, 1278, "",spep_3 + 214, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 140, SE033, 55 );
setPitch( spep_3 + 140, SE033, -300 );
setTimeStretch( SE033, 0.8, 30, 4 );
SE034 = playSeVer2( spep_3 + 150, 1116, "",spep_3 + 196, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 150, SE034, 120 );

--振りかぶる
SE035 = playSeVer2( spep_3 + 182, 1004, "", 0, 0, 0, -1);

--ベジータアッパー
SE036 = playSeVer2( spep_3 + 200, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE037, 89 );
SE037 = playSeVer2( spep_3 + 200, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE038, 65 );
SE038 = playSeVer2( spep_3 + 202, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 202, SE039, 85 );
SE039 = playSeVer2( spep_3 + 202, 1060, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 236;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, 105 );
setRotateKey( spep_4    + 2, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
--[[shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );]]

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE040 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

end