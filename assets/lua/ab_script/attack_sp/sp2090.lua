--1020650:超サイヤ人4ベジット(ゼノ)_ギャラクシースピリッツソード
--sp_effect_b2_00037
--sp2090

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
SP_01 = 156220; --ベジットソード構え〜敵を蹴り飛ばす ef_001
SP_02 = 156221; --ベジットソード構え〜敵を蹴り飛ばす ef_002
SP_03 = 156222; --ソード構えアップ〜フィニッシュ   ef_003
SP_04 = 156223; --ソード構えアップ〜フィニッシュ   ef_004

--敵側
SP_01r = 156224;    --※敵用　ベジットソード構え〜敵を蹴り飛ばす ef_001r
SP_02r = 156225;    --※敵用　ベジットソード構え〜敵を蹴り飛ばす ef_002r
SP_03r = 156226;    --※敵用　ソード構えアップ〜フィニッシュ   ef_003r
SP_04r = 156227;    --※敵用　ソード構えアップ〜フィニッシュ   ef_004r

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

ENABLE_AUTO_TIME_STRETCH(0.75);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ベジットソード構え〜敵を蹴り飛ばす(328F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 328, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 328, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 328, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 328, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 328, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 328, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 328, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 328, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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
--セリフカットイン
SE001 = playSe( spep_0 + 10, 1018 );

--腕曲げる
SE002 = playSe( spep_0 + 10, 1152 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 64 );
setPitch( spep_0 + 10, SE002, 600 );
setTimeStretch( SE002, 1.4, 10, 1 );

--腕振り切る1
SE003 = playSe( spep_0 + 40, 1122 );

--腕振り切る2
SE004 = playSe( spep_0 + 94, 1209 );
setSeVolumeByWorkId( spep_0 + 94, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 95, SE004, 9 );
setSeVolumeByWorkId( spep_0 + 96, SE004, 21 );
setSeVolumeByWorkId( spep_0 + 97, SE004, 42 );
setSeVolumeByWorkId( spep_0 + 98, SE004, 63 );
stopSe( spep_0 + 124, SE004, 90 );
setStartTimeMs( SE004,  200 );

--腕振り切る3
SE005 = playSe( spep_0 + 86, 1240 );
setSeVolumeByWorkId( spep_0 + 86, SE005, 158 );
stopSe( spep_0 + 120, SE005, 34 );
setTimeStretch( SE005, 0.83, 10, 1 );

--腕振り切る4
SE006 = playSe( spep_0 + 90, 1142 );

--腕振り切る5
SE007 = playSe( spep_0 + 90, 1235 );

--腕振り切る6
SE008 = playSe( spep_0 + 90, 9 );
stopSe( spep_0 + 114, SE008, 34 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE000, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_0 -3 + 160,  10014, 78, 0x100, -1, 0, -82.2, 157.3 );
setEffMoveKey( spep_0 -3 + 160, ctzudodo, -82.2, 157.3 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctzudodo, -28.8, 203.2 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctzudodo, 0.4, 237.3 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzudodo, -7.7, 223.8 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzudodo, 3.5, 242.1 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzudodo, -4.9, 228.1 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzudodo, 6.4, 246.6 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzudodo, -2.3, 232.1 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctzudodo, 9.1, 250.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctzudodo, 0.1, 235.9 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctzudodo, 11.6, 254.6 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctzudodo, 2.4, 239.3 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctzudodo, 13.9, 258.2 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctzudodo, 4.4, 242.5 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctzudodo, 16, 261.5 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctzudodo, 6.3, 245.4 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctzudodo, 18, 264.5 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctzudodo, 8, 248.1 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctzudodo, 19.7, 267.2 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctzudodo, 9.5, 250.4 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctzudodo, 21.2, 269.6 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctzudodo, 10.9, 252.5 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctzudodo, 22.6, 271.7 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctzudodo, 12, 254.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctzudodo, 23.8, 273.5 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzudodo, 13, 255.8 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzudodo, 24.7, 275 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzudodo, 13.8, 257.1 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzudodo, 25.5, 276.2 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzudodo, 14.4, 258 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzudodo, 26.1, 277.1 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzudodo, 14.9, 258.7 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzudodo, 26.5, 277.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzudodo, 15.2, 259.1 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzudodo, 26.6, 278 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzudodo, 26.7, 278 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzudodo, 17.3, 260.5 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzudodo, 35, 283.5 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzudodo, 29.4, 268.1 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzudodo, 43.3, 289 , 0 );

setEffScaleKey( spep_0 -3 + 160, ctzudodo, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 162, ctzudodo, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 164, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_0 -3 + 166, ctzudodo, 2.08, 2.08 );
setEffScaleKey( spep_0 -3 + 168, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_0 -3 + 170, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_0 -3 + 172, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_0 -3 + 174, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 176, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_0 -3 + 178, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 180, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 182, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 184, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 186, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 188, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 190, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 192, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 194, ctzudodo, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 196, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 198, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 200, ctzudodo, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 202, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 204, ctzudodo, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 206, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 208, ctzudodo, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 210, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 212, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 214, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 216, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 220, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 222, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 230, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 232, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_0 -3 + 234, ctzudodo, 2.51, 2.51 );
setEffScaleKey( spep_0 -3 + 236, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_0 -3 + 238, ctzudodo, 2.56, 2.56 );

setEffRotateKey( spep_0 -3 + 160, ctzudodo, 48.4 );
setEffRotateKey( spep_0 -3 + 238, ctzudodo, 48.4 );

setEffAlphaKey( spep_0 -3 + 160, ctzudodo, 26 );
setEffAlphaKey( spep_0 -3 + 162, ctzudodo, 198 );
setEffAlphaKey( spep_0 -3 + 164, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 230, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 232, ctzudodo, 226 );
setEffAlphaKey( spep_0 -3 + 234, ctzudodo, 140 );
setEffAlphaKey( spep_0 -3 + 236, ctzudodo, 55 );
setEffAlphaKey( spep_0 -3 + 238, ctzudodo, 26 );


-- ** 敵キャラクター ** --
setDisp( spep_0 +137 + 0, 1, 1 );
setDisp( spep_0 +137 + 191, 1, 0 );
changeAnime( spep_0 +137 , 1, 104 );
changeAnime( spep_0 +140 -3 + 20, 1, 108 );
changeAnime( spep_0 +140 -3 + 28, 1, 106 );
changeAnime( spep_0 +140 -3 + 44, 1, 108 );
changeAnime( spep_0 +140 -3 + 52, 1, 106 );
changeAnime( spep_0 +140 -3 + 64, 1, 108 );
changeAnime( spep_0 +140 -3 + 68, 1, 106 );
changeAnime( spep_0 +140 -3 + 80, 1, 108 );
changeAnime( spep_0 +140 -3 + 88, 1, 106 );
changeAnime( spep_0 +140 -3 + 126, 1, 108 );

setMoveKey( spep_0 -3 + 140, 1, 103.2, -35.1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 137.7, -6.1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 117.7, -6.1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 115.9, -5.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 120, -6.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 121.4, -19.6 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 105.2, -20.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 102.3, -18.6 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 103.1, -22 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 124.6, -32.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 103.5, -36.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 102.3, -32.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 104.4, -37.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 151.9, -19.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 131.9, -23.3 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 134, -18.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 130.8, -21.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 139.4, -41.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 114.7, -34.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 119.5, -36.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 115.7, -33.8 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 117.5, -37.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 119.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 179.7, -6.6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 161.2, -4.8 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 102.6, -22.6 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 104.5, -19.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 131.3, -23.4 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 115.7, -22 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 113.4, -17.8 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 114.2, -21.9 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 133.5, -16.6 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 115.3, -21.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 113.5, -18.6 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 113.3, -21.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 123.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 100.1, -35.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 104.9, -35.9 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 62.9, -28.5 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 48, -25.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 39, -24.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 33.1, -23.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 29, -22.4 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 26.3, -21.9 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 24.7, -21.6 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 23.9, -21.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 23.6, -21.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 63.5, -21.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 63.3, -21.1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 63.2, -21 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 82.2, -27.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 63.2, -21 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 63.2, -21.1 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 82, -27.3 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 81.8, -27.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 62.6, -20.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 68.3, -22.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 61.4, -20.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 60.4, -20.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 83.9, 29 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 103.2, 72.7 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 115.9, 108.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 125, 136.7 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 135.2, 162.3 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 145.1, 195.1 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 154.1, 214.9 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 161.9, 231.7 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 162.4, 239.5 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 167.5, 250.2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 167.2, 261.9 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 169.5, 266.5 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 170.2, 268.1 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 176.7, 262.9 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 177.1, 263.7 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 177.6, 268.6 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 178.1, 269.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 178.5, 270.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 179, 261.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 179.5, 261.9 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 186, 264.7 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 186.4, 265.6 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 186.9, 266.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 183.4, 269.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 183.9, 270 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 186.3, 270.9 , 0 );
setMoveKey( spep_0 -3 + 331, 1, 186.3, 270.9 , 0 );

a1=0.3;
b1=0.3;

setScaleKey( spep_0 -3 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 159, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 160, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 166, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 167, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 168, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 183, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 184, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 191, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 192, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 203, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 204, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 207, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 219, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 220, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 227, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 228, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 232, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 234, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 236, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 238, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 240, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 242, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 244, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 256, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 258, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 259, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 260, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 266, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 268, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 270, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 272, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 274, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 276, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 280, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 282, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 284, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 286, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 288, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 290, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 292, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 294, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 296, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 298, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 300, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 302, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 304, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 306, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 308, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 312, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 314, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 316, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 318, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 322, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 324, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 326, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 328, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 331, 1, 0.16, 0.16 );


setRotateKey( spep_0 -3 + 140, 1, 0 );
setRotateKey( spep_0 -3 + 160, 1, 0 );
setRotateKey( spep_0 -3 + 166, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );
setRotateKey( spep_0 -3 + 168, 1, -45 );
setRotateKey( spep_0 -3 + 174, 1, -45 );
setRotateKey( spep_0 -3 + 176, 1, -40 );
setRotateKey( spep_0 -3 + 182, 1, -40 );
setRotateKey( spep_0 -3 + 183, 1, -40 );
setRotateKey( spep_0 -3 + 184, 1, -5 );
setRotateKey( spep_0 -3 + 190, 1, -5 );
setRotateKey( spep_0 -3 + 191, 1, -5 );
setRotateKey( spep_0 -3 + 192, 1, -40 );
setRotateKey( spep_0 -3 + 202, 1, -40 );
setRotateKey( spep_0 -3 + 203, 1, -40 );
setRotateKey( spep_0 -3 + 204, 1, 10 );
setRotateKey( spep_0 -3 + 206, 1, 10 );
setRotateKey( spep_0 -3 + 207, 1, 10 );
setRotateKey( spep_0 -3 + 208, 1, -45 );
setRotateKey( spep_0 -3 + 218, 1, -45 );
setRotateKey( spep_0 -3 + 219, 1, -45 );
setRotateKey( spep_0 -3 + 220, 1, 5 );
setRotateKey( spep_0 -3 + 226, 1, 5 );
setRotateKey( spep_0 -3 + 227, 1, 5 );
setRotateKey( spep_0 -3 + 228, 1, -45 );
setRotateKey( spep_0 -3 + 265, 1, -45 );
setRotateKey( spep_0 -3 + 266, 1, 0 );
setRotateKey( spep_0 -3 + 331, 1, 0 );

-- ** 音 ** --
--ダッシュ1
SE009 = playSe( spep_0 + 136, 1116 );
stopSe( spep_0 + 160, SE009, 14 );

--ダッシュ2
SE010 = playSe( spep_0 + 136, 9 );
setSeVolumeByWorkId( spep_0 + 136, SE010, 75 );
stopSe( spep_0 + 164, SE010, 10 );

--連続斬り1
SE011 = playSe( spep_0 + 158, 1189 );

--連続斬り2
SE012 = playSe( spep_0 + 160, 1026 );
setSeVolumeByWorkId( spep_0 + 160, SE012, 74 );

--連続斬り3
SE013 = playSe( spep_0 + 164, 1032 );

--連続斬り4
SE014 = playSe( spep_0 + 174, 1032 );
setSeVolumeByWorkId( spep_0 + 174, SE014, 89 );

--連続斬り5
SE015 = playSe( spep_0 + 176, 1016 );

--連続斬り6
SE016 = playSe( spep_0 + 182, 1032 );

--連続斬り7
SE017 = playSe( spep_0 + 188, 1031 );
setSeVolumeByWorkId( spep_0 + 188, SE017, 68 );

--連続斬り8
SE018 = playSe( spep_0 + 190, 1016 );

--連続斬り9
SE019 = playSe( spep_0 + 196, 1032 );
setSeVolumeByWorkId( spep_0 + 196, SE019, 79 );

--連続斬り10
SE020 = playSe( spep_0 + 208, 1032 );

--連続斬り11
SE021 = playSe( spep_0 + 210, 1016 );

--連続斬り12
SE022 = playSe( spep_0 + 214, 1032 );

--連続斬り13
SE023 = playSe( spep_0 + 220, 1031 );
setSeVolumeByWorkId( spep_0 + 220, SE023, 81 );

--連続斬り14
SE024 = playSe( spep_0 + 226, 1032 );
setSeVolumeByWorkId( spep_0 + 226, SE024, 69 );

--蹴る1
SE025 = playSe( spep_0 + 250, 1003 );

--蹴る1
SE026 = playSe( spep_0 + 260, 1187 );
setSeVolumeByWorkId( spep_0 + 260, SE026, 78 );
stopSe( spep_0 + 286, SE026, 50 );

--蹴る1
SE027 = playSe( spep_0 + 260, 1120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 328;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_1

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

--------------------------------------
--手からオーラ出現(336F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 336, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 336, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 336, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 336, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 197, 1, 1 );
setDisp( spep_2 + 336, 1, 0 );
changeAnime( spep_2 + 197, 1, 107 );

setBlendColor( spep_2 -3 + 282, 1, 3, 1.0, 1.0, 0.4, 1.0 );
setBlendColor( spep_2 -3 + 338, 1, 3, 1.0, 1.0, 0.4, 1.0 );
setBlendColor( spep_2 -3 + 339, 1, 3, 1.0, 1.0, 0.4, 0 );

b2=80;

setMoveKey( spep_2 -3 + 200, 1, 397.9, 208.5 +b2, 0 );
setMoveKey( spep_2 -3 + 202, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 208, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 210, 1, 146.9, -102.5 +b2, 0 );
setMoveKey( spep_2 -3 + 212, 1, 146.9, -102.5 +b2, 0 );
setMoveKey( spep_2 -3 + 214, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 216, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 218, 1, 121.6, -40.8 +b2, 0 );
setMoveKey( spep_2 -3 + 220, 1, 126.9, -22.5 +b2, 0 );
setMoveKey( spep_2 -3 + 222, 1, 126.9, -22.5 +b2, 0 );
setMoveKey( spep_2 -3 + 224, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 226, 1, 146.9, -64.4 +b2, 0 );
setMoveKey( spep_2 -3 + 228, 1, 146.9, -48.1 +b2, 0 );
setMoveKey( spep_2 -3 + 230, 1, 146.9, -42.5 +b2, 0 );
setMoveKey( spep_2 -3 + 232, 1, 166.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 234, 1, 166.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 236, 1, 139.5, -77 +b2, 0 );
setMoveKey( spep_2 -3 + 238, 1, 142.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 240, 1, 142.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 242, 1, 162.9, -58.5 +b2, 0 );
setMoveKey( spep_2 -3 + 244, 1, 162.9, -54.5 +b2, 0 );
setMoveKey( spep_2 -3 + 246, 1, 162.9, -54.5 +b2, 0 );
setMoveKey( spep_2 -3 + 248, 1, 162.9, -75.1 +b2, 0 );
setMoveKey( spep_2 -3 + 250, 1, 142.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 252, 1, 142.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 254, 1, 139.2, -86.2 +b2, 0 );
setMoveKey( spep_2 -3 + 256, 1, 138.9, -90.5 +b2, 0 );
setMoveKey( spep_2 -3 + 258, 1, 138.9, -90.5 +b2, 0 );
setMoveKey( spep_2 -3 + 260, 1, 156.6, -70.5 +b2, 0 );
setMoveKey( spep_2 -3 + 262, 1, 170.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 264, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 278, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 280, 1, 166.3, -81 +b2, 0 );
setMoveKey( spep_2 -3 + 282, 1, 194, -106 +b2, 0 );
setMoveKey( spep_2 -3 + 284, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 286, 1, 157.3, -87 +b2, 0 );
setMoveKey( spep_2 -3 + 288, 1, 171.6, -98.8 +b2, 0 );
setMoveKey( spep_2 -3 + 290, 1, 156.9, -84.5 +b2, 0 );
setMoveKey( spep_2 -3 + 292, 1, 154.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 294, 1, 168.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 296, 1, 168.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 298, 1, 162.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 300, 1, 156.9, -84.5 +b2, 0 );
setMoveKey( spep_2 -3 + 302, 1, 152.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 304, 1, 156.9, -76.5 +b2, 0 );
setMoveKey( spep_2 -3 + 306, 1, 156.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 308, 1, 172.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 310, 1, 168.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 312, 1, 168.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 314, 1, 158.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 316, 1, 160.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 318, 1, 160.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 320, 1, 168.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 322, 1, 166.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 324, 1, 166.9, -64.5 +b2, 0 );
setMoveKey( spep_2 -3 + 326, 1, 160.9, -64.5 +b2, 0 );
setMoveKey( spep_2 -3 + 328, 1, 160.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 330, 1, 160.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 332, 1, 166.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 334, 1, 166.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 336, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 339, 1, 146.9, -62.5 +b2, 0 );


setScaleKey( spep_2 -3 + 200, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 202, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 216, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 218, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 220, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 278, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 280, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 282, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 284, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 286, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 288, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 290, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 339, 1, 0.85, 0.85 );

setRotateKey( spep_2 -3 + 200, 1, -75 );
setRotateKey( spep_2 -3 + 339, 1, -75 );


-- ** 音 ** --
--剣でかくなる1
SE029 = playSe( spep_2 + 0, 1026 );
setSeVolumeByWorkId( spep_2 + 0, SE029, 79 );

--剣でかくなる2
SE030 = playSe( spep_2 + 0, 1278 );
setSeVolumeByWorkId( spep_2 + 0, SE030, 126 );

--剣でかくなる3
SE031 = playSe( spep_2 + 18, 1148 );
setSeVolumeByWorkId( spep_2 + 18, SE031, 68 );
stopSe( spep_2 + 74, SE031, 0 );            

--剣でかくなる4
SE032 = playSe( spep_2 + 38, 1114 );

--剣でかくなる5
SE033 = playSe( spep_2 + 38, 1011 );
setSeVolumeByWorkId( spep_2 + 38, SE033, 78 );

--剣でかくなる6
SE034 = playSe( spep_2 + 38, 1145 );
setSeVolumeByWorkId( spep_2 + 38, SE034, 71 );
setPitch( spep_2 + 38, SE034, 300 );
setTimeStretch( SE034, 1.2, 10, 1 );

--オーラ1
SE035 = playSe( spep_2 + 110, 1269 );
setSeVolumeByWorkId( spep_2 + 110, SE035, 43 );
stopSe( spep_2 + 208, SE035, 0 );

--オーラ2
SE036 = playSe( spep_2 + 110, 1036 );
setSeVolumeByWorkId( spep_2 + 110, SE036, 71 );

--オーラ3
SE037 = playSe( spep_2 + 134, 1036 );
setSeVolumeByWorkId( spep_2 + 134, SE037, 71 );

--オーラ4
SE038 = playSe( spep_2 + 158, 1036 );
setSeVolumeByWorkId( spep_2 + 158, SE038, 71 );

--オーラ5
SE039 = playSe( spep_2 + 182, 1036 );
setSeVolumeByWorkId( spep_2 + 182, SE039, 71 );

--剣を振る1
SE040 = playSe( spep_2 + 190, 1004 );
setPitch( spep_2 + 190, SE040, -400 );
setTimeStretch( SE040, 0.73, 10, 1 );

--剣を振る2
SE041 = playSe( spep_2 + 196, 1172 );
setSeVolumeByWorkId( spep_2 + 196, SE041, 71 );
setPitch( spep_2 + 196, SE041, -500 );
setTimeStretch( SE041, 0.67, 10, 1 );

--剣を振る3
SE042 = playSe( spep_2 + 196, 1240 );
setSeVolumeByWorkId( spep_2 + 196, SE042, 191 );
stopSe( spep_2 + 258, SE042, 10 );

--剣を振る4
SE043 = playSe( spep_2 + 196, 1143 );
setSeVolumeByWorkId( spep_2 + 196, SE043, 82 );

--剣を振る5
SE044 = playSe( spep_2 + 200, 1142 );

--剣を振る6
SE045 = playSe( spep_2 + 200, 1217 );
setSeVolumeByWorkId( spep_2 + 200, SE045, 45 );
setPitch( spep_2 + 200, SE045, -500 );
setTimeStretch( SE045, 0.67, 10, 1 );

--敵ヒット1
SE046 = playSe( spep_2 + 208, 1141 );
setSeVolumeByWorkId( spep_2 + 208, SE046, 73 );
setPitch( spep_2 + 208, SE046, -600 );
setTimeStretch( SE046, 0.6, 10, 1 );

--敵ヒット2
SE047 = playSe( spep_2 + 226, 1026 );
--敵ヒット3
SE048 = playSe( spep_2 + 226, 1061 );
setSeVolumeByWorkId( spep_2 + 226, SE048, 63 );

--爆発1
SE049 = playSe( spep_2 + 280, 1024 );

--爆発2
SE050 = playSe( spep_2 + 280, 1068 );
stopSe( spep_2 + 52, SE030, 26 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216 );
endPhase( spep_2 + 326 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ベジットソード構え〜敵を蹴り飛ばす(328F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 328, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 328, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 328, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 328, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --導入→竜巻出現(ef_001)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 328, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 328, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 328, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 328, first_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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
--セリフカットイン
SE001 = playSe( spep_0 + 10, 1018 );

--腕曲げる
SE002 = playSe( spep_0 + 10, 1152 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 64 );
setPitch( spep_0 + 10, SE002, 600 );
setTimeStretch( SE002, 1.4, 10, 1 );

--腕振り切る1
SE003 = playSe( spep_0 + 40, 1122 );

--腕振り切る2
SE004 = playSe( spep_0 + 94, 1209 );
setSeVolumeByWorkId( spep_0 + 94, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 95, SE004, 9 );
setSeVolumeByWorkId( spep_0 + 96, SE004, 21 );
setSeVolumeByWorkId( spep_0 + 97, SE004, 42 );
setSeVolumeByWorkId( spep_0 + 98, SE004, 63 );
stopSe( spep_0 + 124, SE004, 90 );
setStartTimeMs( SE004,  200 );

--腕振り切る3
SE005 = playSe( spep_0 + 86, 1240 );
setSeVolumeByWorkId( spep_0 + 86, SE005, 158 );
stopSe( spep_0 + 120, SE005, 34 );
setTimeStretch( SE005, 0.83, 10, 1 );

--腕振り切る4
SE006 = playSe( spep_0 + 90, 1142 );

--腕振り切る5
SE007 = playSe( spep_0 + 90, 1235 );

--腕振り切る6
SE008 = playSe( spep_0 + 90, 9 );
stopSe( spep_0 + 114, SE008, 34 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE000, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_0 -3 + 160,  10014, 78, 0x100, -1, 0, -82.2, 157.3 );
setEffMoveKey( spep_0 -3 + 160, ctzudodo, -82.2, 157.3 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctzudodo, -28.8, 203.2 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctzudodo, 0.4, 237.3 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzudodo, -7.7, 223.8 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzudodo, 3.5, 242.1 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzudodo, -4.9, 228.1 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzudodo, 6.4, 246.6 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzudodo, -2.3, 232.1 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctzudodo, 9.1, 250.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctzudodo, 0.1, 235.9 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctzudodo, 11.6, 254.6 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctzudodo, 2.4, 239.3 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctzudodo, 13.9, 258.2 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctzudodo, 4.4, 242.5 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctzudodo, 16, 261.5 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctzudodo, 6.3, 245.4 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctzudodo, 18, 264.5 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctzudodo, 8, 248.1 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctzudodo, 19.7, 267.2 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctzudodo, 9.5, 250.4 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctzudodo, 21.2, 269.6 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctzudodo, 10.9, 252.5 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctzudodo, 22.6, 271.7 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctzudodo, 12, 254.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctzudodo, 23.8, 273.5 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzudodo, 13, 255.8 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzudodo, 24.7, 275 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzudodo, 13.8, 257.1 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzudodo, 25.5, 276.2 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzudodo, 14.4, 258 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzudodo, 26.1, 277.1 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzudodo, 14.9, 258.7 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzudodo, 26.5, 277.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzudodo, 15.2, 259.1 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzudodo, 26.6, 278 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzudodo, 26.7, 278 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzudodo, 17.3, 260.5 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzudodo, 35, 283.5 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzudodo, 29.4, 268.1 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzudodo, 43.3, 289 , 0 );

setEffScaleKey( spep_0 -3 + 160, ctzudodo, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 162, ctzudodo, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 164, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_0 -3 + 166, ctzudodo, 2.08, 2.08 );
setEffScaleKey( spep_0 -3 + 168, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_0 -3 + 170, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_0 -3 + 172, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_0 -3 + 174, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 176, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_0 -3 + 178, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 180, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 182, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_0 -3 + 184, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_0 -3 + 186, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_0 -3 + 188, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 190, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 192, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 194, ctzudodo, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 196, ctzudodo, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 198, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 200, ctzudodo, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 202, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 204, ctzudodo, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 206, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 208, ctzudodo, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 210, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 212, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 214, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 216, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 220, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 222, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 230, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 232, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_0 -3 + 234, ctzudodo, 2.51, 2.51 );
setEffScaleKey( spep_0 -3 + 236, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_0 -3 + 238, ctzudodo, 2.56, 2.56 );

setEffRotateKey( spep_0 -3 + 160, ctzudodo, -48.4 );
setEffRotateKey( spep_0 -3 + 238, ctzudodo, -48.4 );

setEffAlphaKey( spep_0 -3 + 160, ctzudodo, 26 );
setEffAlphaKey( spep_0 -3 + 162, ctzudodo, 198 );
setEffAlphaKey( spep_0 -3 + 164, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 230, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 232, ctzudodo, 226 );
setEffAlphaKey( spep_0 -3 + 234, ctzudodo, 140 );
setEffAlphaKey( spep_0 -3 + 236, ctzudodo, 55 );
setEffAlphaKey( spep_0 -3 + 238, ctzudodo, 26 );


-- ** 敵キャラクター ** --
setDisp( spep_0 +137 + 0, 1, 1 );
setDisp( spep_0 +137 + 191, 1, 0 );
changeAnime( spep_0 +137 , 1, 104 );
changeAnime( spep_0 +140 -3 + 20, 1, 108 );
changeAnime( spep_0 +140 -3 + 28, 1, 106 );
changeAnime( spep_0 +140 -3 + 44, 1, 108 );
changeAnime( spep_0 +140 -3 + 52, 1, 106 );
changeAnime( spep_0 +140 -3 + 64, 1, 108 );
changeAnime( spep_0 +140 -3 + 68, 1, 106 );
changeAnime( spep_0 +140 -3 + 80, 1, 108 );
changeAnime( spep_0 +140 -3 + 88, 1, 106 );
changeAnime( spep_0 +140 -3 + 126, 1, 108 );

setMoveKey( spep_0 -3 + 140, 1, 103.2, -35.1 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 137.7, -6.1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 117.7, -6.1 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 115.9, -5.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 120, -6.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 121.4, -19.6 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 105.2, -20.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 102.3, -18.6 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 103.1, -22 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 124.6, -32.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 103.5, -36.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 102.3, -32.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 104.4, -37.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 151.9, -19.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 131.9, -23.3 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 134, -18.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 130.8, -21.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 139.4, -41.3 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 114.7, -34.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 119.5, -36.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 115.7, -33.8 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 117.5, -37.3 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 119.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 179.7, -6.6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 161.2, -4.8 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 102.6, -22.6 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 104.5, -19.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 131.3, -23.4 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 115.7, -22 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 113.4, -17.8 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 114.2, -21.9 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 133.5, -16.6 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 115.3, -21.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 113.5, -18.6 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 113.3, -21.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 123.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 100.1, -35.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 104.9, -35.9 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 62.9, -28.5 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 48, -25.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 39, -24.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 33.1, -23.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 29, -22.4 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 26.3, -21.9 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 24.7, -21.6 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 23.9, -21.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 23.6, -21.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 63.5, -21.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 63.3, -21.1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 63.2, -21 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 82.2, -27.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 63.2, -21 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 63.2, -21.1 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 82, -27.3 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 81.8, -27.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 62.6, -20.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 68.3, -22.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 61.4, -20.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 60.4, -20.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 83.9, 29 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 103.2, 72.7 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 115.9, 108.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 125, 136.7 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 135.2, 162.3 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 145.1, 195.1 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 154.1, 214.9 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 161.9, 231.7 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 162.4, 239.5 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 167.5, 250.2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 167.2, 261.9 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 169.5, 266.5 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 170.2, 268.1 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 176.7, 262.9 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 177.1, 263.7 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 177.6, 268.6 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 178.1, 269.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 178.5, 270.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 179, 261.1 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 179.5, 261.9 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 186, 264.7 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 186.4, 265.6 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 186.9, 266.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 183.4, 269.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 183.9, 270 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 186.3, 270.9 , 0 );
setMoveKey( spep_0 -3 + 331, 1, 186.3, 270.9 , 0 );

a1=0.3;
b1=0.3;

setScaleKey( spep_0 -3 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 159, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 160, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 166, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 167, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 168, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 183, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 184, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 191, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 192, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 203, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 204, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 207, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 219, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 220, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 227, 1, 1.5 +a1, 1.5 +b1 );--
setScaleKey( spep_0 -3 + 228, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 232, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 234, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 236, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 238, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 240, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 242, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 244, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 256, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 258, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 259, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 260, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 266, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 268, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 270, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 272, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 274, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 276, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 280, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 282, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 284, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 286, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 288, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 290, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 292, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 294, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 296, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 298, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 300, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 302, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 304, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 306, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 308, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 312, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 314, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 316, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 318, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 322, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 324, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 326, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 328, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 331, 1, 0.16, 0.16 );


setRotateKey( spep_0 -3 + 140, 1, 0 );
setRotateKey( spep_0 -3 + 160, 1, 0 );
setRotateKey( spep_0 -3 + 166, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );
setRotateKey( spep_0 -3 + 168, 1, -45 );
setRotateKey( spep_0 -3 + 174, 1, -45 );
setRotateKey( spep_0 -3 + 176, 1, -40 );
setRotateKey( spep_0 -3 + 182, 1, -40 );
setRotateKey( spep_0 -3 + 183, 1, -40 );
setRotateKey( spep_0 -3 + 184, 1, -5 );
setRotateKey( spep_0 -3 + 190, 1, -5 );
setRotateKey( spep_0 -3 + 191, 1, -5 );
setRotateKey( spep_0 -3 + 192, 1, -40 );
setRotateKey( spep_0 -3 + 202, 1, -40 );
setRotateKey( spep_0 -3 + 203, 1, -40 );
setRotateKey( spep_0 -3 + 204, 1, 10 );
setRotateKey( spep_0 -3 + 206, 1, 10 );
setRotateKey( spep_0 -3 + 207, 1, 10 );
setRotateKey( spep_0 -3 + 208, 1, -45 );
setRotateKey( spep_0 -3 + 218, 1, -45 );
setRotateKey( spep_0 -3 + 219, 1, -45 );
setRotateKey( spep_0 -3 + 220, 1, 5 );
setRotateKey( spep_0 -3 + 226, 1, 5 );
setRotateKey( spep_0 -3 + 227, 1, 5 );
setRotateKey( spep_0 -3 + 228, 1, -45 );
setRotateKey( spep_0 -3 + 265, 1, -45 );
setRotateKey( spep_0 -3 + 266, 1, 0 );
setRotateKey( spep_0 -3 + 331, 1, 0 );

-- ** 音 ** --
--ダッシュ1
SE009 = playSe( spep_0 + 136, 1116 );
stopSe( spep_0 + 160, SE009, 14 );

--ダッシュ2
SE010 = playSe( spep_0 + 136, 9 );
setSeVolumeByWorkId( spep_0 + 136, SE010, 75 );
stopSe( spep_0 + 164, SE010, 10 );

--連続斬り1
SE011 = playSe( spep_0 + 158, 1189 );

--連続斬り2
SE012 = playSe( spep_0 + 160, 1026 );
setSeVolumeByWorkId( spep_0 + 160, SE012, 74 );

--連続斬り3
SE013 = playSe( spep_0 + 164, 1032 );

--連続斬り4
SE014 = playSe( spep_0 + 174, 1032 );
setSeVolumeByWorkId( spep_0 + 174, SE014, 89 );

--連続斬り5
SE015 = playSe( spep_0 + 176, 1016 );

--連続斬り6
SE016 = playSe( spep_0 + 182, 1032 );

--連続斬り7
SE017 = playSe( spep_0 + 188, 1031 );
setSeVolumeByWorkId( spep_0 + 188, SE017, 68 );

--連続斬り8
SE018 = playSe( spep_0 + 190, 1016 );

--連続斬り9
SE019 = playSe( spep_0 + 196, 1032 );
setSeVolumeByWorkId( spep_0 + 196, SE019, 79 );

--連続斬り10
SE020 = playSe( spep_0 + 208, 1032 );

--連続斬り11
SE021 = playSe( spep_0 + 210, 1016 );

--連続斬り12
SE022 = playSe( spep_0 + 214, 1032 );

--連続斬り13
SE023 = playSe( spep_0 + 220, 1031 );
setSeVolumeByWorkId( spep_0 + 220, SE023, 81 );

--連続斬り14
SE024 = playSe( spep_0 + 226, 1032 );
setSeVolumeByWorkId( spep_0 + 226, SE024, 69 );

--蹴る1
SE025 = playSe( spep_0 + 250, 1003 );

--蹴る1
SE026 = playSe( spep_0 + 260, 1187 );
setSeVolumeByWorkId( spep_0 + 260, SE026, 78 );
stopSe( spep_0 + 286, SE026, 50 );

--蹴る1
SE027 = playSe( spep_0 + 260, 1120 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 328;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
--entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;


--------------------------------------
--手からオーラ出現(336F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 336, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 336, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --手からオーラ出現（カットイン）(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 336, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 336, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 197, 1, 1 );
setDisp( spep_2 + 336, 1, 0 );
changeAnime( spep_2 + 197, 1, 107 );

setBlendColor( spep_2 -3 + 282, 1, 3, 1.0, 1.0, 0.4, 1.0 );
setBlendColor( spep_2 -3 + 338, 1, 3, 1.0, 1.0, 0.4, 1.0 );
setBlendColor( spep_2 -3 + 339, 1, 3, 1.0, 1.0, 0.4, 0 );

b2=80;

setMoveKey( spep_2 -3 + 200, 1, 397.9, 208.5 +b2, 0 );
setMoveKey( spep_2 -3 + 202, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 208, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 210, 1, 146.9, -102.5 +b2, 0 );
setMoveKey( spep_2 -3 + 212, 1, 146.9, -102.5 +b2, 0 );
setMoveKey( spep_2 -3 + 214, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 216, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 218, 1, 121.6, -40.8 +b2, 0 );
setMoveKey( spep_2 -3 + 220, 1, 126.9, -22.5 +b2, 0 );
setMoveKey( spep_2 -3 + 222, 1, 126.9, -22.5 +b2, 0 );
setMoveKey( spep_2 -3 + 224, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 226, 1, 146.9, -64.4 +b2, 0 );
setMoveKey( spep_2 -3 + 228, 1, 146.9, -48.1 +b2, 0 );
setMoveKey( spep_2 -3 + 230, 1, 146.9, -42.5 +b2, 0 );
setMoveKey( spep_2 -3 + 232, 1, 166.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 234, 1, 166.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 236, 1, 139.5, -77 +b2, 0 );
setMoveKey( spep_2 -3 + 238, 1, 142.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 240, 1, 142.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 242, 1, 162.9, -58.5 +b2, 0 );
setMoveKey( spep_2 -3 + 244, 1, 162.9, -54.5 +b2, 0 );
setMoveKey( spep_2 -3 + 246, 1, 162.9, -54.5 +b2, 0 );
setMoveKey( spep_2 -3 + 248, 1, 162.9, -75.1 +b2, 0 );
setMoveKey( spep_2 -3 + 250, 1, 142.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 252, 1, 142.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 254, 1, 139.2, -86.2 +b2, 0 );
setMoveKey( spep_2 -3 + 256, 1, 138.9, -90.5 +b2, 0 );
setMoveKey( spep_2 -3 + 258, 1, 138.9, -90.5 +b2, 0 );
setMoveKey( spep_2 -3 + 260, 1, 156.6, -70.5 +b2, 0 );
setMoveKey( spep_2 -3 + 262, 1, 170.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 264, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 278, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 280, 1, 166.3, -81 +b2, 0 );
setMoveKey( spep_2 -3 + 282, 1, 194, -106 +b2, 0 );
setMoveKey( spep_2 -3 + 284, 1, 156.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 286, 1, 157.3, -87 +b2, 0 );
setMoveKey( spep_2 -3 + 288, 1, 171.6, -98.8 +b2, 0 );
setMoveKey( spep_2 -3 + 290, 1, 156.9, -84.5 +b2, 0 );
setMoveKey( spep_2 -3 + 292, 1, 154.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 294, 1, 168.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 296, 1, 168.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 298, 1, 162.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 300, 1, 156.9, -84.5 +b2, 0 );
setMoveKey( spep_2 -3 + 302, 1, 152.9, -82.5 +b2, 0 );
setMoveKey( spep_2 -3 + 304, 1, 156.9, -76.5 +b2, 0 );
setMoveKey( spep_2 -3 + 306, 1, 156.9, -86.5 +b2, 0 );
setMoveKey( spep_2 -3 + 308, 1, 172.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 310, 1, 168.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 312, 1, 168.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 314, 1, 158.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 316, 1, 160.9, -74.5 +b2, 0 );
setMoveKey( spep_2 -3 + 318, 1, 160.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 320, 1, 168.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 322, 1, 166.9, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 324, 1, 166.9, -64.5 +b2, 0 );
setMoveKey( spep_2 -3 + 326, 1, 160.9, -64.5 +b2, 0 );
setMoveKey( spep_2 -3 + 328, 1, 160.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 330, 1, 160.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 332, 1, 166.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 334, 1, 166.9, -68.5 +b2, 0 );
setMoveKey( spep_2 -3 + 336, 1, 146.9, -62.5 +b2, 0 );
setMoveKey( spep_2 -3 + 339, 1, 146.9, -62.5 +b2, 0 );


setScaleKey( spep_2 -3 + 200, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 202, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 216, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 218, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 220, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 278, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 280, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 282, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 284, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 286, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 288, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 290, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 339, 1, 0.85, 0.85 );

setRotateKey( spep_2 -3 + 200, 1, -75 );
setRotateKey( spep_2 -3 + 339, 1, -75 );


-- ** 音 ** --
--剣でかくなる1
SE029 = playSe( spep_2 + 0, 1026 );
setSeVolumeByWorkId( spep_2 + 0, SE029, 79 );

--剣でかくなる2
SE030 = playSe( spep_2 + 0, 1278 );
setSeVolumeByWorkId( spep_2 + 0, SE030, 126 );

--剣でかくなる3
SE031 = playSe( spep_2 + 18, 1148 );
setSeVolumeByWorkId( spep_2 + 18, SE031, 68 );
stopSe( spep_2 + 74, SE031, 0 );            

--剣でかくなる4
SE032 = playSe( spep_2 + 38, 1114 );

--剣でかくなる5
SE033 = playSe( spep_2 + 38, 1011 );
setSeVolumeByWorkId( spep_2 + 38, SE033, 78 );

--剣でかくなる6
SE034 = playSe( spep_2 + 38, 1145 );
setSeVolumeByWorkId( spep_2 + 38, SE034, 71 );
setPitch( spep_2 + 38, SE034, 300 );
setTimeStretch( SE034, 1.2, 10, 1 );

--オーラ1
SE035 = playSe( spep_2 + 110, 1269 );
setSeVolumeByWorkId( spep_2 + 110, SE035, 43 );
stopSe( spep_2 + 208, SE035, 0 );

--オーラ2
SE036 = playSe( spep_2 + 110, 1036 );
setSeVolumeByWorkId( spep_2 + 110, SE036, 71 );

--オーラ3
SE037 = playSe( spep_2 + 134, 1036 );
setSeVolumeByWorkId( spep_2 + 134, SE037, 71 );

--オーラ4
SE038 = playSe( spep_2 + 158, 1036 );
setSeVolumeByWorkId( spep_2 + 158, SE038, 71 );

--オーラ5
SE039 = playSe( spep_2 + 182, 1036 );
setSeVolumeByWorkId( spep_2 + 182, SE039, 71 );

--剣を振る1
SE040 = playSe( spep_2 + 190, 1004 );
setPitch( spep_2 + 190, SE040, -400 );
setTimeStretch( SE040, 0.73, 10, 1 );

--剣を振る2
SE041 = playSe( spep_2 + 196, 1172 );
setSeVolumeByWorkId( spep_2 + 196, SE041, 71 );
setPitch( spep_2 + 196, SE041, -500 );
setTimeStretch( SE041, 0.67, 10, 1 );

--剣を振る3
SE042 = playSe( spep_2 + 196, 1240 );
setSeVolumeByWorkId( spep_2 + 196, SE042, 191 );
stopSe( spep_2 + 258, SE042, 10 );

--剣を振る4
SE043 = playSe( spep_2 + 196, 1143 );
setSeVolumeByWorkId( spep_2 + 196, SE043, 82 );

--剣を振る5
SE044 = playSe( spep_2 + 200, 1142 );

--剣を振る6
SE045 = playSe( spep_2 + 200, 1217 );
setSeVolumeByWorkId( spep_2 + 200, SE045, 45 );
setPitch( spep_2 + 200, SE045, -500 );
setTimeStretch( SE045, 0.67, 10, 1 );

--敵ヒット1
SE046 = playSe( spep_2 + 208, 1141 );
setSeVolumeByWorkId( spep_2 + 208, SE046, 73 );
setPitch( spep_2 + 208, SE046, -600 );
setTimeStretch( SE046, 0.6, 10, 1 );

--敵ヒット2
SE047 = playSe( spep_2 + 226, 1026 );
--敵ヒット3
SE048 = playSe( spep_2 + 226, 1061 );
setSeVolumeByWorkId( spep_2 + 226, SE048, 63 );

--爆発1
SE049 = playSe( spep_2 + 280, 1024 );

--爆発2
SE050 = playSe( spep_2 + 280, 1068 );
stopSe( spep_2 + 52, SE030, 26 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216 );
endPhase( spep_2 + 326 );

end