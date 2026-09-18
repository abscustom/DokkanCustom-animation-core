--1024740:SSRチライ_エナジーショット_sp2418
--sp_effect_b4_00248

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
SP_01 = 160326;  --宇宙船が開きチライが登場    ef_001
SP_02 = 160327;  --チライが宇宙船から着地しっ画面に迫って走ってくる    ef_002
SP_03 = 160328;  --敵の背中に銃を突きつける    ef_003
SP_04 = 160329;  --敵の背中に銃を突きつける    ef_003_b
SP_05 = 160331;  --銃の発射準備  ef_004
SP_06 = 160332;  --銃の発射準備  ef_004_b
SP_07 = 160334;  --銃を撃つ前のチライのアップシーン    ef_005
SP_08 = 160336;  --銃を撃つ→敵が吹っ飛ぶ ef_006
SP_09 = 160337;  --銃を撃つ→敵が吹っ飛ぶ ef_006_b
SP_10 = 160339;  --適が画面に飛んできてフィニッシュ    ef_020

--敵側
SP_03r = 160330;  --敵の背中に銃を突きつける    ef_003r
SP_06r = 160333;  --銃の発射準備  ef_004_b_r
SP_07r = 160335;  --銃を撃つ前のチライのアップシーン    ef_005r
SP_09r = 160338;  --銃を撃つ→敵が吹っ飛ぶ ef_006_b_r

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
-- 宇宙船が開きチライが登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --宇宙船が開きチライが登場    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 166, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 166, 0, 26, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 384, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--ドア開く
SE004 = playSeVer2( spep_0 + 4, 91, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 52, 92, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- チライが宇宙船から着地しっ画面に迫って走ってくる(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
run = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --チライが宇宙船から着地しっ画面に迫って走ってくる    ef_002
setEffMoveKey( spep_1 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, run, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, run, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, run, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, run, 0 );
setEffRotateKey( spep_1 + 116, run, 0 );
setEffAlphaKey( spep_1 + 0, run, 255 );
setEffAlphaKey( spep_1 + 116 -1, run, 255 );
setEffAlphaKey( spep_1 + 116, run, 0 );

-- ** 音 ** --
--飛び出す
SE006 = playSeVer2( spep_1 + 24, 1117, "",spep_1 + 70, 0, 12, -1);

--着地
SE007 = playSeVer2( spep_1 + 54, 1192, "",spep_1 + 70, 0, 6, -1);
SE008 = playSeVer2( spep_1 + 56, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE008, 151 );

--乗り物着地
SE009 = playSeVer2( spep_1 + 78, 1008, "",spep_1 + 128, 0, 20, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
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

-- ** 音 ** --
--走ってくる
SE010 = playSeVer2( spep_1 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE010, 178 );
SE011 = playSeVer2( spep_1 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 178 );
SE012 = playSeVer2( spep_1 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE012, 178 );
SE014 = playSeVer2( spep_1 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 112, SE014, 178 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 敵の背中に銃を突きつける(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
rockon_f = entryEffectLife( spep_2 + 0, SP_03, 46, 0x100, -1, 0, 0, 0 );  --敵の背中に銃を突きつける    ef_003
setEffMoveKey( spep_2 + 0, rockon_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, rockon_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rockon_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, rockon_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rockon_f, 0 );
setEffRotateKey( spep_2 + 46, rockon_f, 0 );
setEffAlphaKey( spep_2 + 0, rockon_f, 255 );
setEffAlphaKey( spep_2 + 46 -1, rockon_f, 255 );
setEffAlphaKey( spep_2 + 46, rockon_f, 0 );

rockon_b = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --敵の背中に銃を突きつける    ef_003_b
setEffMoveKey( spep_2 + 0, rockon_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, rockon_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rockon_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, rockon_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rockon_b, 0 );
setEffRotateKey( spep_2 + 46, rockon_b, 0 );
setEffAlphaKey( spep_2 + 0, rockon_b, 255 );
setEffAlphaKey( spep_2 + 46 -1, rockon_b, 255 );
setEffAlphaKey( spep_2 + 46, rockon_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 46, 1, 1 );
changeAnime( spep_2 + 0, 1, 18 );

a1 = 15;
setMoveKey( spep_2 + 0, 1, 212.8 +a1, -152.8 , 0 );
setMoveKey( spep_2 + 1, 1, 212.8 +a1, -152.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 212.8 +a1, -152.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 227.3 +a1, -172.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 233.2 +a1, -181.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 237.7 +a1, -187.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 241.4 +a1, -192.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 244.5 +a1, -197 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 247.2 +a1, -200.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 247.2 +a1, -200.8 , 0 );

setScaleKey( spep_2 + 0, 1, 7.49, 7.7 );
setScaleKey( spep_2 -3 + 6, 1, 7.49, 7.7 );
setScaleKey( spep_2 -3 + 8, 1, 8.6, 8.71 );
setScaleKey( spep_2 -3 + 10, 1, 9.06, 9.13 );
setScaleKey( spep_2 -3 + 12, 1, 9.4, 9.45 );
setScaleKey( spep_2 -3 + 14, 1, 9.68, 9.71 );
setScaleKey( spep_2 -3 + 16, 1, 9.92, 9.94 );
setScaleKey( spep_2 -3 + 18, 1, 10.13, 10.13 );
setScaleKey( spep_2 -3 + 48, 1, 10.13, 10.13 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, 0 );

-- ** 音 ** --
--銃構える
SE015 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 6, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE013, 200 );
setStartTimeMs( SE013,  450 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 銃の発射準備(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
set_f = entryEffectLife( spep_3 + 0, SP_05, 46, 0x100, -1, 0, 0, 0 );  --銃の発射準備  ef_004
setEffMoveKey( spep_3 + 0, set_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, set_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, set_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, set_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, set_f, 0 );
setEffRotateKey( spep_3 + 46, set_f, 0 );
setEffAlphaKey( spep_3 + 0, set_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, set_f, 255 );
setEffAlphaKey( spep_3 + 46, set_f, 0 );

set_b = entryEffectLife( spep_3 + 0, SP_06, 46, 0x80, -1, 0, 0, 0 );  --銃の発射準備  ef_004_b
setEffMoveKey( spep_3 + 0, set_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, set_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, set_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, set_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, set_b, 0 );
setEffRotateKey( spep_3 + 46, set_b, 0 );
setEffAlphaKey( spep_3 + 0, set_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, set_b, 255 );
setEffAlphaKey( spep_3 + 46, set_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 -3 + 0, 1, 1 );
setDisp( spep_3 -3 + 49, 1, 1 );
changeAnime( spep_3 + 0, 1, 0 );

a2 = 15;
setMoveKey( spep_3 + 0, 1, 232.3 +a2, -103.9 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 232.3 +a2, -103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 49, 1, 3.6, 3.6 );

setRotateKey( spep_3 + 0, 1, -9.2 );
setRotateKey( spep_3 -3 + 49, 1, -9.2 );

-- ** 音 ** --
--銃構える
SE016 = playSeVer2( spep_3 + 12, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE016, 200 );
setStartTimeMs( SE016,  467 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;


------------------------------------------------------
-- 銃を撃つ前のチライのアップシーン(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_4 + 0, SP_07, 86, 0x100, -1, 0, 0, 0 );  --銃を撃つ前のチライのアップシーン    ef_005
setEffMoveKey( spep_4 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, faceup, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, faceup, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, faceup, 0 );
setEffRotateKey( spep_4 + 86, faceup, 0 );
setEffAlphaKey( spep_4 + 0, faceup, 255 );
setEffAlphaKey( spep_4 + 86 -1, faceup, 255 );
setEffAlphaKey( spep_4 + 86, faceup, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE017 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 78, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_5 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--銃溜め
SE019 = playSeVer2( spep_5 + 92, 1136, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  1317 );
SE020 = playSeVer2( spep_5 + 92, 1157, "", spep_5 + 94 + 70, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 銃を撃つ→敵が吹っ飛ぶ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --銃を撃つ→敵が吹っ飛ぶ ef_006
setEffMoveKey( spep_6 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_f, 0 );
setEffRotateKey( spep_6 + 116, shot_f, 0 );
setEffAlphaKey( spep_6 + 0, shot_f, 255 );
setEffAlphaKey( spep_6 + 116 -1, shot_f, 255 );
setEffAlphaKey( spep_6 + 116, shot_f, 0 );

shot_b = entryEffectLife( spep_6 + 0, SP_09, 116, 0x80, -1, 0, 0, 0 );  --銃を撃つ→敵が吹っ飛ぶ ef_006_b
setEffMoveKey( spep_6 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_b, 0 );
setEffRotateKey( spep_6 + 116, shot_b, 0 );
setEffAlphaKey( spep_6 + 0, shot_b, 255 );
setEffAlphaKey( spep_6 + 116 -1, shot_b, 255 );
setEffAlphaKey( spep_6 + 116, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 64, 1, 0 );
--setDisp( spep_6 -3 + 119, 1, 0 );
changeAnime( spep_6 + 0, 1, 0 );
changeAnime( spep_6 -3 + 52, 1, 6 );

setBlendColor( spep_6 + 2, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 + 4, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_6 + 6, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 + 8, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_6 + 10, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 + 12, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_6 + 14, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 + 16, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_6 + 18, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_6 + 20, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_6 + 22, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 + 23, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 + 24, 1, 3, 0, 0, 0, 0.6 );--
setBlendColor( spep_6 + 25, 1, 3, 0, 0, 0, 0.8 );--
setBlendColor( spep_6 + 26, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 28, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 30, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 32, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 34, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 36, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 38, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 39, 1, 3, 0, 0, 0, 1.0 );--
setBlendColor( spep_6 + 40, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_6 + 48, 1, 3, 0, 0, 0, 1.0 );--
setBlendColor( spep_6 + 49, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 + 50, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 + 52, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 + 54, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 + 56, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_6 + 58, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_6 + 60, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_6 + 0, 1, 347.2, -8.9 , 0 );
setMoveKey( spep_6 + 1, 1, 361.4, -8.8 , 0 );
setMoveKey( spep_6 + 2, 1, 366.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 370.6, -8.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 373.6, -8.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 376.2, -8.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 378.4, -8.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 380.3, -8.8 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 382, -8.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 383.5, -8.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 384.9, -8.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 386.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 387.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 388, -8.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 388.8, -8.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 388.9, -8.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 389.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 389.2, -8.8 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 389.4, -8.8 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 389.5, -8.8 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 389.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 389.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 475.5, 17.2 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 537.4, 25.1 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 637.2, 112.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 763, 121 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 844, 202.3 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 875.6, 198.7 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 936.4, 260.8 , 0 );
--setMoveKey( spep_6 -3 + 66, 1, 1015, 276.1 , 0 );
--setMoveKey( spep_6 -3 + 68, 1, 944.3, 239.5 , 0 );
--setMoveKey( spep_6 -3 + 70, 1, 927.7, 256 , 0 );
--setMoveKey( spep_6 -3 + 72, 1, 945.9, 282.6 , 0 );
--setMoveKey( spep_6 -3 + 74, 1, 964.6, 258.3 , 0 );
--setMoveKey( spep_6 -3 + 76, 1, 935.3, 258 , 0 );
--setMoveKey( spep_6 -3 + 78, 1, 944.2, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 80, 1, 944.1, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 86, 1, 944.1, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 88, 1, 944, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 92, 1, 944, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 94, 1, 943.9, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 100, 1, 943.9, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 102, 1, 943.8, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 106, 1, 943.8, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 108, 1, 943.7, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 112, 1, 943.7, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 114, 1, 943.6, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 119, 1, 943.6, 252.2 , 0 );

setScaleKey( spep_6 + 0, 1, 7.37, 7.37 );
setScaleKey( spep_6 -3 + 51, 1, 7.37, 7.37 );
setScaleKey( spep_6 -3 + 52, 1, 5.42, 5.42 );
setScaleKey( spep_6 -3 + 54, 1, 5.97, 5.97 );
setScaleKey( spep_6 -3 + 56, 1, 6.46, 6.46 );
setScaleKey( spep_6 -3 + 58, 1, 6.9, 6.9 );
setScaleKey( spep_6 -3 + 60, 1, 7.27, 7.27 );
setScaleKey( spep_6 -3 + 62, 1, 7.6, 7.6 );
setScaleKey( spep_6 -3 + 64, 1, 7.87, 7.87 );
--setScaleKey( spep_6 -3 + 66, 1, 8.08, 8.08 );
--setScaleKey( spep_6 -3 + 68, 1, 7.69, 7.69 );
--setScaleKey( spep_6 -3 + 80, 1, 7.69, 7.69 );
--setScaleKey( spep_6 -3 + 119, 1, 7.69, 7.69 );

setRotateKey( spep_6 + 0, 1, -15 );
setRotateKey( spep_6 -3 + 51, 1, -15 );
setRotateKey( spep_6 -3 + 52, 1, 63.4 );
setRotateKey( spep_6 -3 + 54, 1, 58.1 );
setRotateKey( spep_6 -3 + 56, 1, 52.9 );
setRotateKey( spep_6 -3 + 58, 1, 47.7 );
setRotateKey( spep_6 -3 + 60, 1, 42.4 );
setRotateKey( spep_6 -3 + 62, 1, 37.2 );
setRotateKey( spep_6 -3 + 64, 1, 32 );
--setRotateKey( spep_6 -3 + 66, 1, 26.8 );
--setRotateKey( spep_6 -3 + 80, 1, 26.8 );
--setRotateKey( spep_6 -3 + 119, 1, 26.8 );

-- ** 音 ** --
--銃を撃つ
SE021 = playSeVer2( spep_6 + 50, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_6 + 50, SE021, 77 );
setStartTimeMs( SE021,  333 );
SE022 = playSeVer2( spep_6 + 48, 1030, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_6 + 48, 1026, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- 適が画面に飛んできてフィニッシュ(100F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_7 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 8, finish_f, 0 );
setEffRotateKey( spep_7 + 100, finish_f, 0 );
setEffAlphaKey( spep_7 + 8, finish_f, 255 );
setEffAlphaKey( spep_7 + 100, finish_f, 255 );

finish = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --適が画面に飛んできてフィニッシュ    ef_020
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 100, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 100, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 2, 1, 1 );
setDisp( spep_7 -3 + 103, 1, 0 );
changeAnime( spep_7 + 2, 1, 107 );

setMoveKey( spep_7 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 103, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_7 +    2, 1, 0.2, 0.2 );
setScaleKey( spep_7 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_7 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_7 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_7 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_7 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_7 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 103, 1, 1.73, 1.725 );

setRotateKey( spep_7 + 2, 1, -122.8 );
setRotateKey( spep_7 -3 + 6, 1, -1 );
setRotateKey( spep_7 -3 + 8, 1, 120.7 );
setRotateKey( spep_7 -3 + 10, 1, 242.5 );
setRotateKey( spep_7 -3 + 12, 1, 364.3 );
setRotateKey( spep_7 -3 + 14, 1, 486 );
setRotateKey( spep_7 -3 + 16, 1, 607.8 );
setRotateKey( spep_7 -3 + 18, 1, 729.5 );
setRotateKey( spep_7 -3 + 103, 1, 729.5 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 0,  906, 46, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14 +1,  1657, 85, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14 +1, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14 +1, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14 +1, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14 +1, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14 +1,  10005, 85, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14 +1, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14 +1, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 15 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 16 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 17 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 18 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 19 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 20 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 21 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 22 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 23 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 24 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 25 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 26 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 27 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 28 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE024 = playSeVer2( spep_7 + 12, 1025, "", 0, 0, 0, -1);

--画面割れる
SE025 = playSeVer2( spep_7 + 12, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 );
endPhase( spep_7 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 宇宙船が開きチライが登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --宇宙船が開きチライが登場    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 166, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 166, 0, 26, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 384, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--ドア開く
SE004 = playSeVer2( spep_0 + 4, 91, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 52, 92, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- チライが宇宙船から着地しっ画面に迫って走ってくる(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
run = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --チライが宇宙船から着地しっ画面に迫って走ってくる    ef_002
setEffMoveKey( spep_1 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, run, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, run, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, run, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, run, 0 );
setEffRotateKey( spep_1 + 116, run, 0 );
setEffAlphaKey( spep_1 + 0, run, 255 );
setEffAlphaKey( spep_1 + 116 -1, run, 255 );
setEffAlphaKey( spep_1 + 116, run, 0 );

-- ** 音 ** --
--飛び出す
SE006 = playSeVer2( spep_1 + 24, 1117, "",spep_1 + 70, 0, 12, -1);

--着地
SE007 = playSeVer2( spep_1 + 54, 1192, "",spep_1 + 70, 0, 6, -1);
SE008 = playSeVer2( spep_1 + 56, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE008, 151 );

--乗り物着地
SE009 = playSeVer2( spep_1 + 78, 1008, "",spep_1 + 128, 0, 20, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
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

-- ** 音 ** --
--走ってくる
SE010 = playSeVer2( spep_1 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE010, 178 );
SE011 = playSeVer2( spep_1 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE011, 178 );
SE012 = playSeVer2( spep_1 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE012, 178 );
SE014 = playSeVer2( spep_1 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 112, SE014, 178 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;


------------------------------------------------------
-- 敵の背中に銃を突きつける(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
rockon_f = entryEffectLife( spep_2 + 0, SP_03r, 46, 0x100, -1, 0, 0, 0 );  --敵の背中に銃を突きつける    ef_003
setEffMoveKey( spep_2 + 0, rockon_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, rockon_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rockon_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 46, rockon_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rockon_f, 0 );
setEffRotateKey( spep_2 + 46, rockon_f, 0 );
setEffAlphaKey( spep_2 + 0, rockon_f, 255 );
setEffAlphaKey( spep_2 + 46 -1, rockon_f, 255 );
setEffAlphaKey( spep_2 + 46, rockon_f, 0 );

rockon_b = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --敵の背中に銃を突きつける    ef_003_b
setEffMoveKey( spep_2 + 0, rockon_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, rockon_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rockon_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, rockon_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rockon_b, 0 );
setEffRotateKey( spep_2 + 46, rockon_b, 0 );
setEffAlphaKey( spep_2 + 0, rockon_b, 255 );
setEffAlphaKey( spep_2 + 46 -1, rockon_b, 255 );
setEffAlphaKey( spep_2 + 46, rockon_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 46, 1, 1 );
changeAnime( spep_2 + 0, 1, 18 );

a1 = 15;
setMoveKey( spep_2 + 0, 1, 212.8 +a1, -152.8 , 0 );
setMoveKey( spep_2 + 1, 1, 212.8 +a1, -152.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 212.8 +a1, -152.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 227.3 +a1, -172.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 233.2 +a1, -181.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 237.7 +a1, -187.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 241.4 +a1, -192.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 244.5 +a1, -197 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 247.2 +a1, -200.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 247.2 +a1, -200.8 , 0 );

setScaleKey( spep_2 + 0, 1, 7.49, 7.7 );
setScaleKey( spep_2 -3 + 6, 1, 7.49, 7.7 );
setScaleKey( spep_2 -3 + 8, 1, 8.6, 8.71 );
setScaleKey( spep_2 -3 + 10, 1, 9.06, 9.13 );
setScaleKey( spep_2 -3 + 12, 1, 9.4, 9.45 );
setScaleKey( spep_2 -3 + 14, 1, 9.68, 9.71 );
setScaleKey( spep_2 -3 + 16, 1, 9.92, 9.94 );
setScaleKey( spep_2 -3 + 18, 1, 10.13, 10.13 );
setScaleKey( spep_2 -3 + 48, 1, 10.13, 10.13 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, 0 );

-- ** 音 ** --
--銃構える
SE015 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 6, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE013, 200 );
setStartTimeMs( SE013,  450 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 銃の発射準備(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
set_f = entryEffectLife( spep_3 + 0, SP_05, 46, 0x100, -1, 0, 0, 0 );  --銃の発射準備  ef_004
setEffMoveKey( spep_3 + 0, set_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, set_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, set_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, set_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, set_f, 0 );
setEffRotateKey( spep_3 + 46, set_f, 0 );
setEffAlphaKey( spep_3 + 0, set_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, set_f, 255 );
setEffAlphaKey( spep_3 + 46, set_f, 0 );

set_b = entryEffectLife( spep_3 + 0, SP_06r, 46, 0x80, -1, 0, 0, 0 );  --銃の発射準備  ef_004_b
setEffMoveKey( spep_3 + 0, set_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, set_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, set_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 46, set_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, set_b, 0 );
setEffRotateKey( spep_3 + 46, set_b, 0 );
setEffAlphaKey( spep_3 + 0, set_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, set_b, 255 );
setEffAlphaKey( spep_3 + 46, set_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 -3 + 0, 1, 1 );
setDisp( spep_3 -3 + 49, 1, 1 );
changeAnime( spep_3 + 0, 1, 0 );

a2 = 15;
setMoveKey( spep_3 + 0, 1, 232.3 +a2, -103.9 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 232.3 +a2, -103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 49, 1, 3.6, 3.6 );

setRotateKey( spep_3 + 0, 1, -9.2 );
setRotateKey( spep_3 -3 + 49, 1, -9.2 );

-- ** 音 ** --
--銃構える
SE016 = playSeVer2( spep_3 + 12, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE016, 200 );
setStartTimeMs( SE016,  467 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;


------------------------------------------------------
-- 銃を撃つ前のチライのアップシーン(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_4 + 0, SP_07r, 86, 0x100, -1, 0, 0, 0 );  --銃を撃つ前のチライのアップシーン    ef_005
setEffMoveKey( spep_4 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, faceup, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, faceup, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, faceup, 0 );
setEffRotateKey( spep_4 + 86, faceup, 0 );
setEffAlphaKey( spep_4 + 0, faceup, 255 );
setEffAlphaKey( spep_4 + 86 -1, faceup, 255 );
setEffAlphaKey( spep_4 + 86, faceup, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE017 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 78, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_5 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--銃溜め
SE019 = playSeVer2( spep_5 + 92, 1136, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  1317 );
SE020 = playSeVer2( spep_5 + 92, 1157, "", spep_5 + 94 + 70, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 銃を撃つ→敵が吹っ飛ぶ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --銃を撃つ→敵が吹っ飛ぶ ef_006
setEffMoveKey( spep_6 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_f, 0 );
setEffRotateKey( spep_6 + 116, shot_f, 0 );
setEffAlphaKey( spep_6 + 0, shot_f, 255 );
setEffAlphaKey( spep_6 + 116 -1, shot_f, 255 );
setEffAlphaKey( spep_6 + 116, shot_f, 0 );

shot_b = entryEffectLife( spep_6 + 0, SP_09r, 116, 0x80, -1, 0, 0, 0 );  --銃を撃つ→敵が吹っ飛ぶ ef_006_b
setEffMoveKey( spep_6 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, shot_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_b, 0 );
setEffRotateKey( spep_6 + 116, shot_b, 0 );
setEffAlphaKey( spep_6 + 0, shot_b, 255 );
setEffAlphaKey( spep_6 + 116 -1, shot_b, 255 );
setEffAlphaKey( spep_6 + 116, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 64, 1, 0 );
--setDisp( spep_6 -3 + 119, 1, 0 );
changeAnime( spep_6 + 0, 1, 0 );
changeAnime( spep_6 -3 + 52, 1, 6 );

setBlendColor( spep_6 + 2, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 + 4, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_6 + 6, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 + 8, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_6 + 10, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 + 12, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_6 + 14, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 + 16, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_6 + 18, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_6 + 20, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_6 + 22, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 + 23, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 + 24, 1, 3, 0, 0, 0, 0.6 );--
setBlendColor( spep_6 + 25, 1, 3, 0, 0, 0, 0.8 );--
setBlendColor( spep_6 + 26, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 28, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 30, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 32, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 34, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 36, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 38, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 + 39, 1, 3, 0, 0, 0, 1.0 );--
setBlendColor( spep_6 + 40, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_6 + 48, 1, 3, 0, 0, 0, 1.0 );--
setBlendColor( spep_6 + 49, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 + 50, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 + 52, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 + 54, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 + 56, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_6 + 58, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_6 + 60, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_6 + 0, 1, 347.2, -8.9 , 0 );
setMoveKey( spep_6 + 1, 1, 361.4, -8.8 , 0 );
setMoveKey( spep_6 + 2, 1, 366.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 370.6, -8.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 373.6, -8.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 376.2, -8.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 378.4, -8.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 380.3, -8.8 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 382, -8.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 383.5, -8.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 384.9, -8.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 386.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 387.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 388, -8.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 388.8, -8.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 388.9, -8.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 389.1, -8.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 389.2, -8.8 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 389.4, -8.8 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 389.5, -8.8 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 389.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 389.7, -8.8 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 475.5, 17.2 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 537.4, 25.1 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 637.2, 112.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 763, 121 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 844, 202.3 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 875.6, 198.7 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 936.4, 260.8 , 0 );
--setMoveKey( spep_6 -3 + 66, 1, 1015, 276.1 , 0 );
--setMoveKey( spep_6 -3 + 68, 1, 944.3, 239.5 , 0 );
--setMoveKey( spep_6 -3 + 70, 1, 927.7, 256 , 0 );
--setMoveKey( spep_6 -3 + 72, 1, 945.9, 282.6 , 0 );
--setMoveKey( spep_6 -3 + 74, 1, 964.6, 258.3 , 0 );
--setMoveKey( spep_6 -3 + 76, 1, 935.3, 258 , 0 );
--setMoveKey( spep_6 -3 + 78, 1, 944.2, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 80, 1, 944.1, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 86, 1, 944.1, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 88, 1, 944, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 92, 1, 944, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 94, 1, 943.9, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 100, 1, 943.9, 252.3 , 0 );
--setMoveKey( spep_6 -3 + 102, 1, 943.8, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 106, 1, 943.8, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 108, 1, 943.7, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 112, 1, 943.7, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 114, 1, 943.6, 252.2 , 0 );
--setMoveKey( spep_6 -3 + 119, 1, 943.6, 252.2 , 0 );

setScaleKey( spep_6 + 0, 1, 7.37, 7.37 );
setScaleKey( spep_6 -3 + 51, 1, 7.37, 7.37 );
setScaleKey( spep_6 -3 + 52, 1, 5.42, 5.42 );
setScaleKey( spep_6 -3 + 54, 1, 5.97, 5.97 );
setScaleKey( spep_6 -3 + 56, 1, 6.46, 6.46 );
setScaleKey( spep_6 -3 + 58, 1, 6.9, 6.9 );
setScaleKey( spep_6 -3 + 60, 1, 7.27, 7.27 );
setScaleKey( spep_6 -3 + 62, 1, 7.6, 7.6 );
setScaleKey( spep_6 -3 + 64, 1, 7.87, 7.87 );
--setScaleKey( spep_6 -3 + 66, 1, 8.08, 8.08 );
--setScaleKey( spep_6 -3 + 68, 1, 7.69, 7.69 );
--setScaleKey( spep_6 -3 + 80, 1, 7.69, 7.69 );
--setScaleKey( spep_6 -3 + 119, 1, 7.69, 7.69 );

setRotateKey( spep_6 + 0, 1, -15 );
setRotateKey( spep_6 -3 + 51, 1, -15 );
setRotateKey( spep_6 -3 + 52, 1, 63.4 );
setRotateKey( spep_6 -3 + 54, 1, 58.1 );
setRotateKey( spep_6 -3 + 56, 1, 52.9 );
setRotateKey( spep_6 -3 + 58, 1, 47.7 );
setRotateKey( spep_6 -3 + 60, 1, 42.4 );
setRotateKey( spep_6 -3 + 62, 1, 37.2 );
setRotateKey( spep_6 -3 + 64, 1, 32 );
--setRotateKey( spep_6 -3 + 66, 1, 26.8 );
--setRotateKey( spep_6 -3 + 80, 1, 26.8 );
--setRotateKey( spep_6 -3 + 119, 1, 26.8 );

-- ** 音 ** --
--銃を撃つ
SE021 = playSeVer2( spep_6 + 50, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_6 + 50, SE021, 77 );
setStartTimeMs( SE021,  333 );
SE022 = playSeVer2( spep_6 + 48, 1030, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_6 + 48, 1026, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- 適が画面に飛んできてフィニッシュ(100F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_7 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 8, finish_f, 0 );
setEffRotateKey( spep_7 + 100, finish_f, 0 );
setEffAlphaKey( spep_7 + 8, finish_f, 255 );
setEffAlphaKey( spep_7 + 100, finish_f, 255 );

finish = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --適が画面に飛んできてフィニッシュ    ef_020
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 100, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 100, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 2, 1, 1 );
setDisp( spep_7 -3 + 103, 1, 0 );
changeAnime( spep_7 + 2, 1, 107 );

setMoveKey( spep_7 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_7 -3 + 103, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_7 +    2, 1, 0.2, 0.2 );
setScaleKey( spep_7 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_7 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_7 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_7 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_7 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_7 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_7 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_7 -3 + 103, 1, 1.73, 1.725 );

setRotateKey( spep_7 + 2, 1, -122.8 );
setRotateKey( spep_7 -3 + 6, 1, -1 );
setRotateKey( spep_7 -3 + 8, 1, 120.7 );
setRotateKey( spep_7 -3 + 10, 1, 242.5 );
setRotateKey( spep_7 -3 + 12, 1, 364.3 );
setRotateKey( spep_7 -3 + 14, 1, 486 );
setRotateKey( spep_7 -3 + 16, 1, 607.8 );
setRotateKey( spep_7 -3 + 18, 1, 729.5 );
setRotateKey( spep_7 -3 + 103, 1, 729.5 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 0,  906, 46, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14 +1,  1657, 85, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14 +1, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14 +1, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14 +1, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14 +1, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14 +1,  10005, 85, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14 +1, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28 +1, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14 +1, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 15 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 16 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 17 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 18 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 19 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 20 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 21 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 22 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 23 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 24 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 25 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 26 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 27 +1, ctga, -10.9 );
setEffRotateKey( spep_7 + 28 +1, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** 音 ** --
--画面割れる
SE024 = playSeVer2( spep_7 + 12, 1025, "", 0, 0, 0, -1);

--画面割れる
SE025 = playSeVer2( spep_7 + 12, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 6 );
endPhase( spep_7 + 98 );

end