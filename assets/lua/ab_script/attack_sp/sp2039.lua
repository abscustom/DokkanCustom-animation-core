--1019930:チチ_亀仙流乱舞
--sp_effect_b1_00122
--sp2039

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
SP_01=  155777  ;-- 横位置突進&攻撃&急ブレーキ
SP_02=  155779  ;-- 敵に向かってジャンプ
SP_03=  155781  ;-- 敵目線、正面から回って迫ってくる
SP_04=  155782  ;-- 乱打後ドロップキック_手前レイヤー
SP_05=  155783  ;-- 乱打後ドロップキック_奥レイヤー
SP_06=  155786  ;-- フィニッシュ_敵より手前
SP_07=  155787  ;-- フィニッシュ_敵より奥

--エフェクト(てき)
SP_01x= 155778  ;-- 横位置突進&攻撃&急ブレーキ  (敵)
SP_02x= 155780  ;-- 敵に向かってジャンプ  (敵)
SP_03x= 155781  ;-- 敵目線、正面から回って迫ってくる    
SP_04x= 155784  ;-- 乱打後ドロップキック_手前レイヤー   (敵)
SP_05x= 155785  ;-- 乱打後ドロップキック_奥レイヤー    (敵)
SP_06x= 155786  ;-- フィニッシュ_敵より手前    
SP_07x= 155787  ;-- フィニッシュ_敵より奥 

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 横位置突進&攻撃&急ブレーキ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 134, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 134, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 134, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 134, rush, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

b=130;

setMoveKey( spep_0 + 0, 1, 322.1, 105.9+b , 0 );
setMoveKey( spep_0 + 2, 1, 321.8, 106.5+b , 0 );
setMoveKey( spep_0 + 4, 1, 321.5, 107.2+b , 0 );
setMoveKey( spep_0 + 6, 1, 321.1, 107.8+b , 0 );
setMoveKey( spep_0 + 8, 1, 320.8, 108.4+b , 0 );
setMoveKey( spep_0 + 10, 1, 320.5, 109+b , 0 );
setMoveKey( spep_0 + 12, 1, 320.2, 109.6+b , 0 );
setMoveKey( spep_0 + 14, 1, 319.9, 110.2+b , 0 );
setMoveKey( spep_0 + 16, 1, 319.6, 110.8+b , 0 );
setMoveKey( spep_0 + 18, 1, 319.3, 111.5+b , 0 );
setMoveKey( spep_0 + 20, 1, 319, 112.1+b , 0 );
setMoveKey( spep_0 + 22, 1, 318.6, 112.7+b , 0 );
setMoveKey( spep_0 + 24, 1, 318.3, 113.3+b , 0 );
setMoveKey( spep_0 + 26, 1, 318, 113.9+b , 0 );
setMoveKey( spep_0 + 28, 1, 318, 113.9+b , 0 );
setMoveKey( spep_0 + 30, 1, 318.3, 114.2+b , 0 );
setMoveKey( spep_0 + 32, 1, 319.4, 115.6+b , 0 );
setMoveKey( spep_0 + 34, 1, 322.5, 119.1+b , 0 );
setMoveKey( spep_0 + 36, 1, 329.1, 126.6+b , 0 );
setMoveKey( spep_0 + 38, 1, 340.9, 140.3+b , 0 );
setMoveKey( spep_0 + 40, 1, 360.5, 162.7+b , 0 );
setMoveKey( spep_0 + 42, 1, 390.4, 197.2+b , 0 );
setMoveKey( spep_0 + 44, 1, 434, 247.3+b , 0 );
setMoveKey( spep_0 + 46, 1, 494.8, 317.2+b , 0 );
setMoveKey( spep_0 + 48, 1, 576.8, 411.6+b , 0 );
setMoveKey( spep_0 + 50, 1, 684.5, 535.5+b , 0 );
setMoveKey( spep_0 + 52, 1, 814.5, 685+b , 0 );
setMoveKey( spep_0 + 54, 1, 922.3, 808.9+b , 0 );
setMoveKey( spep_0 + 56, 1, 1004.3, 903.2+b , 0 );
setMoveKey( spep_0 + 58, 1, 1065.1, 973+b , 0 );
setMoveKey( spep_0 + 60, 1, 1108.6, 1023.1+b , 0 );
setMoveKey( spep_0 + 62, 1, 1138.6, 1057.6+b , 0 );
setMoveKey( spep_0 + 64, 1, 1158.1, 1080+b , 0 );
setMoveKey( spep_0 + 66, 1, 1170, 1093.7+b , 0 );
setMoveKey( spep_0 + 68, 1, 1176.5, 1101.2+b , 0 );
setMoveKey( spep_0 + 70, 1, 1179.6, 1104.7+b , 0 );
setMoveKey( spep_0 + 72, 1, 1180.7, 1106+b , 0 );
setMoveKey( spep_0 + 74, 1, 1181, 1106.3+b , 0 );
setMoveKey( spep_0 + 76, 1, 1181, 1106.4+b , 0 );

a=3.4;

setScaleKey( spep_0 + 0, 1, 0.72+a, 0.72+a );
setScaleKey( spep_0 + 2, 1, 0.72+a, 0.72+a );
setScaleKey( spep_0 + 4, 1, 0.73+a, 0.73+a );
setScaleKey( spep_0 + 6, 1, 0.73+a, 0.73+a );
setScaleKey( spep_0 + 8, 1, 0.74+a, 0.74+a );
setScaleKey( spep_0 + 10, 1, 0.74+a, 0.74+a );
setScaleKey( spep_0 + 12, 1, 0.75+a, 0.75+a );
setScaleKey( spep_0 + 14, 1, 0.75+a, 0.75+a );
setScaleKey( spep_0 + 16, 1, 0.76+a, 0.76+a );
setScaleKey( spep_0 + 18, 1, 0.76+a, 0.76+a );
setScaleKey( spep_0 + 20, 1, 0.77+a, 0.77+a );
setScaleKey( spep_0 + 22, 1, 0.77+a, 0.77+a );
setScaleKey( spep_0 + 24, 1, 0.78+a, 0.78+a );
setScaleKey( spep_0 + 28, 1, 0.78+a, 0.78+a );
setScaleKey( spep_0 + 30, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0 + 34, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0 + 36, 1, 0.81+a, 0.81+a );
setScaleKey( spep_0 + 38, 1, 0.83+a, 0.83+a );
setScaleKey( spep_0 + 40, 1, 0.87+a, 0.87+a );
setScaleKey( spep_0 + 42, 1, 0.93+a, 0.93+a );
setScaleKey( spep_0 + 44, 1, 1.01+a, 1.01+a );
setScaleKey( spep_0 + 46, 1, 1.13+a, 1.13+a );
setScaleKey( spep_0 + 48, 1, 1.29+a, 1.29+a );
setScaleKey( spep_0 + 50, 1, 1.5+a, 1.5+a );
setScaleKey( spep_0 + 52, 1, 1.75+a, 1.75+a );
setScaleKey( spep_0 + 54, 1, 1.96+a, 1.96+a );
setScaleKey( spep_0 + 56, 1, 2.12+a, 2.12+a );
setScaleKey( spep_0 + 58, 1, 2.23+a, 2.23+a );
setScaleKey( spep_0 + 60, 1, 2.32+a, 2.32+a );
setScaleKey( spep_0 + 62, 1, 2.38+a, 2.38+a );
setScaleKey( spep_0 + 64, 1, 2.41+a, 2.41+a );
setScaleKey( spep_0 + 66, 1, 2.44+a, 2.44+a );
setScaleKey( spep_0 + 68, 1, 2.45+a, 2.45+a );
setScaleKey( spep_0 + 70, 1, 2.46+a, 2.46+a );
setScaleKey( spep_0 + 76, 1, 2.46+a, 2.46+a );

setRotateKey( spep_0 + 0, 1, -15.9 );
setRotateKey( spep_0 + 1, 1, -15.9 );
setRotateKey( spep_0 + 2, 1, -15.9 );
setRotateKey( spep_0 + 3, 1, -15.9 );
setRotateKey( spep_0 + 4, 1, -15.9 );
setRotateKey( spep_0 + 5, 1, -15.9 );
setRotateKey( spep_0 + 6, 1, -15.9 );
setRotateKey( spep_0 + 70, 1, -15.9 );
setRotateKey( spep_0 + 76, 1, -15.9 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+34  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+34  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +46, 190006, 72, 0x102, -1, 0, 230 -100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +46,  ctgogo,  230 -100,  510);
setEffMoveKey(  spep_0 +118,  ctgogo,  230 -100,  510);

setEffAlphaKey( spep_0 +46, ctgogo, 0 );
setEffAlphaKey( spep_0 + 47, ctgogo, 255 );
setEffAlphaKey( spep_0 + 48, ctgogo, 255 );
setEffAlphaKey( spep_0 + 112, ctgogo, 255 );
setEffAlphaKey( spep_0 + 114, ctgogo, 191 );
setEffAlphaKey( spep_0 + 116, ctgogo, 112 );
setEffAlphaKey( spep_0 + 118, ctgogo, 64 );

setEffRotateKey(  spep_0 +46,  ctgogo,  0);
setEffRotateKey(  spep_0 +118,  ctgogo,  0);

setEffScaleKey(  spep_0 +46,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +108,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +118,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 0, 8 );--入り
setSeVolume( spep_0 + 0, 8, 68 );
playSe( spep_0 + 46, 1018 );--顔カットイン

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+126 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 134;
------------------------------------------------------
-- 敵に向かってジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, jump, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 56, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 56, jump, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 262, 313.3 , 0 );
setMoveKey( spep_1 + 2, 1, 264.3, 312.3 , 0 );
setMoveKey( spep_1 + 4, 1, 266.1, 309.4 , 0 );
setMoveKey( spep_1 + 6, 1, 267.4, 304.6 , 0 );
setMoveKey( spep_1 + 8, 1, 268, 297.8 , 0 );
setMoveKey( spep_1 + 10, 1, 268.1, 288.9 , 0 );
setMoveKey( spep_1 + 12, 1, 267.5, 277.8 , 0 );
setMoveKey( spep_1 + 14, 1, 266.2, 264.4 , 0 );
setMoveKey( spep_1 + 16, 1, 264.3, 248.7 , 0 );
setMoveKey( spep_1 + 18, 1, 261.6, 230.4 , 0 );
setMoveKey( spep_1 + 20, 1, 258.2, 209.6 , 0 );
setMoveKey( spep_1 + 22, 1, 254, 186.2 , 0 );
setMoveKey( spep_1 + 24, 1, 249, 159.9 , 0 );
setMoveKey( spep_1 + 26, 1, 248.6, 155.6 , 0 );
setMoveKey( spep_1 + 28, 1, 248.3, 151.4 , 0 );
setMoveKey( spep_1 + 30, 1, 248, 147.2 , 0 );
setMoveKey( spep_1 + 32, 1, 247.9, 143.1 , 0 );
setMoveKey( spep_1 + 34, 1, 247.8, 139 , 0 );
setMoveKey( spep_1 + 36, 1, 247.8, 135 , 0 );
setMoveKey( spep_1 + 38, 1, 247.8, 131.1 , 0 );
setMoveKey( spep_1 + 40, 1, 247.9, 127.2 , 0 );
setMoveKey( spep_1 + 42, 1, 248.1, 123.3 , 0 );
setMoveKey( spep_1 + 44, 1, 248.3, 119.5 , 0 );
setMoveKey( spep_1 + 46, 1, 248.6, 115.7 , 0 );
setMoveKey( spep_1 + 48, 1, 248.9, 112 , 0 );
setMoveKey( spep_1 + 50, 1, 249.3, 108.3 , 0 );
setMoveKey( spep_1 + 52, 1, 249.7, 104.6 , 0 );
setMoveKey( spep_1 + 54, 1, 250.1, 101 , 0 );
setMoveKey( spep_1 + 56, 1, 250.6, 97.4 , 0 );
setMoveKey( spep_1 + 58, 1, 251.1, 93.8 , 0 );

c=0.6;

setScaleKey( spep_1 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 8, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 12, 1, 0.26, 0.26 );
--setScaleKey( spep_1 + 14, 1, 0.07+c, 0.07+c );
--setScaleKey( spep_1 + 16, 1, 0.07+c, 0.07+c );
--setScaleKey( spep_1 + 18, 1, 0.08+c, 0.08+c );
--setScaleKey( spep_1 + 20, 1, 0.09+c, 0.09+c );
--setScaleKey( spep_1 + 22, 1, 0.1+c, 0.1+c );
setScaleKey( spep_1 + 24, 1, 0.11+c, 0.11+c );
setScaleKey( spep_1 + 32, 1, 0.11+c, 0.11+c );
setScaleKey( spep_1 + 34, 1, 0.12+c, 0.12+c );
setScaleKey( spep_1 + 46, 1, 0.12+c, 0.12+c );
setScaleKey( spep_1 + 48, 1, 0.13+c, 0.13+c );
setScaleKey( spep_1 + 58, 1, 0.13+c, 0.13+c );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 58, 1, 0 );

--SE
se_1117 = playSe( spep_1 + 12, 1117 );--ジャンプ
SE0=playSe( spep_1 + 12, 1207 );--ジャンプ
setSeVolume( spep_1 + 12, 1207, 42 );
se_1116 = playSe( spep_1 + 12, 1116 );--ジャンプ
SE1=playSe( spep_1 + 54, 44 );--さらなる高みへ
setSeVolume( spep_1 + 54, 44, 79 );

stopSe( spep_1 + 32, se_1117, 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;
------------------------------------------------------
-- 敵目線、正面から回って迫ってくる
------------------------------------------------------
-- ** エフェクト等 ** --
turn = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, turn, 0, 0, 0 );
setEffMoveKey( spep_2 + 102, turn, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, turn, 1.0, 1.0 );
setEffScaleKey( spep_2 + 102, turn, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, turn, 0 );
setEffRotateKey( spep_2 + 102, turn, 0 );
setEffAlphaKey( spep_2 + 0, turn, 255 );
setEffAlphaKey( spep_2 + 102, turn, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 79, 906, 23, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 79, shuchusen1, 23, 20 );

setEffMoveKey( spep_2 + 79, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 79, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 102, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 79, shuchusen1, 0 );
setEffRotateKey( spep_2 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 79, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 102, shuchusen1, 255 );

--SE
se_11171 = playSe( spep_2 + 54, 1117 );--くるくる
playSe( spep_2 + 54, 4 );--くるくる
se_11172 = playSe( spep_2 + 63, 1117 );--くるくる
se_11173 = playSe( spep_2 + 72, 1117 );--くるくる
setSeVolume( spep_2 + 72, 1117, 81 );
playSe( spep_2 + 80, 1232 );--くるくる
setSeVolume( spep_2 + 80, 1232, 56 );

stopSe( spep_2 + 2, se_1116, 40 );
stopSe( spep_2 + 67, se_11171, 13 );
stopSe( spep_2 + 76, se_11172, 13 );
stopSe( spep_2 + 85, se_11173, 13 );

--白フェード
entryFade( spep_2 + 94, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 106, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 102;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 乱打後ドロップキック
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 164, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 164, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 164, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 162, fighting_f, 255 );
setEffAlphaKey( spep_4 + 163, fighting_f, 255 );
setEffAlphaKey( spep_4 + 164, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 164, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 164, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 164, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 162, fighting_b, 255 );
setEffAlphaKey( spep_4 + 163, fighting_b, 255 );
setEffAlphaKey( spep_4 + 164, fighting_b, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_4 + 0,  10017, 80, 0x100, -1, 0, 23.5, 359 );
setEffShake( spep_4 + 0, ctdogagaga, 80, 10 );
setEffMoveKey( spep_4 + 0, ctdogagaga, 23.5, 359 , 0 );
setEffMoveKey( spep_4 + 2, ctdogagaga, 18.1, 369.8 , 0 );
setEffMoveKey( spep_4 + 4, ctdogagaga, 21.1, 363.7 , 0 );
setEffMoveKey( spep_4 + 6, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 8, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 10, ctdogagaga, 16.3, 365.7 , 0 );
setEffMoveKey( spep_4 + 12, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 14, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 16, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 18, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 20, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 22, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 24, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 26, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 28, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 30, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 32, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 34, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 36, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 38, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 40, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 42, ctdogagaga, 13.3, 366.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 46, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 48, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_4 + 50, ctdogagaga, 11.3, 360.7 , 0 );
setEffMoveKey( spep_4 + 52, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_4 + 54, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 56, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_4 + 58, ctdogagaga, 11.3, 360.7 , 0 );
setEffMoveKey( spep_4 + 60, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_4 + 62, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 64, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_4 + 66, ctdogagaga, 12.6, 363.2 , 0 );
setEffMoveKey( spep_4 + 68, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 70, ctdogagaga, 13.3, 366.7 , 0 );
setEffMoveKey( spep_4 + 72, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 74, ctdogagaga, 17.3, 387.7 , 0 );
setEffMoveKey( spep_4 + 76, ctdogagaga, 23.2, 355.7 , 0 );
setEffMoveKey( spep_4 + 78, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 80, ctdogagaga, 19.2, 353.7 , 0 );
--setEffMoveKey( spep_4 + 82, ctdogagaga, 15.3, 384.7 , 0 );

setEffScaleKey( spep_4 + 0, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_4 + 5, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_4 + 6, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_4 + 80, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_4 + 0, ctdogagaga, 22.3 );
setEffRotateKey( spep_4 + 4, ctdogagaga, 22.3 );
setEffRotateKey( spep_4 + 6, ctdogagaga, 22.5 );
setEffRotateKey( spep_4 + 80, ctdogagaga, 22.5 );

setEffAlphaKey( spep_4 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_4 + 80, ctdogagaga, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4+2 + 124, 1, 0 );

changeAnime( spep_4 + 1, 1, 106 );
changeAnime( spep_4+2 + 3, 1, 108 );
changeAnime( spep_4+3 + 10, 1, 106 );
changeAnime( spep_4+3 + 16, 1, 108 );
changeAnime( spep_4+3 + 24, 1, 106 );
changeAnime( spep_4+3 + 34, 1, 108 );
changeAnime( spep_4+3 + 42, 1, 106 );
changeAnime( spep_4+3 + 48, 1, 108 );
changeAnime( spep_4+3 + 56, 1, 106 );
changeAnime( spep_4+3 + 62, 1, 108 );
changeAnime( spep_4+3 + 70, 1, 106 );
changeAnime( spep_4+3 + 80, 1, 108 );
changeAnime( spep_4+3 + 84, 1, 106 );
changeAnime( spep_4+3 + 114, 1, 107 );

d=60;

--setMoveKey( spep_4 + 1, 1, 78.7, -75.9 , 0 );
setMoveKey( spep_4 + 0, 1, 53.4, -61.4+d , 0 );
setMoveKey( spep_4-3 + 4, 1, 54.6, -61.4+d , 0 );
setMoveKey( spep_4-3 + 6, 1, 55.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 9, 1, 56.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 10, 1, 84.5, -75.9+d , 0 );
setMoveKey( spep_4-3 + 12, 1, 85.6, -75.9+d , 0 );
setMoveKey( spep_4-3 + 15, 1, 86.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 16, 1, 61.4, -61.4+d , 0 );
setMoveKey( spep_4-3 + 18, 1, 62.6, -61.4+d , 0 );
setMoveKey( spep_4-3 + 20, 1, 63.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 23, 1, 64.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 24, 1, 92.5, -75.9+d , 0 );
setMoveKey( spep_4-3 + 26, 1, 93.6, -75.9+d , 0 );
setMoveKey( spep_4-3 + 28, 1, 94.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 30, 1, 95.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 33, 1, 97, -75.9+d , 0 );
setMoveKey( spep_4-3 + 34, 1, 71.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 36, 1, 72.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 38, 1, 74, -61.4+d , 0 );
setMoveKey( spep_4-3 + 41, 1, 75.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 42, 1, 102.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 44, 1, 103.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 47, 1, 105, -75.9+d , 0 );
setMoveKey( spep_4-3 + 48, 1, 79.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 50, 1, 80.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 52, 1, 82, -61.4+d , 0 );
setMoveKey( spep_4-3 + 55, 1, 83.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 56, 1, 110.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 58, 1, 111.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 61, 1, 113, -75.9+d , 0 );
setMoveKey( spep_4-3 + 62, 1, 87.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 64, 1, 88.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 66, 1, 90, -61.4+d , 0 );
setMoveKey( spep_4-3 + 69, 1, 91.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 70, 1, 118.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 79, 1, 118.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 80, 1, 92.3, -61.4+d , 0 );
setMoveKey( spep_4-3 + 83, 1, 92.3, -61.4+d , 0 );

setMoveKey( spep_4-3 + 84, 1, 122, -117.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 122, -112 , 0 );
setMoveKey( spep_4-3 + 88, 1, 122, -107.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 122, -104.8 , 0 );
setMoveKey( spep_4-3 + 92, 1, 122, -102.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 122, -100.6 , 0 );
setMoveKey( spep_4-3 + 96, 1, 122, -99.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, 122, -98.4 , 0 );
setMoveKey( spep_4-3 + 100, 1, 122, -97.8 , 0 );
setMoveKey( spep_4-3 + 102, 1, 122, -97.5 , 0 );
setMoveKey( spep_4-3 + 104, 1, 122, -97.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 122, -97.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, 122, -97.2 , 0 );
setMoveKey( spep_4-3 + 110, 1, 122, -97.1 , 0 );
setMoveKey( spep_4+3 + 113, 1, 122, -97.1 , 0 );

f=50;

setMoveKey( spep_4+3 + 114, 1, 99.9, -92.1-f , 0 );
setMoveKey( spep_4+2 + 116, 1, 139.8, -228.1-f , 0 );
setMoveKey( spep_4+2 + 118, 1, 163.8, -192.1-f , 0 );
setMoveKey( spep_4+2 + 120, 1, 438.1, -586.8-f , 0 );
setMoveKey( spep_4+2 + 122, 1, 712.4, -981.4-f , 0 );
setMoveKey( spep_4+2 + 124, 1, 986.6, -1376-f , 0 );

setScaleKey( spep_4 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_4-3 + 83, 1, 1.86, 1.86 );

setScaleKey( spep_4-3 + 84, 1, 1.88, 1.88 );
setScaleKey( spep_4+3 + 113, 1, 1.88, 1.88 );

e=0.7;

setScaleKey( spep_4+3 + 114, 1, 0.18+e, 0.18+e );
setScaleKey( spep_4+2 + 116, 1, 0.28+e, 0.28+e );
setScaleKey( spep_4+2 + 118, 1, 0.28+e, 0.28+e );
setScaleKey( spep_4+2 + 120, 1, 0.62+e, 0.62+e );
setScaleKey( spep_4+2 + 122, 1, 0.95+e, 0.95+e );
setScaleKey( spep_4+2 + 124, 1, 1.29+e, 1.29+e );

--setRotateKey( spep_4 + 1, 1, -27.6 );
setRotateKey( spep_4 + 0, 1, -27.7 );
setRotateKey( spep_4-3 + 83, 1, -27.7 );

setRotateKey( spep_4-3 + 84, 1, -16.1 );
setRotateKey( spep_4+3 + 113, 1, -16.1 );

setRotateKey( spep_4+3 + 114, 1, -33.4 );
setRotateKey( spep_4+2 + 116, 1, -7.2 );
setRotateKey( spep_4+2 + 118, 1, -8 );
setRotateKey( spep_4+2 + 124, 1, -8 );

--SE
playSe( spep_4 + 0, 1189 );--ラッシュ
playSe( spep_4 + 6, 1000 );--ラッシュ
playSe( spep_4 + 6, 1006 );--ラッシュ
playSe( spep_4 + 20, 1000 );--ラッシュ
playSe( spep_4 + 34, 1007 );--ラッシュ
playSe( spep_4 + 36, 1001 );--ラッシュ
setSeVolume( spep_4 + 36, 1001, 86 );
playSe( spep_4 + 54, 1000 );--ラッシュ
playSe( spep_4 + 66, 1000 );--ラッシュ
playSe( spep_4 + 82, 1001 );--ラッシュ
setSeVolume( spep_4 + 82, 1001, 66 );
playSe( spep_4 + 84, 1006 );--ラッシュ
playSe( spep_4 + 114, 1004 );--ラストドロップキック
setSeVolume( spep_4 + 114, 1004, 52 );
playSe( spep_4 + 118, 1009 );--ラストドロップキック
playSe( spep_4 + 120, 1001 );--ラストドロップキック
setSeVolume( spep_4 + 120, 1001, 74 );
playSe( spep_4 + 126, 1110 );--ラストドロップキック

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 164;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
ga_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 112, ga_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, ga_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga_f, 0 );
setEffRotateKey( spep_5 + 112, ga_f, 0 );
setEffAlphaKey( spep_5 + 0, ga_f, 255 );
setEffAlphaKey( spep_5 + 112, ga_f, 255 );

-- ** エフェクト等 ** --
ga_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 112, ga_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, ga_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga_b, 0 );
setEffRotateKey( spep_5 + 112, ga_b, 0 );
setEffAlphaKey( spep_5 + 0, ga_b, 255 );
setEffAlphaKey( spep_5 + 112, ga_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, 228 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 112, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 112, 1, 1080 );

--SE
se_1183 = playSe( spep_5 + 2, 1183 );--敵飛んでいく
setSeVolume( spep_5 + 2, 1183, 67 );
playSe( spep_5 + 16, 1054 );--ガッ

stopSe( spep_5 + 23, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +12 );
endPhase( spep_5 + 102 );
else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 横位置突進&攻撃&急ブレーキ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 134, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 134, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 134, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 134, rush, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

b=130;

setMoveKey( spep_0 + 0, 1, 322.1, 105.9+b , 0 );
setMoveKey( spep_0 + 2, 1, 321.8, 106.5+b , 0 );
setMoveKey( spep_0 + 4, 1, 321.5, 107.2+b , 0 );
setMoveKey( spep_0 + 6, 1, 321.1, 107.8+b , 0 );
setMoveKey( spep_0 + 8, 1, 320.8, 108.4+b , 0 );
setMoveKey( spep_0 + 10, 1, 320.5, 109+b , 0 );
setMoveKey( spep_0 + 12, 1, 320.2, 109.6+b , 0 );
setMoveKey( spep_0 + 14, 1, 319.9, 110.2+b , 0 );
setMoveKey( spep_0 + 16, 1, 319.6, 110.8+b , 0 );
setMoveKey( spep_0 + 18, 1, 319.3, 111.5+b , 0 );
setMoveKey( spep_0 + 20, 1, 319, 112.1+b , 0 );
setMoveKey( spep_0 + 22, 1, 318.6, 112.7+b , 0 );
setMoveKey( spep_0 + 24, 1, 318.3, 113.3+b , 0 );
setMoveKey( spep_0 + 26, 1, 318, 113.9+b , 0 );
setMoveKey( spep_0 + 28, 1, 318, 113.9+b , 0 );
setMoveKey( spep_0 + 30, 1, 318.3, 114.2+b , 0 );
setMoveKey( spep_0 + 32, 1, 319.4, 115.6+b , 0 );
setMoveKey( spep_0 + 34, 1, 322.5, 119.1+b , 0 );
setMoveKey( spep_0 + 36, 1, 329.1, 126.6+b , 0 );
setMoveKey( spep_0 + 38, 1, 340.9, 140.3+b , 0 );
setMoveKey( spep_0 + 40, 1, 360.5, 162.7+b , 0 );
setMoveKey( spep_0 + 42, 1, 390.4, 197.2+b , 0 );
setMoveKey( spep_0 + 44, 1, 434, 247.3+b , 0 );
setMoveKey( spep_0 + 46, 1, 494.8, 317.2+b , 0 );
setMoveKey( spep_0 + 48, 1, 576.8, 411.6+b , 0 );
setMoveKey( spep_0 + 50, 1, 684.5, 535.5+b , 0 );
setMoveKey( spep_0 + 52, 1, 814.5, 685+b , 0 );
setMoveKey( spep_0 + 54, 1, 922.3, 808.9+b , 0 );
setMoveKey( spep_0 + 56, 1, 1004.3, 903.2+b , 0 );
setMoveKey( spep_0 + 58, 1, 1065.1, 973+b , 0 );
setMoveKey( spep_0 + 60, 1, 1108.6, 1023.1+b , 0 );
setMoveKey( spep_0 + 62, 1, 1138.6, 1057.6+b , 0 );
setMoveKey( spep_0 + 64, 1, 1158.1, 1080+b , 0 );
setMoveKey( spep_0 + 66, 1, 1170, 1093.7+b , 0 );
setMoveKey( spep_0 + 68, 1, 1176.5, 1101.2+b , 0 );
setMoveKey( spep_0 + 70, 1, 1179.6, 1104.7+b , 0 );
setMoveKey( spep_0 + 72, 1, 1180.7, 1106+b , 0 );
setMoveKey( spep_0 + 74, 1, 1181, 1106.3+b , 0 );
setMoveKey( spep_0 + 76, 1, 1181, 1106.4+b , 0 );

a=3.4;

setScaleKey( spep_0 + 0, 1, 0.72+a, 0.72+a );
setScaleKey( spep_0 + 2, 1, 0.72+a, 0.72+a );
setScaleKey( spep_0 + 4, 1, 0.73+a, 0.73+a );
setScaleKey( spep_0 + 6, 1, 0.73+a, 0.73+a );
setScaleKey( spep_0 + 8, 1, 0.74+a, 0.74+a );
setScaleKey( spep_0 + 10, 1, 0.74+a, 0.74+a );
setScaleKey( spep_0 + 12, 1, 0.75+a, 0.75+a );
setScaleKey( spep_0 + 14, 1, 0.75+a, 0.75+a );
setScaleKey( spep_0 + 16, 1, 0.76+a, 0.76+a );
setScaleKey( spep_0 + 18, 1, 0.76+a, 0.76+a );
setScaleKey( spep_0 + 20, 1, 0.77+a, 0.77+a );
setScaleKey( spep_0 + 22, 1, 0.77+a, 0.77+a );
setScaleKey( spep_0 + 24, 1, 0.78+a, 0.78+a );
setScaleKey( spep_0 + 28, 1, 0.78+a, 0.78+a );
setScaleKey( spep_0 + 30, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0 + 34, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0 + 36, 1, 0.81+a, 0.81+a );
setScaleKey( spep_0 + 38, 1, 0.83+a, 0.83+a );
setScaleKey( spep_0 + 40, 1, 0.87+a, 0.87+a );
setScaleKey( spep_0 + 42, 1, 0.93+a, 0.93+a );
setScaleKey( spep_0 + 44, 1, 1.01+a, 1.01+a );
setScaleKey( spep_0 + 46, 1, 1.13+a, 1.13+a );
setScaleKey( spep_0 + 48, 1, 1.29+a, 1.29+a );
setScaleKey( spep_0 + 50, 1, 1.5+a, 1.5+a );
setScaleKey( spep_0 + 52, 1, 1.75+a, 1.75+a );
setScaleKey( spep_0 + 54, 1, 1.96+a, 1.96+a );
setScaleKey( spep_0 + 56, 1, 2.12+a, 2.12+a );
setScaleKey( spep_0 + 58, 1, 2.23+a, 2.23+a );
setScaleKey( spep_0 + 60, 1, 2.32+a, 2.32+a );
setScaleKey( spep_0 + 62, 1, 2.38+a, 2.38+a );
setScaleKey( spep_0 + 64, 1, 2.41+a, 2.41+a );
setScaleKey( spep_0 + 66, 1, 2.44+a, 2.44+a );
setScaleKey( spep_0 + 68, 1, 2.45+a, 2.45+a );
setScaleKey( spep_0 + 70, 1, 2.46+a, 2.46+a );
setScaleKey( spep_0 + 76, 1, 2.46+a, 2.46+a );

setRotateKey( spep_0 + 0, 1, -15.9 );
setRotateKey( spep_0 + 1, 1, -15.9 );
setRotateKey( spep_0 + 2, 1, -15.9 );
setRotateKey( spep_0 + 3, 1, -15.9 );
setRotateKey( spep_0 + 4, 1, -15.9 );
setRotateKey( spep_0 + 5, 1, -15.9 );
setRotateKey( spep_0 + 6, 1, -15.9 );
setRotateKey( spep_0 + 70, 1, -15.9 );
setRotateKey( spep_0 + 76, 1, -15.9 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+34  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+34  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +46, 190006, 72, 0x102, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +46,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +118,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +46, ctgogo, 0 );
setEffAlphaKey( spep_0 + 47, ctgogo, 255 );
setEffAlphaKey( spep_0 + 48, ctgogo, 255 );
setEffAlphaKey( spep_0 + 112, ctgogo, 255 );
setEffAlphaKey( spep_0 + 114, ctgogo, 191 );
setEffAlphaKey( spep_0 + 116, ctgogo, 112 );
setEffAlphaKey( spep_0 + 118, ctgogo, 64 );

setEffRotateKey(  spep_0 +46,  ctgogo,  0);
setEffRotateKey(  spep_0 +118,  ctgogo,  0);

setEffScaleKey(  spep_0 +46,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +108,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +118,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 0, 8 );--入り
setSeVolume( spep_0 + 0, 8, 68 );
playSe( spep_0 + 46, 1018 );--顔カットイン

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+126 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 134;
------------------------------------------------------
-- 敵に向かってジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, jump, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 56, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 56, jump, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );

setMoveKey( spep_1 + 0, 1, 262, 313.3 , 0 );
setMoveKey( spep_1 + 2, 1, 264.3, 312.3 , 0 );
setMoveKey( spep_1 + 4, 1, 266.1, 309.4 , 0 );
setMoveKey( spep_1 + 6, 1, 267.4, 304.6 , 0 );
setMoveKey( spep_1 + 8, 1, 268, 297.8 , 0 );
setMoveKey( spep_1 + 10, 1, 268.1, 288.9 , 0 );
setMoveKey( spep_1 + 12, 1, 267.5, 277.8 , 0 );
setMoveKey( spep_1 + 14, 1, 266.2, 264.4 , 0 );
setMoveKey( spep_1 + 16, 1, 264.3, 248.7 , 0 );
setMoveKey( spep_1 + 18, 1, 261.6, 230.4 , 0 );
setMoveKey( spep_1 + 20, 1, 258.2, 209.6 , 0 );
setMoveKey( spep_1 + 22, 1, 254, 186.2 , 0 );
setMoveKey( spep_1 + 24, 1, 249, 159.9 , 0 );
setMoveKey( spep_1 + 26, 1, 248.6, 155.6 , 0 );
setMoveKey( spep_1 + 28, 1, 248.3, 151.4 , 0 );
setMoveKey( spep_1 + 30, 1, 248, 147.2 , 0 );
setMoveKey( spep_1 + 32, 1, 247.9, 143.1 , 0 );
setMoveKey( spep_1 + 34, 1, 247.8, 139 , 0 );
setMoveKey( spep_1 + 36, 1, 247.8, 135 , 0 );
setMoveKey( spep_1 + 38, 1, 247.8, 131.1 , 0 );
setMoveKey( spep_1 + 40, 1, 247.9, 127.2 , 0 );
setMoveKey( spep_1 + 42, 1, 248.1, 123.3 , 0 );
setMoveKey( spep_1 + 44, 1, 248.3, 119.5 , 0 );
setMoveKey( spep_1 + 46, 1, 248.6, 115.7 , 0 );
setMoveKey( spep_1 + 48, 1, 248.9, 112 , 0 );
setMoveKey( spep_1 + 50, 1, 249.3, 108.3 , 0 );
setMoveKey( spep_1 + 52, 1, 249.7, 104.6 , 0 );
setMoveKey( spep_1 + 54, 1, 250.1, 101 , 0 );
setMoveKey( spep_1 + 56, 1, 250.6, 97.4 , 0 );
setMoveKey( spep_1 + 58, 1, 251.1, 93.8 , 0 );

c=0.6;

setScaleKey( spep_1 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 8, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 12, 1, 0.26, 0.26 );
--setScaleKey( spep_1 + 14, 1, 0.07+c, 0.07+c );
--setScaleKey( spep_1 + 16, 1, 0.07+c, 0.07+c );
--setScaleKey( spep_1 + 18, 1, 0.08+c, 0.08+c );
--setScaleKey( spep_1 + 20, 1, 0.09+c, 0.09+c );
--setScaleKey( spep_1 + 22, 1, 0.1+c, 0.1+c );
setScaleKey( spep_1 + 24, 1, 0.11+c, 0.11+c );
setScaleKey( spep_1 + 32, 1, 0.11+c, 0.11+c );
setScaleKey( spep_1 + 34, 1, 0.12+c, 0.12+c );
setScaleKey( spep_1 + 46, 1, 0.12+c, 0.12+c );
setScaleKey( spep_1 + 48, 1, 0.13+c, 0.13+c );
setScaleKey( spep_1 + 58, 1, 0.13+c, 0.13+c );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 58, 1, 0 );

--SE
se_1117 = playSe( spep_1 + 12, 1117 );--ジャンプ
SE0=playSe( spep_1 + 12, 1207 );--ジャンプ
setSeVolume( spep_1 + 12, 1207, 42 );
se_1116 = playSe( spep_1 + 12, 1116 );--ジャンプ
SE1=playSe( spep_1 + 54, 44 );--さらなる高みへ
setSeVolume( spep_1 + 54, 44, 79 );

stopSe( spep_1 + 32, se_1117, 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;
------------------------------------------------------
-- 敵目線、正面から回って迫ってくる
------------------------------------------------------
-- ** エフェクト等 ** --
turn = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, turn, 0, 0, 0 );
setEffMoveKey( spep_2 + 102, turn, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, turn, -1.0, 1.0 );
setEffScaleKey( spep_2 + 102, turn, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, turn, 0 );
setEffRotateKey( spep_2 + 102, turn, 0 );
setEffAlphaKey( spep_2 + 0, turn, 255 );
setEffAlphaKey( spep_2 + 102, turn, 255 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 79, 906, 23, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 79, shuchusen1, 23, 20 );

setEffMoveKey( spep_2 + 79, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 79, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 102, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 79, shuchusen1, 0 );
setEffRotateKey( spep_2 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 79, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 102, shuchusen1, 255 );

--SE
se_11171 = playSe( spep_2 + 54, 1117 );--くるくる
playSe( spep_2 + 54, 4 );--くるくる
se_11172 = playSe( spep_2 + 63, 1117 );--くるくる
se_11173 = playSe( spep_2 + 72, 1117 );--くるくる
setSeVolume( spep_2 + 72, 1117, 81 );
playSe( spep_2 + 80, 1232 );--くるくる
setSeVolume( spep_2 + 80, 1232, 56 );

stopSe( spep_2 + 2, se_1116, 40 );
stopSe( spep_2 + 67, se_11171, 13 );
stopSe( spep_2 + 76, se_11172, 13 );
stopSe( spep_2 + 85, se_11173, 13 );

--白フェード
entryFade( spep_2 + 94, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 106, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 102;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 乱打後ドロップキック
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 164, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 164, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 164, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f, 255 );
setEffAlphaKey( spep_4 + 162, fighting_f, 255 );
setEffAlphaKey( spep_4 + 163, fighting_f, 255 );
setEffAlphaKey( spep_4 + 164, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 164, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 164, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_b, 0 );
setEffRotateKey( spep_4 + 164, fighting_b, 0 );
setEffAlphaKey( spep_4 + 0, fighting_b, 255 );
setEffAlphaKey( spep_4 + 162, fighting_b, 255 );
setEffAlphaKey( spep_4 + 163, fighting_b, 255 );
setEffAlphaKey( spep_4 + 164, fighting_b, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_4 + 0,  10017, 80, 0x100, -1, 0, 23.5, 359 );
setEffShake( spep_4 + 0, ctdogagaga, 80, 10 );
setEffMoveKey( spep_4 + 0, ctdogagaga, 23.5, 359 , 0 );
setEffMoveKey( spep_4 + 2, ctdogagaga, 18.1, 369.8 , 0 );
setEffMoveKey( spep_4 + 4, ctdogagaga, 21.1, 363.7 , 0 );
setEffMoveKey( spep_4 + 6, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 8, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 10, ctdogagaga, 16.3, 365.7 , 0 );
setEffMoveKey( spep_4 + 12, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 14, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 16, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 18, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 20, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 22, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 24, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 26, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 28, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 30, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 32, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 34, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 36, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 38, ctdogagaga, 13.3, 364.7 , 0 );
setEffMoveKey( spep_4 + 40, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 42, ctdogagaga, 13.3, 366.7 , 0 );
setEffMoveKey( spep_4 + 44, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 46, ctdogagaga, 13.8, 365.7 , 0 );
setEffMoveKey( spep_4 + 48, ctdogagaga, 18.4, 354.2 , 0 );
setEffMoveKey( spep_4 + 50, ctdogagaga, 11.3, 360.7 , 0 );
setEffMoveKey( spep_4 + 52, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_4 + 54, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 56, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_4 + 58, ctdogagaga, 11.3, 360.7 , 0 );
setEffMoveKey( spep_4 + 60, ctdogagaga, 19.2, 357.7 , 0 );
setEffMoveKey( spep_4 + 62, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 64, ctdogagaga, 19.7, 356.7 , 0 );
setEffMoveKey( spep_4 + 66, ctdogagaga, 12.6, 363.2 , 0 );
setEffMoveKey( spep_4 + 68, ctdogagaga, 17.2, 351.7 , 0 );
setEffMoveKey( spep_4 + 70, ctdogagaga, 13.3, 366.7 , 0 );
setEffMoveKey( spep_4 + 72, ctdogagaga, 21.2, 363.7 , 0 );
setEffMoveKey( spep_4 + 74, ctdogagaga, 17.3, 387.7 , 0 );
setEffMoveKey( spep_4 + 76, ctdogagaga, 23.2, 355.7 , 0 );
setEffMoveKey( spep_4 + 78, ctdogagaga, 15.3, 372.7 , 0 );
setEffMoveKey( spep_4 + 80, ctdogagaga, 19.2, 353.7 , 0 );
--setEffMoveKey( spep_4 + 82, ctdogagaga, 15.3, 384.7 , 0 );

setEffScaleKey( spep_4 + 0, ctdogagaga, 1.88, 1.88 );
setEffScaleKey( spep_4 + 5, ctdogagaga, 3.07, 3.07 );
setEffScaleKey( spep_4 + 6, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_4 + 80, ctdogagaga, 2.75, 2.75 );

setEffRotateKey( spep_4 + 0, ctdogagaga, 2.3 );
setEffRotateKey( spep_4 + 4, ctdogagaga, 2.3 );
setEffRotateKey( spep_4 + 6, ctdogagaga, 2.5 );
setEffRotateKey( spep_4 + 80, ctdogagaga, 2.5 );

setEffAlphaKey( spep_4 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_4 + 80, ctdogagaga, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4+2 + 124, 1, 0 );

changeAnime( spep_4 + 1, 1, 106 );
changeAnime( spep_4+2 + 3, 1, 108 );
changeAnime( spep_4+3 + 10, 1, 106 );
changeAnime( spep_4+3 + 16, 1, 108 );
changeAnime( spep_4+3 + 24, 1, 106 );
changeAnime( spep_4+3 + 34, 1, 108 );
changeAnime( spep_4+3 + 42, 1, 106 );
changeAnime( spep_4+3 + 48, 1, 108 );
changeAnime( spep_4+3 + 56, 1, 106 );
changeAnime( spep_4+3 + 62, 1, 108 );
changeAnime( spep_4+3 + 70, 1, 106 );
changeAnime( spep_4+3 + 80, 1, 108 );
changeAnime( spep_4+3 + 84, 1, 106 );
changeAnime( spep_4+3 + 114, 1, 107 );

d=60;

--setMoveKey( spep_4 + 1, 1, 78.7, -75.9 , 0 );
setMoveKey( spep_4 + 0, 1, 53.4, -61.4+d , 0 );
setMoveKey( spep_4-3 + 4, 1, 54.6, -61.4+d , 0 );
setMoveKey( spep_4-3 + 6, 1, 55.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 9, 1, 56.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 10, 1, 84.5, -75.9+d , 0 );
setMoveKey( spep_4-3 + 12, 1, 85.6, -75.9+d , 0 );
setMoveKey( spep_4-3 + 15, 1, 86.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 16, 1, 61.4, -61.4+d , 0 );
setMoveKey( spep_4-3 + 18, 1, 62.6, -61.4+d , 0 );
setMoveKey( spep_4-3 + 20, 1, 63.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 23, 1, 64.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 24, 1, 92.5, -75.9+d , 0 );
setMoveKey( spep_4-3 + 26, 1, 93.6, -75.9+d , 0 );
setMoveKey( spep_4-3 + 28, 1, 94.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 30, 1, 95.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 33, 1, 97, -75.9+d , 0 );
setMoveKey( spep_4-3 + 34, 1, 71.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 36, 1, 72.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 38, 1, 74, -61.4+d , 0 );
setMoveKey( spep_4-3 + 41, 1, 75.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 42, 1, 102.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 44, 1, 103.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 47, 1, 105, -75.9+d , 0 );
setMoveKey( spep_4-3 + 48, 1, 79.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 50, 1, 80.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 52, 1, 82, -61.4+d , 0 );
setMoveKey( spep_4-3 + 55, 1, 83.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 56, 1, 110.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 58, 1, 111.9, -75.9+d , 0 );
setMoveKey( spep_4-3 + 61, 1, 113, -75.9+d , 0 );
setMoveKey( spep_4-3 + 62, 1, 87.7, -61.4+d , 0 );
setMoveKey( spep_4-3 + 64, 1, 88.9, -61.4+d , 0 );
setMoveKey( spep_4-3 + 66, 1, 90, -61.4+d , 0 );
setMoveKey( spep_4-3 + 69, 1, 91.2, -61.4+d , 0 );
setMoveKey( spep_4-3 + 70, 1, 118.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 79, 1, 118.8, -75.9+d , 0 );
setMoveKey( spep_4-3 + 80, 1, 92.3, -61.4+d , 0 );
setMoveKey( spep_4-3 + 83, 1, 92.3, -61.4+d , 0 );

setMoveKey( spep_4-3 + 84, 1, 122, -117.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 122, -112 , 0 );
setMoveKey( spep_4-3 + 88, 1, 122, -107.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 122, -104.8 , 0 );
setMoveKey( spep_4-3 + 92, 1, 122, -102.4 , 0 );
setMoveKey( spep_4-3 + 94, 1, 122, -100.6 , 0 );
setMoveKey( spep_4-3 + 96, 1, 122, -99.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, 122, -98.4 , 0 );
setMoveKey( spep_4-3 + 100, 1, 122, -97.8 , 0 );
setMoveKey( spep_4-3 + 102, 1, 122, -97.5 , 0 );
setMoveKey( spep_4-3 + 104, 1, 122, -97.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 122, -97.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, 122, -97.2 , 0 );
setMoveKey( spep_4-3 + 110, 1, 122, -97.1 , 0 );
setMoveKey( spep_4+3 + 113, 1, 122, -97.1 , 0 );

f=50;

setMoveKey( spep_4+3 + 114, 1, 99.9, -92.1-f , 0 );
setMoveKey( spep_4+2 + 116, 1, 139.8, -228.1-f , 0 );
setMoveKey( spep_4+2 + 118, 1, 163.8, -192.1-f , 0 );
setMoveKey( spep_4+2 + 120, 1, 438.1, -586.8-f , 0 );
setMoveKey( spep_4+2 + 122, 1, 712.4, -981.4-f , 0 );
setMoveKey( spep_4+2 + 124, 1, 986.6, -1376-f , 0 );

setScaleKey( spep_4 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_4-3 + 83, 1, 1.86, 1.86 );

setScaleKey( spep_4-3 + 84, 1, 1.88, 1.88 );
setScaleKey( spep_4+3 + 113, 1, 1.88, 1.88 );

e=0.7;

setScaleKey( spep_4+3 + 114, 1, 0.18+e, 0.18+e );
setScaleKey( spep_4+2 + 116, 1, 0.28+e, 0.28+e );
setScaleKey( spep_4+2 + 118, 1, 0.28+e, 0.28+e );
setScaleKey( spep_4+2 + 120, 1, 0.62+e, 0.62+e );
setScaleKey( spep_4+2 + 122, 1, 0.95+e, 0.95+e );
setScaleKey( spep_4+2 + 124, 1, 1.29+e, 1.29+e );

--setRotateKey( spep_4 + 1, 1, -27.6 );
setRotateKey( spep_4 + 0, 1, -27.7 );
setRotateKey( spep_4-3 + 83, 1, -27.7 );

setRotateKey( spep_4-3 + 84, 1, -16.1 );
setRotateKey( spep_4+3 + 113, 1, -16.1 );

setRotateKey( spep_4+3 + 114, 1, -33.4 );
setRotateKey( spep_4+2 + 116, 1, -7.2 );
setRotateKey( spep_4+2 + 118, 1, -8 );
setRotateKey( spep_4+2 + 124, 1, -8 );

--SE
playSe( spep_4 + 0, 1189 );--ラッシュ
playSe( spep_4 + 6, 1000 );--ラッシュ
playSe( spep_4 + 6, 1006 );--ラッシュ
playSe( spep_4 + 20, 1000 );--ラッシュ
playSe( spep_4 + 34, 1007 );--ラッシュ
playSe( spep_4 + 36, 1001 );--ラッシュ
setSeVolume( spep_4 + 36, 1001, 86 );
playSe( spep_4 + 54, 1000 );--ラッシュ
playSe( spep_4 + 66, 1000 );--ラッシュ
playSe( spep_4 + 82, 1001 );--ラッシュ
setSeVolume( spep_4 + 82, 1001, 66 );
playSe( spep_4 + 84, 1006 );--ラッシュ
playSe( spep_4 + 114, 1004 );--ラストドロップキック
setSeVolume( spep_4 + 114, 1004, 52 );
playSe( spep_4 + 118, 1009 );--ラストドロップキック
playSe( spep_4 + 120, 1001 );--ラストドロップキック
setSeVolume( spep_4 + 120, 1001, 74 );
playSe( spep_4 + 126, 1110 );--ラストドロップキック


-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 164;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
ga_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 112, ga_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 112, ga_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga_f, 0 );
setEffRotateKey( spep_5 + 112, ga_f, 0 );
setEffAlphaKey( spep_5 + 0, ga_f, 255 );
setEffAlphaKey( spep_5 + 112, ga_f, 255 );

-- ** エフェクト等 ** --
ga_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ga_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 112, ga_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ga_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 112, ga_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ga_b, 0 );
setEffRotateKey( spep_5 + 112, ga_b, 0 );
setEffAlphaKey( spep_5 + 0, ga_b, 255 );
setEffAlphaKey( spep_5 + 112, ga_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, 228 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_5 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 112, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 112, 1, 1080 );

--SE
se_1183 = playSe( spep_5 + 2, 1183 );--敵飛んでいく
setSeVolume( spep_5 + 2, 1183, 67 );
playSe( spep_5 + 16, 1054 );--ガッ

stopSe( spep_5 + 23, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +12 );
endPhase( spep_5 + 102 );
end