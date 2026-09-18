--4021300_スーパージャネンバ_ライトニングシャワーレイン
--sp_effect_a3_00074
--sp2117

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
--SE_08 = 1022; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方
SP_01 = 156482;-- 正面立ち ef_001
SP_02 = 156485;-- 敵を掴む〜飛び立ち　手前 ef_002_front
SP_03 = 156483;-- 敵を掴む〜飛び立ち　奥 ef_002_back
SP_04 = 156487;-- 空からビーム〜剣山に命中 ef_003

--敵
--SP_01 = 156482;--正面立ち
SP_02x = 156486;-- 敵を掴む〜飛び立ち　手前 ef_002_front_re
SP_03x = 156484;-- 敵を掴む〜飛び立ち　奥 ef_002_back_re
SP_04x = 156488;-- 空からビーム〜剣山に命中 ef_003_re

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

--[[
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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 正面立ち(102F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
syomen = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面立ち(ef_001)
setEffMoveKey( spep_0 + 0, syomen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102,syomen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, syomen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 102, syomen, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, syomen, 0 );
setEffRotateKey( spep_0 + 102, syomen, 0 );
setEffAlphaKey( spep_0 + 0, syomen, 255 );
setEffAlphaKey( spep_0 + 102, syomen, 255 );

spep_x = spep_0 + 17;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
--[[
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 78, ctgogo, 191 );
--setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 78, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 83, ctgogo, 0 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );-----101
]]
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
setEffAlphaKey( spep_x + 76, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 191 );
setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );--背中向けて画面右へ
setDisp( spep_0 + 56, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 1, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 2, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 3, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 4, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 5, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 6, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 8, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 10, 1, 375.9, 231.1 , 0 );
setMoveKey( spep_0 + 12, 1, 497.1, 322.5 , 0 );
setMoveKey( spep_0 + 14, 1, 608.3, 406.2 , 0 );
setMoveKey( spep_0 + 16, 1, 709.8, 482.7 , 0 );
setMoveKey( spep_0 + 18, 1, 802.1, 552.2 , 0 );
setMoveKey( spep_0 + 20, 1, 885.6, 615.1 , 0 );
setMoveKey( spep_0 + 22, 1, 960.8, 671.7 , 0 );
setMoveKey( spep_0 + 24, 1, 1028.1, 722.4 , 0 );
setMoveKey( spep_0 + 26, 1, 1087.9, 767.4 , 0 );
setMoveKey( spep_0 + 28, 1, 1140.6, 807.2 , 0 );
setMoveKey( spep_0 + 30, 1, 1186.8, 841.9 , 0 );
setMoveKey( spep_0 + 32, 1, 1226.8, 872.1 , 0 );
setMoveKey( spep_0 + 34, 1, 1261.2, 898 , 0 );
setMoveKey( spep_0 + 36, 1, 1290.2, 919.8 , 0 );
setMoveKey( spep_0 + 38, 1, 1314.4, 938.1 , 0 );
setMoveKey( spep_0 + 40, 1, 1334.3, 953 , 0 );
setMoveKey( spep_0 + 42, 1, 1350.2, 965 , 0 );
setMoveKey( spep_0 + 44, 1, 1362.5, 974.3 , 0 );
setMoveKey( spep_0 + 46, 1, 1371.8, 981.3 , 0 );
setMoveKey( spep_0 + 48, 1, 1378.5, 986.3 , 0 );
setMoveKey( spep_0 + 50, 1, 1383, 989.7 , 0 );
setMoveKey( spep_0 + 52, 1, 1385.7, 991.7 , 0 );
setMoveKey( spep_0 + 54, 1, 1387.1, 992.8 , 0 );
setMoveKey( spep_0 + 56, 1, 1387.6, 993.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 3, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 4, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 5, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 6, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 8, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 10, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 12, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 14, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 16, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 18, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 20, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 22, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 24, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 26, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 28, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 30, 1, 5.89, 5.89 );
setScaleKey( spep_0 + 32, 1, 6.04, 6.04 );
setScaleKey( spep_0 + 34, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 36, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 38, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 40, 1, 6.43, 6.43 );
setScaleKey( spep_0 + 42, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 44, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 46, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 48, 1, 6.59, 6.59 );
setScaleKey( spep_0 + 50, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 52, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 54, 1, 6.63, 6.63 );
setScaleKey( spep_0 + 56, 1, 6.63, 6.63 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1072 );
--顔カットイン
SE002 = playSe( spep_x+ 0, 1018 );
--手を振りかぶる１
SE003 = playSe( spep_0 + 90, 1116 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 102 ;
--------------------------------------
--敵を掴む〜飛び立ち(552F)
--------------------------------------
-- ** エフェクト等 ** --
teki_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵を掴む〜飛び立ち 手前(ef_002_front)
setEffMoveKey( spep_1 + 0, teki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 552, teki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 552, teki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teki_f, 0 );
setEffRotateKey( spep_1 + 552, teki_f, 0 );
setEffAlphaKey( spep_1 + 0, teki_f, 255 );
setEffAlphaKey( spep_1 + 551, teki_f, 255 );
setEffAlphaKey( spep_1 + 552, teki_f, 0 );

teki_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --敵を掴む〜飛び立ち 奥(ef_002_back)
setEffMoveKey( spep_1 + 0, teki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 552, teki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 552, teki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teki_b, 0 );
setEffRotateKey( spep_1 + 552, teki_b, 0 );
setEffAlphaKey( spep_1 + 0, teki_b, 255 );
setEffAlphaKey( spep_1 + 551, teki_b, 255 );
setEffAlphaKey( spep_1 + 552, teki_b, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 2, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 4, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 6, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 8, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0, 15 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.994, 1.008 );
    setScaleKey( SP_dodge + 2, 1, 0.966, 0.966 );
    setScaleKey( SP_dodge + 4, 1, 0.938, 0.938 );
    setScaleKey( SP_dodge + 6, 1, 0.91, 0.91 );
    setScaleKey( SP_dodge + 8, 1, 0.868, 0.882 );
    setScaleKey( SP_dodge + 10, 1, 0.84, 0.854 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 63, 1, 1 );--中央待機
changeAnime( spep_1 + 63, 1, 100 );
setMoveKey( spep_1 + 63, 1, 36.4, 27.4 , 0 );--100
setMoveKey( spep_1 + 66, 1, 36.4, 27.4 , 0 );
setMoveKey( spep_1 + 82, 1, 36.4, 27.4 , 0 );
setScaleKey( spep_1 + 63, 1, 3.07, 3.07 );--100
setScaleKey( spep_1 + 82, 1, 3.07, 3.07 );
setRotateKey( spep_1 + 63, 1, 0 );--100
setRotateKey( spep_1 + 82, 1, 0 );

a = -80;
b = 20;
changeAnime( spep_1 + 83, 1, 107 );--首を掴まれる
setMoveKey( spep_1 + 83, 1, 41.3 +a, 91.3 +b , 0 );--107
setMoveKey( spep_1 + 88, 1, 41.3 +a, 91.3 +b , 0 );
setScaleKey( spep_1 + 83, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 88, 1, 0.73, 0.73 );
setRotateKey( spep_1 + 83, 1, -147.3 );
setRotateKey( spep_1 + 88, 1, -147.3 );

c = -60;
c1 = -40;
c2 = -50;
d = 20;
d1 = 0;
d2 = -20;
changeAnime( spep_1 + 89, 1, 6 );--振り回される、左へ
setMoveKey( spep_1 + 89, 1, 85.4 +c, 49.4 +d , 0 );--6
setMoveKey( spep_1 + 92, 1, 85.4 +c, 49.4 +d , 0 );
setMoveKey( spep_1 + 93, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 94, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 96, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 97, 1, -157.5 +c2, 106.4 +d2 , 0 );
setMoveKey( spep_1 + 98, 1, -157.5 +c2, 106.4 +d2 , 0 );
setMoveKey( spep_1 + 102, 1, -157.5 +c2, 106.4 +d2 , 0 );
setScaleKey( spep_1 + 89, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 92, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 93, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 94, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 96, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 97, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 98, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 102, 1, 1.16, 1.16 );
setRotateKey( spep_1 + 89, 1, 5.1 );
setRotateKey( spep_1 + 92, 1, 5.1 );
setRotateKey( spep_1 + 93, 1, -21.7 );
setRotateKey( spep_1 + 94, 1, -21.7 );
setRotateKey( spep_1 + 96, 1, -21.7 );
setRotateKey( spep_1 + 97, 1, -53 );
setRotateKey( spep_1 + 98, 1, -53 );
setRotateKey( spep_1 + 102, 1, -53 );

c3 = 30;
c4 = 40;
d3 = 60;
d4 = 24;
changeAnime( spep_1 + 103, 1, 106 );--振り回される、左から右へ
setMoveKey( spep_1 + 103, 1, -211.8 +c3, 76.8 +d3 , 0 );--106
setMoveKey( spep_1 + 106, 1, -211.8 +c3, 76.8 +d3 , 0 );
setMoveKey( spep_1 + 107, 1, -191.3 +c4, 182.7 +d4 , 0 );
setMoveKey( spep_1 + 112, 1, -191.3 +c4, 182.7 +d4 , 0 );
setScaleKey( spep_1 + 103, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 107, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 112, 1, 0.86, 0.86 );
setRotateKey( spep_1 + 103, 1, -47.9 );
setRotateKey( spep_1 + 106, 1, -47.9 );
setRotateKey( spep_1 + 107, 1, -17.3 );
setRotateKey( spep_1 + 112, 1, -17.3 );

setDisp( spep_1 + 178, 1, 0 );
changeAnime( spep_1 + 113, 1, 105 );--右上から地面へぶん投げられる
setMoveKey( spep_1 + 113, 1, -114.7, 244.6 , 0 );--105
setMoveKey( spep_1 + 116, 1, -114.7, 244.6 , 0 );
setMoveKey( spep_1 + 117, 1, -12.6, 252.5 , 0 );
setMoveKey( spep_1 + 122, 1, -12.6, 252.5 , 0 );
setMoveKey( spep_1 + 123, 1, 47.4, 262.4 , 0 );
setMoveKey( spep_1 + 126, 1, 47.4, 262.4 , 0 );
setMoveKey( spep_1 + 127, 1, 83.5, 280.4 , 0 );
setMoveKey( spep_1 + 130, 1, 83.5, 280.4 , 0 );
setMoveKey( spep_1 + 131, 1, 35.4, 268.5 , 0 );
setMoveKey( spep_1 + 132, 1, 35.4, 268.5 , 0 );
setMoveKey( spep_1 + 133, 1, 15.4, 272.5 , 0 );
setMoveKey( spep_1 + 134, 1, 15.4, 272.5 , 0 );
setMoveKey( spep_1 + 135, 1, 3.2, 277.8 , 0 );
setMoveKey( spep_1 + 136, 1, 3.2, 277.8 , 0 );
setMoveKey( spep_1 + 137, 1, -7.1, 282.2 , 0 );
setMoveKey( spep_1 + 138, 1, -7.1, 282.2 , 0 );
setMoveKey( spep_1 + 139, 1, -15.6, 285.9 , 0 );
setMoveKey( spep_1 + 140, 1, -15.6, 285.9 , 0 );
setMoveKey( spep_1 + 141, 1, -22.1, 288.8 , 0 );
setMoveKey( spep_1 + 142, 1, -22.1, 288.8 , 0 );
setMoveKey( spep_1 + 143, 1, -26.8, 290.8 , 0 );
setMoveKey( spep_1 + 147, 1, -26.8, 290.8 , 0 );
setMoveKey( spep_1 + 148, 1, -29.6, 292 , 0 );
setMoveKey( spep_1 + 149, 1, -29.6, 292 , 0 );
setMoveKey( spep_1 + 150, 1, -30.6, 292.4 , 0 );
setMoveKey( spep_1 + 151, 1, -18.5, 282.4 , 0 );
setMoveKey( spep_1 + 154, 1, -18.5, 280.4 , 0 );
setMoveKey( spep_1 + 155, 1, -4.5, 258.4 , 0 );
setMoveKey( spep_1 + 156, 1, -4.5, 258.4 , 0 );
setMoveKey( spep_1 + 157, 1, 43.5, 160.4 , 0 );
setMoveKey( spep_1 + 158, 1, 43.5, 160.4 , 0 );
setMoveKey( spep_1 + 159, 1, 179.5, -149.6 , 0 );
setMoveKey( spep_1 + 160, 1, 179.5, -149.6 , 0 );
setMoveKey( spep_1 + 161, 1, 235.5, -285.6 , 0 );
setMoveKey( spep_1 + 162, 1, 235.5, -285.6 , 0 );
setMoveKey( spep_1 + 163, 1, 255.5, -445.6 , 0 );
setMoveKey( spep_1 + 164, 1, 255.5, -445.6 , 0 );
setMoveKey( spep_1 + 165, 1, 280.7, -622.5 , 0 );
setMoveKey( spep_1 + 166, 1, 297.7, -741.2 , 0 );
setMoveKey( spep_1 + 168, 1, 308, -813.1 , 0 );
setMoveKey( spep_1 + 170, 1, 313.2, -850 , 0 );
setMoveKey( spep_1 + 172, 1, 315.2, -863.7 , 0 );
setMoveKey( spep_1 + 178, 1, 315.5, -865.6 , 0 );

setScaleKey( spep_1 + 113, 1, 0.36, 0.36 );--105
setScaleKey( spep_1 + 116, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 117, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 132, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 135, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 148, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 149, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 160, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 161, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 178, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 113, 1, 32.1 );--105
setRotateKey( spep_1 + 116, 1, 32.1 );
setRotateKey( spep_1 + 117, 1, 49.3);
setRotateKey( spep_1 + 126, 1, 49.3);
setRotateKey( spep_1 + 127, 1, 71.8 );
setRotateKey( spep_1 + 130, 1, 71.8 );
setRotateKey( spep_1 + 131, 1, 65 );
setRotateKey( spep_1 + 132, 1, 65 );
setRotateKey( spep_1 + 133, 1, 80.5 );
setRotateKey( spep_1 + 134, 1, 80.5 );
setRotateKey( spep_1 + 135, 1, 84.5 );
setRotateKey( spep_1 + 136, 1, 84.5 );
setRotateKey( spep_1 + 137, 1, 87.8 );
setRotateKey( spep_1 + 140, 1, 87.8 );
setRotateKey( spep_1 + 141, 1, 90.6 );
setRotateKey( spep_1 + 142, 1, 90.6 );
setRotateKey( spep_1 + 143, 1, 94.3 );
setRotateKey( spep_1 + 144, 1, 94.3 );
setRotateKey( spep_1 + 145, 1, 95.5 );
setRotateKey( spep_1 + 148, 1, 95.5 );
setRotateKey( spep_1 + 149, 1, 123.5 );
setRotateKey( spep_1 + 157, 1, 123.5 );
setRotateKey( spep_1 + 158, 1, 123.5 );
setRotateKey( spep_1 + 159, 1, 142.2 );
setRotateKey( spep_1 + 162, 1, 142.2 );
setRotateKey( spep_1 + 163, 1, 150.4 );
setRotateKey( spep_1 + 178, 1, 150.4 );

setDisp( spep_1 + 276, 1, 1 );
setDisp( spep_1 + 295, 1, 0 );
changeAnime( spep_1 + 276, 1, 106 );--画面外左上から叩きつけられる
setMoveKey( spep_1 + 276, 1, -596.7, 371 , 0 );--6
setMoveKey( spep_1 + 286, 1, -596.7, 371 , 0 );
setMoveKey( spep_1 + 292, 1, -596.7, 490.9 , 0 );
setMoveKey( spep_1 + 293, 1, -426.7, 371 , 0 );
setMoveKey( spep_1 + 292, 1, -256.7, 251 , 0 );
setMoveKey( spep_1 + 294, 1, -86.7, 131 , 0 );
setMoveKey( spep_1 + 295, 1, 83.3, 11 , 0 );
setScaleKey( spep_1 + 276, 1, 0.62, 0.62 );--6
setScaleKey( spep_1 + 276, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 288, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 294, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 295, 1, 0.43, 0.43 );

setRotateKey( spep_1 + 276, 1, 70 );--6
setRotateKey( spep_1 + 295, 1, 70 );--6

-- ** 音 ** --
--手を振りかぶる１
stopSe( spep_1 + 18, SE003, 10 );
--手を振りかぶる2
SE004 = playSe( spep_1 + 16, 1004 );
setPitch( spep_1 + 16, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );

--腕のびる1
SE005 = playSe( spep_1 + 48, 1177 );
setSeVolumeByWorkId( spep_1 + 48, SE005, 0 );
setSeVolumeByWorkId( spep_1 + 49, SE005, 15.6 );
setSeVolumeByWorkId( spep_1 + 50, SE005, 31.2 );
setSeVolumeByWorkId( spep_1 + 51, SE005, 46.8 );
setSeVolumeByWorkId( spep_1 + 52, SE005, 62.4 );
stopSe( spep_1 + 92, SE005, 36 );
setStartTimeMs( SE005,  383 );
setPitch( spep_1 + 48, SE005, 200 );
setTimeStretch( SE005, 1.13, 10, 1 );
--腕のびる2
SE006 = playSe( spep_1 + 44, 1153 );
setSeVolumeByWorkId( spep_1 + 44, SE006, 54 );
--腕のびる3
SE007 = playSe( spep_1 + 44, 1190 );
setSeVolumeByWorkId( spep_1 + 44, SE007, 74 );
stopSe( spep_1 + 58, SE007, 24 );
--腕のびる4
SE008 = playSe( spep_1 + 50, 45 );
setTimeStretch( SE008, 1.26, 10, 1 );
--腕のびる5
SE009 = playSe( spep_1 + 50, 49 );
setSeVolumeByWorkId( spep_1 + 50, SE009, 141 );
setTimeStretch( SE009, 1.41, 10, 1 );

--敵つかむ1
SE010 = playSe( spep_1 + 68, 1241 );
setPitch( spep_1 + 68, SE010, 400 );
setTimeStretch( SE010, 1.27, 10, 1 );
--敵つかむ2
SE011 = playSe( spep_1 + 80, 37 );
setSeVolumeByWorkId( spep_1 + 80, SE011, 141 );
stopSe( spep_1 + 96, SE011, 18 );
setPitch( spep_1 + 80, SE011, 200 );
setTimeStretch( SE011, 1.13, 10, 1 );
--敵つかむ3
SE012 = playSe( spep_1 + 84, 1153 );
setSeVolumeByWorkId( spep_1 + 84, SE012, 56 );

--指でなぞる1
SE013 = playSe( spep_1 + 330, 1266 );
setSeVolumeByWorkId( spep_1 + 330, SE013, 0 );
setSeVolumeByWorkId( spep_1 + 331, SE013, 1.9 );
setSeVolumeByWorkId( spep_1 + 332, SE013, 3.8 );
setSeVolumeByWorkId( spep_1 + 333, SE013, 5.7 );
setSeVolumeByWorkId( spep_1 + 334, SE013, 7.6 );
setSeVolumeByWorkId( spep_1 + 335, SE013, 9.5 );
setSeVolumeByWorkId( spep_1 + 336, SE013, 11.4 );
setSeVolumeByWorkId( spep_1 + 337, SE013, 13.3 );
setSeVolumeByWorkId( spep_1 + 338, SE013, 15.2 );
setSeVolumeByWorkId( spep_1 + 339, SE013, 17.1 );
setSeVolumeByWorkId( spep_1 + 340, SE013, 19 );
setSeVolumeByWorkId( spep_1 + 341, SE013, 20.9 );
setSeVolumeByWorkId( spep_1 + 342, SE013, 22.8 );
setSeVolumeByWorkId( spep_1 + 343, SE013, 24.7 );
setSeVolumeByWorkId( spep_1 + 344, SE013, 26.6 );
stopSe( spep_1 + 380, SE013, 22 );
setStartTimeMs( SE013,  2917 );

--敵ぶん投げる
SE014 = playSe( spep_1 + 156, 1027 );
setSeVolumeByWorkId( spep_1 + 156, SE014, 65 );
--手が戻り切る1
SE015 = playSe( spep_1 + 236, 1255 );
setSeVolumeByWorkId( spep_1 + 236, SE015, 0 );
setSeVolumeByWorkId( spep_1 + 237, SE015, 10.1 );
setSeVolumeByWorkId( spep_1 + 238, SE015, 20.2 );
setSeVolumeByWorkId( spep_1 + 239, SE015, 30.3 );
setSeVolumeByWorkId( spep_1 + 240, SE015, 40.4 );
setSeVolumeByWorkId( spep_1 + 241, SE015, 50.5 );
setSeVolumeByWorkId( spep_1 + 242, SE015, 60.6 );
stopSe( spep_1 + 262, SE015, 8 );
setStartTimeMs( SE015,  1083 );

--手もどっていく1
SE016 = playSe( spep_1 + 184, 1274 );
setSeVolumeByWorkId( spep_1 + 184, SE016, 72 );
stopSe( spep_1 + 222, SE016, 12 );
setPitch( spep_1 + 184, SE016, 300 );
setTimeStretch( SE016, 0.99, 10, 1 );
--手もどっていく2
SE017 = playSe( spep_1 + 188, 45 );
setSeVolumeByWorkId( spep_1 + 188, SE017, 68 );
stopSe( spep_1 + 234, SE017, 6 );
setTimeStretch( SE017, 1.41, 10, 1 );
--手が戻り切る2
SE018 = playSe( spep_1 + 236, 1190 );
setSeVolumeByWorkId( spep_1 + 236, SE018, 80 );
setTimeStretch( SE018, 0.72, 10, 1 );
--手が戻り切る3
SE019 = playSe( spep_1 + 238, 45 );
setSeVolumeByWorkId( spep_1 + 238, SE019, 79 );
stopSe( spep_1 + 258, SE019, 14 );
setPitch( spep_1 + 238, SE019, 200 );
setTimeStretch( SE019, 0.87, 10, 1 );
--手くわっくわっ1
SE020 = playSe( spep_1 + 248, 27 );
stopSe( spep_1 + 254, SE020, 0 );
--手くわっくわっ2
SE021 = playSe( spep_1 + 256, 27 );
stopSe( spep_1 + 264, SE021, 0 );
--敵飛んでく
SE022 = playSe( spep_1 + 264, 1183 );
setSeVolumeByWorkId( spep_1 + 264, SE022, 52 );
stopSe( spep_1 + 294, SE022, 8 );
--指でなぞる2
SE023 = playSe( spep_1 + 330, 1264 );
setSeVolumeByWorkId( spep_1 + 330, SE023, 0 );
setSeVolumeByWorkId( spep_1 + 331, SE023, 20.1 );
setSeVolumeByWorkId( spep_1 + 332, SE023, 40.2 );
setSeVolumeByWorkId( spep_1 + 333, SE023, 60.3 );
setSeVolumeByWorkId( spep_1 + 334, SE023, 80.4 );
stopSe( spep_1 + 386, SE023, 16 );
setStartTimeMs( SE023,  883 );
setBandpassFilter ( spep_1 + 330, SE023, 1100, 24000 );
--剣山つっこむ1
SE024 = playSe( spep_1 + 292, 19 );
setSeVolumeByWorkId( spep_1 + 292, SE024, 42 );
--剣山つっこむ2
SE025 = playSe( spep_1 + 294, 1160 );
setSeVolumeByWorkId( spep_1 + 294, SE025, 49 );
stopSe( spep_1 + 324, SE025, 34 );
--指でなぞる3
SE026 = playSe( spep_1 + 322, 1263 );
setSeVolumeByWorkId( spep_1 + 322, SE026, 151 );
stopSe( spep_1 + 376, SE026, 28 );
setStartTimeMs( SE026,  300 );
setPitch( spep_1 + 322, SE026, -300 );
setTimeStretch( SE026, 0.8, 10, 1 );
--割れる1
SE027 = playSe( spep_1 + 400, 1026 );
setSeVolumeByWorkId( spep_1 + 400, SE027, 88 );
setStartTimeMs( SE027,  183 );
setPitch( spep_1 + 400, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );
--割れる2
SE028 = playSe( spep_1 + 396, 1061 );
setSeVolumeByWorkId( spep_1 + 396, SE028, 120 );
setPitch( spep_1 + 396, SE028, 200 );
setTimeStretch( SE028, 1.13, 10, 1 );
--割れる3
SE029 = playSe( spep_1 + 398, 1032 );
setSeVolumeByWorkId( spep_1 + 398, SE029, 121 );
--割れる4
SE030 = playSe( spep_1 + 398, 1030 );
setSeVolumeByWorkId( spep_1 + 398, SE030, 123 );
stopSe( spep_1 + 408, SE030, 26 );
setPitch( spep_1 + 398, SE030, 100 );
setTimeStretch( SE030, 1.07, 10, 1 );
--連続気弾1
SE031 = playSe( spep_1 + 440, 1016 );
setSeVolumeByWorkId( spep_1 + 322, SE026, 0 );
setSeVolumeByWorkId( spep_1 + 323, SE026, 37.9 );
setSeVolumeByWorkId( spep_1 + 324, SE026, 75.8 );
setSeVolumeByWorkId( spep_1 + 325, SE026, 113.7 );
setSeVolumeByWorkId( spep_1 + 326, SE026, 151.6 );
--連続気弾2
SE032 = playSe( spep_1 + 448, 1016 );
setSeVolumeByWorkId( spep_1 + 400, SE027, 0 );
setSeVolumeByWorkId( spep_1 + 401, SE027, 24 );
setSeVolumeByWorkId( spep_1 + 402, SE027, 48 );
--連続気弾3
SE033 = playSe( spep_1 + 458, 1016 );
setSeVolumeByWorkId( spep_1 + 458, SE033, 77 );
--連続気弾4
SE034 = playSe( spep_1 + 468, 1016 );
setSeVolumeByWorkId( spep_1 + 468, SE034, 65 );
--連続気弾5
SE035 = playSe( spep_1 + 478, 1016 );
setSeVolumeByWorkId( spep_1 + 478, SE035, 71 );
--連続気弾6
SE036 = playSe( spep_1 + 487, 1016 );
setSeVolumeByWorkId( spep_1 + 487, SE036, 58 );
--連続気弾7
SE037 = playSe( spep_1 + 496, 1016 );
setSeVolumeByWorkId( spep_1 + 496, SE037, 73 );
--地面割れる1
SE038 = playSe( spep_1 + 508, 1033 );
setSeVolumeByWorkId( spep_1 + 508, SE038, 60 );
--stopSe( spep_1 + 550, SE038, 0 );
setBandpassFilter ( spep_1 + 508, SE038, 24, 3000 );
--地面割れる2
SE039 = playSe( spep_1 + 508, 1028 );
setSeVolumeByWorkId( spep_1 + 508, SE039, 89 );
--stopSe( spep_1 + 550, SE039, 0 );
setPitch( spep_1 + 508, SE039, -1000 );
setTimeStretch( SE039, 0.33, 10, 1 );
--地面割れる3
SE040 = playSe( spep_1 + 510, 1011 );
setSeVolumeByWorkId( spep_1 + 510, SE040, 66 );
--stopSe( spep_1 + 550, SE040, 0 );
setBandpassFilter ( spep_1 + 510, SE040, 24, 3000 );
--地面割れる4
SE041 = playSe( spep_1 + 514, 1023 );
setSeVolumeByWorkId( spep_1 + 514, SE041, 68 );
--stopSe( spep_1 + 550, SE041, 0 );
setBandpassFilter ( spep_1 + 514, SE041, 24, 3000 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 552, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 552;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
--地面割れる1〜4
stopSe( spep_2 + 0, SE038, 5 );
stopSe( spep_2 + 0, SE039, 5 );
stopSe( spep_2 + 0, SE040, 5 );
stopSe( spep_2 + 0, SE041, 5 );

--カードカットイン
--SE042 = playSe( spep_2 + 0, 1035 );
--ジャネンバ向かってくる1
SE043 = playSe( spep_2 + 82, 1266 );
setSeVolumeByWorkId( spep_2 + 82, SE043, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE043, 10 );
setSeVolumeByWorkId( spep_2 + 84, SE043, 20 );
setSeVolumeByWorkId( spep_2 + 85, SE043, 30 );
setSeVolumeByWorkId( spep_2 + 86, SE043, 40 );
setSeVolumeByWorkId( spep_2 + 87, SE043, 50 );
setSeVolumeByWorkId( spep_2 + 88, SE043, 60 );
setSeVolumeByWorkId( spep_2 + 89, SE043, 70 );
setSeVolumeByWorkId( spep_2 + 90, SE043, 80 );
setSeVolumeByWorkId( spep_2 + 91, SE043, 90 );
setSeVolumeByWorkId( spep_2 + 92, SE043, 100 );
setStartTimeMs( SE043,  1383 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
--------------------------------------
--空からビーム〜剣山に命中(360F)
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --手を前に出す(ef_001)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 370, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 370, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 370, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 370, finish, 255 );

-- ** 音 ** --
--ジャネンバ向かってくる1
stopSe( spep_3 + 92, SE043, 24 );
--気弾降り注ぐ1
SE044 = playSe( spep_3 + 102, 1185 );
setSeVolumeByWorkId( spep_3 + 102, SE044, 0 );
setSeVolumeByWorkId( spep_3 + 103, SE044, 4.4 );
setSeVolumeByWorkId( spep_3 + 104, SE044, 8.8 );
setSeVolumeByWorkId( spep_3 + 105, SE044, 13.2 );
setSeVolumeByWorkId( spep_3 + 106, SE044, 17.6 );
setSeVolumeByWorkId( spep_3 + 107, SE044, 22 );
setSeVolumeByWorkId( spep_3 + 108, SE044, 26.4 );
setSeVolumeByWorkId( spep_3 + 109, SE044, 30.8 );
setSeVolumeByWorkId( spep_3 + 110, SE044, 35.2 );
setStartTimeMs( SE044,  1717 );
setPitch( spep_3 + 102, SE044, -300 );
setTimeStretch( SE044, 0.8, 10, 1 );
stopSe( spep_3 + 170, SE044, 38 );

--ジャネンバ向かってくる2
SE045 = playSe( spep_3 + 22, 1072 );
--ジャネンバ向かってくる3
SE046 = playSe( spep_3 + 32, 1167 );
setSeVolumeByWorkId( spep_3 + 32, SE046, 44 );
setTimeStretch( SE046, 1.11, 10, 1 );

--気弾降り注ぐ2
SE047 = playSe( spep_3 + 86, 1217 );
setSeVolumeByWorkId( spep_3 + 86, SE047, 77 );
stopSe( spep_3 + 102, SE047, 10 );
--気弾降り注ぐ3
SE048 = playSe( spep_3 + 88, 1117 );
setSeVolumeByWorkId( spep_3 + 88, SE048, 82 );
stopSe( spep_3 + 118, SE048, 34 );
--気弾降り注ぐ4
SE049 = playSe( spep_3 + 88, 1270 );
stopSe( spep_3 + 156, SE049, 54 );
setPitch( spep_3 + 88, SE049, 800 );
setTimeStretch( SE049, 1.53, 10, 1 );
--気弾降り注ぐ5
SE050 = playSe( spep_3 + 92, 1171 );
setSeVolumeByWorkId( spep_3 + 92, SE050, 79 );
--気弾降り注ぐ6
SE051 = playSe( spep_3 + 102, 1272 );
setSeVolumeByWorkId( spep_3 + 102, SE051, 65 );
setPitch( spep_3 + 102, SE051, -300 );
setTimeStretch( SE051, 0.8, 10, 1 );

--ライトニングシャワーレイン1
SE052 = playSe( spep_3 + 186, 1016 );
setSeVolumeByWorkId( spep_3 + 186, SE052, 69 );
--stopSe( spep_3 + 194, SE052, 2);
--ライトニングシャワーレイン2
SE053 = playSe( spep_3 + 194, 1016 );
setSeVolumeByWorkId( spep_3 + 194, SE053, 74 );
--stopSe( spep_3 + 202, SE053, 2);
--ライトニングシャワーレイン3
SE054 = playSe( spep_3 + 202, 1016 );
setSeVolumeByWorkId( spep_3 + 202, SE054, 63 );
--stopSe( spep_3 + 210, SE054, 2);

--爆発1
SE055 = playSe( spep_3 + 204, 1023 );
setSeVolumeByWorkId( spep_3 + 204, SE055, 74 );

--ライトニングシャワーレイン4
SE056 = playSe( spep_3 + 212, 1016 );
setSeVolumeByWorkId( spep_3 + 212, SE056, 86 );
stopSe( spep_3 + 220, SE056, 4);
--爆発2
SE057 = playSe( spep_3 + 212, 1159 );
setSeVolumeByWorkId( spep_3 + 212, SE057, 58 );
--ライトニングシャワーレイン5
SE058 = playSe( spep_3 + 218, 1016 );
setSeVolumeByWorkId( spep_3 + 218, SE058, 60 );
stopSe( spep_3 + 226, SE058, 4);
--ライトニングシャワーレイン6
SE059 = playSe( spep_3 + 228, 1016 );
setSeVolumeByWorkId( spep_3 + 228, SE059, 71 );
stopSe( spep_3 + 236, SE059, 2);
--爆発3
SE060 = playSe( spep_3 + 228, 1188 );
setSeVolumeByWorkId( spep_3 + 228, SE060, 62 );
--ライトニングシャワーレイン7
SE061 = playSe( spep_3 + 236, 1016 );
setSeVolumeByWorkId( spep_3 + 236, SE061, 71 );
stopSe( spep_3 + 244, SE061, 4);
--ライトニングシャワーレイン8
SE062 = playSe( spep_3 + 242, 1016 );
setSeVolumeByWorkId( spep_3 + 242, SE062, 84 );
stopSe( spep_3 + 250, SE062, 4);
--爆発4
SE063 = playSe( spep_3 + 242, 1024 );
setSeVolumeByWorkId( spep_3 + 242, SE063, 71 );
--ライトニングシャワーレイン9
SE064 = playSe( spep_3 + 250, 1016 );
setSeVolumeByWorkId( spep_3 + 250, SE064, 53 );
stopSe( spep_3 + 258, SE064, 4);
--ライトニングシャワーレイン10
SE065 = playSe( spep_3 + 256, 1016 );
setSeVolumeByWorkId( spep_3 + 256, SE065, 74 );
stopSe( spep_3 + 264, SE065, 4);
--ライトニングシャワーレイン11
SE066 = playSe( spep_3 + 262, 1016 );
setSeVolumeByWorkId( spep_3 + 262, SE066, 63 );
stopSe( spep_3 + 270, SE066, 4);
--ライトニングシャワーレイン12
SE067 = playSe( spep_3 + 266, 1016 );
setSeVolumeByWorkId( spep_3 + 266, SE067, 78 );
stopSe( spep_3 + 274, SE067, 4);
--爆発5
SE068 = playSe( spep_3 + 266, 1023 );
setSeVolumeByWorkId( spep_3 + 266, SE068, 63 );

--ライトニングシャワーレイン13
SE069 = playSe( spep_3 + 272, 1016 );
setSeVolumeByWorkId( spep_3 + 272, SE069, 56 );
stopSe( spep_3 + 280, SE069, 4);
--ライトニングシャワーレイン14
SE070 = playSe( spep_3 + 280, 1016 );
setSeVolumeByWorkId( spep_3 + 280, SE070, 65 );
stopSe( spep_3 + 288, SE070, 4);
--ライトニングシャワーレイン15
SE071 = playSe( spep_3 + 286, 1016 );
setSeVolumeByWorkId( spep_3 + 286, SE071, 51 );
stopSe( spep_3 + 294, SE071, 4);
--ライトニングシャワーレイン16
SE072 = playSe( spep_3 + 294, 1016 );
setSeVolumeByWorkId( spep_3 + 294, SE072, 69 );
stopSe( spep_3 + 302, SE072, 4);
--ライトニングシャワーレイン17
SE073 = playSe( spep_3 + 302, 1016 );
setSeVolumeByWorkId( spep_3 + 302, SE073, 87 );
stopSe( spep_3 + 310, SE073, 4);
--ライトニングシャワーレイン18
SE074 = playSe( spep_3 + 310, 1016 );
setSeVolumeByWorkId( spep_3 + 310, SE074, 78 );
stopSe( spep_3 + 318, SE074, 4);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 370, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 250 );
endPhase( spep_3 + 360 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面立ち(102F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
syomen = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面立ち(ef_001)
setEffMoveKey( spep_0 + 0, syomen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102,syomen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, syomen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 102, syomen, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, syomen, 0 );
setEffRotateKey( spep_0 + 102, syomen, 0 );
setEffAlphaKey( spep_0 + 0, syomen, 255 );
setEffAlphaKey( spep_0 + 102, syomen, 255 );

spep_x = spep_0 + 17;
-- ** 顔カットイン ** --
--[[
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
--[[
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 78, ctgogo, 191 );
--setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 78, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 83, ctgogo, 0 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );-----101
]]
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
setEffAlphaKey( spep_x + 76, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 191 );
setEffAlphaKey( spep_x + 80, ctgogo, 128 );
setEffAlphaKey( spep_x + 82, ctgogo, 64 );
setEffAlphaKey( spep_x + 84, ctgogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );--背中向けて画面右へ
setDisp( spep_0 + 56, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 1, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 2, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 3, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 4, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 5, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 6, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 8, 1, 244.1, 131.8 , 0 );
setMoveKey( spep_0 + 10, 1, 375.9, 231.1 , 0 );
setMoveKey( spep_0 + 12, 1, 497.1, 322.5 , 0 );
setMoveKey( spep_0 + 14, 1, 608.3, 406.2 , 0 );
setMoveKey( spep_0 + 16, 1, 709.8, 482.7 , 0 );
setMoveKey( spep_0 + 18, 1, 802.1, 552.2 , 0 );
setMoveKey( spep_0 + 20, 1, 885.6, 615.1 , 0 );
setMoveKey( spep_0 + 22, 1, 960.8, 671.7 , 0 );
setMoveKey( spep_0 + 24, 1, 1028.1, 722.4 , 0 );
setMoveKey( spep_0 + 26, 1, 1087.9, 767.4 , 0 );
setMoveKey( spep_0 + 28, 1, 1140.6, 807.2 , 0 );
setMoveKey( spep_0 + 30, 1, 1186.8, 841.9 , 0 );
setMoveKey( spep_0 + 32, 1, 1226.8, 872.1 , 0 );
setMoveKey( spep_0 + 34, 1, 1261.2, 898 , 0 );
setMoveKey( spep_0 + 36, 1, 1290.2, 919.8 , 0 );
setMoveKey( spep_0 + 38, 1, 1314.4, 938.1 , 0 );
setMoveKey( spep_0 + 40, 1, 1334.3, 953 , 0 );
setMoveKey( spep_0 + 42, 1, 1350.2, 965 , 0 );
setMoveKey( spep_0 + 44, 1, 1362.5, 974.3 , 0 );
setMoveKey( spep_0 + 46, 1, 1371.8, 981.3 , 0 );
setMoveKey( spep_0 + 48, 1, 1378.5, 986.3 , 0 );
setMoveKey( spep_0 + 50, 1, 1383, 989.7 , 0 );
setMoveKey( spep_0 + 52, 1, 1385.7, 991.7 , 0 );
setMoveKey( spep_0 + 54, 1, 1387.1, 992.8 , 0 );
setMoveKey( spep_0 + 56, 1, 1387.6, 993.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 3, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 4, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 5, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 6, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 8, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 10, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 12, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 14, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 16, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 18, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 20, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 22, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 24, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 26, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 28, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 30, 1, 5.89, 5.89 );
setScaleKey( spep_0 + 32, 1, 6.04, 6.04 );
setScaleKey( spep_0 + 34, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 36, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 38, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 40, 1, 6.43, 6.43 );
setScaleKey( spep_0 + 42, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 44, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 46, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 48, 1, 6.59, 6.59 );
setScaleKey( spep_0 + 50, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 52, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 54, 1, 6.63, 6.63 );
setScaleKey( spep_0 + 56, 1, 6.63, 6.63 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1072 );
--顔カットイン
SE002 = playSe( spep_x+ 0, 1018 );
--手を振りかぶる１
SE003 = playSe( spep_0 + 90, 1116 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 102, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 102 ;
--------------------------------------
--敵を掴む〜飛び立ち(552F)
--------------------------------------
-- ** エフェクト等 ** --
teki_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --敵を掴む〜飛び立ち 手前(ef_002_front)
setEffMoveKey( spep_1 + 0, teki_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 552, teki_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 552, teki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teki_f, 0 );
setEffRotateKey( spep_1 + 552, teki_f, 0 );
setEffAlphaKey( spep_1 + 0, teki_f, 255 );
setEffAlphaKey( spep_1 + 551, teki_f, 255 );
setEffAlphaKey( spep_1 + 552, teki_f, 0 );

teki_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --敵を掴む〜飛び立ち 奥(ef_002_back)
setEffMoveKey( spep_1 + 0, teki_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 552, teki_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, teki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 552, teki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, teki_b, 0 );
setEffRotateKey( spep_1 + 552, teki_b, 0 );
setEffAlphaKey( spep_1 + 0, teki_b, 255 );
setEffAlphaKey( spep_1 + 551, teki_b, 255 );
setEffAlphaKey( spep_1 + 552, teki_b, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 2, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 4, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 6, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 8, 1, 0, 15 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0, 15 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.994, 1.008 );
    setScaleKey( SP_dodge + 2, 1, 0.966, 0.966 );
    setScaleKey( SP_dodge + 4, 1, 0.938, 0.938 );
    setScaleKey( SP_dodge + 6, 1, 0.91, 0.91 );
    setScaleKey( SP_dodge + 8, 1, 0.868, 0.882 );
    setScaleKey( SP_dodge + 10, 1, 0.84, 0.854 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 63, 1, 1 );--中央待機
changeAnime( spep_1 + 63, 1, 100 );
setMoveKey( spep_1 + 63, 1, 36.4, 27.4 , 0 );--100
setMoveKey( spep_1 + 66, 1, 36.4, 27.4 , 0 );
setMoveKey( spep_1 + 82, 1, 36.4, 27.4 , 0 );
setScaleKey( spep_1 + 63, 1, 3.07, 3.07 );--100
setScaleKey( spep_1 + 82, 1, 3.07, 3.07 );
setRotateKey( spep_1 + 63, 1, 0 );--100
setRotateKey( spep_1 + 82, 1, 0 );

a = -80;
b = 20;
changeAnime( spep_1 + 83, 1, 107 );--首を掴まれる
setMoveKey( spep_1 + 83, 1, 41.3 +a, 91.3 +b , 0 );--107
setMoveKey( spep_1 + 88, 1, 41.3 +a, 91.3 +b , 0 );
setScaleKey( spep_1 + 83, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 88, 1, 0.73, 0.73 );
setRotateKey( spep_1 + 83, 1, -147.3 );
setRotateKey( spep_1 + 88, 1, -147.3 );

c = -60;
c1 = -40;
c2 = -50;
d = 20;
d1 = 0;
d2 = -20;
changeAnime( spep_1 + 89, 1, 6 );--振り回される、左へ
setMoveKey( spep_1 + 89, 1, 85.4 +c, 49.4 +d , 0 );--6
setMoveKey( spep_1 + 92, 1, 85.4 +c, 49.4 +d , 0 );
setMoveKey( spep_1 + 93, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 94, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 96, 1, 56.9 +c1, 87 +d1 , 0 );
setMoveKey( spep_1 + 97, 1, -157.5 +c2, 106.4 +d2 , 0 );
setMoveKey( spep_1 + 98, 1, -157.5 +c2, 106.4 +d2 , 0 );
setMoveKey( spep_1 + 102, 1, -157.5 +c2, 106.4 +d2 , 0 );
setScaleKey( spep_1 + 89, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 92, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 93, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 94, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 96, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 97, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 98, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 102, 1, 1.16, 1.16 );
setRotateKey( spep_1 + 89, 1, 5.1 );
setRotateKey( spep_1 + 92, 1, 5.1 );
setRotateKey( spep_1 + 93, 1, -21.7 );
setRotateKey( spep_1 + 94, 1, -21.7 );
setRotateKey( spep_1 + 96, 1, -21.7 );
setRotateKey( spep_1 + 97, 1, -53 );
setRotateKey( spep_1 + 98, 1, -53 );
setRotateKey( spep_1 + 102, 1, -53 );

c3 = 30;
c4 = 40;
d3 = 60;
d4 = 24;
changeAnime( spep_1 + 103, 1, 106 );--振り回される、左から右へ
setMoveKey( spep_1 + 103, 1, -211.8 +c3, 76.8 +d3 , 0 );--106
setMoveKey( spep_1 + 106, 1, -211.8 +c3, 76.8 +d3 , 0 );
setMoveKey( spep_1 + 107, 1, -191.3 +c4, 182.7 +d4 , 0 );
setMoveKey( spep_1 + 112, 1, -191.3 +c4, 182.7 +d4 , 0 );
setScaleKey( spep_1 + 103, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 107, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 112, 1, 0.86, 0.86 );
setRotateKey( spep_1 + 103, 1, -47.9 );
setRotateKey( spep_1 + 106, 1, -47.9 );
setRotateKey( spep_1 + 107, 1, -17.3 );
setRotateKey( spep_1 + 112, 1, -17.3 );

setDisp( spep_1 + 178, 1, 0 );
changeAnime( spep_1 + 113, 1, 105 );--右上から地面へぶん投げられる
setMoveKey( spep_1 + 113, 1, -114.7, 244.6 , 0 );--105
setMoveKey( spep_1 + 116, 1, -114.7, 244.6 , 0 );
setMoveKey( spep_1 + 117, 1, -12.6, 252.5 , 0 );
setMoveKey( spep_1 + 122, 1, -12.6, 252.5 , 0 );
setMoveKey( spep_1 + 123, 1, 47.4, 262.4 , 0 );
setMoveKey( spep_1 + 126, 1, 47.4, 262.4 , 0 );
setMoveKey( spep_1 + 127, 1, 83.5, 280.4 , 0 );
setMoveKey( spep_1 + 130, 1, 83.5, 280.4 , 0 );
setMoveKey( spep_1 + 131, 1, 35.4, 268.5 , 0 );
setMoveKey( spep_1 + 132, 1, 35.4, 268.5 , 0 );
setMoveKey( spep_1 + 133, 1, 15.4, 272.5 , 0 );
setMoveKey( spep_1 + 134, 1, 15.4, 272.5 , 0 );
setMoveKey( spep_1 + 135, 1, 3.2, 277.8 , 0 );
setMoveKey( spep_1 + 136, 1, 3.2, 277.8 , 0 );
setMoveKey( spep_1 + 137, 1, -7.1, 282.2 , 0 );
setMoveKey( spep_1 + 138, 1, -7.1, 282.2 , 0 );
setMoveKey( spep_1 + 139, 1, -15.6, 285.9 , 0 );
setMoveKey( spep_1 + 140, 1, -15.6, 285.9 , 0 );
setMoveKey( spep_1 + 141, 1, -22.1, 288.8 , 0 );
setMoveKey( spep_1 + 142, 1, -22.1, 288.8 , 0 );
setMoveKey( spep_1 + 143, 1, -26.8, 290.8 , 0 );
setMoveKey( spep_1 + 147, 1, -26.8, 290.8 , 0 );
setMoveKey( spep_1 + 148, 1, -29.6, 292 , 0 );
setMoveKey( spep_1 + 149, 1, -29.6, 292 , 0 );
setMoveKey( spep_1 + 150, 1, -30.6, 292.4 , 0 );
setMoveKey( spep_1 + 151, 1, -18.5, 282.4 , 0 );
setMoveKey( spep_1 + 154, 1, -18.5, 280.4 , 0 );
setMoveKey( spep_1 + 155, 1, -4.5, 258.4 , 0 );
setMoveKey( spep_1 + 156, 1, -4.5, 258.4 , 0 );
setMoveKey( spep_1 + 157, 1, 43.5, 160.4 , 0 );
setMoveKey( spep_1 + 158, 1, 43.5, 160.4 , 0 );
setMoveKey( spep_1 + 159, 1, 179.5, -149.6 , 0 );
setMoveKey( spep_1 + 160, 1, 179.5, -149.6 , 0 );
setMoveKey( spep_1 + 161, 1, 235.5, -285.6 , 0 );
setMoveKey( spep_1 + 162, 1, 235.5, -285.6 , 0 );
setMoveKey( spep_1 + 163, 1, 255.5, -445.6 , 0 );
setMoveKey( spep_1 + 164, 1, 255.5, -445.6 , 0 );
setMoveKey( spep_1 + 165, 1, 280.7, -622.5 , 0 );
setMoveKey( spep_1 + 166, 1, 297.7, -741.2 , 0 );
setMoveKey( spep_1 + 168, 1, 308, -813.1 , 0 );
setMoveKey( spep_1 + 170, 1, 313.2, -850 , 0 );
setMoveKey( spep_1 + 172, 1, 315.2, -863.7 , 0 );
setMoveKey( spep_1 + 178, 1, 315.5, -865.6 , 0 );

setScaleKey( spep_1 + 113, 1, 0.36, 0.36 );--105
setScaleKey( spep_1 + 116, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 117, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 132, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 135, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 148, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 149, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 160, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 161, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 178, 1, 0.19, 0.19 );

setRotateKey( spep_1 + 113, 1, 32.1 );--105
setRotateKey( spep_1 + 116, 1, 32.1 );
setRotateKey( spep_1 + 117, 1, 49.3);
setRotateKey( spep_1 + 126, 1, 49.3);
setRotateKey( spep_1 + 127, 1, 71.8 );
setRotateKey( spep_1 + 130, 1, 71.8 );
setRotateKey( spep_1 + 131, 1, 65 );
setRotateKey( spep_1 + 132, 1, 65 );
setRotateKey( spep_1 + 133, 1, 80.5 );
setRotateKey( spep_1 + 134, 1, 80.5 );
setRotateKey( spep_1 + 135, 1, 84.5 );
setRotateKey( spep_1 + 136, 1, 84.5 );
setRotateKey( spep_1 + 137, 1, 87.8 );
setRotateKey( spep_1 + 140, 1, 87.8 );
setRotateKey( spep_1 + 141, 1, 90.6 );
setRotateKey( spep_1 + 142, 1, 90.6 );
setRotateKey( spep_1 + 143, 1, 94.3 );
setRotateKey( spep_1 + 144, 1, 94.3 );
setRotateKey( spep_1 + 145, 1, 95.5 );
setRotateKey( spep_1 + 148, 1, 95.5 );
setRotateKey( spep_1 + 149, 1, 123.5 );
setRotateKey( spep_1 + 157, 1, 123.5 );
setRotateKey( spep_1 + 158, 1, 123.5 );
setRotateKey( spep_1 + 159, 1, 142.2 );
setRotateKey( spep_1 + 162, 1, 142.2 );
setRotateKey( spep_1 + 163, 1, 150.4 );
setRotateKey( spep_1 + 178, 1, 150.4 );

setDisp( spep_1 + 276, 1, 1 );
setDisp( spep_1 + 295, 1, 0 );
changeAnime( spep_1 + 276, 1, 106 );--画面外左上から叩きつけられる
setMoveKey( spep_1 + 276, 1, -596.7, 371 , 0 );--6
setMoveKey( spep_1 + 286, 1, -596.7, 371 , 0 );
setMoveKey( spep_1 + 292, 1, -596.7, 490.9 , 0 );
setMoveKey( spep_1 + 293, 1, -426.7, 371 , 0 );
setMoveKey( spep_1 + 292, 1, -256.7, 251 , 0 );
setMoveKey( spep_1 + 294, 1, -86.7, 131 , 0 );
setMoveKey( spep_1 + 295, 1, 83.3, 11 , 0 );
setScaleKey( spep_1 + 276, 1, 0.62, 0.62 );--6
setScaleKey( spep_1 + 276, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 288, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 294, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 295, 1, 0.43, 0.43 );

setRotateKey( spep_1 + 276, 1, 70 );--6
setRotateKey( spep_1 + 295, 1, 70 );--6

-- ** 音 ** --
--手を振りかぶる１
stopSe( spep_1 + 18, SE003, 10 );
--手を振りかぶる2
SE004 = playSe( spep_1 + 16, 1004 );
setPitch( spep_1 + 16, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );

--腕のびる1
SE005 = playSe( spep_1 + 48, 1177 );
setSeVolumeByWorkId( spep_1 + 48, SE005, 0 );
setSeVolumeByWorkId( spep_1 + 49, SE005, 15.6 );
setSeVolumeByWorkId( spep_1 + 50, SE005, 31.2 );
setSeVolumeByWorkId( spep_1 + 51, SE005, 46.8 );
setSeVolumeByWorkId( spep_1 + 52, SE005, 62.4 );
stopSe( spep_1 + 92, SE005, 36 );
setStartTimeMs( SE005,  383 );
setPitch( spep_1 + 48, SE005, 200 );
setTimeStretch( SE005, 1.13, 10, 1 );
--腕のびる2
SE006 = playSe( spep_1 + 44, 1153 );
setSeVolumeByWorkId( spep_1 + 44, SE006, 54 );
--腕のびる3
SE007 = playSe( spep_1 + 44, 1190 );
setSeVolumeByWorkId( spep_1 + 44, SE007, 74 );
stopSe( spep_1 + 58, SE007, 24 );
--腕のびる4
SE008 = playSe( spep_1 + 50, 45 );
setTimeStretch( SE008, 1.26, 10, 1 );
--腕のびる5
SE009 = playSe( spep_1 + 50, 49 );
setSeVolumeByWorkId( spep_1 + 50, SE009, 141 );
setTimeStretch( SE009, 1.41, 10, 1 );

--敵つかむ1
SE010 = playSe( spep_1 + 68, 1241 );
setPitch( spep_1 + 68, SE010, 400 );
setTimeStretch( SE010, 1.27, 10, 1 );
--敵つかむ2
SE011 = playSe( spep_1 + 80, 37 );
setSeVolumeByWorkId( spep_1 + 80, SE011, 141 );
stopSe( spep_1 + 96, SE011, 18 );
setPitch( spep_1 + 80, SE011, 200 );
setTimeStretch( SE011, 1.13, 10, 1 );
--敵つかむ3
SE012 = playSe( spep_1 + 84, 1153 );
setSeVolumeByWorkId( spep_1 + 84, SE012, 56 );

--指でなぞる1
SE013 = playSe( spep_1 + 330, 1266 );
setSeVolumeByWorkId( spep_1 + 330, SE013, 0 );
setSeVolumeByWorkId( spep_1 + 331, SE013, 1.9 );
setSeVolumeByWorkId( spep_1 + 332, SE013, 3.8 );
setSeVolumeByWorkId( spep_1 + 333, SE013, 5.7 );
setSeVolumeByWorkId( spep_1 + 334, SE013, 7.6 );
setSeVolumeByWorkId( spep_1 + 335, SE013, 9.5 );
setSeVolumeByWorkId( spep_1 + 336, SE013, 11.4 );
setSeVolumeByWorkId( spep_1 + 337, SE013, 13.3 );
setSeVolumeByWorkId( spep_1 + 338, SE013, 15.2 );
setSeVolumeByWorkId( spep_1 + 339, SE013, 17.1 );
setSeVolumeByWorkId( spep_1 + 340, SE013, 19 );
setSeVolumeByWorkId( spep_1 + 341, SE013, 20.9 );
setSeVolumeByWorkId( spep_1 + 342, SE013, 22.8 );
setSeVolumeByWorkId( spep_1 + 343, SE013, 24.7 );
setSeVolumeByWorkId( spep_1 + 344, SE013, 26.6 );
stopSe( spep_1 + 380, SE013, 22 );
setStartTimeMs( SE013,  2917 );

--敵ぶん投げる
SE014 = playSe( spep_1 + 156, 1027 );
setSeVolumeByWorkId( spep_1 + 156, SE014, 65 );
--手が戻り切る1
SE015 = playSe( spep_1 + 236, 1255 );
setSeVolumeByWorkId( spep_1 + 236, SE015, 0 );
setSeVolumeByWorkId( spep_1 + 237, SE015, 10.1 );
setSeVolumeByWorkId( spep_1 + 238, SE015, 20.2 );
setSeVolumeByWorkId( spep_1 + 239, SE015, 30.3 );
setSeVolumeByWorkId( spep_1 + 240, SE015, 40.4 );
setSeVolumeByWorkId( spep_1 + 241, SE015, 50.5 );
setSeVolumeByWorkId( spep_1 + 242, SE015, 60.6 );
stopSe( spep_1 + 262, SE015, 8 );
setStartTimeMs( SE015,  1083 );

--手もどっていく1
SE016 = playSe( spep_1 + 184, 1274 );
setSeVolumeByWorkId( spep_1 + 184, SE016, 72 );
stopSe( spep_1 + 222, SE016, 12 );
setPitch( spep_1 + 184, SE016, 300 );
setTimeStretch( SE016, 0.99, 10, 1 );
--手もどっていく2
SE017 = playSe( spep_1 + 188, 45 );
setSeVolumeByWorkId( spep_1 + 188, SE017, 68 );
stopSe( spep_1 + 234, SE017, 6 );
setTimeStretch( SE017, 1.41, 10, 1 );
--手が戻り切る2
SE018 = playSe( spep_1 + 236, 1190 );
setSeVolumeByWorkId( spep_1 + 236, SE018, 80 );
setTimeStretch( SE018, 0.72, 10, 1 );
--手が戻り切る3
SE019 = playSe( spep_1 + 238, 45 );
setSeVolumeByWorkId( spep_1 + 238, SE019, 79 );
stopSe( spep_1 + 258, SE019, 14 );
setPitch( spep_1 + 238, SE019, 200 );
setTimeStretch( SE019, 0.87, 10, 1 );
--手くわっくわっ1
SE020 = playSe( spep_1 + 248, 27 );
stopSe( spep_1 + 254, SE020, 0 );
--手くわっくわっ2
SE021 = playSe( spep_1 + 256, 27 );
stopSe( spep_1 + 264, SE021, 0 );
--敵飛んでく
SE022 = playSe( spep_1 + 264, 1183 );
setSeVolumeByWorkId( spep_1 + 264, SE022, 52 );
stopSe( spep_1 + 294, SE022, 8 );
--指でなぞる2
SE023 = playSe( spep_1 + 330, 1264 );
setSeVolumeByWorkId( spep_1 + 330, SE023, 0 );
setSeVolumeByWorkId( spep_1 + 331, SE023, 20.1 );
setSeVolumeByWorkId( spep_1 + 332, SE023, 40.2 );
setSeVolumeByWorkId( spep_1 + 333, SE023, 60.3 );
setSeVolumeByWorkId( spep_1 + 334, SE023, 80.4 );
stopSe( spep_1 + 386, SE023, 16 );
setStartTimeMs( SE023,  883 );
setBandpassFilter ( spep_1 + 330, SE023, 1100, 24000 );
--剣山つっこむ1
SE024 = playSe( spep_1 + 292, 19 );
setSeVolumeByWorkId( spep_1 + 292, SE024, 42 );
--剣山つっこむ2
SE025 = playSe( spep_1 + 294, 1160 );
setSeVolumeByWorkId( spep_1 + 294, SE025, 49 );
stopSe( spep_1 + 324, SE025, 34 );
--指でなぞる3
SE026 = playSe( spep_1 + 322, 1263 );
setSeVolumeByWorkId( spep_1 + 322, SE026, 151 );
stopSe( spep_1 + 376, SE026, 28 );
setStartTimeMs( SE026,  300 );
setPitch( spep_1 + 322, SE026, -300 );
setTimeStretch( SE026, 0.8, 10, 1 );
--割れる1
SE027 = playSe( spep_1 + 400, 1026 );
setSeVolumeByWorkId( spep_1 + 400, SE027, 88 );
setStartTimeMs( SE027,  183 );
setPitch( spep_1 + 400, SE027, 200 );
setTimeStretch( SE027, 1.13, 10, 1 );
--割れる2
SE028 = playSe( spep_1 + 396, 1061 );
setSeVolumeByWorkId( spep_1 + 396, SE028, 120 );
setPitch( spep_1 + 396, SE028, 200 );
setTimeStretch( SE028, 1.13, 10, 1 );
--割れる3
SE029 = playSe( spep_1 + 398, 1032 );
setSeVolumeByWorkId( spep_1 + 398, SE029, 121 );
--割れる4
SE030 = playSe( spep_1 + 398, 1030 );
setSeVolumeByWorkId( spep_1 + 398, SE030, 123 );
stopSe( spep_1 + 408, SE030, 26 );
setPitch( spep_1 + 398, SE030, 100 );
setTimeStretch( SE030, 1.07, 10, 1 );
--連続気弾1
SE031 = playSe( spep_1 + 440, 1016 );
setSeVolumeByWorkId( spep_1 + 322, SE026, 0 );
setSeVolumeByWorkId( spep_1 + 323, SE026, 37.9 );
setSeVolumeByWorkId( spep_1 + 324, SE026, 75.8 );
setSeVolumeByWorkId( spep_1 + 325, SE026, 113.7 );
setSeVolumeByWorkId( spep_1 + 326, SE026, 151.6 );
--連続気弾2
SE032 = playSe( spep_1 + 448, 1016 );
setSeVolumeByWorkId( spep_1 + 400, SE027, 0 );
setSeVolumeByWorkId( spep_1 + 401, SE027, 24 );
setSeVolumeByWorkId( spep_1 + 402, SE027, 48 );
--連続気弾3
SE033 = playSe( spep_1 + 458, 1016 );
setSeVolumeByWorkId( spep_1 + 458, SE033, 77 );
--連続気弾4
SE034 = playSe( spep_1 + 468, 1016 );
setSeVolumeByWorkId( spep_1 + 468, SE034, 65 );
--連続気弾5
SE035 = playSe( spep_1 + 478, 1016 );
setSeVolumeByWorkId( spep_1 + 478, SE035, 71 );
--連続気弾6
SE036 = playSe( spep_1 + 487, 1016 );
setSeVolumeByWorkId( spep_1 + 487, SE036, 58 );
--連続気弾7
SE037 = playSe( spep_1 + 496, 1016 );
setSeVolumeByWorkId( spep_1 + 496, SE037, 73 );
--地面割れる1
SE038 = playSe( spep_1 + 508, 1033 );
setSeVolumeByWorkId( spep_1 + 508, SE038, 60 );
--stopSe( spep_1 + 550, SE038, 0 );
setBandpassFilter ( spep_1 + 508, SE038, 24, 3000 );
--地面割れる2
SE039 = playSe( spep_1 + 508, 1028 );
setSeVolumeByWorkId( spep_1 + 508, SE039, 89 );
--stopSe( spep_1 + 550, SE039, 0 );
setPitch( spep_1 + 508, SE039, -1000 );
setTimeStretch( SE039, 0.33, 10, 1 );
--地面割れる3
SE040 = playSe( spep_1 + 510, 1011 );
setSeVolumeByWorkId( spep_1 + 510, SE040, 66 );
--stopSe( spep_1 + 550, SE040, 0 );
setBandpassFilter ( spep_1 + 510, SE040, 24, 3000 );
--地面割れる4
SE041 = playSe( spep_1 + 514, 1023 );
setSeVolumeByWorkId( spep_1 + 514, SE041, 68 );
--stopSe( spep_1 + 550, SE041, 0 );
setBandpassFilter ( spep_1 + 514, SE041, 24, 3000 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 552, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 552;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
--地面割れる1〜4
stopSe( spep_2 + 0, SE038, 5 );
stopSe( spep_2 + 0, SE039, 5 );
stopSe( spep_2 + 0, SE040, 5 );
stopSe( spep_2 + 0, SE041, 5 );

--カードカットイン
SE042 = playSe( spep_2 + 0, 1035 );
--ジャネンバ向かってくる1
SE043 = playSe( spep_2 + 82, 1266 );
setSeVolumeByWorkId( spep_2 + 82, SE043, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE043, 10 );
setSeVolumeByWorkId( spep_2 + 84, SE043, 20 );
setSeVolumeByWorkId( spep_2 + 85, SE043, 30 );
setSeVolumeByWorkId( spep_2 + 86, SE043, 40 );
setSeVolumeByWorkId( spep_2 + 87, SE043, 50 );
setSeVolumeByWorkId( spep_2 + 88, SE043, 60 );
setSeVolumeByWorkId( spep_2 + 89, SE043, 70 );
setSeVolumeByWorkId( spep_2 + 90, SE043, 80 );
setSeVolumeByWorkId( spep_2 + 91, SE043, 90 );
setSeVolumeByWorkId( spep_2 + 92, SE043, 100 );
setStartTimeMs( SE043,  1383 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
--------------------------------------
--空からビーム〜剣山に命中(360F)
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --手を前に出す(ef_001)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 370, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 370, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 370, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 370, finish, 255 );

-- ** 音 ** --
--ジャネンバ向かってくる1
stopSe( spep_3 + 92, SE043, 24 );
--気弾降り注ぐ1
SE044 = playSe( spep_3 + 102, 1185 );
setSeVolumeByWorkId( spep_3 + 102, SE044, 0 );
setSeVolumeByWorkId( spep_3 + 103, SE044, 4.4 );
setSeVolumeByWorkId( spep_3 + 104, SE044, 8.8 );
setSeVolumeByWorkId( spep_3 + 105, SE044, 13.2 );
setSeVolumeByWorkId( spep_3 + 106, SE044, 17.6 );
setSeVolumeByWorkId( spep_3 + 107, SE044, 22 );
setSeVolumeByWorkId( spep_3 + 108, SE044, 26.4 );
setSeVolumeByWorkId( spep_3 + 109, SE044, 30.8 );
setSeVolumeByWorkId( spep_3 + 110, SE044, 35.2 );
setStartTimeMs( SE044,  1717 );
setPitch( spep_3 + 102, SE044, -300 );
setTimeStretch( SE044, 0.8, 10, 1 );
stopSe( spep_3 + 170, SE044, 38 );

--ジャネンバ向かってくる2
SE045 = playSe( spep_3 + 22, 1072 );
--ジャネンバ向かってくる3
SE046 = playSe( spep_3 + 32, 1167 );
setSeVolumeByWorkId( spep_3 + 32, SE046, 44 );
setTimeStretch( SE046, 1.11, 10, 1 );

--気弾降り注ぐ2
SE047 = playSe( spep_3 + 86, 1217 );
setSeVolumeByWorkId( spep_3 + 86, SE047, 77 );
stopSe( spep_3 + 102, SE047, 10 );
--気弾降り注ぐ3
SE048 = playSe( spep_3 + 88, 1117 );
setSeVolumeByWorkId( spep_3 + 88, SE048, 82 );
stopSe( spep_3 + 118, SE048, 34 );
--気弾降り注ぐ4
SE049 = playSe( spep_3 + 88, 1270 );
stopSe( spep_3 + 156, SE049, 54 );
setPitch( spep_3 + 88, SE049, 800 );
setTimeStretch( SE049, 1.53, 10, 1 );
--気弾降り注ぐ5
SE050 = playSe( spep_3 + 92, 1171 );
setSeVolumeByWorkId( spep_3 + 92, SE050, 79 );
--気弾降り注ぐ6
SE051 = playSe( spep_3 + 102, 1272 );
setSeVolumeByWorkId( spep_3 + 102, SE051, 65 );
setPitch( spep_3 + 102, SE051, -300 );
setTimeStretch( SE051, 0.8, 10, 1 );

--ライトニングシャワーレイン1
SE052 = playSe( spep_3 + 186, 1016 );
setSeVolumeByWorkId( spep_3 + 186, SE052, 69 );
--stopSe( spep_3 + 194, SE052, 2);
--ライトニングシャワーレイン2
SE053 = playSe( spep_3 + 194, 1016 );
setSeVolumeByWorkId( spep_3 + 194, SE053, 74 );
--stopSe( spep_3 + 202, SE053, 2);
--ライトニングシャワーレイン3
SE054 = playSe( spep_3 + 202, 1016 );
setSeVolumeByWorkId( spep_3 + 202, SE054, 63 );
--stopSe( spep_3 + 210, SE054, 2);

--爆発1
SE055 = playSe( spep_3 + 204, 1023 );
setSeVolumeByWorkId( spep_3 + 204, SE055, 74 );

--ライトニングシャワーレイン4
SE056 = playSe( spep_3 + 212, 1016 );
setSeVolumeByWorkId( spep_3 + 212, SE056, 86 );
stopSe( spep_3 + 220, SE056, 4);
--爆発2
SE057 = playSe( spep_3 + 212, 1159 );
setSeVolumeByWorkId( spep_3 + 212, SE057, 58 );
--ライトニングシャワーレイン5
SE058 = playSe( spep_3 + 218, 1016 );
setSeVolumeByWorkId( spep_3 + 218, SE058, 60 );
stopSe( spep_3 + 226, SE058, 4);
--ライトニングシャワーレイン6
SE059 = playSe( spep_3 + 228, 1016 );
setSeVolumeByWorkId( spep_3 + 228, SE059, 71 );
stopSe( spep_3 + 236, SE059, 2);
--爆発3
SE060 = playSe( spep_3 + 228, 1188 );
setSeVolumeByWorkId( spep_3 + 228, SE060, 62 );
--ライトニングシャワーレイン7
SE061 = playSe( spep_3 + 236, 1016 );
setSeVolumeByWorkId( spep_3 + 236, SE061, 71 );
stopSe( spep_3 + 244, SE061, 4);
--ライトニングシャワーレイン8
SE062 = playSe( spep_3 + 242, 1016 );
setSeVolumeByWorkId( spep_3 + 242, SE062, 84 );
stopSe( spep_3 + 250, SE062, 4);
--爆発4
SE063 = playSe( spep_3 + 242, 1024 );
setSeVolumeByWorkId( spep_3 + 242, SE063, 71 );
--ライトニングシャワーレイン9
SE064 = playSe( spep_3 + 250, 1016 );
setSeVolumeByWorkId( spep_3 + 250, SE064, 53 );
stopSe( spep_3 + 258, SE064, 4);
--ライトニングシャワーレイン10
SE065 = playSe( spep_3 + 256, 1016 );
setSeVolumeByWorkId( spep_3 + 256, SE065, 74 );
stopSe( spep_3 + 264, SE065, 4);
--ライトニングシャワーレイン11
SE066 = playSe( spep_3 + 262, 1016 );
setSeVolumeByWorkId( spep_3 + 262, SE066, 63 );
stopSe( spep_3 + 270, SE066, 4);
--ライトニングシャワーレイン12
SE067 = playSe( spep_3 + 266, 1016 );
setSeVolumeByWorkId( spep_3 + 266, SE067, 78 );
stopSe( spep_3 + 274, SE067, 4);
--爆発5
SE068 = playSe( spep_3 + 266, 1023 );
setSeVolumeByWorkId( spep_3 + 266, SE068, 63 );

--ライトニングシャワーレイン13
SE069 = playSe( spep_3 + 272, 1016 );
setSeVolumeByWorkId( spep_3 + 272, SE069, 56 );
stopSe( spep_3 + 280, SE069, 4);
--ライトニングシャワーレイン14
SE070 = playSe( spep_3 + 280, 1016 );
setSeVolumeByWorkId( spep_3 + 280, SE070, 65 );
stopSe( spep_3 + 288, SE070, 4);
--ライトニングシャワーレイン15
SE071 = playSe( spep_3 + 286, 1016 );
setSeVolumeByWorkId( spep_3 + 286, SE071, 51 );
stopSe( spep_3 + 294, SE071, 4);
--ライトニングシャワーレイン16
SE072 = playSe( spep_3 + 294, 1016 );
setSeVolumeByWorkId( spep_3 + 294, SE072, 69 );
stopSe( spep_3 + 302, SE072, 4);
--ライトニングシャワーレイン17
SE073 = playSe( spep_3 + 302, 1016 );
setSeVolumeByWorkId( spep_3 + 302, SE073, 87 );
stopSe( spep_3 + 310, SE073, 4);
--ライトニングシャワーレイン18
SE074 = playSe( spep_3 + 310, 1016 );
setSeVolumeByWorkId( spep_3 + 310, SE074, 78 );
stopSe( spep_3 + 318, SE074, 4);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 370, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 250 );
endPhase( spep_3 + 360 );
end