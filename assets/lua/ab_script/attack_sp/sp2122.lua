--1009380:フリーザ(第一形態)_帝王の征圧_sp2122
--sp_effect_a2_00149

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
SP_01 = 156333;  --冒頭   ef_001
SP_02 = 156334;  --フリーザ着弾溜めまで   ef_002
SP_03 = 156335;  --発射   ef_003
SP_04 = 3133;    --爆発(地球背景)

--敵側
SP_02r = 156336;    --敵用：フリーザ着弾溜めまで ef_002r
SP_03r = 156337;    --敵用：発射 ef_003r

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
-- 冒頭(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

spep_x = spep_0 + 2;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 90, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 12, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--フリーザ着弾溜めまで(556F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 556, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 200, hit_f, 255 );
setEffAlphaKey( spep_2 + 201, hit_f, 0 );
setEffAlphaKey( spep_2 + 556, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 556, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 0 );
setEffAlphaKey( spep_2 + 200, hit_b, 0 );
setEffAlphaKey( spep_2 + 201, hit_b, 255 );
setEffAlphaKey( spep_2 + 556, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -1 + 4,  10012, 58, 0x100, -1, 0, 96, 259.9 ); --ズォッ
setEffMoveKey( spep_2 -1 + 4, ctzuo, 96, 259.9 , 0 );
setEffMoveKey( spep_2 -1 + 6, ctzuo, 125, 300.9 , 0 );
setEffMoveKey( spep_2 -1 + 8, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 10, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 12, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 14, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 16, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 18, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 20, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 22, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 24, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 26, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 28, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 30, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 32, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 34, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 36, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 38, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 40, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 42, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 44, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 46, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 48, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 50, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 52, ctzuo, 156, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 54, ctzuo, 164.8, 339.1 , 0 );
setEffMoveKey( spep_2 -1 + 56, ctzuo, 152, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 58, ctzuo, 190.4, 329.5 , 0 );
setEffMoveKey( spep_2 -1 + 60, ctzuo, 168, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 62, ctzuo, 176, 359.9 , 0 );

setEffScaleKey( spep_2 -1 +  4, ctzuo, 0.35000000000000003, 0.35000000000000003 );
setEffScaleKey( spep_2 -1 +  6, ctzuo, 1.575, 1.575 );
setEffScaleKey( spep_2 -1 +  8, ctzuo, 2.8000000000000003, 2.8000000000000003 );
setEffScaleKey( spep_2 -1 + 52, ctzuo, 2.8000000000000003, 2.8000000000000003 );
setEffScaleKey( spep_2 -1 + 54, ctzuo, 3.64, 3.64 );
setEffScaleKey( spep_2 -1 + 56, ctzuo, 4.48, 4.48 );
setEffScaleKey( spep_2 -1 + 58, ctzuo, 5.32, 5.32 );
setEffScaleKey( spep_2 -1 + 60, ctzuo, 6.16, 6.16 );
setEffScaleKey( spep_2 -1 + 62, ctzuo, 7, 7 );

setEffRotateKey( spep_2 -1 + 4, ctzuo, 30 );
setEffRotateKey( spep_2 -1 + 62, ctzuo, 30 );

setEffAlphaKey( spep_2 -1 + 4, ctzuo, 255 );
setEffAlphaKey( spep_2 -1 + 52, ctzuo, 255 );
setEffAlphaKey( spep_2 -1 + 54, ctzuo, 204 );
setEffAlphaKey( spep_2 -1 + 56, ctzuo, 153 );
setEffAlphaKey( spep_2 -1 + 58, ctzuo, 102 );
setEffAlphaKey( spep_2 -1 + 60, ctzuo, 51 );
setEffAlphaKey( spep_2 -1 + 62, ctzuo, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 117, 1, 1 );
setDisp( spep_2 + 187, 1, 0 );
changeAnime( spep_2 + 117, 1, 101 );

setDisp( spep_2 +307 + 0, 1, 1 );
changeAnime( spep_2 +307 + 0, 1, 104 );

a1=10;
b1=20;

setMoveKey( spep_2 -3 + 120, 1, 9.9 +a1, 4.9 +b1, 0 );
setMoveKey( spep_2 -3 + 122, 1, 9.9 +a1, 5.3 +b1, 0 );
setMoveKey( spep_2 -3 + 124, 1, 9.9 +a1, 5.8 +b1, 0 );
setMoveKey( spep_2 -3 + 126, 1, 9.8 +a1, 6.2 +b1, 0 );
setMoveKey( spep_2 -3 + 128, 1, 9.8 +a1, 6.7 +b1, 0 );
setMoveKey( spep_2 -3 + 130, 1, 9.8 +a1, 6.7 +b1, 0 );
setMoveKey( spep_2 -3 + 132, 1, 9.8 +a1, 6.8 +b1, 0 );
setMoveKey( spep_2 -3 + 134, 1, 9.8 +a1, 6.9 +b1, 0 );
setMoveKey( spep_2 -3 + 136, 1, 9.8 +a1, 7 +b1, 0 );
setMoveKey( spep_2 -3 + 138, 1, 9.8 +a1, 7.1 +b1, 0 );
setMoveKey( spep_2 -3 + 140, 1, 9.8 +a1, 7.2 +b1, 0 );
setMoveKey( spep_2 -3 + 142, 1, 9.8 +a1, 7.3 +b1, 0 );
setMoveKey( spep_2 -3 + 142, 1, 9.8 +a1, 7.3 +b1, 0 );
setMoveKey( spep_2 -3 + 190, 1, 9.8 +a1, 7.3 +b1, 0 );
--
setMoveKey( spep_2 +307 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 2, 1, -1, -3 , 0 );
setMoveKey( spep_2 +308 + 4, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 6, 1, -2, 2 , 0 );
setMoveKey( spep_2 +308 + 8, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 10, 1, -1, -2 , 0 );
setMoveKey( spep_2 +308 + 12, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 14, 1, -1, -2.1 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 6.60, 6.60 );
setScaleKey( spep_2 -3 + 122, 1, 5.55, 5.55 );
setScaleKey( spep_2 -3 + 124, 1, 4.515, 4.515 );
setScaleKey( spep_2 -3 + 126, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 128, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 130, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 134, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 136, 1, 1.575, 1.57 );
setScaleKey( spep_2 -3 + 138, 1, 1.365, 1.365 );
setScaleKey( spep_2 -3 + 140, 1, 1.155, 1.155 );
setScaleKey( spep_2 -3 + 142, 1, 0.929, 0.929 );
setScaleKey( spep_2 -3 + 144, 1, 0.930, 0.930 );
setScaleKey( spep_2 -3 + 146, 1, 0.931, 0.931 );
setScaleKey( spep_2 -3 + 148, 1, 0.932, 0.932 );
setScaleKey( spep_2 -3 + 150, 1, 0.933, 0.933 );
setScaleKey( spep_2 -3 + 152, 1, 0.934, 0.934 );
setScaleKey( spep_2 -3 + 154, 1, 0.935, 0.935 );
setScaleKey( spep_2 -3 + 156, 1, 0.936, 0.936 );
setScaleKey( spep_2 -3 + 158, 1, 0.937, 0.937 );
setScaleKey( spep_2 -3 + 160, 1, 0.938, 0.938 );
setScaleKey( spep_2 -3 + 162, 1, 0.939, 0.939 );
setScaleKey( spep_2 -3 + 164, 1, 0.940, 0.940 );
setScaleKey( spep_2 -3 + 166, 1, 0.941, 0.941 );
setScaleKey( spep_2 -3 + 168, 1, 0.942, 0.942 );
setScaleKey( spep_2 -3 + 170, 1, 0.943, 0.943 );
setScaleKey( spep_2 -3 + 172, 1, 0.944, 0.944 );
setScaleKey( spep_2 -3 + 174, 1, 0.945, 0.945 );
setScaleKey( spep_2 -3 + 176, 1, 0.946, 0.946 );
setScaleKey( spep_2 -3 + 178, 1, 0.947, 0.947 );
setScaleKey( spep_2 -3 + 180, 1, 0.948, 0.948 );
setScaleKey( spep_2 -3 + 182, 1, 0.949, 0.949 );
setScaleKey( spep_2 -3 + 184, 1, 0.950, 0.950 );
setScaleKey( spep_2 -3 + 186, 1, 0.951, 0.951 );
setScaleKey( spep_2 -3 + 188, 1, 0.952, 0.952 );
setScaleKey( spep_2 -3 + 190, 1, 0.953, 0.953 );
--
setScaleKey( spep_2 +307 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_2 +308 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_2 +308 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_2 +308 + 4, 1, 1.03, 1.03 );
setScaleKey( spep_2 +308 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_2 +308 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_2 +308 + 10, 1, 1.3, 1.3 );
setScaleKey( spep_2 +308 + 12, 1, 1.39, 1.39 );
setScaleKey( spep_2 +308 + 14, 1, 1.49, 1.49 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 190, 1, 0 );
--
setRotateKey( spep_2 +307 + 0, 1, 0 );
setRotateKey( spep_2 +308 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 556, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--前方ダッシュ1
SE003 = playSe( spep_2 + 0, 1182 );

--前方ダッシュ2
SE004 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE004, 78 );
setTimeStretch( SE004, 1.18, 10, 1 );

--前方ダッシュ3
SE005 = playSe( spep_2 + 8, 1183 );

--前方ダッシュ4（ZOOM）
SE006 = playSe( spep_2 + 34, 1072 );

--前方ダッシュ5（ZOOM）
SE007 = playSe( spep_2 + 72, 9 );
setSeVolumeByWorkId( spep_2 + 72, SE007, 77 );

--画面遷移
SE008 = playSe( spep_2 + 96, 1232 );

--オーラ1	
SE009 = playSe( spep_2 + 118, 1176 );
setSeVolumeByWorkId( spep_2 + 118, SE009, 61 );
stopSe( spep_2 + 238, SE009, 0 );
setPitch( spep_2 + 118, SE009, -500 );
setTimeStretch( SE009, 0.67, 10, 1 );

--オーラ2
SE010 = playSe( spep_2 + 130, 8 );
setPitch( spep_2 + 130, SE010, -400 );
setTimeStretch( SE010, 0.73, 10, 1 );

--気弾溜め1
SE011 = playSe( spep_2 + 186, 1026 );
setSeVolumeByWorkId( spep_2 + 186, SE011, 85 );

--気弾溜め2
SE012 = playSe( spep_2 + 190, 1037 );
stopSe( spep_2 + 256, SE012, 0 );

--気弾溜め3
SE013 = playSe( spep_2 + 190, 1262 );
stopSe( spep_2 + 256, SE013, 0 );

--気弾溜め4
SE014 = playSe( spep_2 + 190, 1203 );
setSeVolumeByWorkId( spep_2 + 190, SE014, 200 );
stopSe( spep_2 + 256, SE014, 0 );

--気弾発射1
SE015 = playSe( spep_2 + 246, 1027 );
setSeVolumeByWorkId( spep_2 + 246, SE015, 76 );

--気弾発射2
SE016 = playSe( spep_2 + 250, 1022 );
setSeVolumeByWorkId( spep_2 + 250, SE016, 82 );

--気弾発射3
SE017 = playSe( spep_2 + 250, 1145 );
setSeVolumeByWorkId( spep_2 + 250, SE017, 60 );

--気弾迫る1
SE018 = playSe( spep_2 + 304, 1212 );
setSeVolumeByWorkId( spep_2 + 304, SE018, 8 );
setSeVolumeByWorkId( spep_2 + 308, SE018, 18 );
setSeVolumeByWorkId( spep_2 + 310, SE018, 28 );
setSeVolumeByWorkId( spep_2 + 312, SE018, 38 );
setSeVolumeByWorkId( spep_2 + 314, SE018, 48 );
setSeVolumeByWorkId( spep_2 + 316, SE018, 58 );
stopSe( spep_2 + 378, SE018, 0 );
setStartTimeMs( SE018,  533 );

--気弾迫る2
SE019 = playSe( spep_2 + 310, 1177 );
setSeVolumeByWorkId( spep_2 + 310, SE019, 10 );
setSeVolumeByWorkId( spep_2 + 313, SE019, 20 );
setSeVolumeByWorkId( spep_2 + 316, SE019, 30 );
setSeVolumeByWorkId( spep_2 + 319, SE019, 40 );
setSeVolumeByWorkId( spep_2 + 322, SE019, 50 );
setSeVolumeByWorkId( spep_2 + 324, SE019, 60 );
stopSe( spep_2 + 378, SE019, 0 );

--気弾迫る3		SE020 = playSe( spep_2 + 310, 1021 );			

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 322 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 2, 1, -2, 1 , 0 );
	setMoveKey( SP_dodge + 4, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 6, 1, -2, -1 , 0 );
	setMoveKey( SP_dodge + 8, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 10, 1, -1, -2.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2, 2 );
    setScaleKey( SP_dodge + 10, 1, 2, 2 );

    setMoveKey( SP_dodge + 0, 1, 1.51, 1.51 );
	setMoveKey( SP_dodge + 2, 1, 1.53, 1.53 );
	setMoveKey( SP_dodge + 4, 1, 1.56, 1.56 );
	setMoveKey( SP_dodge + 6, 1, 1.58, 1.58 );
	setMoveKey( SP_dodge + 8, 1, 1.61, 1.61 );
	setMoveKey( SP_dodge + 10, 1, 1.63, 1.63 );

    setRotateKey( SP_dodge + 0, 1, 0 );
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
setDisp( spep_2 +307 +60, 1, 0 );

setMoveKey( spep_2 +308 + 16, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 18, 1, -2, 1 , 0 );
setMoveKey( spep_2 +308 + 20, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 22, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 24, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 26, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 28, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 30, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 32, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 34, 1, -1, -3.1 , 0 );
setMoveKey( spep_2 +308 + 36, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 38, 1, -3, 2.9 , 0 );
setMoveKey( spep_2 +308 + 40, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 42, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 44, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 46, 1, -2, 1 , 0 );
setMoveKey( spep_2 +308 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 50, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 52, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 54, 1, -1, -3.1 , 0 );
setMoveKey( spep_2 +308 + 56, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 58, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 60, 1, -2, -1 , 0 );

setScaleKey( spep_2 +308 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 +308 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_2 +308 + 20, 1, 1.56, 1.56 );
setScaleKey( spep_2 +308 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_2 +308 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_2 +308 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_2 +308 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_2 +308 + 30, 1, 1.68, 1.68 );
setScaleKey( spep_2 +308 + 32, 1, 1.7, 1.7 );
setScaleKey( spep_2 +308 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_2 +308 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_2 +308 + 38, 1, 1.78, 1.78 );
setScaleKey( spep_2 +308 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_2 +308 + 42, 1, 1.82, 1.82 );
setScaleKey( spep_2 +308 + 44, 1, 1.85, 1.85 );
setScaleKey( spep_2 +308 + 46, 1, 1.87, 1.87 );
setScaleKey( spep_2 +308 + 48, 1, 1.9, 1.9 );
setScaleKey( spep_2 +308 + 50, 1, 1.92, 1.92 );
setScaleKey( spep_2 +308 + 52, 1, 1.94, 1.94 );
setScaleKey( spep_2 +308 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_2 +308 + 56, 1, 1.99, 1.99 );
setScaleKey( spep_2 +308 + 58, 1, 2.02, 2.02 );
setScaleKey( spep_2 +308 + 60, 1, 2.02, 2.02 );

setRotateKey( spep_2 +308 + 58, 1, 0 );
setRotateKey( spep_2 +308 + 60, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 367, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 554, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--爆発1
SE021 = playSe( spep_2 + 372, 1023 );

--爆発2
SE022 = playSe( spep_2 + 372, 1011 );

--画面遷移
SE023 = playSe( spep_2 + 396, 1072 );

--オーラ
SE024 = playSe( spep_2 + 420, 1176 );
stopSe( spep_2 +556 + 80, SE024, 0 );
setPitch( spep_2 + 420, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

--気弾溜め1
SE025 = playSe( spep_2 + 430, 1276,"",0.6 );

--気弾溜め2
SE026 = playSe( spep_2 + 430, 1281,"",0.7 );
setSeVolumeByWorkId( spep_2 + 430, SE026, 79 );
stopSe( spep_2 +556 + 50, SE026, 14 );

--気弾大きくなる1
SE027 = playSe( spep_2 + 474, 1184 );
stopSe( spep_2 + 502, SE027, 36 );

--気弾大きくなる2
SE028 = playSe( spep_2 + 474, 1191,"",0.6 );
setSeVolumeByWorkId( spep_2 + 474, SE028, 158 );
stopSe( spep_2 + 524, SE028, 50 );

--気弾大きくなる3
SE029 = playSe( spep_2 + 474, 1265,"",0.6 );

--気弾大きくなる4
SE030 = playSe( spep_2 + 476, 1161 );
setSeVolumeByWorkId( spep_2 + 476, SE030, 0 );
setSeVolumeByWorkId( spep_2 + 478, SE030, 2 );
setSeVolumeByWorkId( spep_2 + 480, SE030, 5 );
setSeVolumeByWorkId( spep_2 + 484, SE030, 15 );
setSeVolumeByWorkId( spep_2 + 488, SE030, 25 );
setSeVolumeByWorkId( spep_2 + 492, SE030, 35 );
setSeVolumeByWorkId( spep_2 + 496, SE030, 45 );
setSeVolumeByWorkId( spep_2 + 500, SE030, 55 );
setSeVolumeByWorkId( spep_2 + 504, SE030, 65 );
setSeVolumeByWorkId( spep_2 + 508, SE030, 75 );
stopSe( spep_2 +556 + 58, SE030, 36 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 556;


--------------------------------------
--発射(216F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 216, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 216, shot, 255 );

a2=20;
b2=15;

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_3 -3 + 48,  10012, 45, 0x100, -1, 0, 76 +a2, 259.9 +b2 );
setEffMoveKey( spep_3 -3 + 48, ctzuo2, 76 +a2, 259.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo2, 105 +a2, 300.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 52, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 54, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 56, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 58, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 60, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 62, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 64, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 66, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 68, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 70, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 72, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 74, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 76, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 78, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 80, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 82, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 84, ctzuo2, 124 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 86, ctzuo2, 157.5 +a2, 334.3 +b2, 0 );
setEffMoveKey( spep_3 -3 + 88, ctzuo2, 140 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 90, ctzuo2, 183.2 +a2, 324.7 +b2, 0 );
setEffMoveKey( spep_3 -3 + 92, ctzuo2, 196 +a2, 319.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 93, ctzuo2, 196 +a2, 319.9 +b2, 0 );

setEffScaleKey( spep_3 -3 + 48, ctzuo2, 0.35, 0.35 );
setEffScaleKey( spep_3 -3 + 50, ctzuo2, 1.575, 1.575 );
setEffScaleKey( spep_3 -3 + 52, ctzuo2, 2.80, 2.80 );
setEffScaleKey( spep_3 -3 + 82, ctzuo2, 2.80, 2.80 );
setEffScaleKey( spep_3 -3 + 84, ctzuo2, 3.64, 3.64 );
setEffScaleKey( spep_3 -3 + 86, ctzuo2, 4.48, 4.48 );
setEffScaleKey( spep_3 -3 + 88, ctzuo2, 5.32, 5.32 );
setEffScaleKey( spep_3 -3 + 90, ctzuo2, 6.16, 6.16 );
setEffScaleKey( spep_3 -3 + 92, ctzuo2, 7, 7 );
setEffScaleKey( spep_3 -3 + 93, ctzuo2, 7, 7 );

setEffRotateKey( spep_3 -3 + 48, ctzuo2, 25 );
setEffRotateKey( spep_3 -3 + 93, ctzuo2, 25 );

setEffAlphaKey( spep_3 -3 + 48, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 82, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 84, ctzuo2, 204 );
setEffAlphaKey( spep_3 -3 + 86, ctzuo2, 153 );
setEffAlphaKey( spep_3 -3 + 88, ctzuo2, 102 );
setEffAlphaKey( spep_3 -3 + 90, ctzuo2, 51 );
setEffAlphaKey( spep_3 -3 + 92, ctzuo2, 0 );
setEffAlphaKey( spep_3 -3 + 93, ctzuo2, 0 );

setDisp( spep_3 -3 + 120, 1, 1 );
setDisp( spep_3 -3 + 219, 1, 0 );
changeAnime( spep_3 -3 + 120, 1, 106 );

a3=0;
b3=50;

setMoveKey( spep_3 -3 + 120, 1, 381.1 -a3, -450.8 +b3, 0 );
setMoveKey( spep_3 -3 + 122, 1, 352.1 -a3, -415 +b3, 0 );
setMoveKey( spep_3 -3 + 124, 1, 327.8 -a3, -375.2 +b3, 0 );
setMoveKey( spep_3 -3 + 126, 1, 301.5 -a3, -347.3 +b3, 0 );
setMoveKey( spep_3 -3 + 128, 1, 283.3 -a3, -311.5 +b3, 0 );
setMoveKey( spep_3 -3 + 130, 1, 253 -a3, -277.7 +b3, 0 );
setMoveKey( spep_3 -3 + 132, 1, 228.7 -a3, -257.9 +b3, 0 );
setMoveKey( spep_3 -3 + 134, 1, 198.4 -a3, -230.1 +b3, 0 );
setMoveKey( spep_3 -3 + 136, 1, 174.1 -a3, -214.2 +b3, 0 );
setMoveKey( spep_3 -3 + 138, 1, 143.8 -a3, -180.4 +b3, 0 );
setMoveKey( spep_3 -3 + 140, 1, 129.5 -a3, -150.6 +b3, 0 );
setMoveKey( spep_3 -3 + 142, 1, 125.3 -a3, -162 +b3, 0 );
setMoveKey( spep_3 -3 + 144, 1, 129 -a3, -149.5 +b3, 0 );
setMoveKey( spep_3 -3 + 146, 1, 120.7 -a3, -152.9 +b3, 0 );
setMoveKey( spep_3 -3 + 148, 1, 128.4 -a3, -148.3 +b3, 0 );
setMoveKey( spep_3 -3 + 150, 1, 120.1 -a3, -155.8 +b3, 0 );
setMoveKey( spep_3 -3 + 152, 1, 127.8 -a3, -147.2 +b3, 0 );
setMoveKey( spep_3 -3 + 154, 1, 123.5 -a3, -150.6 +b3, 0 );
setMoveKey( spep_3 -3 + 156, 1, 127.2 -a3, -146 +b3, 0 );
setMoveKey( spep_3 -3 + 158, 1, 118.9 -a3, -153.5 +b3, 0 );
setMoveKey( spep_3 -3 + 160, 1, 126.6 -a3, -144.9 +b3, 0 );
setMoveKey( spep_3 -3 + 162, 1, 118.3 -a3, -156.3 +b3, 0 );
setMoveKey( spep_3 -3 + 164, 1, 126 -a3, -143.8 +b3, 0 );
setMoveKey( spep_3 -3 + 166, 1, 117.7 -a3, -151.2 +b3, 0 );
setMoveKey( spep_3 -3 + 168, 1, 125.4 -a3, -142.6 +b3, 0 );
setMoveKey( spep_3 -3 + 170, 1, 121.1 -a3, -150.1 +b3, 0 );
setMoveKey( spep_3 -3 + 172, 1, 124.8 -a3, -141.5 +b3, 0 );
setMoveKey( spep_3 -3 + 174, 1, 116.5 -a3, -148.9 +b3, 0 );
setMoveKey( spep_3 -3 + 176, 1, 124.2 -a3, -140.4 +b3, 0 );
setMoveKey( spep_3 -3 + 178, 1, 115.9 -a3, -147.8 +b3, 0 );
setMoveKey( spep_3 -3 + 180, 1, 123.7 -a3, -139.2 +b3, 0 );
setMoveKey( spep_3 -3 + 182, 1, 119.4 -a3, -146.6 +b3, 0 );
setMoveKey( spep_3 -3 + 184, 1, 123.1 -a3, -138.1 +b3, 0 );
setMoveKey( spep_3 -3 + 186, 1, 114.8 -a3, -141.5 +b3, 0 );
setMoveKey( spep_3 -3 + 188, 1, 122.5 -a3, -136.9 +b3, 0 );
setMoveKey( spep_3 -3 + 190, 1, 114.2 -a3, -144.4 +b3, 0 );
setMoveKey( spep_3 -3 + 192, 1, 121.9 -a3, -135.8 +b3, 0 );
setMoveKey( spep_3 -3 + 194, 1, 117.6 -a3, -139.2 +b3, 0 );
setMoveKey( spep_3 -3 + 196, 1, 121.3 -a3, -134.6 +b3, 0 );
setMoveKey( spep_3 -3 + 198, 1, 113 -a3, -146.1 +b3, 0 );
setMoveKey( spep_3 -3 + 200, 1, 120.7 -a3, -133.5 +b3, 0 );
setMoveKey( spep_3 -3 + 202, 1, 108.4 -a3, -136.9 +b3, 0 );
setMoveKey( spep_3 -3 + 204, 1, 120.1 -a3, -132.4 +b3, 0 );
setMoveKey( spep_3 -3 + 206, 1, 115.8 -a3, -139.8 +b3, 0 );
setMoveKey( spep_3 -3 + 208, 1, 119.5 -a3, -131.2 +b3, 0 );
setMoveKey( spep_3 -3 + 210, 1, 115.2 -a3, -134.7 +b3, 0 );
setMoveKey( spep_3 -3 + 212, 1, 118.9 -a3, -130.1 +b3, 0 );
setMoveKey( spep_3 -3 + 214, 1, 110.6 -a3, -137.5 +b3, 0 );
setMoveKey( spep_3 -3 + 216, 1, 118.3 -a3, -128.9 +b3, 0 );
setMoveKey( spep_3 -3 + 218, 1, 114 -a3, -132.4 +b3, 0 );
setMoveKey( spep_3 -3 + 219, 1, 114 -a3, -132.4 +b3, 0 );

setScaleKey( spep_3 -3 + 120, 1, 7.48, 7.48 );
setScaleKey( spep_3 -3 + 122, 1, 7.02, 7.02 );
setScaleKey( spep_3 -3 + 124, 1, 6.55, 6.55 );
setScaleKey( spep_3 -3 + 126, 1, 6.08, 6.08 );
setScaleKey( spep_3 -3 + 128, 1, 5.41, 5.41 );
setScaleKey( spep_3 -3 + 130, 1, 4.45, 4.45 );

setScaleKey( spep_3 -3 + 132, 1, 3.98, 3.98 );
setScaleKey( spep_3 -3 + 134, 1, 3.51, 3.51 );
setScaleKey( spep_3 -3 + 136, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 138, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 140, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 142, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 144, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 146, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 148, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 150, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 152, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 154, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 156, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 158, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 160, 1, 2, 2 );
setScaleKey( spep_3 -3 + 162, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 164, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 166, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 168, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 170, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 172, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 174, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 176, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 178, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 180, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 182, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 184, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 186, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 188, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 190, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 192, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 194, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 196, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 198, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 200, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 202, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 204, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 206, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 208, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 210, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 212, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 214, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 216, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 218, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 219, 1, 1.69, 1.69 );

setRotateKey( spep_3 -3 + 120, 1, -22 );
setRotateKey( spep_3 -3 + 219, 1, -22 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 216, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 45, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 113, 3, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 206, 9, 1, 0, fcolor_r, fcolor_g, fcolor_b, 140);     -- white fade

-- ** 音 ** --
--気弾発射1
SE031 = playSe( spep_3 + 54, 1027 );
setSeVolumeByWorkId( spep_3 + 54, SE031, 79 );

--気弾発射2
SE032 = playSe( spep_3 + 54, 1193 );
setSeVolumeByWorkId( spep_3 + 54, SE032, 178 );
stopSe( spep_3 +216 + 6, SE032, 12 );

--気弾発射3
SE033 = playSe( spep_3 + 56, 1226 );
setSeVolumeByWorkId( spep_3 + 56, SE033, 0 );
setSeVolumeByWorkId( spep_3 + 62, SE033, 10 );
setSeVolumeByWorkId( spep_3 + 68, SE033, 20 );
setSeVolumeByWorkId( spep_3 + 74, SE033, 30 );
setSeVolumeByWorkId( spep_3 + 80, SE033, 40 );
setSeVolumeByWorkId( spep_3 + 86, SE033, 50 );
setSeVolumeByWorkId( spep_3 + 92, SE033, 60 );
setSeVolumeByWorkId( spep_3 + 98, SE033, 70 );
setSeVolumeByWorkId( spep_3 + 104, SE033, 80 );
setSeVolumeByWorkId( spep_3 + 110, SE033, 90 );
setSeVolumeByWorkId( spep_3 + 118, SE033, 100 );
stopSe( spep_3 +216 + 6, SE033, 42 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 216;


------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190002, 56, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 56, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 56, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 56, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 56, ctgyan, 255 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 24, 32, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--ギャン
SE018 = playSe( spep_4 + 0, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


--------------------------------------
--爆発(地球背景)(136F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発1
SE035 = playSe( spep_5 + 12, 1067 );

--爆発2
SE036 = playSe( spep_5 + 12, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 34 );
endPhase( spep_5 + 134 );--168


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

spep_x = spep_0 + 2;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 90, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 12, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--フリーザ着弾溜めまで(556F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 556, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 200, hit_f, 255 );
setEffAlphaKey( spep_2 + 201, hit_f, 0 );
setEffAlphaKey( spep_2 + 556, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 556, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 0 );
setEffAlphaKey( spep_2 + 200, hit_b, 0 );
setEffAlphaKey( spep_2 + 201, hit_b, 255 );
setEffAlphaKey( spep_2 + 556, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -1 + 4,  10012, 58, 0x100, -1, 0, 96, 259.9 ); --ズォッ
setEffMoveKey( spep_2 -1 + 4, ctzuo, 96, 259.9 , 0 );
setEffMoveKey( spep_2 -1 + 6, ctzuo, 125, 300.9 , 0 );
setEffMoveKey( spep_2 -1 + 8, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 10, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 12, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 14, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 16, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 18, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 20, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 22, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 24, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 26, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 28, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 30, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 32, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 34, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 36, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 38, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 40, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 42, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 44, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 46, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 48, ctzuo, 136, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 50, ctzuo, 152, 343.9 , 0 );
setEffMoveKey( spep_2 -1 + 52, ctzuo, 156, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 54, ctzuo, 164.8, 339.1 , 0 );
setEffMoveKey( spep_2 -1 + 56, ctzuo, 152, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 58, ctzuo, 190.4, 329.5 , 0 );
setEffMoveKey( spep_2 -1 + 60, ctzuo, 168, 359.9 , 0 );
setEffMoveKey( spep_2 -1 + 62, ctzuo, 176, 359.9 , 0 );

setEffScaleKey( spep_2 -1 +  4, ctzuo, 0.35000000000000003, 0.35000000000000003 );
setEffScaleKey( spep_2 -1 +  6, ctzuo, 1.575, 1.575 );
setEffScaleKey( spep_2 -1 +  8, ctzuo, 2.8000000000000003, 2.8000000000000003 );
setEffScaleKey( spep_2 -1 + 52, ctzuo, 2.8000000000000003, 2.8000000000000003 );
setEffScaleKey( spep_2 -1 + 54, ctzuo, 3.64, 3.64 );
setEffScaleKey( spep_2 -1 + 56, ctzuo, 4.48, 4.48 );
setEffScaleKey( spep_2 -1 + 58, ctzuo, 5.32, 5.32 );
setEffScaleKey( spep_2 -1 + 60, ctzuo, 6.16, 6.16 );
setEffScaleKey( spep_2 -1 + 62, ctzuo, 7, 7 );

setEffRotateKey( spep_2 -1 + 4, ctzuo, 30 );
setEffRotateKey( spep_2 -1 + 62, ctzuo, 30 );

setEffAlphaKey( spep_2 -1 + 4, ctzuo, 255 );
setEffAlphaKey( spep_2 -1 + 52, ctzuo, 255 );
setEffAlphaKey( spep_2 -1 + 54, ctzuo, 204 );
setEffAlphaKey( spep_2 -1 + 56, ctzuo, 153 );
setEffAlphaKey( spep_2 -1 + 58, ctzuo, 102 );
setEffAlphaKey( spep_2 -1 + 60, ctzuo, 51 );
setEffAlphaKey( spep_2 -1 + 62, ctzuo, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 117, 1, 1 );
setDisp( spep_2 + 187, 1, 0 );
changeAnime( spep_2 + 117, 1, 101 );

setDisp( spep_2 +307 + 0, 1, 1 );
changeAnime( spep_2 +307 + 0, 1, 104 );

a1=10;
b1=20;

setMoveKey( spep_2 -3 + 120, 1, 9.9 +a1, 4.9 +b1, 0 );
setMoveKey( spep_2 -3 + 122, 1, 9.9 +a1, 5.3 +b1, 0 );
setMoveKey( spep_2 -3 + 124, 1, 9.9 +a1, 5.8 +b1, 0 );
setMoveKey( spep_2 -3 + 126, 1, 9.8 +a1, 6.2 +b1, 0 );
setMoveKey( spep_2 -3 + 128, 1, 9.8 +a1, 6.7 +b1, 0 );
setMoveKey( spep_2 -3 + 130, 1, 9.8 +a1, 6.7 +b1, 0 );
setMoveKey( spep_2 -3 + 132, 1, 9.8 +a1, 6.8 +b1, 0 );
setMoveKey( spep_2 -3 + 134, 1, 9.8 +a1, 6.9 +b1, 0 );
setMoveKey( spep_2 -3 + 136, 1, 9.8 +a1, 7 +b1, 0 );
setMoveKey( spep_2 -3 + 138, 1, 9.8 +a1, 7.1 +b1, 0 );
setMoveKey( spep_2 -3 + 140, 1, 9.8 +a1, 7.2 +b1, 0 );
setMoveKey( spep_2 -3 + 142, 1, 9.8 +a1, 7.3 +b1, 0 );
setMoveKey( spep_2 -3 + 142, 1, 9.8 +a1, 7.3 +b1, 0 );
setMoveKey( spep_2 -3 + 190, 1, 9.8 +a1, 7.3 +b1, 0 );
--
setMoveKey( spep_2 +307 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 2, 1, -1, -3 , 0 );
setMoveKey( spep_2 +308 + 4, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 6, 1, -2, 2 , 0 );
setMoveKey( spep_2 +308 + 8, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 10, 1, -1, -2 , 0 );
setMoveKey( spep_2 +308 + 12, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 14, 1, -1, -2.1 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 6.60, 6.60 );
setScaleKey( spep_2 -3 + 122, 1, 5.55, 5.55 );
setScaleKey( spep_2 -3 + 124, 1, 4.515, 4.515 );
setScaleKey( spep_2 -3 + 126, 1, 3.465, 3.465 );
setScaleKey( spep_2 -3 + 128, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 130, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 134, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 136, 1, 1.575, 1.57 );
setScaleKey( spep_2 -3 + 138, 1, 1.365, 1.365 );
setScaleKey( spep_2 -3 + 140, 1, 1.155, 1.155 );
setScaleKey( spep_2 -3 + 142, 1, 0.929, 0.929 );
setScaleKey( spep_2 -3 + 144, 1, 0.930, 0.930 );
setScaleKey( spep_2 -3 + 146, 1, 0.931, 0.931 );
setScaleKey( spep_2 -3 + 148, 1, 0.932, 0.932 );
setScaleKey( spep_2 -3 + 150, 1, 0.933, 0.933 );
setScaleKey( spep_2 -3 + 152, 1, 0.934, 0.934 );
setScaleKey( spep_2 -3 + 154, 1, 0.935, 0.935 );
setScaleKey( spep_2 -3 + 156, 1, 0.936, 0.936 );
setScaleKey( spep_2 -3 + 158, 1, 0.937, 0.937 );
setScaleKey( spep_2 -3 + 160, 1, 0.938, 0.938 );
setScaleKey( spep_2 -3 + 162, 1, 0.939, 0.939 );
setScaleKey( spep_2 -3 + 164, 1, 0.940, 0.940 );
setScaleKey( spep_2 -3 + 166, 1, 0.941, 0.941 );
setScaleKey( spep_2 -3 + 168, 1, 0.942, 0.942 );
setScaleKey( spep_2 -3 + 170, 1, 0.943, 0.943 );
setScaleKey( spep_2 -3 + 172, 1, 0.944, 0.944 );
setScaleKey( spep_2 -3 + 174, 1, 0.945, 0.945 );
setScaleKey( spep_2 -3 + 176, 1, 0.946, 0.946 );
setScaleKey( spep_2 -3 + 178, 1, 0.947, 0.947 );
setScaleKey( spep_2 -3 + 180, 1, 0.948, 0.948 );
setScaleKey( spep_2 -3 + 182, 1, 0.949, 0.949 );
setScaleKey( spep_2 -3 + 184, 1, 0.950, 0.950 );
setScaleKey( spep_2 -3 + 186, 1, 0.951, 0.951 );
setScaleKey( spep_2 -3 + 188, 1, 0.952, 0.952 );
setScaleKey( spep_2 -3 + 190, 1, 0.953, 0.953 );
--
setScaleKey( spep_2 +307 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_2 +308 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_2 +308 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_2 +308 + 4, 1, 1.03, 1.03 );
setScaleKey( spep_2 +308 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_2 +308 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_2 +308 + 10, 1, 1.3, 1.3 );
setScaleKey( spep_2 +308 + 12, 1, 1.39, 1.39 );
setScaleKey( spep_2 +308 + 14, 1, 1.49, 1.49 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 190, 1, 0 );
--
setRotateKey( spep_2 +307 + 0, 1, 0 );
setRotateKey( spep_2 +308 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 556, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--前方ダッシュ1
SE003 = playSe( spep_2 + 0, 1182 );

--前方ダッシュ2
SE004 = playSe( spep_2 + 0, 9 );
setSeVolumeByWorkId( spep_2 + 0, SE004, 78 );
setTimeStretch( SE004, 1.18, 10, 1 );

--前方ダッシュ3
SE005 = playSe( spep_2 + 8, 1183 );

--前方ダッシュ4（ZOOM）
SE006 = playSe( spep_2 + 34, 1072 );

--前方ダッシュ5（ZOOM）
SE007 = playSe( spep_2 + 72, 9 );
setSeVolumeByWorkId( spep_2 + 72, SE007, 77 );

--画面遷移
SE008 = playSe( spep_2 + 96, 1232 );

--オーラ1	
SE009 = playSe( spep_2 + 118, 1176 );
setSeVolumeByWorkId( spep_2 + 118, SE009, 61 );
stopSe( spep_2 + 238, SE009, 0 );
setPitch( spep_2 + 118, SE009, -500 );
setTimeStretch( SE009, 0.67, 10, 1 );

--オーラ2
SE010 = playSe( spep_2 + 130, 8 );
setPitch( spep_2 + 130, SE010, -400 );
setTimeStretch( SE010, 0.73, 10, 1 );

--気弾溜め1
SE011 = playSe( spep_2 + 186, 1026 );
setSeVolumeByWorkId( spep_2 + 186, SE011, 85 );

--気弾溜め2
SE012 = playSe( spep_2 + 190, 1037 );
stopSe( spep_2 + 256, SE012, 0 );

--気弾溜め3
SE013 = playSe( spep_2 + 190, 1262 );
stopSe( spep_2 + 256, SE013, 0 );

--気弾溜め4
SE014 = playSe( spep_2 + 190, 1203 );
setSeVolumeByWorkId( spep_2 + 190, SE014, 200 );
stopSe( spep_2 + 256, SE014, 0 );

--気弾発射1
SE015 = playSe( spep_2 + 246, 1027 );
setSeVolumeByWorkId( spep_2 + 246, SE015, 76 );

--気弾発射2
SE016 = playSe( spep_2 + 250, 1022 );
setSeVolumeByWorkId( spep_2 + 250, SE016, 82 );

--気弾発射3
SE017 = playSe( spep_2 + 250, 1145 );
setSeVolumeByWorkId( spep_2 + 250, SE017, 60 );

--気弾迫る1
SE018 = playSe( spep_2 + 304, 1212 );
setSeVolumeByWorkId( spep_2 + 304, SE018, 8 );
setSeVolumeByWorkId( spep_2 + 308, SE018, 18 );
setSeVolumeByWorkId( spep_2 + 310, SE018, 28 );
setSeVolumeByWorkId( spep_2 + 312, SE018, 38 );
setSeVolumeByWorkId( spep_2 + 314, SE018, 48 );
setSeVolumeByWorkId( spep_2 + 316, SE018, 58 );
stopSe( spep_2 + 378, SE018, 0 );
setStartTimeMs( SE018,  533 );

--気弾迫る2
SE019 = playSe( spep_2 + 310, 1177 );
setSeVolumeByWorkId( spep_2 + 310, SE019, 10 );
setSeVolumeByWorkId( spep_2 + 313, SE019, 20 );
setSeVolumeByWorkId( spep_2 + 316, SE019, 30 );
setSeVolumeByWorkId( spep_2 + 319, SE019, 40 );
setSeVolumeByWorkId( spep_2 + 322, SE019, 50 );
setSeVolumeByWorkId( spep_2 + 324, SE019, 60 );
stopSe( spep_2 + 378, SE019, 0 );

--気弾迫る3		SE020 = playSe( spep_2 + 310, 1021 );			

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 322 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 2, 1, -2, 1 , 0 );
	setMoveKey( SP_dodge + 4, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 6, 1, -2, -1 , 0 );
	setMoveKey( SP_dodge + 8, 1, 0, 0 , 0 );
	setMoveKey( SP_dodge + 10, 1, -1, -2.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2, 2 );
    setScaleKey( SP_dodge + 10, 1, 2, 2 );

    setMoveKey( SP_dodge + 0, 1, 1.51, 1.51 );
	setMoveKey( SP_dodge + 2, 1, 1.53, 1.53 );
	setMoveKey( SP_dodge + 4, 1, 1.56, 1.56 );
	setMoveKey( SP_dodge + 6, 1, 1.58, 1.58 );
	setMoveKey( SP_dodge + 8, 1, 1.61, 1.61 );
	setMoveKey( SP_dodge + 10, 1, 1.63, 1.63 );

    setRotateKey( SP_dodge + 0, 1, 0 );
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
setDisp( spep_2 +307 +60, 1, 0 );

setMoveKey( spep_2 +308 + 16, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 18, 1, -2, 1 , 0 );
setMoveKey( spep_2 +308 + 20, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 22, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 24, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 26, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 28, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 30, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 32, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 34, 1, -1, -3.1 , 0 );
setMoveKey( spep_2 +308 + 36, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 38, 1, -3, 2.9 , 0 );
setMoveKey( spep_2 +308 + 40, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 42, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 44, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 46, 1, -2, 1 , 0 );
setMoveKey( spep_2 +308 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 50, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 +308 + 52, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 54, 1, -1, -3.1 , 0 );
setMoveKey( spep_2 +308 + 56, 1, 0, 0 , 0 );
setMoveKey( spep_2 +308 + 58, 1, -2, -1 , 0 );
setMoveKey( spep_2 +308 + 60, 1, -2, -1 , 0 );

setScaleKey( spep_2 +308 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 +308 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_2 +308 + 20, 1, 1.56, 1.56 );
setScaleKey( spep_2 +308 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_2 +308 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_2 +308 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_2 +308 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_2 +308 + 30, 1, 1.68, 1.68 );
setScaleKey( spep_2 +308 + 32, 1, 1.7, 1.7 );
setScaleKey( spep_2 +308 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_2 +308 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_2 +308 + 38, 1, 1.78, 1.78 );
setScaleKey( spep_2 +308 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_2 +308 + 42, 1, 1.82, 1.82 );
setScaleKey( spep_2 +308 + 44, 1, 1.85, 1.85 );
setScaleKey( spep_2 +308 + 46, 1, 1.87, 1.87 );
setScaleKey( spep_2 +308 + 48, 1, 1.9, 1.9 );
setScaleKey( spep_2 +308 + 50, 1, 1.92, 1.92 );
setScaleKey( spep_2 +308 + 52, 1, 1.94, 1.94 );
setScaleKey( spep_2 +308 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_2 +308 + 56, 1, 1.99, 1.99 );
setScaleKey( spep_2 +308 + 58, 1, 2.02, 2.02 );
setScaleKey( spep_2 +308 + 60, 1, 2.02, 2.02 );

setRotateKey( spep_2 +308 + 58, 1, 0 );
setRotateKey( spep_2 +308 + 60, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 367, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 554, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--爆発1
SE021 = playSe( spep_2 + 372, 1023 );

--爆発2
SE022 = playSe( spep_2 + 372, 1011 );

--画面遷移
SE023 = playSe( spep_2 + 396, 1072 );

--オーラ
SE024 = playSe( spep_2 + 420, 1176 );
stopSe( spep_2 +556 + 80, SE024, 0 );
setPitch( spep_2 + 420, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

--気弾溜め1
SE025 = playSe( spep_2 + 430, 1276,"",0.6 );

--気弾溜め2
SE026 = playSe( spep_2 + 430, 1281,"",0.7 );
setSeVolumeByWorkId( spep_2 + 430, SE026, 79 );
stopSe( spep_2 +556 + 50, SE026, 14 );

--気弾大きくなる1
SE027 = playSe( spep_2 + 474, 1184 );
stopSe( spep_2 + 502, SE027, 36 );

--気弾大きくなる2
SE028 = playSe( spep_2 + 474, 1191,"",0.6 );
setSeVolumeByWorkId( spep_2 + 474, SE028, 158 );
stopSe( spep_2 + 524, SE028, 50 );

--気弾大きくなる3
SE029 = playSe( spep_2 + 474, 1265,"",0.6 );

--気弾大きくなる4
SE030 = playSe( spep_2 + 476, 1161 );
setSeVolumeByWorkId( spep_2 + 476, SE030, 0 );
setSeVolumeByWorkId( spep_2 + 478, SE030, 2 );
setSeVolumeByWorkId( spep_2 + 480, SE030, 5 );
setSeVolumeByWorkId( spep_2 + 484, SE030, 15 );
setSeVolumeByWorkId( spep_2 + 488, SE030, 25 );
setSeVolumeByWorkId( spep_2 + 492, SE030, 35 );
setSeVolumeByWorkId( spep_2 + 496, SE030, 45 );
setSeVolumeByWorkId( spep_2 + 500, SE030, 55 );
setSeVolumeByWorkId( spep_2 + 504, SE030, 65 );
setSeVolumeByWorkId( spep_2 + 508, SE030, 75 );
stopSe( spep_2 +556 + 58, SE030, 36 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 556;


--------------------------------------
--発射(216F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 216, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 216, shot, 255 );

a2=20;
b2=15;

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_3 -3 + 48,  10012, 45, 0x100, -1, 0, 76 +a2, 259.9 +b2 );
setEffMoveKey( spep_3 -3 + 48, ctzuo2, 76 +a2, 259.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo2, 105 +a2, 300.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 52, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 54, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 56, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 58, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 60, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 62, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 64, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 66, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 68, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 70, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 72, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 74, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 76, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 78, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 80, ctzuo2, 116 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 82, ctzuo2, 132 +a2, 343.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 84, ctzuo2, 124 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 86, ctzuo2, 157.5 +a2, 334.3 +b2, 0 );
setEffMoveKey( spep_3 -3 + 88, ctzuo2, 140 +a2, 359.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 90, ctzuo2, 183.2 +a2, 324.7 +b2, 0 );
setEffMoveKey( spep_3 -3 + 92, ctzuo2, 196 +a2, 319.9 +b2, 0 );
setEffMoveKey( spep_3 -3 + 93, ctzuo2, 196 +a2, 319.9 +b2, 0 );

setEffScaleKey( spep_3 -3 + 48, ctzuo2, 0.35, 0.35 );
setEffScaleKey( spep_3 -3 + 50, ctzuo2, 1.575, 1.575 );
setEffScaleKey( spep_3 -3 + 52, ctzuo2, 2.80, 2.80 );
setEffScaleKey( spep_3 -3 + 82, ctzuo2, 2.80, 2.80 );
setEffScaleKey( spep_3 -3 + 84, ctzuo2, 3.64, 3.64 );
setEffScaleKey( spep_3 -3 + 86, ctzuo2, 4.48, 4.48 );
setEffScaleKey( spep_3 -3 + 88, ctzuo2, 5.32, 5.32 );
setEffScaleKey( spep_3 -3 + 90, ctzuo2, 6.16, 6.16 );
setEffScaleKey( spep_3 -3 + 92, ctzuo2, 7, 7 );
setEffScaleKey( spep_3 -3 + 93, ctzuo2, 7, 7 );

setEffRotateKey( spep_3 -3 + 48, ctzuo2, 25 );
setEffRotateKey( spep_3 -3 + 93, ctzuo2, 25 );

setEffAlphaKey( spep_3 -3 + 48, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 82, ctzuo2, 255 );
setEffAlphaKey( spep_3 -3 + 84, ctzuo2, 204 );
setEffAlphaKey( spep_3 -3 + 86, ctzuo2, 153 );
setEffAlphaKey( spep_3 -3 + 88, ctzuo2, 102 );
setEffAlphaKey( spep_3 -3 + 90, ctzuo2, 51 );
setEffAlphaKey( spep_3 -3 + 92, ctzuo2, 0 );
setEffAlphaKey( spep_3 -3 + 93, ctzuo2, 0 );

setDisp( spep_3 -3 + 120, 1, 1 );
setDisp( spep_3 -3 + 219, 1, 0 );
changeAnime( spep_3 -3 + 120, 1, 106 );

a3=0;
b3=50;

setMoveKey( spep_3 -3 + 120, 1, 381.1 -a3, -450.8 +b3, 0 );
setMoveKey( spep_3 -3 + 122, 1, 352.1 -a3, -415 +b3, 0 );
setMoveKey( spep_3 -3 + 124, 1, 327.8 -a3, -375.2 +b3, 0 );
setMoveKey( spep_3 -3 + 126, 1, 301.5 -a3, -347.3 +b3, 0 );
setMoveKey( spep_3 -3 + 128, 1, 283.3 -a3, -311.5 +b3, 0 );
setMoveKey( spep_3 -3 + 130, 1, 253 -a3, -277.7 +b3, 0 );
setMoveKey( spep_3 -3 + 132, 1, 228.7 -a3, -257.9 +b3, 0 );
setMoveKey( spep_3 -3 + 134, 1, 198.4 -a3, -230.1 +b3, 0 );
setMoveKey( spep_3 -3 + 136, 1, 174.1 -a3, -214.2 +b3, 0 );
setMoveKey( spep_3 -3 + 138, 1, 143.8 -a3, -180.4 +b3, 0 );
setMoveKey( spep_3 -3 + 140, 1, 129.5 -a3, -150.6 +b3, 0 );
setMoveKey( spep_3 -3 + 142, 1, 125.3 -a3, -162 +b3, 0 );
setMoveKey( spep_3 -3 + 144, 1, 129 -a3, -149.5 +b3, 0 );
setMoveKey( spep_3 -3 + 146, 1, 120.7 -a3, -152.9 +b3, 0 );
setMoveKey( spep_3 -3 + 148, 1, 128.4 -a3, -148.3 +b3, 0 );
setMoveKey( spep_3 -3 + 150, 1, 120.1 -a3, -155.8 +b3, 0 );
setMoveKey( spep_3 -3 + 152, 1, 127.8 -a3, -147.2 +b3, 0 );
setMoveKey( spep_3 -3 + 154, 1, 123.5 -a3, -150.6 +b3, 0 );
setMoveKey( spep_3 -3 + 156, 1, 127.2 -a3, -146 +b3, 0 );
setMoveKey( spep_3 -3 + 158, 1, 118.9 -a3, -153.5 +b3, 0 );
setMoveKey( spep_3 -3 + 160, 1, 126.6 -a3, -144.9 +b3, 0 );
setMoveKey( spep_3 -3 + 162, 1, 118.3 -a3, -156.3 +b3, 0 );
setMoveKey( spep_3 -3 + 164, 1, 126 -a3, -143.8 +b3, 0 );
setMoveKey( spep_3 -3 + 166, 1, 117.7 -a3, -151.2 +b3, 0 );
setMoveKey( spep_3 -3 + 168, 1, 125.4 -a3, -142.6 +b3, 0 );
setMoveKey( spep_3 -3 + 170, 1, 121.1 -a3, -150.1 +b3, 0 );
setMoveKey( spep_3 -3 + 172, 1, 124.8 -a3, -141.5 +b3, 0 );
setMoveKey( spep_3 -3 + 174, 1, 116.5 -a3, -148.9 +b3, 0 );
setMoveKey( spep_3 -3 + 176, 1, 124.2 -a3, -140.4 +b3, 0 );
setMoveKey( spep_3 -3 + 178, 1, 115.9 -a3, -147.8 +b3, 0 );
setMoveKey( spep_3 -3 + 180, 1, 123.7 -a3, -139.2 +b3, 0 );
setMoveKey( spep_3 -3 + 182, 1, 119.4 -a3, -146.6 +b3, 0 );
setMoveKey( spep_3 -3 + 184, 1, 123.1 -a3, -138.1 +b3, 0 );
setMoveKey( spep_3 -3 + 186, 1, 114.8 -a3, -141.5 +b3, 0 );
setMoveKey( spep_3 -3 + 188, 1, 122.5 -a3, -136.9 +b3, 0 );
setMoveKey( spep_3 -3 + 190, 1, 114.2 -a3, -144.4 +b3, 0 );
setMoveKey( spep_3 -3 + 192, 1, 121.9 -a3, -135.8 +b3, 0 );
setMoveKey( spep_3 -3 + 194, 1, 117.6 -a3, -139.2 +b3, 0 );
setMoveKey( spep_3 -3 + 196, 1, 121.3 -a3, -134.6 +b3, 0 );
setMoveKey( spep_3 -3 + 198, 1, 113 -a3, -146.1 +b3, 0 );
setMoveKey( spep_3 -3 + 200, 1, 120.7 -a3, -133.5 +b3, 0 );
setMoveKey( spep_3 -3 + 202, 1, 108.4 -a3, -136.9 +b3, 0 );
setMoveKey( spep_3 -3 + 204, 1, 120.1 -a3, -132.4 +b3, 0 );
setMoveKey( spep_3 -3 + 206, 1, 115.8 -a3, -139.8 +b3, 0 );
setMoveKey( spep_3 -3 + 208, 1, 119.5 -a3, -131.2 +b3, 0 );
setMoveKey( spep_3 -3 + 210, 1, 115.2 -a3, -134.7 +b3, 0 );
setMoveKey( spep_3 -3 + 212, 1, 118.9 -a3, -130.1 +b3, 0 );
setMoveKey( spep_3 -3 + 214, 1, 110.6 -a3, -137.5 +b3, 0 );
setMoveKey( spep_3 -3 + 216, 1, 118.3 -a3, -128.9 +b3, 0 );
setMoveKey( spep_3 -3 + 218, 1, 114 -a3, -132.4 +b3, 0 );
setMoveKey( spep_3 -3 + 219, 1, 114 -a3, -132.4 +b3, 0 );

setScaleKey( spep_3 -3 + 120, 1, 7.48, 7.48 );
setScaleKey( spep_3 -3 + 122, 1, 7.02, 7.02 );
setScaleKey( spep_3 -3 + 124, 1, 6.55, 6.55 );
setScaleKey( spep_3 -3 + 126, 1, 6.08, 6.08 );
setScaleKey( spep_3 -3 + 128, 1, 5.41, 5.41 );
setScaleKey( spep_3 -3 + 130, 1, 4.45, 4.45 );

setScaleKey( spep_3 -3 + 132, 1, 3.98, 3.98 );
setScaleKey( spep_3 -3 + 134, 1, 3.51, 3.51 );
setScaleKey( spep_3 -3 + 136, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 138, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 140, 1, 2.11, 2.11 );
setScaleKey( spep_3 -3 + 142, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 144, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 146, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 148, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 150, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 152, 1, 2.05, 2.05 );
setScaleKey( spep_3 -3 + 154, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 156, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 158, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 160, 1, 2, 2 );
setScaleKey( spep_3 -3 + 162, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 164, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 166, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 168, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 170, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 172, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 174, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 176, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 178, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 180, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 182, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 184, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 186, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 188, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 190, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 192, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 194, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 196, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 198, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 200, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 202, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 204, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 206, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 208, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 210, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 212, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 214, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 216, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 218, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 219, 1, 1.69, 1.69 );

setRotateKey( spep_3 -3 + 120, 1, -22 );
setRotateKey( spep_3 -3 + 219, 1, -22 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 216, 0, 10, 10, 10, 230);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 45, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 113, 3, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 206, 9, 1, 0, fcolor_r, fcolor_g, fcolor_b, 140);     -- white fade

-- ** 音 ** --
--気弾発射1
SE031 = playSe( spep_3 + 54, 1027 );
setSeVolumeByWorkId( spep_3 + 54, SE031, 79 );

--気弾発射2
SE032 = playSe( spep_3 + 54, 1193 );
setSeVolumeByWorkId( spep_3 + 54, SE032, 178 );
stopSe( spep_3 +216 + 6, SE032, 12 );

--気弾発射3
SE033 = playSe( spep_3 + 56, 1226 );
setSeVolumeByWorkId( spep_3 + 56, SE033, 0 );
setSeVolumeByWorkId( spep_3 + 62, SE033, 10 );
setSeVolumeByWorkId( spep_3 + 68, SE033, 20 );
setSeVolumeByWorkId( spep_3 + 74, SE033, 30 );
setSeVolumeByWorkId( spep_3 + 80, SE033, 40 );
setSeVolumeByWorkId( spep_3 + 86, SE033, 50 );
setSeVolumeByWorkId( spep_3 + 92, SE033, 60 );
setSeVolumeByWorkId( spep_3 + 98, SE033, 70 );
setSeVolumeByWorkId( spep_3 + 104, SE033, 80 );
setSeVolumeByWorkId( spep_3 + 110, SE033, 90 );
setSeVolumeByWorkId( spep_3 + 118, SE033, 100 );
stopSe( spep_3 +216 + 6, SE033, 42 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 216;


------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190002, 56, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 56, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 56, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 56, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 56, ctgyan, 255 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_2 + 98, 16, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 24, 32, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--ギャン
SE018 = playSe( spep_4 + 0, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


--------------------------------------
--爆発(地球背景)(136F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発1
SE035 = playSe( spep_5 + 12, 1067 );

--爆発2
SE036 = playSe( spep_5 + 12, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 34 );
endPhase( spep_5 + 134 );--168

end