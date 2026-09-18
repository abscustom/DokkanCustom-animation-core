--1021040:SSRボージャック・コズミックボマー_sp2147
--sp_effect_a2_00151

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
SP_01 = 156416;  --ご対面 ef_001
SP_02 = 156417;  --ご対面　背景  ef_002
SP_03 = 156418;  --殴りかかる　前面    ef_003
SP_04 = 156419;  --殴りかかる　背面    ef_004
SP_05 = 156421;  --ナックル　前面 ef_005
SP_06 = 156423;  --ナックル　背面 ef_006
SP_07 = 156424;  --膝蹴り　前面  ef_007
SP_08 = 156426;  --膝蹴り　背面  ef_008
SP_09 = 156427;  --回し蹴り　前面 ef_009
SP_10 = 156428;  --回し蹴り　背面 ef_010
SP_11 = 156431;  --塔に突っ込み　簡易版  ef_011s(簡易版フィニッシュ)

--敵側
SP_04r = 156420;  --殴りかかる　背面　敵側 ef_004e
SP_05r = 156422;  --ナックル　前面　敵側  ef_005e
SP_07r = 156425;  --膝蹴り　前面　敵側   ef_007e
SP_09r = 156479;    --回し蹴り　前面　敵側    ef_009e
SP_10r = 156429;  --回し蹴り　背面　敵側  ef_010e
SP_11r = 156481;  --塔に突っ込み　簡易版　敵側   ef_011se


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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ご対面(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ご対面(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 115, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ご対面　背景(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 116, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 115, first_b, 255 );
setEffAlphaKey( spep_0 + 116, first_b, 0 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 31, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 31, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 31, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 115, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 31, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 115, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 31, shuchusen1, 0 );
setEffRotateKey( spep_0 + 115, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 31, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 115, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 +116, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 156.8, -10 , 0 );
setMoveKey( spep_0 + 1, 1, 157.6, -10 , 0 );
setMoveKey( spep_0 + 2, 1, 158.3, -10 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 159.1, -10 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 159.1, -10 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 159.8, -10 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 159.8, -10 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 160.5, -10 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 161.2, -10 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 161.8, -10 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 162.5, -10 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 163.1, -10 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 163.7, -10 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 164.3, -10 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 164.9, -10 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 165.4, -10 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 166, -10 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 166.5, -10 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 167, -10 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 167.5, -10 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 168, -10 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 168.4, -10 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 168.8, -10 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 169.3, -10 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 169.7, -10 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 170, -10 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 170.4, -10 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 170.8, -10 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 171.1, -10 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 171.4, -10 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 171.7, -10 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 172, -10 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 172.2, -10 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 172.5, -10 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 172.7, -10 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 172.9, -10 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 173.1, -10 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 173.2, -10 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 173.4, -10 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 173.5, -10 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 173.6, -10 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 173.7, -10 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 173.8, -10 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 173.9, -10 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 173.9, -10 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 174, -10 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 174, -10 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 174, -10 , 0 );

a1=0.2;
setScaleKey( spep_0 + 0, 1, 0.9 +a1, 0.9 +a1 );
setScaleKey( spep_0 + 116, 1, 0.9 +a1, 0.9 +a1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 115, 1, 0 );
setRotateKey( spep_0 + 116, 1, 0 );

-- ** 音 ** --
--入り1
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 46 );
stopSe( spep_0 +116 + 2, SE001, 10 );

--入り2
SE002 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );

--入り3
SE003 = playSe( spep_0 + 10, 1278 );
setSeVolumeByWorkId( spep_0 + 10, SE003, 82 );
stopSe( spep_0 + 64, SE003, 62 );

--顔カットイン
SE100 = playSe( spep_0 + 30, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 98, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--殴りかかる(76F)
--------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --殴りかかる　前面(ef_003)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 76, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 75, punch_f, 255 );
setEffAlphaKey( spep_2 + 76, punch_f, 0 );

punch_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --殴りかかる　背面(ef_004)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 76, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 75, punch_b, 255 );
setEffAlphaKey( spep_2 + 76, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 490.6, -14.9 , 0 );
setMoveKey( spep_2 + 1, 1, 461, -7.1 , 0 );
setMoveKey( spep_2 + 2, 1, 431.5, 0.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 401.9, 8.6 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 401.9, 8.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 372.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 372.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 342.8, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 313.2, 32.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 283.7, 40.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 254.1, 48 , 0 );

a2=1.2;
setScaleKey( spep_2 + 0, 1, 2 +a2, 2 +a2 );
setScaleKey( spep_2 + 1, 1, 1.95 +a2, 1.95 +a2 );
setScaleKey( spep_2 + 2, 1, 1.91 +a2, 1.91 +a2 );
setScaleKey( spep_2 -3 + 6, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_2 -3 + 7, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_2 -3 + 8, 1, 1.82 +a2, 1.82 +a2 );
setScaleKey( spep_2 -3 + 9, 1, 1.82 +a2, 1.82 +a2 );
setScaleKey( spep_2 -3 + 10, 1, 1.77 +a2, 1.77 +a2 );
setScaleKey( spep_2 -3 + 12, 1, 1.73 +a2, 1.73 +a2 );
setScaleKey( spep_2 -3 + 14, 1, 1.68 +a2, 1.68 +a2 );
setScaleKey( spep_2 -3 + 16, 1, 1.64 +a2, 1.64 +a2 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--前方ダッシュ1
SE004 = playSe( spep_2 + 0, 1182 );

--前方ダッシュ2
SE005 = playSe( spep_2 + 0, 9 );
stopSe( spep_2 + 30, SE005, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

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
setDisp( spep_2 +76 +46 +65-2, 1, 0 );
--
changeAnime( spep_2 -3 + 32, 1, 107 );
--
changeAnime( spep_2 +76 + 0, 1, 106 );
changeAnime( spep_2 +76 -3 + 20, 1, 108 );
--
changeAnime( spep_2 +76 +46-2, 1, 107 );
changeAnime( spep_2 +76 +46 -3 + 24-2, 1, 105 );


setMoveKey( spep_2 -3 + 18, 1, 224.5, 55.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 195, 63.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 165.4, 71.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 165.4, 71.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 209.7, 23.3 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 186.2, 53.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 117.9, -63.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 100.1, -8.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 117.4, -25.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 96.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 118.3, -32.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 100.1, -14.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 114.6, -14.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 111.6, -22.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 118.5, -27.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 140.4, -43.9 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 149.9, -52.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 163.6, -55.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 180.9, -81.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 185.9, -84.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 196.1, -90.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191, -86.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 191, -77.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 194.8, -93.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 185.9, -84.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 196.1, -90.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 191, -86.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 191, -77.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 194.8, -93.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 185.9, -84.1 , 0 );
--setMoveKey( spep_2 -3 + 79, 1, 185.9, -84.1 , 0 );
--
setMoveKey( spep_2 +76 + 0, 1, -447.7, -107.2 , 0 );
setMoveKey( spep_2 +76 + 1, 1, -406.1, -103.4 , 0 );
setMoveKey( spep_2 +76 + 2, 1, -364.5, -99.6 , 0 );
setMoveKey( spep_2 +76 -3 + 6, 1, -322.9, -95.7 , 0 );
setMoveKey( spep_2 +76 -3 + 7, 1, -322.9, -95.7 , 0 );
setMoveKey( spep_2 +76 -3 + 8, 1, -281.3, -91.9 , 0 );
setMoveKey( spep_2 +76 -3 + 9, 1, -281.3, -91.9 , 0 );
setMoveKey( spep_2 +76 -3 + 10, 1, -239.6, -88 , 0 );
setMoveKey( spep_2 +76 -3 + 12, 1, -198, -84.2 , 0 );
setMoveKey( spep_2 +76 -3 + 14, 1, -156.4, -80.3 , 0 );
setMoveKey( spep_2 +76 -3 + 16, 1, -114.8, -76.5 , 0 );
setMoveKey( spep_2 +76 -3 + 19, 1, -73.1, -72.6 , 0 );
setMoveKey( spep_2 +76 -3 + 20, 1, -53.9, -140.7 , 0 );
setMoveKey( spep_2 +76 -3 + 22, 1, -39.2, -162.7 , 0 );
setMoveKey( spep_2 +76 -3 + 24, 1, -56.3, -150.5 , 0 );
setMoveKey( spep_2 +76 -3 + 26, 1, -36.7, -157.8 , 0 );
setMoveKey( spep_2 +76 -3 + 28, 1, -46.5, -143.1 , 0 );
setMoveKey( spep_2 +76 -3 + 30, 1, -53.9, -140.7 , 0 );
setMoveKey( spep_2 +76 -3 + 32, 1, -46.5, -152.9 , 0 );
setMoveKey( spep_2 +76 -3 + 34, 1, -46.5, -197.8 , 0 );
setMoveKey( spep_2 +76 -3 + 36, 1, -46.5, -242.8 , 0 );
setMoveKey( spep_2 +76 -3 + 38, 1, -46.5, -287.7 , 0 );
setMoveKey( spep_2 +76 -3 + 40, 1, -46.5, -332.7 , 0 );
setMoveKey( spep_2 +76 -3 + 42, 1, -46.5, -377.6 , 0 );
setMoveKey( spep_2 +76 -3 + 44, 1, -46.5, -422.5 , 0 );
setMoveKey( spep_2 +76 -3 + 46, 1, -46.5, -467.5 , 0 );
setMoveKey( spep_2 +76 -3 + 48-2, 1, -46.5, -512.4 , 0 );
--setMoveKey( spep_2 -3 + 49, 1, -46.5, -512.4 , 0 );
--
setMoveKey( spep_2 +76 +46 + 0-2, 1, 0, 246.8 , 0 );
setMoveKey( spep_2 +76 +46 + 1-2, 1, 0, 234.7 , 0 );
setMoveKey( spep_2 +76 +46 + 2-2, 1, 0, 222.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 6-2, 1, 0, 210.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 7-2, 1, 0, 210.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 8-2, 1, 0, 198.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 9-2, 1, 0, 198.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 10-2, 1, 0, 186.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 12-2, 1, 0, 174.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 14-2, 1, 0, 162.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 16-2, 1, 0, 150.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 18-2, 1, 0, 138.1 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 20-2, 1, 0, 126 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 23-2, 1, 0, 113.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 24-2, 1, -34.8, 173.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 26-2, 1, -34.8, 202.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 28-2, 1, -19.9, 220.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 30-2, 1, -16.9, 224.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 32-2, 1, -2.9, 225.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 34-2, 1, -3, 227 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 36-2, 1, 4, 232 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 38-2, 1, -1, 230.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 40-2, 1, -1, 234.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 42-2, 1, -1, 238.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 44-2, 1, -1, 242.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 46-2, 1, -1, 246.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 48-2, 1, -1, 250.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 50-2, 1, -1, 254.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 52-2, 1, -1, 258.3 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 54-2, 1, -1, 262.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 56-2, 1, -1, 266.1 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 58-2, 1, -1, 270 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 60-2, 1, -1, 273.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 62-2, 1, -1, 277.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 64-2, 1, -1, 281.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 66-2, 1, -1, 285.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 68-2, 1, -1, 289.6 , 0 );
--setMoveKey( spep_2 +76 +46 -3 + 69, 1, -1, 289.6 , 0 );

a3=0.2;
setScaleKey( spep_2 -3 + 18, 1, 1.59 +a2, 1.59 +a2 );
setScaleKey( spep_2 -3 + 20, 1, 1.55 +a2, 1.55 +a2 );
setScaleKey( spep_2 -3 + 22, 1, 1.5 +a2, 1.5 +a2 );
setScaleKey( spep_2 -3 + 26, 1, 1.5 +a2, 1.5 +a2 );
setScaleKey( spep_2 -3 + 28, 1, 2.4 +a2, 2.4 +a2 );
setScaleKey( spep_2 -3 + 31, 1, 2.1 +a2, 2.1 +a2 );
setScaleKey( spep_2 -3 + 32, 1, 0.7975 +a3, 0.7975 +a3 );--
setScaleKey( spep_2 -3 + 34, 1, 0.6655 +a3, 0.6655 +a3 );
setScaleKey( spep_2 -3 + 46, 1, 0.6655 +a3, 0.6655 +a3 );
setScaleKey( spep_2 -3 + 48, 1, 0.704 +a3, 0.704 +a3 );
setScaleKey( spep_2 -3 + 50, 1, 0.748 +a3, 0.748 +a3 );
setScaleKey( spep_2 -3 + 52, 1, 0.7865 +a3, 0.7865 +a3 );
setScaleKey( spep_2 -3 + 54, 1, 0.825 +a3, 0.825 +a3 );
setScaleKey( spep_2 -3 + 56, 1, 0.869 +a3, 0.869 +a3 );
setScaleKey( spep_2 -3 + 58, 1, 0.9075 +a3, 0.9075 +a3 );
setScaleKey( spep_2 -3 + 78, 1, 0.9075 +a3, 0.9075 +a3 );
--setScaleKey( spep_2 -3 + 79, 1, 0.9075, 0.9075 );
--
a4=0.4;
a10=0.8;
setScaleKey( spep_2 +76 + 0, 1, 1.2 +a4, 1.2 +a4 );
setScaleKey( spep_2 +76 -3 + 19, 1, 1.2 +a4, 1.2 +a4 );
setScaleKey( spep_2 +76 -3 + 20, 1, 1 +a10, 1 +a10 );
setScaleKey( spep_2 +76 -3 + 48-2, 1, 1 +a10, 1 +a10 );
--setScaleKey( spep_2 -3 + 49, 1, 1, 1 );
--
a5=0.1;
b5=0.3;
setScaleKey( spep_2 +76 +46 + 0-2, 1, 0.24 +a5, 0.24 +a5 );
setScaleKey( spep_2 +76 +46 + 1-2, 1, 0.258 +a5, 0.258 +a5 );
setScaleKey( spep_2 +76 +46 + 2-2, 1, 0.27 +a5, 0.27 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 6-2, 1, 0.288 +a5, 0.288 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 7-2, 1, 0.288 +a5, 0.288 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 8-2, 1, 0.306 +a5, 0.306 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 9-2, 1, 0.306 +a5, 0.306 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 10-2, 1, 0.324 +a5, 0.324 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 12-2, 1, 0.336 +a5, 0.336 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 14-2, 1, 0.354 +a5, 0.354 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 16-2, 1, 0.372 +a5, 0.372 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 18-2, 1, 0.39 +a5, 0.39 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 20-2, 1, 0.402 +a5, 0.402 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 23-2, 1, 0.42 +a5, 0.42 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 24-2, 1, 1.92 +a5, 1.92 +a5 );--
setScaleKey( spep_2 +76 +46 -3 + 26-2, 1, 1.59 +b5, 1.59 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 28-2, 1, 1.3 +b5, 1.3 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 30-2, 1, 1.03 +b5, 1.03 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 32-2, 1, 0.79 +b5, 0.79 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 34-2, 1, 0.58 +b5, 0.58 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 36-2, 1, 0.56 +b5, 0.56 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 38-2, 1, 0.55 +b5, 0.55 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 40-2, 1, 0.53 +b5, 0.53 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 42-2, 1, 0.52 +b5, 0.52 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 44-2, 1, 0.5 +b5, 0.5 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 46-2, 1, 0.48 +b5, 0.48 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 48-2, 1, 0.47 +b5, 0.47 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 50-2, 1, 0.45 +b5, 0.45 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 52-2, 1, 0.43 +b5, 0.43 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 54-2, 1, 0.42 +b5, 0.42 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 56-2, 1, 0.4 +b5, 0.4 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 58-2, 1, 0.38 +b5, 0.38 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 60-2, 1, 0.37 +b5, 0.37 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 62-2, 1, 0.35 +b5, 0.35 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 64-2, 1, 0.33 +b5, 0.33 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 66-2, 1, 0.32 +b5, 0.32 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 68-2, 1, 0.3 +b5, 0.3 +b5 );
--setScaleKey( spep_2 +76 +46 -3 + 69, 1, 0.3, 0.3 );


setRotateKey( spep_2 -3 + 31, 1, 0 );
setRotateKey( spep_2 -3 + 32, 1, -36 );
setRotateKey( spep_2 -3 + 78, 1, -36 );
--setRotateKey( spep_2 -3 + 79, 1, -36 );
--
setRotateKey( spep_2 +76 + 0, 1, 14.6 );
setRotateKey( spep_2 +76 + 1, 1, 14.7 );
setRotateKey( spep_2 +76 -3 + 19, 1, 14.7 );
setRotateKey( spep_2 +76 -3 + 20, 1, 90 );
setRotateKey( spep_2 +76 -3 + 48-2, 1, 90 );
--setRotateKey( spep_2 -3 + 49, 1, 90 );
--
setRotateKey( spep_2 +76 +46 + 0-2, 1, 47.9 );
setRotateKey( spep_2 +76 +46 + 1-2, 1, 48 );
setRotateKey( spep_2 +76 +46 -3 + 23-2, 1, 48 );
setRotateKey( spep_2 +76 +46 -3 + 24-2, 1, -11.5 );
setRotateKey( spep_2 +76 +46 -3 + 68-2, 1, -11.5 );
--setRotateKey( spep_2 +76 +46 -3 + 69, 1, -11.5 );

-- ** 音 ** --
--パンチ1
SE006 = playSe( spep_2 + 28, 1110 );

--パンチ2
SE007 = playSe( spep_2 + 28, 1190 );
setSeVolumeByWorkId( spep_2 + 28, SE007, 52 );

--パンチ3	
SE008 = playSe( spep_2 + 30, 1009 );

--パンチ4
SE009 = playSe( spep_2 + 32, 1010 );
setSeVolumeByWorkId( spep_2 + 32, SE009, 81 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


--------------------------------------
--ナックル(46F)
--------------------------------------
-- ** エフェクト等 ** --
knuckle_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ナックル　前面(ef_005)
setEffMoveKey( spep_3 + 0, knuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_f, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 16, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 17, knuckle_f, 255 );
setEffAlphaKey( spep_3 + 46-2, knuckle_f, 255 );

knuckle_e = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ナックル　背面(ef_006)
setEffMoveKey( spep_3 + 0, knuckle_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_e, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_e, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_e, 255 );
setEffAlphaKey( spep_3 + 46-2, knuckle_e, 255 );

knuckle_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ナックル　前面(ef_005)
setEffMoveKey( spep_3 + 0, knuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_b, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_b, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_b, 255 );
setEffAlphaKey( spep_3 + 16, knuckle_b, 255 );
setEffAlphaKey( spep_3 + 17, knuckle_b, 0 );
setEffAlphaKey( spep_3 + 46-2, knuckle_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_3 -3 + 20,  10020, 9, 0x100, -1, 0, -163.2, 340.9 );
setEffMoveKey( spep_3 -3 + 20, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbaki, -154.8, 332.4 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctbaki, -154.8, 332.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 29, ctbaki, -163.2, 340.9 , 0 );

setEffScaleKey( spep_3 -3 + 20, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_3 -3 + 29, ctbaki, 1.96, 1.96 );

setEffRotateKey( spep_3 -3 + 20, ctbaki, -21.7 );
setEffRotateKey( spep_3 -3 + 29, ctbaki, -21.7 );

setEffAlphaKey( spep_3 -3 + 20, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 29, ctbaki, 255 );

-- ** 音 ** --
--瞬間移動1
SE010 = playSe( spep_3 + 4, 1109 );

--叩きつける1
SE011 = playSe( spep_3 + 20, 1123 );
setPitch( spep_3 + 20, SE011, -300 );
setTimeStretch( SE011, 0.8, 10, 1 );

--叩きつける2
SE012 = playSe( spep_3 + 24, 1190 );
setSeVolumeByWorkId( spep_3 + 24, SE012, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46-2;


--------------------------------------
--膝蹴り(66F)
--------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_4 + 0, SP_07, 65, 0x100, -1, 0, 0, 0 );  --膝蹴り　前面(ef_007)
setEffMoveKey( spep_4 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 66, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 64, kick_f, 255 );
setEffAlphaKey( spep_4 + 65, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0, SP_08, 65, 0x80, -1, 0, 0, 0 );  --ナックル　背面(ef_006)
setEffMoveKey( spep_4 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 66, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 64, kick_b, 255 );
setEffAlphaKey( spep_4 + 65, kick_b, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 24,  10021, 28, 0x100, -1, 0, 86, 253.3 );
setEffMoveKey( spep_4 -3 + 24, ctbago, 86, 253.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbago, 106.3, 285.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbago, 123.9, 326.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbago, 142.8, 363 , 0 );

setEffScaleKey( spep_4 -3 + 24, ctbago, 0.48, 0.48 );
setEffScaleKey( spep_4 -3 + 26, ctbago, 1.09, 1.09 );
setEffScaleKey( spep_4 -3 + 28, ctbago, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 30, ctbago, 2.32, 2.32 );
setEffScaleKey( spep_4 -3 + 52, ctbago, 2.32, 2.32 );

setEffRotateKey( spep_4 -3 + 24, ctbago, 27.3 );
setEffRotateKey( spep_4 -3 + 26, ctbago, 27.5 );
setEffRotateKey( spep_4 -3 + 52, ctbago, 27.5 );

setEffAlphaKey( spep_4 -3 + 24, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctbago, 255 );

-- ** 音 ** --
--瞬間移動2
SE013 = playSe( spep_4 + 8, 1109 );

--膝蹴り1
SE014 = playSe( spep_4 + 18, 1004 );

--膝蹴り2
SE015 = playSe( spep_4 + 24, 1187 );
setSeVolumeByWorkId( spep_4 + 24, SE015, 74 );

--膝蹴り3
SE016 = playSe( spep_4 + 26, 1190 );
setSeVolumeByWorkId( spep_4 + 26, SE016, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 65;


--------------------------------------
--回し蹴り(56F)
--------------------------------------
-- ** エフェクト等 ** --
roundk_f = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --回し蹴り　前面(ef_009)
setEffMoveKey( spep_5 + 0, roundk_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, roundk_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, roundk_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, roundk_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, roundk_f, 0 );
setEffRotateKey( spep_5 + 56, roundk_f, 0 );
setEffAlphaKey( spep_5 + 0, roundk_f, 255 );
setEffAlphaKey( spep_5 + 55, roundk_f, 255 );
setEffAlphaKey( spep_5 + 56, roundk_f, 0 );

roundk_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --回し蹴り　背面(ef_010)
setEffMoveKey( spep_5 + 0, roundk_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, roundk_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, roundk_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, roundk_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, roundk_b, 0 );
setEffRotateKey( spep_5 + 56, roundk_b, 0 );
setEffAlphaKey( spep_5 + 0, roundk_b, 255 );
setEffAlphaKey( spep_5 + 55, roundk_b, 255 );
setEffAlphaKey( spep_5 + 56, roundk_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 1, 1, 1 );
setDisp( spep_5 +56 + 27, 1, 0 );
changeAnime( spep_5 + 1, 1, 6 );
--
changeAnime( spep_5 +56 + 0, 1, 5 );

setMoveKey( spep_5    + 1, 1, 160, -788.9 , 0 );
setMoveKey( spep_5    + 2, 1, 146.4, -724.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 132.8, -660.9 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 132.8, -660.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 119.2, -596.8 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 119.2, -596.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 105.6, -532.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 92, -468.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 78.4, -404.8 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 64.8, -340.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 51.2, -276.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 37.6, -212.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 24, -148.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 10.4, -84.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -3.2, -20.7 , 0 );
setMoveKey( spep_5 -3 + 27, 1, -3.2, -20.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 59.3, 129.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 77.9, 99.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 62, 104.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 75.4, 102.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 64.5, 84.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 58.7, 110.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 63.1, 111.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 85.4, 86.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 74.5, 96.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 94.2, 100 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 90.9, 87.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 95.3, 88.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 99.7, 88.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 104.1, 89.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 108.5, 89.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 112.9, 90.4 , 0 );
--
setMoveKey( spep_5 +56 + 0, 1, -501, -27.4 , 0 );
setMoveKey( spep_5 +56 + 1, 1, -500, -27.2 , 0 );
setMoveKey( spep_5 +56 + 2, 1, -496.8, -26.7 , 0 );
setMoveKey( spep_5 +56 -3 + 6, 1, -491.2, -25.7 , 0 );
setMoveKey( spep_5 +56 -3 + 7, 1, -491.2, -25.7 , 0 );
setMoveKey( spep_5 +56 -3 + 8, 1, -482.9, -24.3 , 0 );
setMoveKey( spep_5 +56 -3 + 9, 1, -482.9, -24.3 , 0 );
setMoveKey( spep_5 +56 -3 + 10, 1, -471.8, -22.4 , 0 );
setMoveKey( spep_5 +56 -3 + 12, 1, -457.5, -19.9 , 0 );
setMoveKey( spep_5 +56 -3 + 14, 1, -439.4, -16.8 , 0 );
setMoveKey( spep_5 +56 -3 + 16, 1, -417.1, -13 , 0 );
setMoveKey( spep_5 +56 -3 + 18, 1, -389.9, -8.4 , 0 );
setMoveKey( spep_5 +56 -3 + 20, 1, -356.8, -2.7 , 0 );
setMoveKey( spep_5 +56 -3 + 22, 1, -316.3, 4.3 , 0 );
setMoveKey( spep_5 +56 -3 + 24, 1, -266.4, 12.8 , 0 );
setMoveKey( spep_5 +56 -3 + 26, 1, -203.1, 23.7 , 0 );
setMoveKey( spep_5 +56 -3 + 28, 1, -118.6, 38.2 , 0 );
setMoveKey( spep_5 +56 -3 + 30, 1, 11.8, 70.3 , 0 );

a6=0.8;
b6=0.8;
c6=0.4;
setScaleKey( spep_5    + 1, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_5 -3 + 27, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_5 -3 + 28, 1, 1.92 +a6 +b6 +c6, 1.92 +a6 +b6 +c6 );
setScaleKey( spep_5 -3 + 30, 1, 1.74 +a6 +b6, 1.74 +a6 +b6 );
setScaleKey( spep_5 -3 + 32, 1, 1.56 +a6 +b6, 1.56 +a6 +b6 );
setScaleKey( spep_5 -3 + 34, 1, 1.38 +a6 +c6, 1.38 +a6 +c6 );
setScaleKey( spep_5 -3 + 36, 1, 1.2 +a6 +c6, 1.2 +a6 +c6 );
setScaleKey( spep_5 -3 + 58, 1, 1.2 +a6 +c6, 1.2 +a6 +c6 );
--
a7=0.4;
setScaleKey( spep_5 +56 + 0, 1, 2.5 +a7, 2.5 +a7 );
setScaleKey( spep_5 +56 + 1, 1, 2.49 +a7, 2.49 +a7 );
setScaleKey( spep_5 +56 + 2, 1, 2.48 +a7, 2.48 +a7 );
setScaleKey( spep_5 +56 -3 + 6, 1, 2.45 +a7, 2.45 +a7 );
setScaleKey( spep_5 +56 -3 + 7, 1, 2.45 +a7, 2.45 +a7 );
setScaleKey( spep_5 +56 -3 + 8, 1, 2.42 +a7, 2.42 +a7 );
setScaleKey( spep_5 +56 -3 + 9, 1, 2.42 +a7, 2.42 +a7 );
setScaleKey( spep_5 +56 -3 + 10, 1, 2.37 +a7, 2.37 +a7 );
setScaleKey( spep_5 +56 -3 + 12, 1, 2.3 +a7, 2.3 +a7 );
setScaleKey( spep_5 +56 -3 + 14, 1, 2.22 +a7, 2.22 +a7 );
setScaleKey( spep_5 +56 -3 + 16, 1, 2.12 +a7, 2.12 +a7 );
setScaleKey( spep_5 +56 -3 + 18, 1, 2 +a7, 2 +a7 );
setScaleKey( spep_5 +56 -3 + 20, 1, 1.86 +a7, 1.86 +a7 );
setScaleKey( spep_5 +56 -3 + 22, 1, 1.68 +a7, 1.68 +a7 );
setScaleKey( spep_5 +56 -3 + 24, 1, 1.45 +a7, 1.45 +a7 );
setScaleKey( spep_5 +56 -3 + 26, 1, 1.17 +a7, 1.17 +a7 );
setScaleKey( spep_5 +56 -3 + 28, 1, 0.8 +a7, 0.8 +a7 );
setScaleKey( spep_5 +56 -3 + 30, 1, 0.2 +a7, 0.2 +a7 );


setRotateKey( spep_5    + 1, 1, 38.4 );
setRotateKey( spep_5 -3 + 27, 1, 38.4 );
setRotateKey( spep_5 -3 + 28, 1, 55.6 );
setRotateKey( spep_5 -3 + 30, 1, 54.6 );
setRotateKey( spep_5 -3 + 32, 1, 53.6 );
setRotateKey( spep_5 -3 + 34, 1, 52.6 );
setRotateKey( spep_5 -3 + 36, 1, 51.6 );
setRotateKey( spep_5 -3 + 38, 1, 50.6 );
setRotateKey( spep_5 -3 + 40, 1, 49.7 );
setRotateKey( spep_5 -3 + 42, 1, 48.7 );
setRotateKey( spep_5 -3 + 44, 1, 47.7 );
setRotateKey( spep_5 -3 + 46, 1, 46.7 );
setRotateKey( spep_5 -3 + 48, 1, 45.7 );
setRotateKey( spep_5 -3 + 50, 1, 44.7 );
setRotateKey( spep_5 -3 + 52, 1, 43.8 );
setRotateKey( spep_5 -3 + 54, 1, 42.8 );
setRotateKey( spep_5 -3 + 56, 1, 41.8 );
setRotateKey( spep_5 -3 + 58, 1, 40.8 );
--
setRotateKey( spep_5 +56 + 0, 1, 51.2 );
setRotateKey( spep_5 +56 + 27, 1, 51.2 );

-- ** 音 ** --
--瞬間移動3
SE017 = playSe( spep_5 + 4, 1109 );

--蹴り1
SE018 = playSe( spep_5 + 18, 1003 );

--蹴り2
SE019 = playSe( spep_5 + 20, 1004 );

--蹴り3
SE020 = playSe( spep_5 + 26, 1120 );

--蹴り4
SE021 = playSe( spep_5 + 28, 1012 );
setSeVolumeByWorkId( spep_5 + 28, SE021, 95 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


--------------------------------------
--塔に突っ込み(簡易版フィニッシュ)(116F)
--------------------------------------
-- ** エフェクト等 ** --
tower_f = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --塔に突っ込み  ef_011(簡易版フィニッシュ)
setEffMoveKey( spep_6 + 0, tower_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tower_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tower_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tower_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tower_f, 0 );
setEffRotateKey( spep_6 + 116, tower_f, 0 );
setEffAlphaKey( spep_6 + 0, tower_f, 255 );
setEffAlphaKey( spep_6 + 116, tower_f, 255 );

-- ** 音 ** --
--敵飛んでいく1
SE022 = playSe( spep_6 + 2, 1183 );
stopSe( spep_6 + 30, SE022, 16 );

--敵飛んでいく2
SE023 = playSe( spep_6 + 2, 1121 );
setSeVolumeByWorkId( spep_6 + 2, SE023, 56 );
stopSe( spep_6 + 30, SE023, 16 );

--爆発1
SE024 = playSe( spep_6 + 20, 1023 );
setSeVolumeByWorkId( spep_6 + 20, SE024, 77 );

--爆発2
SE025 = playSe( spep_6 + 24, 1033 );
setSeVolumeByWorkId( spep_6 + 24, SE025, 57 );

--向かっていく
--SE026 = playSe( spep_6 + 38, 1277 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 64, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 36 );
endPhase( spep_6 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ご対面(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ご対面(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 115, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ご対面　背景(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 116, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 115, first_b, 255 );
setEffAlphaKey( spep_0 + 116, first_b, 0 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 31, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 31, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 31, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 115, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 31, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 115, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 31, shuchusen1, 0 );
setEffRotateKey( spep_0 + 115, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 31, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 115, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 +116, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 156.8, -10 , 0 );
setMoveKey( spep_0 + 1, 1, 157.6, -10 , 0 );
setMoveKey( spep_0 + 2, 1, 158.3, -10 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 159.1, -10 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 159.1, -10 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 159.8, -10 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 159.8, -10 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 160.5, -10 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 161.2, -10 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 161.8, -10 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 162.5, -10 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 163.1, -10 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 163.7, -10 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 164.3, -10 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 164.9, -10 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 165.4, -10 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 166, -10 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 166.5, -10 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 167, -10 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 167.5, -10 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 168, -10 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 168.4, -10 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 168.8, -10 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 169.3, -10 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 169.7, -10 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 170, -10 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 170.4, -10 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 170.8, -10 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 171.1, -10 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 171.4, -10 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 171.7, -10 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 172, -10 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 172.2, -10 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 172.5, -10 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 172.7, -10 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 172.9, -10 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 173.1, -10 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 173.2, -10 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 173.4, -10 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 173.5, -10 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 173.6, -10 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 173.7, -10 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 173.8, -10 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 173.9, -10 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 173.9, -10 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 174, -10 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 174, -10 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 174, -10 , 0 );

a1=0.2;
setScaleKey( spep_0 + 0, 1, 0.9 +a1, 0.9 +a1 );
setScaleKey( spep_0 + 116, 1, 0.9 +a1, 0.9 +a1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 115, 1, 0 );
setRotateKey( spep_0 + 116, 1, 0 );

-- ** 音 ** --
--入り1
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 46 );
stopSe( spep_0 +116 + 2, SE001, 10 );

--入り2
SE002 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );

--入り3
SE003 = playSe( spep_0 + 10, 1278 );
setSeVolumeByWorkId( spep_0 + 10, SE003, 82 );
stopSe( spep_0 + 64, SE003, 62 );

--顔カットイン
SE100 = playSe( spep_0 + 30, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 98, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--殴りかかる(76F)
--------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --殴りかかる　前面(ef_003)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 76, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 75, punch_f, 255 );
setEffAlphaKey( spep_2 + 76, punch_f, 0 );

punch_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --殴りかかる　背面(ef_004)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 76, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 75, punch_b, 255 );
setEffAlphaKey( spep_2 + 76, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 490.6, -14.9 , 0 );
setMoveKey( spep_2 + 1, 1, 461, -7.1 , 0 );
setMoveKey( spep_2 + 2, 1, 431.5, 0.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 401.9, 8.6 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 401.9, 8.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 372.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 372.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 342.8, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 313.2, 32.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 283.7, 40.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 254.1, 48 , 0 );

a2=1.2;
setScaleKey( spep_2 + 0, 1, 2 +a2, 2 +a2 );
setScaleKey( spep_2 + 1, 1, 1.95 +a2, 1.95 +a2 );
setScaleKey( spep_2 + 2, 1, 1.91 +a2, 1.91 +a2 );
setScaleKey( spep_2 -3 + 6, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_2 -3 + 7, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_2 -3 + 8, 1, 1.82 +a2, 1.82 +a2 );
setScaleKey( spep_2 -3 + 9, 1, 1.82 +a2, 1.82 +a2 );
setScaleKey( spep_2 -3 + 10, 1, 1.77 +a2, 1.77 +a2 );
setScaleKey( spep_2 -3 + 12, 1, 1.73 +a2, 1.73 +a2 );
setScaleKey( spep_2 -3 + 14, 1, 1.68 +a2, 1.68 +a2 );
setScaleKey( spep_2 -3 + 16, 1, 1.64 +a2, 1.64 +a2 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--前方ダッシュ1
SE004 = playSe( spep_2 + 0, 1182 );

--前方ダッシュ2
SE005 = playSe( spep_2 + 0, 9 );
stopSe( spep_2 + 30, SE005, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

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
setDisp( spep_2 +76 +46 +65-2, 1, 0 );
--
changeAnime( spep_2 -3 + 32, 1, 107 );
--
changeAnime( spep_2 +76 + 0, 1, 106 );
changeAnime( spep_2 +76 -3 + 20, 1, 108 );
--
changeAnime( spep_2 +76 +46-2, 1, 107 );
changeAnime( spep_2 +76 +46 -3 + 24-2, 1, 105 );


setMoveKey( spep_2 -3 + 18, 1, 224.5, 55.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 195, 63.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 165.4, 71.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 165.4, 71.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 209.7, 23.3 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 186.2, 53.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 117.9, -63.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 100.1, -8.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 117.4, -25.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 96.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 118.3, -32.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 100.1, -14.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 114.6, -14.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 111.6, -22.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 118.5, -27.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 140.4, -43.9 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 149.9, -52.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 163.6, -55.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 180.9, -81.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 185.9, -84.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 196.1, -90.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191, -86.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 191, -77.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 194.8, -93.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 185.9, -84.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 196.1, -90.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 191, -86.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 191, -77.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 194.8, -93.1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 185.9, -84.1 , 0 );
--setMoveKey( spep_2 -3 + 79, 1, 185.9, -84.1 , 0 );
--
setMoveKey( spep_2 +76 + 0, 1, -447.7, -107.2 , 0 );
setMoveKey( spep_2 +76 + 1, 1, -406.1, -103.4 , 0 );
setMoveKey( spep_2 +76 + 2, 1, -364.5, -99.6 , 0 );
setMoveKey( spep_2 +76 -3 + 6, 1, -322.9, -95.7 , 0 );
setMoveKey( spep_2 +76 -3 + 7, 1, -322.9, -95.7 , 0 );
setMoveKey( spep_2 +76 -3 + 8, 1, -281.3, -91.9 , 0 );
setMoveKey( spep_2 +76 -3 + 9, 1, -281.3, -91.9 , 0 );
setMoveKey( spep_2 +76 -3 + 10, 1, -239.6, -88 , 0 );
setMoveKey( spep_2 +76 -3 + 12, 1, -198, -84.2 , 0 );
setMoveKey( spep_2 +76 -3 + 14, 1, -156.4, -80.3 , 0 );
setMoveKey( spep_2 +76 -3 + 16, 1, -114.8, -76.5 , 0 );
setMoveKey( spep_2 +76 -3 + 19, 1, -73.1, -72.6 , 0 );
setMoveKey( spep_2 +76 -3 + 20, 1, -53.9, -140.7 , 0 );
setMoveKey( spep_2 +76 -3 + 22, 1, -39.2, -162.7 , 0 );
setMoveKey( spep_2 +76 -3 + 24, 1, -56.3, -150.5 , 0 );
setMoveKey( spep_2 +76 -3 + 26, 1, -36.7, -157.8 , 0 );
setMoveKey( spep_2 +76 -3 + 28, 1, -46.5, -143.1 , 0 );
setMoveKey( spep_2 +76 -3 + 30, 1, -53.9, -140.7 , 0 );
setMoveKey( spep_2 +76 -3 + 32, 1, -46.5, -152.9 , 0 );
setMoveKey( spep_2 +76 -3 + 34, 1, -46.5, -197.8 , 0 );
setMoveKey( spep_2 +76 -3 + 36, 1, -46.5, -242.8 , 0 );
setMoveKey( spep_2 +76 -3 + 38, 1, -46.5, -287.7 , 0 );
setMoveKey( spep_2 +76 -3 + 40, 1, -46.5, -332.7 , 0 );
setMoveKey( spep_2 +76 -3 + 42, 1, -46.5, -377.6 , 0 );
setMoveKey( spep_2 +76 -3 + 44, 1, -46.5, -422.5 , 0 );
setMoveKey( spep_2 +76 -3 + 46, 1, -46.5, -467.5 , 0 );
setMoveKey( spep_2 +76 -3 + 48-2, 1, -46.5, -512.4 , 0 );
--setMoveKey( spep_2 -3 + 49, 1, -46.5, -512.4 , 0 );
--
setMoveKey( spep_2 +76 +46 + 0-2, 1, 0, 246.8 , 0 );
setMoveKey( spep_2 +76 +46 + 1-2, 1, 0, 234.7 , 0 );
setMoveKey( spep_2 +76 +46 + 2-2, 1, 0, 222.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 6-2, 1, 0, 210.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 7-2, 1, 0, 210.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 8-2, 1, 0, 198.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 9-2, 1, 0, 198.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 10-2, 1, 0, 186.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 12-2, 1, 0, 174.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 14-2, 1, 0, 162.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 16-2, 1, 0, 150.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 18-2, 1, 0, 138.1 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 20-2, 1, 0, 126 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 23-2, 1, 0, 113.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 24-2, 1, -34.8, 173.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 26-2, 1, -34.8, 202.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 28-2, 1, -19.9, 220.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 30-2, 1, -16.9, 224.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 32-2, 1, -2.9, 225.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 34-2, 1, -3, 227 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 36-2, 1, 4, 232 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 38-2, 1, -1, 230.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 40-2, 1, -1, 234.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 42-2, 1, -1, 238.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 44-2, 1, -1, 242.6 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 46-2, 1, -1, 246.5 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 48-2, 1, -1, 250.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 50-2, 1, -1, 254.4 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 52-2, 1, -1, 258.3 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 54-2, 1, -1, 262.2 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 56-2, 1, -1, 266.1 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 58-2, 1, -1, 270 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 60-2, 1, -1, 273.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 62-2, 1, -1, 277.9 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 64-2, 1, -1, 281.8 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 66-2, 1, -1, 285.7 , 0 );
setMoveKey( spep_2 +76 +46 -3 + 68-2, 1, -1, 289.6 , 0 );
--setMoveKey( spep_2 +76 +46 -3 + 69, 1, -1, 289.6 , 0 );

a3=0.2;
setScaleKey( spep_2 -3 + 18, 1, 1.59 +a2, 1.59 +a2 );
setScaleKey( spep_2 -3 + 20, 1, 1.55 +a2, 1.55 +a2 );
setScaleKey( spep_2 -3 + 22, 1, 1.5 +a2, 1.5 +a2 );
setScaleKey( spep_2 -3 + 26, 1, 1.5 +a2, 1.5 +a2 );
setScaleKey( spep_2 -3 + 28, 1, 2.4 +a2, 2.4 +a2 );
setScaleKey( spep_2 -3 + 31, 1, 2.1 +a2, 2.1 +a2 );
setScaleKey( spep_2 -3 + 32, 1, 0.7975 +a3, 0.7975 +a3 );--
setScaleKey( spep_2 -3 + 34, 1, 0.6655 +a3, 0.6655 +a3 );
setScaleKey( spep_2 -3 + 46, 1, 0.6655 +a3, 0.6655 +a3 );
setScaleKey( spep_2 -3 + 48, 1, 0.704 +a3, 0.704 +a3 );
setScaleKey( spep_2 -3 + 50, 1, 0.748 +a3, 0.748 +a3 );
setScaleKey( spep_2 -3 + 52, 1, 0.7865 +a3, 0.7865 +a3 );
setScaleKey( spep_2 -3 + 54, 1, 0.825 +a3, 0.825 +a3 );
setScaleKey( spep_2 -3 + 56, 1, 0.869 +a3, 0.869 +a3 );
setScaleKey( spep_2 -3 + 58, 1, 0.9075 +a3, 0.9075 +a3 );
setScaleKey( spep_2 -3 + 78, 1, 0.9075 +a3, 0.9075 +a3 );
--setScaleKey( spep_2 -3 + 79, 1, 0.9075, 0.9075 );
--
a4=0.4;
a10=0.8;
setScaleKey( spep_2 +76 + 0, 1, 1.2 +a4, 1.2 +a4 );
setScaleKey( spep_2 +76 -3 + 19, 1, 1.2 +a4, 1.2 +a4 );
setScaleKey( spep_2 +76 -3 + 20, 1, 1 +a10, 1 +a10 );
setScaleKey( spep_2 +76 -3 + 48-2, 1, 1 +a10, 1 +a10 );
--setScaleKey( spep_2 -3 + 49, 1, 1, 1 );
--
a5=0.1;
b5=0.3;
setScaleKey( spep_2 +76 +46 + 0-2, 1, 0.24 +a5, 0.24 +a5 );
setScaleKey( spep_2 +76 +46 + 1-2, 1, 0.258 +a5, 0.258 +a5 );
setScaleKey( spep_2 +76 +46 + 2-2, 1, 0.27 +a5, 0.27 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 6-2, 1, 0.288 +a5, 0.288 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 7-2, 1, 0.288 +a5, 0.288 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 8-2, 1, 0.306 +a5, 0.306 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 9-2, 1, 0.306 +a5, 0.306 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 10-2, 1, 0.324 +a5, 0.324 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 12-2, 1, 0.336 +a5, 0.336 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 14-2, 1, 0.354 +a5, 0.354 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 16-2, 1, 0.372 +a5, 0.372 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 18-2, 1, 0.39 +a5, 0.39 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 20-2, 1, 0.402 +a5, 0.402 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 23-2, 1, 0.42 +a5, 0.42 +a5 );
setScaleKey( spep_2 +76 +46 -3 + 24-2, 1, 1.92 +a5, 1.92 +a5 );--
setScaleKey( spep_2 +76 +46 -3 + 26-2, 1, 1.59 +b5, 1.59 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 28-2, 1, 1.3 +b5, 1.3 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 30-2, 1, 1.03 +b5, 1.03 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 32-2, 1, 0.79 +b5, 0.79 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 34-2, 1, 0.58 +b5, 0.58 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 36-2, 1, 0.56 +b5, 0.56 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 38-2, 1, 0.55 +b5, 0.55 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 40-2, 1, 0.53 +b5, 0.53 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 42-2, 1, 0.52 +b5, 0.52 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 44-2, 1, 0.5 +b5, 0.5 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 46-2, 1, 0.48 +b5, 0.48 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 48-2, 1, 0.47 +b5, 0.47 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 50-2, 1, 0.45 +b5, 0.45 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 52-2, 1, 0.43 +b5, 0.43 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 54-2, 1, 0.42 +b5, 0.42 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 56-2, 1, 0.4 +b5, 0.4 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 58-2, 1, 0.38 +b5, 0.38 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 60-2, 1, 0.37 +b5, 0.37 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 62-2, 1, 0.35 +b5, 0.35 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 64-2, 1, 0.33 +b5, 0.33 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 66-2, 1, 0.32 +b5, 0.32 +b5 );
setScaleKey( spep_2 +76 +46 -3 + 68-2, 1, 0.3 +b5, 0.3 +b5 );
--setScaleKey( spep_2 +76 +46 -3 + 69, 1, 0.3, 0.3 );


setRotateKey( spep_2 -3 + 31, 1, 0 );
setRotateKey( spep_2 -3 + 32, 1, -36 );
setRotateKey( spep_2 -3 + 78, 1, -36 );
--setRotateKey( spep_2 -3 + 79, 1, -36 );
--
setRotateKey( spep_2 +76 + 0, 1, 14.6 );
setRotateKey( spep_2 +76 + 1, 1, 14.7 );
setRotateKey( spep_2 +76 -3 + 19, 1, 14.7 );
setRotateKey( spep_2 +76 -3 + 20, 1, 90 );
setRotateKey( spep_2 +76 -3 + 48-2, 1, 90 );
--setRotateKey( spep_2 -3 + 49, 1, 90 );
--
setRotateKey( spep_2 +76 +46 + 0-2, 1, 47.9 );
setRotateKey( spep_2 +76 +46 + 1-2, 1, 48 );
setRotateKey( spep_2 +76 +46 -3 + 23-2, 1, 48 );
setRotateKey( spep_2 +76 +46 -3 + 24-2, 1, -11.5 );
setRotateKey( spep_2 +76 +46 -3 + 68-2, 1, -11.5 );
--setRotateKey( spep_2 +76 +46 -3 + 69, 1, -11.5 );

-- ** 音 ** --
--パンチ1
SE006 = playSe( spep_2 + 28, 1110 );

--パンチ2
SE007 = playSe( spep_2 + 28, 1190 );
setSeVolumeByWorkId( spep_2 + 28, SE007, 52 );

--パンチ3  
SE008 = playSe( spep_2 + 30, 1009 );

--パンチ4
SE009 = playSe( spep_2 + 32, 1010 );
setSeVolumeByWorkId( spep_2 + 32, SE009, 81 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


--------------------------------------
--ナックル(46F)
--------------------------------------
-- ** エフェクト等 ** --
knuckle_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --ナックル　前面(ef_005)
setEffMoveKey( spep_3 + 0, knuckle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_f, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 16, knuckle_f, 0 );
setEffAlphaKey( spep_3 + 17, knuckle_f, 255 );
setEffAlphaKey( spep_3 + 46-2, knuckle_f, 255 );

knuckle_e = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ナックル　背面(ef_006)
setEffMoveKey( spep_3 + 0, knuckle_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_e, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_e, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_e, 255 );
setEffAlphaKey( spep_3 + 46-2, knuckle_e, 255 );

knuckle_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --ナックル　前面(ef_005)
setEffMoveKey( spep_3 + 0, knuckle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46-2, knuckle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knuckle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46-2, knuckle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knuckle_b, 0 );
setEffRotateKey( spep_3 + 46-2, knuckle_b, 0 );
setEffAlphaKey( spep_3 + 0, knuckle_b, 255 );
setEffAlphaKey( spep_3 + 16, knuckle_b, 255 );
setEffAlphaKey( spep_3 + 17, knuckle_b, 0 );
setEffAlphaKey( spep_3 + 46-2, knuckle_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_3 -3 + 20,  10020, 9, 0x100, -1, 0, -163.2, 340.9 );
setEffMoveKey( spep_3 -3 + 20, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctbaki, -154.8, 332.4 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctbaki, -154.8, 332.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctbaki, -163.2, 340.9 , 0 );
setEffMoveKey( spep_3 -3 + 29, ctbaki, -163.2, 340.9 , 0 );

setEffScaleKey( spep_3 -3 + 20, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_3 -3 + 29, ctbaki, 1.96, 1.96 );

setEffRotateKey( spep_3 -3 + 20, ctbaki, -21.7 );
setEffRotateKey( spep_3 -3 + 29, ctbaki, -21.7 );

setEffAlphaKey( spep_3 -3 + 20, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 29, ctbaki, 255 );

-- ** 音 ** --
--瞬間移動1
SE010 = playSe( spep_3 + 4, 1109 );

--叩きつける1
SE011 = playSe( spep_3 + 20, 1123 );
setPitch( spep_3 + 20, SE011, -300 );
setTimeStretch( SE011, 0.8, 10, 1 );

--叩きつける2
SE012 = playSe( spep_3 + 24, 1190 );
setSeVolumeByWorkId( spep_3 + 24, SE012, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46-2;


--------------------------------------
--膝蹴り(66F)
--------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_4 + 0, SP_07r, 65, 0x100, -1, 0, 0, 0 );  --膝蹴り　前面(ef_007)
setEffMoveKey( spep_4 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 66, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 64, kick_f, 255 );
setEffAlphaKey( spep_4 + 65, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0, SP_08, 65, 0x80, -1, 0, 0, 0 );  --ナックル　背面(ef_006)
setEffMoveKey( spep_4 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 66, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 64, kick_b, 255 );
setEffAlphaKey( spep_4 + 65, kick_b, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 24,  10021, 28, 0x100, -1, 0, 86, 253.3 );
setEffMoveKey( spep_4 -3 + 24, ctbago, 86, 253.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbago, 106.3, 285.7 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbago, 123.9, 326.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbago, 142.8, 363 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbago, 145.6, 354.2 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbago, 142.8, 363 , 0 );

setEffScaleKey( spep_4 -3 + 24, ctbago, 0.48, 0.48 );
setEffScaleKey( spep_4 -3 + 26, ctbago, 1.09, 1.09 );
setEffScaleKey( spep_4 -3 + 28, ctbago, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 30, ctbago, 2.32, 2.32 );
setEffScaleKey( spep_4 -3 + 52, ctbago, 2.32, 2.32 );

setEffRotateKey( spep_4 -3 + 24, ctbago, 27.3 );
setEffRotateKey( spep_4 -3 + 26, ctbago, 27.5 );
setEffRotateKey( spep_4 -3 + 52, ctbago, 27.5 );

setEffAlphaKey( spep_4 -3 + 24, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctbago, 255 );

-- ** 音 ** --
--瞬間移動2
SE013 = playSe( spep_4 + 8, 1109 );

--膝蹴り1
SE014 = playSe( spep_4 + 18, 1004 );

--膝蹴り2
SE015 = playSe( spep_4 + 24, 1187 );
setSeVolumeByWorkId( spep_4 + 24, SE015, 74 );

--膝蹴り3
SE016 = playSe( spep_4 + 26, 1190 );
setSeVolumeByWorkId( spep_4 + 26, SE016, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 65;


--------------------------------------
--回し蹴り(56F)
--------------------------------------
-- ** エフェクト等 ** --
roundk_f = entryEffect( spep_5 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --回し蹴り　前面(ef_009)
setEffMoveKey( spep_5 + 0, roundk_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, roundk_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, roundk_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, roundk_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, roundk_f, 0 );
setEffRotateKey( spep_5 + 56, roundk_f, 0 );
setEffAlphaKey( spep_5 + 0, roundk_f, 255 );
setEffAlphaKey( spep_5 + 55, roundk_f, 255 );
setEffAlphaKey( spep_5 + 56, roundk_f, 0 );

roundk_b = entryEffect( spep_5 + 0, SP_10r, 0x80, -1, 0, 0, 0 );  --回し蹴り　背面(ef_010)
setEffMoveKey( spep_5 + 0, roundk_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, roundk_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, roundk_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, roundk_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, roundk_b, 0 );
setEffRotateKey( spep_5 + 56, roundk_b, 0 );
setEffAlphaKey( spep_5 + 0, roundk_b, 255 );
setEffAlphaKey( spep_5 + 55, roundk_b, 255 );
setEffAlphaKey( spep_5 + 56, roundk_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 1, 1, 1 );
setDisp( spep_5 +56 + 27, 1, 0 );
changeAnime( spep_5 + 1, 1, 6 );
--
changeAnime( spep_5 +56 + 0, 1, 5 );

setMoveKey( spep_5    + 1, 1, 160, -788.9 , 0 );
setMoveKey( spep_5    + 2, 1, 146.4, -724.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 132.8, -660.9 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 132.8, -660.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 119.2, -596.8 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 119.2, -596.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 105.6, -532.8 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 92, -468.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 78.4, -404.8 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 64.8, -340.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 51.2, -276.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 37.6, -212.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 24, -148.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 10.4, -84.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -3.2, -20.7 , 0 );
setMoveKey( spep_5 -3 + 27, 1, -3.2, -20.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 59.3, 129.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 77.9, 99.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 62, 104.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 75.4, 102.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 64.5, 84.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 58.7, 110.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 63.1, 111.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 85.4, 86.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 74.5, 96.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 94.2, 100 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 90.9, 87.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 95.3, 88.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 99.7, 88.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 104.1, 89.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 108.5, 89.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 112.9, 90.4 , 0 );
--
setMoveKey( spep_5 +56 + 0, 1, -501, -27.4 , 0 );
setMoveKey( spep_5 +56 + 1, 1, -500, -27.2 , 0 );
setMoveKey( spep_5 +56 + 2, 1, -496.8, -26.7 , 0 );
setMoveKey( spep_5 +56 -3 + 6, 1, -491.2, -25.7 , 0 );
setMoveKey( spep_5 +56 -3 + 7, 1, -491.2, -25.7 , 0 );
setMoveKey( spep_5 +56 -3 + 8, 1, -482.9, -24.3 , 0 );
setMoveKey( spep_5 +56 -3 + 9, 1, -482.9, -24.3 , 0 );
setMoveKey( spep_5 +56 -3 + 10, 1, -471.8, -22.4 , 0 );
setMoveKey( spep_5 +56 -3 + 12, 1, -457.5, -19.9 , 0 );
setMoveKey( spep_5 +56 -3 + 14, 1, -439.4, -16.8 , 0 );
setMoveKey( spep_5 +56 -3 + 16, 1, -417.1, -13 , 0 );
setMoveKey( spep_5 +56 -3 + 18, 1, -389.9, -8.4 , 0 );
setMoveKey( spep_5 +56 -3 + 20, 1, -356.8, -2.7 , 0 );
setMoveKey( spep_5 +56 -3 + 22, 1, -316.3, 4.3 , 0 );
setMoveKey( spep_5 +56 -3 + 24, 1, -266.4, 12.8 , 0 );
setMoveKey( spep_5 +56 -3 + 26, 1, -203.1, 23.7 , 0 );
setMoveKey( spep_5 +56 -3 + 28, 1, -118.6, 38.2 , 0 );
setMoveKey( spep_5 +56 -3 + 30, 1, 11.8, 70.3 , 0 );

a6=0.8;
b6=0.8;
c6=0.4;
setScaleKey( spep_5    + 1, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_5 -3 + 27, 1, 1.2 +a6, 1.2 +a6 );
setScaleKey( spep_5 -3 + 28, 1, 1.92 +a6 +b6 +c6, 1.92 +a6 +b6 +c6 );
setScaleKey( spep_5 -3 + 30, 1, 1.74 +a6 +b6, 1.74 +a6 +b6 );
setScaleKey( spep_5 -3 + 32, 1, 1.56 +a6 +b6, 1.56 +a6 +b6 );
setScaleKey( spep_5 -3 + 34, 1, 1.38 +a6 +c6, 1.38 +a6 +c6 );
setScaleKey( spep_5 -3 + 36, 1, 1.2 +a6 +c6, 1.2 +a6 +c6 );
setScaleKey( spep_5 -3 + 58, 1, 1.2 +a6 +c6, 1.2 +a6 +c6 );
--
a7=0.4;
setScaleKey( spep_5 +56 + 0, 1, 2.5 +a7, 2.5 +a7 );
setScaleKey( spep_5 +56 + 1, 1, 2.49 +a7, 2.49 +a7 );
setScaleKey( spep_5 +56 + 2, 1, 2.48 +a7, 2.48 +a7 );
setScaleKey( spep_5 +56 -3 + 6, 1, 2.45 +a7, 2.45 +a7 );
setScaleKey( spep_5 +56 -3 + 7, 1, 2.45 +a7, 2.45 +a7 );
setScaleKey( spep_5 +56 -3 + 8, 1, 2.42 +a7, 2.42 +a7 );
setScaleKey( spep_5 +56 -3 + 9, 1, 2.42 +a7, 2.42 +a7 );
setScaleKey( spep_5 +56 -3 + 10, 1, 2.37 +a7, 2.37 +a7 );
setScaleKey( spep_5 +56 -3 + 12, 1, 2.3 +a7, 2.3 +a7 );
setScaleKey( spep_5 +56 -3 + 14, 1, 2.22 +a7, 2.22 +a7 );
setScaleKey( spep_5 +56 -3 + 16, 1, 2.12 +a7, 2.12 +a7 );
setScaleKey( spep_5 +56 -3 + 18, 1, 2 +a7, 2 +a7 );
setScaleKey( spep_5 +56 -3 + 20, 1, 1.86 +a7, 1.86 +a7 );
setScaleKey( spep_5 +56 -3 + 22, 1, 1.68 +a7, 1.68 +a7 );
setScaleKey( spep_5 +56 -3 + 24, 1, 1.45 +a7, 1.45 +a7 );
setScaleKey( spep_5 +56 -3 + 26, 1, 1.17 +a7, 1.17 +a7 );
setScaleKey( spep_5 +56 -3 + 28, 1, 0.8 +a7, 0.8 +a7 );
setScaleKey( spep_5 +56 -3 + 30, 1, 0.2 +a7, 0.2 +a7 );


setRotateKey( spep_5    + 1, 1, 38.4 );
setRotateKey( spep_5 -3 + 27, 1, 38.4 );
setRotateKey( spep_5 -3 + 28, 1, 55.6 );
setRotateKey( spep_5 -3 + 30, 1, 54.6 );
setRotateKey( spep_5 -3 + 32, 1, 53.6 );
setRotateKey( spep_5 -3 + 34, 1, 52.6 );
setRotateKey( spep_5 -3 + 36, 1, 51.6 );
setRotateKey( spep_5 -3 + 38, 1, 50.6 );
setRotateKey( spep_5 -3 + 40, 1, 49.7 );
setRotateKey( spep_5 -3 + 42, 1, 48.7 );
setRotateKey( spep_5 -3 + 44, 1, 47.7 );
setRotateKey( spep_5 -3 + 46, 1, 46.7 );
setRotateKey( spep_5 -3 + 48, 1, 45.7 );
setRotateKey( spep_5 -3 + 50, 1, 44.7 );
setRotateKey( spep_5 -3 + 52, 1, 43.8 );
setRotateKey( spep_5 -3 + 54, 1, 42.8 );
setRotateKey( spep_5 -3 + 56, 1, 41.8 );
setRotateKey( spep_5 -3 + 58, 1, 40.8 );
--
setRotateKey( spep_5 +56 + 0, 1, 51.2 );
setRotateKey( spep_5 +56 + 27, 1, 51.2 );

-- ** 音 ** --
--瞬間移動3
SE017 = playSe( spep_5 + 4, 1109 );

--蹴り1
SE018 = playSe( spep_5 + 18, 1003 );

--蹴り2
SE019 = playSe( spep_5 + 20, 1004 );

--蹴り3
SE020 = playSe( spep_5 + 26, 1120 );

--蹴り4
SE021 = playSe( spep_5 + 28, 1012 );
setSeVolumeByWorkId( spep_5 + 28, SE021, 95 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


--------------------------------------
--塔に突っ込み(簡易版フィニッシュ)(116F)
--------------------------------------
-- ** エフェクト等 ** --
tower_f = entryEffect( spep_6 + 0, SP_11r, 0x80, -1, 0, 0, 0 );  --塔に突っ込み  ef_011(簡易版フィニッシュ)
setEffMoveKey( spep_6 + 0, tower_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tower_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tower_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tower_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tower_f, 0 );
setEffRotateKey( spep_6 + 116, tower_f, 0 );
setEffAlphaKey( spep_6 + 0, tower_f, 255 );
setEffAlphaKey( spep_6 + 116, tower_f, 255 );

-- ** 音 ** --
--敵飛んでいく1
SE022 = playSe( spep_6 + 2, 1183 );
stopSe( spep_6 + 30, SE022, 16 );

--敵飛んでいく2
SE023 = playSe( spep_6 + 2, 1121 );
setSeVolumeByWorkId( spep_6 + 2, SE023, 56 );
stopSe( spep_6 + 30, SE023, 16 );

--爆発1
SE024 = playSe( spep_6 + 20, 1023 );
setSeVolumeByWorkId( spep_6 + 20, SE024, 77 );

--爆発2
SE025 = playSe( spep_6 + 24, 1033 );
setSeVolumeByWorkId( spep_6 + 24, SE025, 57 );

--向かっていく
--SE026 = playSe( spep_6 + 38, 1277 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 64, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 36 );
endPhase( spep_6 + 106 );

end