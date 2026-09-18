--1022960:UR超サイヤ人孫悟空_かめはめ波_sp2263
--sp_effect_a1_00314

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
SP_01 = 157981;  --対峙　手前   ef_001_f
SP_02 = 157983;  --対峙　奥    ef_001_b
SP_03 = 157984;  --構え　→　オーラ纏う  ef_002
SP_04 = 157986;  --敵に向かう   ef_003
SP_05 = 157987;  --アッパー　手前 ef_004_f
SP_06 = 157989;  --アッパー　奥  ef_004_b
SP_07 = 157990;  --敵に突っ込む  ef_005
SP_08 = 157991;  --殴る(手のみ) ef_006
SP_09 = 157992;  --ヒットエフェクト    ef_007
SP_10 = 157993;  --殴った後→かめはめ波の構え 手前    ef_008_f
SP_11 = 157994;  --殴った後→かめはめ波の構え　奥 ef_008_b
SP_12 = 157995;  --かめはめ波   ef_009
SP_13 = 157996;  --かめはめ波が敵に向かう 手前  ef_010_f
SP_14 = 157998;  --かめはめ波が敵に向かう　奥   ef_010_b
SP_15 = 157999;  --フィニッシュ絵 ef_011

--敵側
SP_01r = 157982;  --対峙　手前　敵側    ef_001_f_r
SP_03r = 157985;  --構え　→　オーラ纏う　敵側   ef_002_r
SP_05r = 157988;  --アッパー　敵側　手前  ef_004_f_r
SP_13r = 157997;  --かめはめ波が敵に向かう 手前 敵側   ef_010_f_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 対峙(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --対峙　手前    ef_001_f
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 76, 0x80, -1, 0, 0, 0 );  --対峙　奥  ef_001_b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 76, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 76, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 156.2, 249.9 , 0 );
setMoveKey( spep_0 + 1, 1, 157.5, 249.9 , 0 );
setMoveKey( spep_0 + 2, 1, 158.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 160.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 160.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 161.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 161.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 162.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 164, 249.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 165.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 166.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 167.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 169.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 171.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 173, 249.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 174.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 175.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 176.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 178.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 179.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 180.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 182.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 183.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 184.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 186, 249.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 187.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 188.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 189.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 191.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 192.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 193.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 195, 249.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 196.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 197.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 198.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 200.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 201.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 202.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 204.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 205.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 206.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 206.7, 249.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 3, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 4, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 5, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 79, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 79, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +126 +166 +56 + 36, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 構え　→　オーラ纏う(166F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
pose = entryEffectLife( spep_1 + 0, SP_03, 166, 0x100, -1, 0, 0, 0 );  --構え　→　オーラ纏う ef_002
setEffMoveKey( spep_1 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, pose, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pose, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, pose, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pose, 0 );
setEffRotateKey( spep_1 + 166, pose, 0 );
setEffAlphaKey( spep_1 + 0, pose, 255 );
setEffAlphaKey( spep_1 + 166 -1, pose, 255 );
setEffAlphaKey( spep_1 + 166, pose, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_1 + 8, 1018, "", 0, 0, 0, -1);

--拳握る
SE004 = playSeVer2( spep_1 + 76, 1233, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE004, 71 );
setStartTimeMs( SE004,  33 );

--拳握る
SE005 = playSeVer2( spep_1 + 86, 1330, "",spep_1 + 130, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE005, 70 );
setPitch( spep_1 + 86, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );

--気ダメ
SE006 = playSeVer2( spep_1 + 122, 1035, "", 0, 0, 0, -1);

--気合いれる
SE007 = playSeVer2( spep_1 + 164, 1068, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;


------------------------------------------------------
-- 敵に向かう(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --敵に向かう   ef_003
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 44 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_2 + 36, 9, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- アッパー(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffectLife( spep_3 + 0, SP_05, 66, 0x100, -1, 0, 0, 0 );  --アッパー　手前  ef_004_f
setEffMoveKey( spep_3 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_f, 0 );
setEffRotateKey( spep_3 + 66, upper_f, 0 );
setEffAlphaKey( spep_3 + 0, upper_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, upper_f, 255 );
setEffAlphaKey( spep_3 + 66, upper_f, 0 );

upper_b = entryEffectLife( spep_3 + 0, SP_06, 66, 0x80, -1, 0, 0, 0 );  --アッパー　奥    ef_004_b
setEffMoveKey( spep_3 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_b, 0 );
setEffRotateKey( spep_3 + 66, upper_b, 0 );
setEffAlphaKey( spep_3 + 0, upper_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, upper_b, 255 );
setEffAlphaKey( spep_3 + 66, upper_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 66, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 18, 1, 106 );

setMoveKey( spep_3 + 0, 1, 112.1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 112.1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 43.2, 12.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 103.3, 99.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 88.9, 101.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 104.1, 210.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 163.8, 227.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 128.4, 284.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 142.7, 266.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 135.8, 265.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 135.1, 272.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 134.3, 279.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 136.1, 286.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 137.9, 293.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 136.5, 294.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 135, 294.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 129.7, 300.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 124.3, 306.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 126.6, 313.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 128.9, 319.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 129.4, 325.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 129.8, 330.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 130.3, 335.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 130.8, 341.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 131.3, 346.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 131.7, 351.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 132.2, 357 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 132.7, 362.3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 132.7, 362.3 , 0 );

setScaleKey( spep_3 + 0, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 18, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 20, 1, 3.336, 3.336 );
setScaleKey( spep_3 -3 + 22, 1, 3.312, 3.312 );
setScaleKey( spep_3 -3 + 24, 1, 3.288, 3.288 );
setScaleKey( spep_3 -3 + 26, 1, 3.264, 3.264 );
setScaleKey( spep_3 -3 + 28, 1, 3.24, 3.24 );
setScaleKey( spep_3 -3 + 30, 1, 3.216, 3.216 );
setScaleKey( spep_3 -3 + 32, 1, 3.192, 3.192 );
setScaleKey( spep_3 -3 + 34, 1, 3.168, 3.168 );
setScaleKey( spep_3 -3 + 36, 1, 3.144, 3.144 );
setScaleKey( spep_3 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 40, 1, 3.096, 3.096 );
setScaleKey( spep_3 -3 + 42, 1, 3.072, 3.072 );
setScaleKey( spep_3 -3 + 44, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 46, 1, 3.036, 3.036 );
setScaleKey( spep_3 -3 + 48, 1, 3.012, 3.012 );
setScaleKey( spep_3 -3 + 50, 1, 2.988, 2.988 );
setScaleKey( spep_3 -3 + 52, 1, 2.964, 2.964 );
setScaleKey( spep_3 -3 + 54, 1, 2.94, 2.94 );
setScaleKey( spep_3 -3 + 56, 1, 2.916, 2.916 );
setScaleKey( spep_3 -3 + 58, 1, 2.892, 2.892 );
setScaleKey( spep_3 -3 + 60, 1, 2.868, 2.868 );
setScaleKey( spep_3 -3 + 62, 1, 2.844, 2.844 );
setScaleKey( spep_3 -3 + 64, 1, 2.82, 2.82 );
setScaleKey( spep_3 -3 + 66, 1, 2.796, 2.796 );
setScaleKey( spep_3 -3 + 68, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 69, 1, 2.772, 2.772 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, -67 );
setRotateKey( spep_3 -3 + 20, 1, -65.9 );
setRotateKey( spep_3 -3 + 22, 1, -64.8 );
setRotateKey( spep_3 -3 + 24, 1, -63.6 );
setRotateKey( spep_3 -3 + 26, 1, -62.5 );
setRotateKey( spep_3 -3 + 28, 1, -61.4 );
setRotateKey( spep_3 -3 + 30, 1, -60.3 );
setRotateKey( spep_3 -3 + 32, 1, -59.2 );
setRotateKey( spep_3 -3 + 34, 1, -58 );
setRotateKey( spep_3 -3 + 36, 1, -56.9 );
setRotateKey( spep_3 -3 + 38, 1, -55.8 );
setRotateKey( spep_3 -3 + 40, 1, -54.7 );
setRotateKey( spep_3 -3 + 42, 1, -53.6 );
setRotateKey( spep_3 -3 + 44, 1, -52.4 );
setRotateKey( spep_3 -3 + 46, 1, -51.3 );
setRotateKey( spep_3 -3 + 48, 1, -50.2 );
setRotateKey( spep_3 -3 + 50, 1, -49.1 );
setRotateKey( spep_3 -3 + 52, 1, -48 );
setRotateKey( spep_3 -3 + 54, 1, -46.8 );
setRotateKey( spep_3 -3 + 56, 1, -45.7 );
setRotateKey( spep_3 -3 + 58, 1, -44.6 );
setRotateKey( spep_3 -3 + 60, 1, -43.5 );
setRotateKey( spep_3 -3 + 62, 1, -42.4 );
setRotateKey( spep_3 -3 + 64, 1, -41.2 );
setRotateKey( spep_3 -3 + 66, 1, -40.1 );
setRotateKey( spep_3 -3 + 68, 1, -39 );
setRotateKey( spep_3 -3 + 69, 1, -39 );

-- ** 音 ** --
--アッパー
SE009 = playSeVer2( spep_3 + 4, 1003, "", 0, 0, 0, -1);

--アッパー
SE010 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE010, 83 );

--アッパー
SE011 = playSeVer2( spep_3 + 10, 1010, "", 0, 0, 0, -1);

--悟空向かってくる
SE012 = playSeVer2( spep_3 + 58, 1182, "", 0, 0, 0, -1);

--悟空向かってくる
SE013 = playSeVer2( spep_3 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE013, 51 );

--悟空向かってくる
SE014 = playSeVer2( spep_3 + 58, 1314, "",spep_3 +66 +46 +36 + 0, 0, 10, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;


------------------------------------------------------
-- 敵に突っ込む(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
plunge = entryEffectLife( spep_4 + 0, SP_07, 46, 0x100, -1, 0, 0, 0 );  --敵に突っ込む    ef_005
setEffMoveKey( spep_4 + 0, plunge, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, plunge, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, plunge, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, plunge, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, plunge, 0 );
setEffRotateKey( spep_4 + 46, plunge, 0 );
setEffAlphaKey( spep_4 + 0, plunge, 255 );
setEffAlphaKey( spep_4 + 46 -1, plunge, 255 );
setEffAlphaKey( spep_4 + 46, plunge, 0 );

-- ** 音 ** --
--振りかぶる
playSeVer2( spep_4 + 42, 1116, "",spep_4 +78, 0, 10, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;


------------------------------------------------------
-- 殴る(手のみ)(36F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_5 + 0, SP_08, 36, 0x100, -1, 0, 0, 0 );  --殴る(手のみ)    ef_006
setEffMoveKey( spep_5 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 36, punch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, punch, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch, 0 );
setEffRotateKey( spep_5 + 36, punch, 0 );
setEffAlphaKey( spep_5 + 0, punch, 255 );
setEffAlphaKey( spep_5 + 36 -1, punch, 255 );
setEffAlphaKey( spep_5 + 36, punch, 0 );

-- ** 音 ** --

--パンチ
SE016 = playSeVer2( spep_5 + 26, 1189, "", 0, 0, 0, -1);

--パンチ
SE017 = playSeVer2( spep_5 + 32, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;


------------------------------------------------------
-- ヒットエフェクト(6F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_6 + 0, SP_09, 6, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト  ef_007
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 6, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 6, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 6, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 6 -1, hit, 255 );
setEffAlphaKey( spep_6 + 6, hit, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_6 + 0, 0, 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 6;


------------------------------------------------------
-- 殴った後→かめはめ波の構え(96F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_7 + 0, SP_10, 96 +2, 0x100, -1, 0, 0, 0 );  --殴った後→かめはめ波の構え 手前   ef_008_f
setEffMoveKey( spep_7 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_7 +2 + 96, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_7 +2 + 96, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame_f, 0 );
setEffRotateKey( spep_7 +2 + 96, tame_f, 0 );
setEffAlphaKey( spep_7 + 0, tame_f, 255 );
setEffAlphaKey( spep_7 +2 + 96 -1, tame_f, 255 );
setEffAlphaKey( spep_7 +2 + 96, tame_f, 0 );

tame_b = entryEffectLife( spep_7 + 0, SP_11, 96 +2, 0x80, -1, 0, 0, 0 );  --殴った後→かめはめ波の構え　奥 ef_008_b
setEffMoveKey( spep_7 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_7 +2 + 96, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_7 +2 + 96, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame_b, 0 );
setEffRotateKey( spep_7 +2 + 96, tame_b, 0 );
setEffAlphaKey( spep_7 + 0, tame_b, 255 );
setEffAlphaKey( spep_7 +2 + 96 -1, tame_b, 255 );
setEffAlphaKey( spep_7 +2 + 96, tame_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 +2 -3 + 18, 1, 0 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, -26.4, -157.2 , 0 );
setMoveKey( spep_7 + 1, 1, -26.4, -157.2 , 0 );
setMoveKey( spep_7 + 2, 1, -26.4, -157.2 , 0 );
setMoveKey( spep_7 +2 + 1, 1, 42.3, -198.2 , 0 );
setMoveKey( spep_7 +3 + 2, 1, 88.1, -277.4 , 0 );
setMoveKey( spep_7 +4 -3 + 6, 1, 137.1, -318 , 0 );
setMoveKey( spep_7 +4 -3 + 8, 1, 188.8, -368.1 , 0 );
setMoveKey( spep_7 +4 -3 + 10, 1, 249.6, -422.8 , 0 );
setMoveKey( spep_7 +4 -3 + 12, 1, 310.4, -477.5 , 0 );
setMoveKey( spep_7 +4 -3 + 14, 1, 366.4, -530.8 , 0 );
setMoveKey( spep_7 +4 -3 + 18, 1, 366.4, -530.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.666, 1.666 );
setScaleKey( spep_7 + 1, 1, 1.666, 1.666 );
setScaleKey( spep_7 + 2, 1, 1.666, 1.666 );
setScaleKey( spep_7 +2 + 1, 1, 2.352, 2.352 );
setScaleKey( spep_7 +3 + 2, 1, 3.024, 3.024 );
setScaleKey( spep_7 +4 -3 + 6, 1, 3.71, 3.71 );
setScaleKey( spep_7 +4 -3 + 8, 1, 4.382, 4.382 );
setScaleKey( spep_7 +4 -3 + 10, 1, 5.068, 5.068 );
setScaleKey( spep_7 +4 -3 + 12, 1, 5.74, 5.74 );
setScaleKey( spep_7 +4 -3 + 14, 1, 6.426, 6.426 );
setScaleKey( spep_7 +4 -3 + 18, 1, 6.426, 6.426 );

setRotateKey( spep_7 + 0, 1, -6 );
setRotateKey( spep_7 + 1, 1, -6 );
setRotateKey( spep_7 + 2, 1, -6 );
setRotateKey( spep_7 +2 + 1, 1, -2.9 );
setRotateKey( spep_7 +3 + 2, 1, 0.2 );
setRotateKey( spep_7 +4 -3 + 6, 1, 3.3 );
setRotateKey( spep_7 +4 -3 + 8, 1, 6.5 );
setRotateKey( spep_7 +4 -3 + 10, 1, 9.6 );
setRotateKey( spep_7 +4 -3 + 12, 1, 12.7 );
setRotateKey( spep_7 +4 -3 + 14, 1, 15.8 );
setRotateKey( spep_7 +4 -3 + 18, 1, 15.8 );

-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_7 +2 + 22, 1131, "",spep_7 +2 +98 + 0, 0, 4, -1);
setSeVolumeByWorkId( spep_7 +2 + 22, SE018, 89 );

--かめはめ波溜め
SE019 = playSeVer2( spep_7 +2 + 22, 1132, "",spep_7 +2 +98 + 0, 0, 4, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_7 +2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 +2 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

--かめはめ波発射
SE021 = playSeVer2( spep_8 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 90, SE021, 85 );

--かめはめ波発射
SE022 = playSeVer2( spep_8 + 90, 1022, "", 0, 0, 0, -1);

--かめはめ波発射
SE023 = playSeVer2( spep_8 + 90, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 +90, SE023, 81 );

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- かめはめ波(106F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_9 + 0, SP_12, 106, 0x100, -1, 0, 0, 0 );  --かめはめ波  ef_009
setEffMoveKey( spep_9 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_9 + 106, shot, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_9 + 106, shot, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, shot, 0 );
setEffRotateKey( spep_9 + 106, shot, 0 );
setEffAlphaKey( spep_9 + 0, shot, 255 );
setEffAlphaKey( spep_9 + 106 -1, shot, 255 );
setEffAlphaKey( spep_9 + 106, shot, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_9 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 106;


------------------------------------------------------
-- かめはめ波が敵に向かう(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
chase_f = entryEffectLife( spep_10 + 0, SP_13, 76, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に向かう 手前  ef_010_f
setEffMoveKey( spep_10 + 0, chase_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, chase_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, chase_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, chase_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, chase_f, 0 );
setEffRotateKey( spep_10 + 76, chase_f, 0 );
setEffAlphaKey( spep_10 + 0, chase_f, 255 );
setEffAlphaKey( spep_10 + 76 -1, chase_f, 255 );
setEffAlphaKey( spep_10 + 76, chase_f, 0 );

chase_b = entryEffectLife( spep_10 + 0, SP_14, 76, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に向かう　奥    ef_010_b
setEffMoveKey( spep_10 + 0, chase_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, chase_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, chase_b, 0 );
setEffRotateKey( spep_10 + 76, chase_b, 0 );
setEffAlphaKey( spep_10 + 0, chase_b, 255 );
setEffAlphaKey( spep_10 + 76 -1, chase_b, 255 );
setEffAlphaKey( spep_10 + 76, chase_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 79, 1, 0 );
changeAnime( spep_10 + 0, 1, 107 );

setBlendColor( spep_10 + 0, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_10 + 1, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_10 + 2, 1, 3, 0, 0, 0, 0.012 );
setBlendColor( spep_10 -3 + 6, 1, 3, 0, 0, 0, 0.023 );
setBlendColor( spep_10 -3 + 8, 1, 3, 0, 0, 0, 0.046 );
setBlendColor( spep_10 -3 + 10, 1, 3, 0, 0, 0, 0.069 );
setBlendColor( spep_10 -3 + 12, 1, 3, 0, 0, 0, 0.092 );
setBlendColor( spep_10 -3 + 14, 1, 3, 0, 0, 0, 0.115 );
setBlendColor( spep_10 -3 + 16, 1, 3, 0, 0, 0, 0.138 );
setBlendColor( spep_10 -3 + 18, 1, 3, 0, 0, 0, 0.161 );
setBlendColor( spep_10 -3 + 20, 1, 3, 0, 0, 0, 0.184 );
setBlendColor( spep_10 -3 + 22, 1, 3, 0, 0, 0, 0.207 );
setBlendColor( spep_10 -3 + 24, 1, 3, 0, 0, 0, 0.23 );
setBlendColor( spep_10 -3 + 26, 1, 3, 0, 0, 0, 0.253 );
setBlendColor( spep_10 -3 + 28, 1, 3, 0, 0, 0, 0.276 );
setBlendColor( spep_10 -3 + 30, 1, 3, 0, 0, 0, 0.299 );
setBlendColor( spep_10 -3 + 32, 1, 3, 0, 0, 0, 0.322 );
setBlendColor( spep_10 -3 + 34, 1, 3, 0, 0, 0, 0.345 );
setBlendColor( spep_10 -3 + 36, 1, 3, 0, 0, 0, 0.368 );
setBlendColor( spep_10 -3 + 38, 1, 3, 0, 0, 0, 0.391 );
setBlendColor( spep_10 -3 + 40, 1, 3, 0, 0, 0, 0.414 );
setBlendColor( spep_10 -3 + 42, 1, 3, 0, 0, 0, 0.437 );
setBlendColor( spep_10 -3 + 44, 1, 3, 0, 0, 0, 0.46 );
setBlendColor( spep_10 -3 + 46, 1, 3, 0, 0, 0, 0.483 );
setBlendColor( spep_10 -3 + 48, 1, 3, 0, 0, 0, 0.506 );
setBlendColor( spep_10 -3 + 50, 1, 3, 0, 0, 0, 0.529 );
setBlendColor( spep_10 -3 + 52, 1, 3, 0, 0, 0, 0.552 );
setBlendColor( spep_10 -3 + 54, 1, 3, 0, 0, 0, 0.575 );
setBlendColor( spep_10 -3 + 56, 1, 3, 0, 0, 0, 0.598 );
setBlendColor( spep_10 -3 + 58, 1, 3, 0, 0, 0, 0.621 );
setBlendColor( spep_10 -3 + 60, 1, 3, 0, 0, 0, 0.644 );
setBlendColor( spep_10 -3 + 62, 1, 3, 0, 0, 0, 0.667 );
setBlendColor( spep_10 -3 + 64, 1, 3, 0, 0, 0, 0.69 );
setBlendColor( spep_10 -3 + 66, 1, 3, 0, 0, 0, 0.713 );
setBlendColor( spep_10 -3 + 78, 1, 3, 0, 0, 0, 0.736 );
setBlendColor( spep_10 -3 + 70, 1, 3, 0, 0, 0, 0.759 );
setBlendColor( spep_10 -3 + 72, 1, 3, 0, 0, 0, 0.782 );
setBlendColor( spep_10 -3 + 74, 1, 3, 0, 0, 0, 0.805 );
setBlendColor( spep_10 -3 + 76, 1, 3, 0, 0, 0, 0.828 );
setBlendColor( spep_10 -3 + 78, 1, 3, 0, 0, 0, 0.851 );
setBlendColor( spep_10 -3 + 79, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_10 + 0, 1, 155.9, 5.3 , 0 );
setMoveKey( spep_10 + 1, 1, 153.3, 6.6 , 0 );
setMoveKey( spep_10 + 2, 1, 151, 7.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 148.9, 8.9 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 146.9, 9.9 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 145.1, 10.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 143.5, 11.7 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 142.1, 12.4 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 141, 13.1 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 140, 13.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 139.3, 14 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 138.7, 14.3 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 138.5, 14.5 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 138.3, 14.6 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 138.6, 14.5 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 139, 14.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 139.6, 13.9 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 140.4, 13.4 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 141.6, 12.7 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 143, 11.9 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 146.1, 12.5 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 149.5, 12.9 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 148.5, 11.5 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 147.5, 9.9 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 156.3, 5.1 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 152.9, 9.4 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 159, 16.4 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 165.2, 7.5 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 165.4, 1.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 165.7, 2 , 0 );
setMoveKey( spep_10 -3 + 60, 1, 172.6, -4.1 , 0 );
setMoveKey( spep_10 -3 + 62, 1, 173.1, -4 , 0 );
setMoveKey( spep_10 -3 + 64, 1, 179.9, -4.2 , 0 );
setMoveKey( spep_10 -3 + 66, 1, 183.6, -10.8 , 0 );
setMoveKey( spep_10 -3 + 68, 1, 184.2, -11.1 , 0 );
setMoveKey( spep_10 -3 + 70, 1, 191, -11.8 , 0 );
setMoveKey( spep_10 -3 + 72, 1, 194.5, -18.7 , 0 );
setMoveKey( spep_10 -3 + 74, 1, 191.7, -25.6 , 0 );
setMoveKey( spep_10 -3 + 76, 1, 189, -23 , 0 );
setMoveKey( spep_10 -3 + 78, 1, 195.7, -23.8 , 0 );
setMoveKey( spep_10 -3 + 79, 1, 195.7, -23.8 , 0 );

setScaleKey( spep_10 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_10 + 1, 1, 0.79, 0.79 );
setScaleKey( spep_10 -3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_10 -3 + 10, 1, 0.8, 0.8 );
setScaleKey( spep_10 -3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_10 -3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_10 -3 + 16, 1, 0.82, 0.83 );
setScaleKey( spep_10 -3 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 20, 1, 0.85, 0.86 );
setScaleKey( spep_10 -3 + 22, 1, 0.87, 0.88 );
setScaleKey( spep_10 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_10 -3 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_10 -3 + 28, 1, 0.95, 0.95 );
setScaleKey( spep_10 -3 + 30, 1, 0.97, 0.98 );
setScaleKey( spep_10 -3 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_10 -3 + 34, 1, 1.04, 1.05 );
setScaleKey( spep_10 -3 + 36, 1, 1.07, 1.08 );
setScaleKey( spep_10 -3 + 38, 1, 1.11, 1.12 );
setScaleKey( spep_10 -3 + 40, 1, 1.15, 1.16 );
setScaleKey( spep_10 -3 + 42, 1, 1.19, 1.2 );
setScaleKey( spep_10 -3 + 44, 1, 1.24, 1.25 );
setScaleKey( spep_10 -3 + 46, 1, 1.28, 1.29 );
setScaleKey( spep_10 -3 + 48, 1, 1.33, 1.34 );
setScaleKey( spep_10 -3 + 50, 1, 1.38, 1.39 );
setScaleKey( spep_10 -3 + 52, 1, 1.43, 1.44 );
setScaleKey( spep_10 -3 + 54, 1, 1.48, 1.49 );
setScaleKey( spep_10 -3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_10 -3 + 58, 1, 1.57, 1.58 );
setScaleKey( spep_10 -3 + 60, 1, 1.62, 1.63 );
setScaleKey( spep_10 -3 + 62, 1, 1.67, 1.68 );
setScaleKey( spep_10 -3 + 64, 1, 1.72, 1.72 );
setScaleKey( spep_10 -3 + 66, 1, 1.76, 1.77 );
setScaleKey( spep_10 -3 + 68, 1, 1.8, 1.81 );
setScaleKey( spep_10 -3 + 70, 1, 1.84, 1.85 );
setScaleKey( spep_10 -3 + 72, 1, 1.88, 1.88 );
setScaleKey( spep_10 -3 + 74, 1, 1.91, 1.92 );
setScaleKey( spep_10 -3 + 76, 1, 1.94, 1.95 );
setScaleKey( spep_10 -3 + 78, 1, 1.97, 1.97 );
setScaleKey( spep_10 -3 + 79, 1, 1.97, 1.97 );

setRotateKey( spep_10 + 0, 1, -75 );
setRotateKey( spep_10 + 1, 1, -74.3 );
setRotateKey( spep_10 + 2, 1, -73.6 );
setRotateKey( spep_10 -3 + 6, 1, -73 );
setRotateKey( spep_10 -3 + 8, 1, -72.3 );
setRotateKey( spep_10 -3 + 10, 1, -71.6 );
setRotateKey( spep_10 -3 + 12, 1, -70.9 );
setRotateKey( spep_10 -3 + 14, 1, -70.2 );
setRotateKey( spep_10 -3 + 16, 1, -69.5 );
setRotateKey( spep_10 -3 + 18, 1, -68.9 );
setRotateKey( spep_10 -3 + 20, 1, -68.2 );
setRotateKey( spep_10 -3 + 22, 1, -67.5 );
setRotateKey( spep_10 -3 + 24, 1, -66.8 );
setRotateKey( spep_10 -3 + 26, 1, -66.1 );
setRotateKey( spep_10 -3 + 28, 1, -65.5 );
setRotateKey( spep_10 -3 + 30, 1, -64.8 );
setRotateKey( spep_10 -3 + 32, 1, -64.1 );
setRotateKey( spep_10 -3 + 34, 1, -63.4 );
setRotateKey( spep_10 -3 + 36, 1, -62.7 );
setRotateKey( spep_10 -3 + 38, 1, -62.1 );
setRotateKey( spep_10 -3 + 40, 1, -61.4 );
setRotateKey( spep_10 -3 + 42, 1, -60.7 );
setRotateKey( spep_10 -3 + 44, 1, -60 );
setRotateKey( spep_10 -3 + 46, 1, -59.3 );
setRotateKey( spep_10 -3 + 48, 1, -58.6 );
setRotateKey( spep_10 -3 + 50, 1, -58 );
setRotateKey( spep_10 -3 + 52, 1, -57.3 );
setRotateKey( spep_10 -3 + 54, 1, -56.6 );
setRotateKey( spep_10 -3 + 56, 1, -55.9 );
setRotateKey( spep_10 -3 + 58, 1, -55.2 );
setRotateKey( spep_10 -3 + 60, 1, -54.6 );
setRotateKey( spep_10 -3 + 62, 1, -53.9 );
setRotateKey( spep_10 -3 + 64, 1, -53.2 );
setRotateKey( spep_10 -3 + 66, 1, -52.5 );
setRotateKey( spep_10 -3 + 68, 1, -51.8 );
setRotateKey( spep_10 -3 + 70, 1, -51.1 );
setRotateKey( spep_10 -3 + 72, 1, -50.5 );
setRotateKey( spep_10 -3 + 74, 1, -49.8 );
setRotateKey( spep_10 -3 + 76, 1, -49.1 );
setRotateKey( spep_10 -3 + 78, 1, -48.4 );
setRotateKey( spep_10 -3 + 79, 1, -48.4 );

-- ** 音 ** --
--気弾飲み込まれる
SE024 = playSeVer2( spep_10 + 0, 1021, "", 0, 0, 0, -1);

--ヒット
SE025 = playSeVer2( spep_10 + 68, 1011, "", 0, 0, 0, -1);

--ヒット
SE026 = playSeVer2( spep_10 + 68, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 68, SE026, 75 );

-- ** 黒背景 ** --
--entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- フィニッシュ絵(156F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵    ef_011
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 156, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 156, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 156, finish_f, 255 );

-- ** 音 ** --
--ラスト爆発
SE027 = playSeVer2( spep_11 + 28, 1069, "", 0, 0, 0, -1);

--ラスト爆発
SE028 = playSeVer2( spep_11 + 44, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_11 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 46 );
endPhase( spep_11 + 146 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 76, 0x100, -1, 0, 0, 0 );  --対峙　手前    ef_001_f
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 76, 0x80, -1, 0, 0, 0 );  --対峙　奥  ef_001_b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 76, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 76, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 156.2, 249.9 , 0 );
setMoveKey( spep_0 + 1, 1, 157.5, 249.9 , 0 );
setMoveKey( spep_0 + 2, 1, 158.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 160.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 160.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 161.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 161.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 162.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 164, 249.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 165.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 166.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 167.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 169.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 171.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 173, 249.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 174.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 175.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 176.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 178.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 179.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 180.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 182.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 183.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 184.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 186, 249.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 187.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 188.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 189.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 191.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 192.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 193.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 195, 249.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 196.3, 249.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 197.6, 249.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 198.9, 249.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 200.2, 249.9 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 201.5, 249.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 202.8, 249.9 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 204.1, 249.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 205.4, 249.9 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 206.7, 249.9 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 206.7, 249.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 3, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 4, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 5, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 79, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 79, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +126 +166 +56 + 36, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 構え　→　オーラ纏う(166F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
pose = entryEffectLife( spep_1 + 0, SP_03r, 166, 0x100, -1, 0, 0, 0 );  --構え　→　オーラ纏う ef_002
setEffMoveKey( spep_1 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, pose, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, pose, -1.0, 1.0 );
setEffScaleKey( spep_1 + 166, pose, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pose, 0 );
setEffRotateKey( spep_1 + 166, pose, 0 );
setEffAlphaKey( spep_1 + 0, pose, 255 );
setEffAlphaKey( spep_1 + 166 -1, pose, 255 );
setEffAlphaKey( spep_1 + 166, pose, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_1 + 8, 1018, "", 0, 0, 0, -1);

--拳握る
SE004 = playSeVer2( spep_1 + 76, 1233, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE004, 71 );
setStartTimeMs( SE004,  33 );

--拳握る
SE005 = playSeVer2( spep_1 + 86, 1330, "",spep_1 + 130, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE005, 70 );
setPitch( spep_1 + 86, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );

--気ダメ
SE006 = playSeVer2( spep_1 + 122, 1035, "", 0, 0, 0, -1);

--気合いれる
SE007 = playSeVer2( spep_1 + 164, 1068, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;


------------------------------------------------------
-- 敵に向かう(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --敵に向かう   ef_003
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 44 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_2 + 36, 9, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- アッパー(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffectLife( spep_3 + 0, SP_05r, 66, 0x100, -1, 0, 0, 0 );  --アッパー　手前  ef_004_f
setEffMoveKey( spep_3 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, upper_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_f, 0 );
setEffRotateKey( spep_3 + 66, upper_f, 0 );
setEffAlphaKey( spep_3 + 0, upper_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, upper_f, 255 );
setEffAlphaKey( spep_3 + 66, upper_f, 0 );

upper_b = entryEffectLife( spep_3 + 0, SP_06, 66, 0x80, -1, 0, 0, 0 );  --アッパー　奥    ef_004_b
setEffMoveKey( spep_3 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_b, 0 );
setEffRotateKey( spep_3 + 66, upper_b, 0 );
setEffAlphaKey( spep_3 + 0, upper_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, upper_b, 255 );
setEffAlphaKey( spep_3 + 66, upper_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 66, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 18, 1, 106 );

setMoveKey( spep_3 + 0, 1, 112.1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 112.1, -8.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 43.2, 12.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 103.3, 99.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 88.9, 101.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 104.1, 210.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 163.8, 227.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 128.4, 284.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 142.7, 266.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 135.8, 265.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 135.1, 272.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 134.3, 279.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 136.1, 286.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 137.9, 293.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 136.5, 294.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 135, 294.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 129.7, 300.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 124.3, 306.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 126.6, 313.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 128.9, 319.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 129.4, 325.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 129.8, 330.5 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 130.3, 335.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 130.8, 341.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 131.3, 346.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 131.7, 351.7 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 132.2, 357 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 132.7, 362.3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 132.7, 362.3 , 0 );

setScaleKey( spep_3 + 0, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 18, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 20, 1, 3.336, 3.336 );
setScaleKey( spep_3 -3 + 22, 1, 3.312, 3.312 );
setScaleKey( spep_3 -3 + 24, 1, 3.288, 3.288 );
setScaleKey( spep_3 -3 + 26, 1, 3.264, 3.264 );
setScaleKey( spep_3 -3 + 28, 1, 3.24, 3.24 );
setScaleKey( spep_3 -3 + 30, 1, 3.216, 3.216 );
setScaleKey( spep_3 -3 + 32, 1, 3.192, 3.192 );
setScaleKey( spep_3 -3 + 34, 1, 3.168, 3.168 );
setScaleKey( spep_3 -3 + 36, 1, 3.144, 3.144 );
setScaleKey( spep_3 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 40, 1, 3.096, 3.096 );
setScaleKey( spep_3 -3 + 42, 1, 3.072, 3.072 );
setScaleKey( spep_3 -3 + 44, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 46, 1, 3.036, 3.036 );
setScaleKey( spep_3 -3 + 48, 1, 3.012, 3.012 );
setScaleKey( spep_3 -3 + 50, 1, 2.988, 2.988 );
setScaleKey( spep_3 -3 + 52, 1, 2.964, 2.964 );
setScaleKey( spep_3 -3 + 54, 1, 2.94, 2.94 );
setScaleKey( spep_3 -3 + 56, 1, 2.916, 2.916 );
setScaleKey( spep_3 -3 + 58, 1, 2.892, 2.892 );
setScaleKey( spep_3 -3 + 60, 1, 2.868, 2.868 );
setScaleKey( spep_3 -3 + 62, 1, 2.844, 2.844 );
setScaleKey( spep_3 -3 + 64, 1, 2.82, 2.82 );
setScaleKey( spep_3 -3 + 66, 1, 2.796, 2.796 );
setScaleKey( spep_3 -3 + 68, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 69, 1, 2.772, 2.772 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, -67 );
setRotateKey( spep_3 -3 + 20, 1, -65.9 );
setRotateKey( spep_3 -3 + 22, 1, -64.8 );
setRotateKey( spep_3 -3 + 24, 1, -63.6 );
setRotateKey( spep_3 -3 + 26, 1, -62.5 );
setRotateKey( spep_3 -3 + 28, 1, -61.4 );
setRotateKey( spep_3 -3 + 30, 1, -60.3 );
setRotateKey( spep_3 -3 + 32, 1, -59.2 );
setRotateKey( spep_3 -3 + 34, 1, -58 );
setRotateKey( spep_3 -3 + 36, 1, -56.9 );
setRotateKey( spep_3 -3 + 38, 1, -55.8 );
setRotateKey( spep_3 -3 + 40, 1, -54.7 );
setRotateKey( spep_3 -3 + 42, 1, -53.6 );
setRotateKey( spep_3 -3 + 44, 1, -52.4 );
setRotateKey( spep_3 -3 + 46, 1, -51.3 );
setRotateKey( spep_3 -3 + 48, 1, -50.2 );
setRotateKey( spep_3 -3 + 50, 1, -49.1 );
setRotateKey( spep_3 -3 + 52, 1, -48 );
setRotateKey( spep_3 -3 + 54, 1, -46.8 );
setRotateKey( spep_3 -3 + 56, 1, -45.7 );
setRotateKey( spep_3 -3 + 58, 1, -44.6 );
setRotateKey( spep_3 -3 + 60, 1, -43.5 );
setRotateKey( spep_3 -3 + 62, 1, -42.4 );
setRotateKey( spep_3 -3 + 64, 1, -41.2 );
setRotateKey( spep_3 -3 + 66, 1, -40.1 );
setRotateKey( spep_3 -3 + 68, 1, -39 );
setRotateKey( spep_3 -3 + 69, 1, -39 );

-- ** 音 ** --
--アッパー
SE009 = playSeVer2( spep_3 + 4, 1003, "", 0, 0, 0, -1);

--アッパー
SE010 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE010, 83 );

--アッパー
SE011 = playSeVer2( spep_3 + 10, 1010, "", 0, 0, 0, -1);

--悟空向かってくる
SE012 = playSeVer2( spep_3 + 58, 1182, "", 0, 0, 0, -1);

--悟空向かってくる
SE013 = playSeVer2( spep_3 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE013, 51 );

--悟空向かってくる
SE014 = playSeVer2( spep_3 + 58, 1314, "",spep_3 +66 +46 +36 + 0, 0, 10, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;


------------------------------------------------------
-- 敵に突っ込む(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
plunge = entryEffectLife( spep_4 + 0, SP_07, 46, 0x100, -1, 0, 0, 0 );  --敵に突っ込む    ef_005
setEffMoveKey( spep_4 + 0, plunge, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, plunge, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, plunge, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, plunge, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, plunge, 0 );
setEffRotateKey( spep_4 + 46, plunge, 0 );
setEffAlphaKey( spep_4 + 0, plunge, 255 );
setEffAlphaKey( spep_4 + 46 -1, plunge, 255 );
setEffAlphaKey( spep_4 + 46, plunge, 0 );

-- ** 音 ** --
--振りかぶる
playSeVer2( spep_4 + 42, 1116, "",spep_4 +78, 0, 10, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;


------------------------------------------------------
-- 殴る(手のみ)(36F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_5 + 0, SP_08, 36, 0x100, -1, 0, 0, 0 );  --殴る(手のみ)    ef_006
setEffMoveKey( spep_5 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 36, punch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_5 + 36, punch, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch, 0 );
setEffRotateKey( spep_5 + 36, punch, 0 );
setEffAlphaKey( spep_5 + 0, punch, 255 );
setEffAlphaKey( spep_5 + 36 -1, punch, 255 );
setEffAlphaKey( spep_5 + 36, punch, 0 );

-- ** 音 ** --

--パンチ
SE016 = playSeVer2( spep_5 + 26, 1189, "", 0, 0, 0, -1);

--パンチ
SE017 = playSeVer2( spep_5 + 32, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;


------------------------------------------------------
-- ヒットエフェクト(6F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_6 + 0, SP_09, 6, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト  ef_007
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 6, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, -1.0, 1.0 );
setEffScaleKey( spep_6 + 6, hit, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 6, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 6 -1, hit, 255 );
setEffAlphaKey( spep_6 + 6, hit, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_6 + 0, 0, 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 6;


------------------------------------------------------
-- 殴った後→かめはめ波の構え(96F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_7 + 0, SP_10, 96 +2, 0x100, -1, 0, 0, 0 );  --殴った後→かめはめ波の構え 手前   ef_008_f
setEffMoveKey( spep_7 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_7 +2 + 96, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_7 +2 + 96, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame_f, 0 );
setEffRotateKey( spep_7 +2 + 96, tame_f, 0 );
setEffAlphaKey( spep_7 + 0, tame_f, 255 );
setEffAlphaKey( spep_7 +2 + 96 -1, tame_f, 255 );
setEffAlphaKey( spep_7 +2 + 96, tame_f, 0 );

tame_b = entryEffectLife( spep_7 + 0, SP_11, 96 +2, 0x80, -1, 0, 0, 0 );  --殴った後→かめはめ波の構え　奥 ef_008_b
setEffMoveKey( spep_7 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_7 +2 + 96, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_7 +2 + 96, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame_b, 0 );
setEffRotateKey( spep_7 +2 + 96, tame_b, 0 );
setEffAlphaKey( spep_7 + 0, tame_b, 255 );
setEffAlphaKey( spep_7 +2 + 96 -1, tame_b, 255 );
setEffAlphaKey( spep_7 +2 + 96, tame_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 +2 -3 + 18, 1, 0 );
changeAnime( spep_7 + 0, 1, 7 );

setMoveKey( spep_7 + 0, 1, 26.4, -157.2 , 0 );
setMoveKey( spep_7 + 1, 1, 26.4, -157.2 , 0 );
setMoveKey( spep_7 + 2, 1, 26.4, -157.2 , 0 );
setMoveKey( spep_7 +2 + 1, 1, -42.3, -198.2 , 0 );
setMoveKey( spep_7 +3 + 2, 1, -88.1, -277.4 , 0 );
setMoveKey( spep_7 +4 -3 + 6, 1, -137.1, -318 , 0 );
setMoveKey( spep_7 +4 -3 + 8, 1, -188.8, -368.1 , 0 );
setMoveKey( spep_7 +4 -3 + 10, 1, -249.6, -422.8 , 0 );
setMoveKey( spep_7 +4 -3 + 12, 1, -310.4, -477.5 , 0 );
setMoveKey( spep_7 +4 -3 + 14, 1, -366.4, -530.8 , 0 );
setMoveKey( spep_7 +4 -3 + 18, 1, -366.4, -530.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.666, 1.666 );
setScaleKey( spep_7 + 1, 1, 1.666, 1.666 );
setScaleKey( spep_7 + 2, 1, 1.666, 1.666 );
setScaleKey( spep_7 +2 + 1, 1, 2.352, 2.352 );
setScaleKey( spep_7 +3 + 2, 1, 3.024, 3.024 );
setScaleKey( spep_7 +4 -3 + 6, 1, 3.71, 3.71 );
setScaleKey( spep_7 +4 -3 + 8, 1, 4.382, 4.382 );
setScaleKey( spep_7 +4 -3 + 10, 1, 5.068, 5.068 );
setScaleKey( spep_7 +4 -3 + 12, 1, 5.74, 5.74 );
setScaleKey( spep_7 +4 -3 + 14, 1, 6.426, 6.426 );
setScaleKey( spep_7 +4 -3 + 18, 1, 6.426, 6.426 );

setRotateKey( spep_7 + 0, 1, 6 );
setRotateKey( spep_7 + 1, 1, 6 );
setRotateKey( spep_7 + 2, 1, 6 );
setRotateKey( spep_7 +2 + 1, 1, 2.9 );
setRotateKey( spep_7 +3 + 2, 1, -0.2 );
setRotateKey( spep_7 +4 -3 + 6, 1, -3.3 );
setRotateKey( spep_7 +4 -3 + 8, 1, -6.5 );
setRotateKey( spep_7 +4 -3 + 10, 1, -9.6 );
setRotateKey( spep_7 +4 -3 + 12, 1, -12.7 );
setRotateKey( spep_7 +4 -3 + 14, 1, -15.8 );
setRotateKey( spep_7 +4 -3 + 18, 1, -15.8 );

-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_7 +2 + 22, 1131, "",spep_7 +2 +98 + 0, 0, 4, -1);
setSeVolumeByWorkId( spep_7 +2 + 22, SE018, 89 );

--かめはめ波溜め
SE019 = playSeVer2( spep_7 +2 + 22, 1132, "",spep_7 +2 +98 + 0, 0, 4, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_7 +2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 +2 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

--かめはめ波発射
SE021 = playSeVer2( spep_8 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 90, SE021, 85 );

--かめはめ波発射
SE022 = playSeVer2( spep_8 + 90, 1022, "", 0, 0, 0, -1);

--かめはめ波発射
SE023 = playSeVer2( spep_8 + 90, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 +90, SE023, 81 );

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- かめはめ波(106F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_9 + 0, SP_12, 106, 0x100, -1, 0, 0, 0 );  --かめはめ波  ef_009
setEffMoveKey( spep_9 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_9 + 106, shot, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_9 + 106, shot, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, shot, 0 );
setEffRotateKey( spep_9 + 106, shot, 0 );
setEffAlphaKey( spep_9 + 0, shot, 255 );
setEffAlphaKey( spep_9 + 106 -1, shot, 255 );
setEffAlphaKey( spep_9 + 106, shot, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_9 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 106;


------------------------------------------------------
-- かめはめ波が敵に向かう(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
chase_f = entryEffectLife( spep_10 + 0, SP_13r, 76, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に向かう 手前  ef_010_f
setEffMoveKey( spep_10 + 0, chase_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, chase_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, chase_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76, chase_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, chase_f, 0 );
setEffRotateKey( spep_10 + 76, chase_f, 0 );
setEffAlphaKey( spep_10 + 0, chase_f, 255 );
setEffAlphaKey( spep_10 + 76 -1, chase_f, 255 );
setEffAlphaKey( spep_10 + 76, chase_f, 0 );

chase_b = entryEffectLife( spep_10 + 0, SP_14, 76, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に向かう　奥    ef_010_b
setEffMoveKey( spep_10 + 0, chase_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, chase_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, chase_b, 0 );
setEffRotateKey( spep_10 + 76, chase_b, 0 );
setEffAlphaKey( spep_10 + 0, chase_b, 255 );
setEffAlphaKey( spep_10 + 76 -1, chase_b, 255 );
setEffAlphaKey( spep_10 + 76, chase_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 79, 1, 0 );
changeAnime( spep_10 + 0, 1, 107 );

setBlendColor( spep_10 + 0, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_10 + 1, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_10 + 2, 1, 3, 0, 0, 0, 0.012 );
setBlendColor( spep_10 -3 + 6, 1, 3, 0, 0, 0, 0.023 );
setBlendColor( spep_10 -3 + 8, 1, 3, 0, 0, 0, 0.046 );
setBlendColor( spep_10 -3 + 10, 1, 3, 0, 0, 0, 0.069 );
setBlendColor( spep_10 -3 + 12, 1, 3, 0, 0, 0, 0.092 );
setBlendColor( spep_10 -3 + 14, 1, 3, 0, 0, 0, 0.115 );
setBlendColor( spep_10 -3 + 16, 1, 3, 0, 0, 0, 0.138 );
setBlendColor( spep_10 -3 + 18, 1, 3, 0, 0, 0, 0.161 );
setBlendColor( spep_10 -3 + 20, 1, 3, 0, 0, 0, 0.184 );
setBlendColor( spep_10 -3 + 22, 1, 3, 0, 0, 0, 0.207 );
setBlendColor( spep_10 -3 + 24, 1, 3, 0, 0, 0, 0.23 );
setBlendColor( spep_10 -3 + 26, 1, 3, 0, 0, 0, 0.253 );
setBlendColor( spep_10 -3 + 28, 1, 3, 0, 0, 0, 0.276 );
setBlendColor( spep_10 -3 + 30, 1, 3, 0, 0, 0, 0.299 );
setBlendColor( spep_10 -3 + 32, 1, 3, 0, 0, 0, 0.322 );
setBlendColor( spep_10 -3 + 34, 1, 3, 0, 0, 0, 0.345 );
setBlendColor( spep_10 -3 + 36, 1, 3, 0, 0, 0, 0.368 );
setBlendColor( spep_10 -3 + 38, 1, 3, 0, 0, 0, 0.391 );
setBlendColor( spep_10 -3 + 40, 1, 3, 0, 0, 0, 0.414 );
setBlendColor( spep_10 -3 + 42, 1, 3, 0, 0, 0, 0.437 );
setBlendColor( spep_10 -3 + 44, 1, 3, 0, 0, 0, 0.46 );
setBlendColor( spep_10 -3 + 46, 1, 3, 0, 0, 0, 0.483 );
setBlendColor( spep_10 -3 + 48, 1, 3, 0, 0, 0, 0.506 );
setBlendColor( spep_10 -3 + 50, 1, 3, 0, 0, 0, 0.529 );
setBlendColor( spep_10 -3 + 52, 1, 3, 0, 0, 0, 0.552 );
setBlendColor( spep_10 -3 + 54, 1, 3, 0, 0, 0, 0.575 );
setBlendColor( spep_10 -3 + 56, 1, 3, 0, 0, 0, 0.598 );
setBlendColor( spep_10 -3 + 58, 1, 3, 0, 0, 0, 0.621 );
setBlendColor( spep_10 -3 + 60, 1, 3, 0, 0, 0, 0.644 );
setBlendColor( spep_10 -3 + 62, 1, 3, 0, 0, 0, 0.667 );
setBlendColor( spep_10 -3 + 64, 1, 3, 0, 0, 0, 0.69 );
setBlendColor( spep_10 -3 + 66, 1, 3, 0, 0, 0, 0.713 );
setBlendColor( spep_10 -3 + 78, 1, 3, 0, 0, 0, 0.736 );
setBlendColor( spep_10 -3 + 70, 1, 3, 0, 0, 0, 0.759 );
setBlendColor( spep_10 -3 + 72, 1, 3, 0, 0, 0, 0.782 );
setBlendColor( spep_10 -3 + 74, 1, 3, 0, 0, 0, 0.805 );
setBlendColor( spep_10 -3 + 76, 1, 3, 0, 0, 0, 0.828 );
setBlendColor( spep_10 -3 + 78, 1, 3, 0, 0, 0, 0.851 );
setBlendColor( spep_10 -3 + 79, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_10 + 0, 1, 155.9, 5.3 , 0 );
setMoveKey( spep_10 + 1, 1, 153.3, 6.6 , 0 );
setMoveKey( spep_10 + 2, 1, 151, 7.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 148.9, 8.9 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 146.9, 9.9 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 145.1, 10.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 143.5, 11.7 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 142.1, 12.4 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 141, 13.1 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 140, 13.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 139.3, 14 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 138.7, 14.3 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 138.5, 14.5 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 138.3, 14.6 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 138.6, 14.5 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 139, 14.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 139.6, 13.9 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 140.4, 13.4 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 141.6, 12.7 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 143, 11.9 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 146.1, 12.5 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 149.5, 12.9 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 148.5, 11.5 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 147.5, 9.9 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 156.3, 5.1 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 152.9, 9.4 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 159, 16.4 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 165.2, 7.5 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 165.4, 1.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 165.7, 2 , 0 );
setMoveKey( spep_10 -3 + 60, 1, 172.6, -4.1 , 0 );
setMoveKey( spep_10 -3 + 62, 1, 173.1, -4 , 0 );
setMoveKey( spep_10 -3 + 64, 1, 179.9, -4.2 , 0 );
setMoveKey( spep_10 -3 + 66, 1, 183.6, -10.8 , 0 );
setMoveKey( spep_10 -3 + 68, 1, 184.2, -11.1 , 0 );
setMoveKey( spep_10 -3 + 70, 1, 191, -11.8 , 0 );
setMoveKey( spep_10 -3 + 72, 1, 194.5, -18.7 , 0 );
setMoveKey( spep_10 -3 + 74, 1, 191.7, -25.6 , 0 );
setMoveKey( spep_10 -3 + 76, 1, 189, -23 , 0 );
setMoveKey( spep_10 -3 + 78, 1, 195.7, -23.8 , 0 );
setMoveKey( spep_10 -3 + 79, 1, 195.7, -23.8 , 0 );

setScaleKey( spep_10 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_10 + 1, 1, 0.79, 0.79 );
setScaleKey( spep_10 -3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_10 -3 + 10, 1, 0.8, 0.8 );
setScaleKey( spep_10 -3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_10 -3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_10 -3 + 16, 1, 0.82, 0.83 );
setScaleKey( spep_10 -3 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 20, 1, 0.85, 0.86 );
setScaleKey( spep_10 -3 + 22, 1, 0.87, 0.88 );
setScaleKey( spep_10 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_10 -3 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_10 -3 + 28, 1, 0.95, 0.95 );
setScaleKey( spep_10 -3 + 30, 1, 0.97, 0.98 );
setScaleKey( spep_10 -3 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_10 -3 + 34, 1, 1.04, 1.05 );
setScaleKey( spep_10 -3 + 36, 1, 1.07, 1.08 );
setScaleKey( spep_10 -3 + 38, 1, 1.11, 1.12 );
setScaleKey( spep_10 -3 + 40, 1, 1.15, 1.16 );
setScaleKey( spep_10 -3 + 42, 1, 1.19, 1.2 );
setScaleKey( spep_10 -3 + 44, 1, 1.24, 1.25 );
setScaleKey( spep_10 -3 + 46, 1, 1.28, 1.29 );
setScaleKey( spep_10 -3 + 48, 1, 1.33, 1.34 );
setScaleKey( spep_10 -3 + 50, 1, 1.38, 1.39 );
setScaleKey( spep_10 -3 + 52, 1, 1.43, 1.44 );
setScaleKey( spep_10 -3 + 54, 1, 1.48, 1.49 );
setScaleKey( spep_10 -3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_10 -3 + 58, 1, 1.57, 1.58 );
setScaleKey( spep_10 -3 + 60, 1, 1.62, 1.63 );
setScaleKey( spep_10 -3 + 62, 1, 1.67, 1.68 );
setScaleKey( spep_10 -3 + 64, 1, 1.72, 1.72 );
setScaleKey( spep_10 -3 + 66, 1, 1.76, 1.77 );
setScaleKey( spep_10 -3 + 68, 1, 1.8, 1.81 );
setScaleKey( spep_10 -3 + 70, 1, 1.84, 1.85 );
setScaleKey( spep_10 -3 + 72, 1, 1.88, 1.88 );
setScaleKey( spep_10 -3 + 74, 1, 1.91, 1.92 );
setScaleKey( spep_10 -3 + 76, 1, 1.94, 1.95 );
setScaleKey( spep_10 -3 + 78, 1, 1.97, 1.97 );
setScaleKey( spep_10 -3 + 79, 1, 1.97, 1.97 );

setRotateKey( spep_10 + 0, 1, -75 );
setRotateKey( spep_10 + 1, 1, -74.3 );
setRotateKey( spep_10 + 2, 1, -73.6 );
setRotateKey( spep_10 -3 + 6, 1, -73 );
setRotateKey( spep_10 -3 + 8, 1, -72.3 );
setRotateKey( spep_10 -3 + 10, 1, -71.6 );
setRotateKey( spep_10 -3 + 12, 1, -70.9 );
setRotateKey( spep_10 -3 + 14, 1, -70.2 );
setRotateKey( spep_10 -3 + 16, 1, -69.5 );
setRotateKey( spep_10 -3 + 18, 1, -68.9 );
setRotateKey( spep_10 -3 + 20, 1, -68.2 );
setRotateKey( spep_10 -3 + 22, 1, -67.5 );
setRotateKey( spep_10 -3 + 24, 1, -66.8 );
setRotateKey( spep_10 -3 + 26, 1, -66.1 );
setRotateKey( spep_10 -3 + 28, 1, -65.5 );
setRotateKey( spep_10 -3 + 30, 1, -64.8 );
setRotateKey( spep_10 -3 + 32, 1, -64.1 );
setRotateKey( spep_10 -3 + 34, 1, -63.4 );
setRotateKey( spep_10 -3 + 36, 1, -62.7 );
setRotateKey( spep_10 -3 + 38, 1, -62.1 );
setRotateKey( spep_10 -3 + 40, 1, -61.4 );
setRotateKey( spep_10 -3 + 42, 1, -60.7 );
setRotateKey( spep_10 -3 + 44, 1, -60 );
setRotateKey( spep_10 -3 + 46, 1, -59.3 );
setRotateKey( spep_10 -3 + 48, 1, -58.6 );
setRotateKey( spep_10 -3 + 50, 1, -58 );
setRotateKey( spep_10 -3 + 52, 1, -57.3 );
setRotateKey( spep_10 -3 + 54, 1, -56.6 );
setRotateKey( spep_10 -3 + 56, 1, -55.9 );
setRotateKey( spep_10 -3 + 58, 1, -55.2 );
setRotateKey( spep_10 -3 + 60, 1, -54.6 );
setRotateKey( spep_10 -3 + 62, 1, -53.9 );
setRotateKey( spep_10 -3 + 64, 1, -53.2 );
setRotateKey( spep_10 -3 + 66, 1, -52.5 );
setRotateKey( spep_10 -3 + 68, 1, -51.8 );
setRotateKey( spep_10 -3 + 70, 1, -51.1 );
setRotateKey( spep_10 -3 + 72, 1, -50.5 );
setRotateKey( spep_10 -3 + 74, 1, -49.8 );
setRotateKey( spep_10 -3 + 76, 1, -49.1 );
setRotateKey( spep_10 -3 + 78, 1, -48.4 );
setRotateKey( spep_10 -3 + 79, 1, -48.4 );

-- ** 音 ** --
--気弾飲み込まれる
SE024 = playSeVer2( spep_10 + 0, 1021, "", 0, 0, 0, -1);

--ヒット
SE025 = playSeVer2( spep_10 + 68, 1011, "", 0, 0, 0, -1);

--ヒット
SE026 = playSeVer2( spep_10 + 68, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 68, SE026, 75 );

-- ** 黒背景 ** --
--entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- フィニッシュ絵(156F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵    ef_011
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 156, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 156, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 156, finish_f, 255 );

-- ** 音 ** --
--ラスト爆発
SE027 = playSeVer2( spep_11 + 28, 1069, "", 0, 0, 0, -1);

--ラスト爆発
SE028 = playSeVer2( spep_11 + 44, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
--entryFadeBg( spep_11 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 46 );
endPhase( spep_11 + 146 );

end