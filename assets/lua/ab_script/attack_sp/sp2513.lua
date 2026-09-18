--1026160:孫悟空_亀仙流演舞
--sp_effect_b1_00241
--sp2513

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
SP_01 = 161458; --開幕〜カットイン ef_001
SP_02 = 161460; --パンチ〜フィニッシュ(敵の手前に配置) ef_002
SP_03 = 161462; --パンチ〜フィニッシュ(敵の奥に配置) ef_003

--敵側
SP_01r = 161459; --開幕〜カットイン　ef_001r
SP_02r = 161461; --パンチ〜フィニッシュ(敵の手前に配置) ef_002r
SP_03r = 161463; --パンチ〜フィニッシュ(敵の奥に配置) ef_003r

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カットイン(208F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜カットイン   ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 208, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 208, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 208, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 208 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 208 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 208, first_f, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 112;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 222, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 10, 1004, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 74, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 98, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1233, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 120, 1006, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 126, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE009, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 208 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 208;

--//////////カードカットインテンプレ
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
end

SE_CUTIN = playSe( spep_1, SE_05);
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- パンチ〜フィニッシュ(542F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --パンチ〜フィニッシュ(敵の手前に配置) ef_002

setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 542, punch_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 542, punch_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 542, punch_f, 0 );

setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 542, punch_f, 255 );


punch_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --パンチ〜フィニッシュ(敵の奥に配置) ef_003

setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 542, punch_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 542, punch_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 542, punch_b, 0 );

setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 542, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 26, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 1, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 2, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 3, 1, 165.9, -132.3 , 0 );
setMoveKey( spep_2 + 4, 1, 165.9, -132.3 , 0 );
setMoveKey( spep_2 + 5, 1, 172.3, -132.4 , 0 );
setMoveKey( spep_2 + 6, 1, 172.3, -132.4 , 0 );
setMoveKey( spep_2 + 7, 1, 179.4, -132.5 , 0 );
setMoveKey( spep_2 + 8, 1, 179.4, -132.5 , 0 );
setMoveKey( spep_2 + 9, 1, 187.1, -132.6 , 0 );
setMoveKey( spep_2 + 10, 1, 187.1, -132.6 , 0 );
setMoveKey( spep_2 + 11, 1, 195.4, -132.7 , 0 );
setMoveKey( spep_2 + 12, 1, 195.4, -132.7 , 0 );
setMoveKey( spep_2 + 13, 1, 204.3, -132.9 , 0 );
setMoveKey( spep_2 + 14, 1, 204.3, -132.9 , 0 );
setMoveKey( spep_2 + 15, 1, 252.6, -127.4 , 0 );
setMoveKey( spep_2 + 16, 1, 252.6, -127.4 , 0 );
setMoveKey( spep_2 + 17, 1, 309.7, -120.9 , 0 );
setMoveKey( spep_2 + 18, 1, 309.7, -120.9 , 0 );
setMoveKey( spep_2 + 19, 1, 375.5, -113.5 , 0 );
setMoveKey( spep_2 + 20, 1, 375.5, -113.5 , 0 );
setMoveKey( spep_2 + 21, 1, 450, -105 , 0 );
setMoveKey( spep_2 + 22, 1, 450, -105 , 0 );
setMoveKey( spep_2 + 23, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 24, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 25, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 26, 1, 600, -105 , 0 );

setScaleKey( spep_2 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 1, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 3, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 4, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 5, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 7, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 9, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 11, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 13, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 15, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 17, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 19, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 21, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 23, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 25, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 26, 1, 1.14, 1.14 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 26, 1, 0 );

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 88, 0, 34, -1);
SE012 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 44, 0, 20, -1);
SE013 = playSeVer2( spep_2 + 14, 1332, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 542 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 48, 1, 1 );
setDisp( spep_2 + 89, 1, 0 );
setDisp( spep_2 + 90, 1, 0 );
setDisp( spep_2 + 143, 1, 1 );
setDisp( spep_2 + 144, 1, 1 );
setDisp( spep_2 + 327, 1, 0 );
setDisp( spep_2 + 328, 1, 0 );
setDisp( spep_2 + 373, 1, 1 );
setDisp( spep_2 + 374, 1, 1 );
setDisp( spep_2 + 433, 1, 0 );
setDisp( spep_2 + 434, 1, 0 );

changeAnime( spep_2 + 48, 1, 118 );
changeAnime( spep_2 + 61, 1, 107 );
changeAnime( spep_2 + 62, 1, 107 );
changeAnime( spep_2 + 143, 1, 106 );
changeAnime( spep_2 + 144, 1, 106 );
changeAnime( spep_2 + 187, 1, 108 );
changeAnime( spep_2 + 188, 1, 108 );
changeAnime( spep_2 + 257, 1, 5 );
changeAnime( spep_2 + 258, 1, 5 );
changeAnime( spep_2 + 373, 1, 107 );
changeAnime( spep_2 + 374, 1, 107 );

setMoveKey( spep_2 + 48, 1, 885.5, -100 , 0 );
setMoveKey( spep_2 + 49, 1, 778.8, -146.1 , 0 );
setMoveKey( spep_2 + 50, 1, 778.8, -146.1 , 0 );
setMoveKey( spep_2 + 51, 1, 672.1, -192.2 , 0 );
setMoveKey( spep_2 + 52, 1, 672.1, -192.2 , 0 );
setMoveKey( spep_2 + 53, 1, 565.3, -238.3 , 0 );
setMoveKey( spep_2 + 54, 1, 565.3, -238.3 , 0 );
setMoveKey( spep_2 + 55, 1, 542.7, -280.7 , 0 );
setMoveKey( spep_2 + 56, 1, 542.7, -280.7 , 0 );
setMoveKey( spep_2 + 57, 1, 460, -291 , 0 );
setMoveKey( spep_2 + 58, 1, 460, -291 , 0 );
setMoveKey( spep_2 + 59, 1, 667.9, -468.8 , 0 );
setMoveKey( spep_2 + 60, 1, 667.9, -468.8 , 0 );

setMoveKey( spep_2 + 61, 1, 438.6, -360.8 , 0 );
setMoveKey( spep_2 + 62, 1, 438.6, -360.8 , 0 );
setMoveKey( spep_2 + 63, 1, 308.6, -247.5 , 0 );
setMoveKey( spep_2 + 64, 1, 308.6, -247.5 , 0 );
setMoveKey( spep_2 + 65, 1, 172.8, -128.9 , 0 );
setMoveKey( spep_2 + 66, 1, 172.8, -128.9 , 0 );
setMoveKey( spep_2 + 67, 1, 320.1, -285.4 , 0 );
setMoveKey( spep_2 + 68, 1, 320.1, -285.4 , 0 );
setMoveKey( spep_2 + 69, 1, 185.1, -155.1 , 0 );
setMoveKey( spep_2 + 70, 1, 185.1, -155.1 , 0 );
setMoveKey( spep_2 + 71, 1, 190.7, -150.2 , 0 );
setMoveKey( spep_2 + 72, 1, 190.7, -150.2 , 0 );
setMoveKey( spep_2 + 73, 1, 196, -149.9 , 0 );
setMoveKey( spep_2 + 74, 1, 196, -149.9 , 0 );
setMoveKey( spep_2 + 75, 1, 200.8, -158.3 , 0 );
setMoveKey( spep_2 + 76, 1, 200.8, -158.3 , 0 );
setMoveKey( spep_2 + 77, 1, 205.3, -158.4 , 0 );
setMoveKey( spep_2 + 78, 1, 205.3, -158.4 , 0 );
setMoveKey( spep_2 + 79, 1, 209.4, -167.1 , 0 );
setMoveKey( spep_2 + 80, 1, 209.4, -167.1 , 0 );
setMoveKey( spep_2 + 81, 1, 213.1, -165.5 , 0 );
setMoveKey( spep_2 + 82, 1, 213.1, -165.5 , 0 );
setMoveKey( spep_2 + 83, 1, 216.4, -163.5 , 0 );
setMoveKey( spep_2 + 84, 1, 216.4, -163.5 , 0 );
setMoveKey( spep_2 + 85, 1, 219.3, -171.1 , 0 );
setMoveKey( spep_2 + 86, 1, 219.3, -171.1 , 0 );
setMoveKey( spep_2 + 87, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 88, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 89, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 90, 1, 221.9, -173.5 , 0 );

setMoveKey( spep_2 + 143, 1, 215.4, 165.3 , 0 );
setMoveKey( spep_2 + 144, 1, 215.4, 165.3 , 0 );
setMoveKey( spep_2 + 145, 1, 339.5, 201.3 , 0 );
setMoveKey( spep_2 + 146, 1, 339.5, 201.3 , 0 );
setMoveKey( spep_2 + 147, 1, 533.6, 282.3 , 0 );
setMoveKey( spep_2 + 148, 1, 533.6, 282.3 , 0 );
setMoveKey( spep_2 + 149, 1, 532.4, 285 , 0 );
setMoveKey( spep_2 + 150, 1, 532.4, 285 , 0 );
setMoveKey( spep_2 + 151, 1, 420.7, 227.6 , 0 );
setMoveKey( spep_2 + 152, 1, 420.7, 227.6 , 0 );
setMoveKey( spep_2 + 153, 1, 425.3, 225 , 0 );
setMoveKey( spep_2 + 154, 1, 425.3, 225 , 0 );
setMoveKey( spep_2 + 155, 1, 412.4, 212.2 , 0 );
setMoveKey( spep_2 + 156, 1, 412.4, 212.2 , 0 );
setMoveKey( spep_2 + 157, 1, 425.9, 224.2 , 0 );
setMoveKey( spep_2 + 158, 1, 425.9, 224.2 , 0 );
setMoveKey( spep_2 + 159, 1, 417.8, 236.1 , 0 );
setMoveKey( spep_2 + 160, 1, 417.8, 236.1 , 0 );
setMoveKey( spep_2 + 161, 1, 433.1, 227.7 , 0 );
setMoveKey( spep_2 + 162, 1, 433.1, 227.7 , 0 );
setMoveKey( spep_2 + 163, 1, 432.8, 249.2 , 0 );
setMoveKey( spep_2 + 164, 1, 432.8, 249.2 , 0 );
setMoveKey( spep_2 + 165, 1, 455.9, 240.5 , 0 );
setMoveKey( spep_2 + 166, 1, 455.9, 240.5 , 0 );
setMoveKey( spep_2 + 167, 1, 525.9, 240.5 , 0 );
setMoveKey( spep_2 + 168, 1, 525.9, 240.5 , 0 );
setMoveKey( spep_2 + 169, 1, 655.4, 271.6 , 0 );
setMoveKey( spep_2 + 170, 1, 655.4, 271.6 , 0 );
setMoveKey( spep_2 + 171, 1, 660.4, 271.6 , 0 );
setMoveKey( spep_2 + 172, 1, 660.4, 271.6 , 0 );
setMoveKey( spep_2 + 173, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 174, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 175, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 176, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 177, 1, 605.4, 271.6, 0 );
setMoveKey( spep_2 + 178, 1, 605.4, 271.6 , 0 );
setMoveKey( spep_2 + 179, 1, 550.4, 241.6 , 0 );
setMoveKey( spep_2 + 180, 1, 550.4, 241.6 , 0 );
setMoveKey( spep_2 + 181, 1, 490.4, 235.6 , 0 );
setMoveKey( spep_2 + 182, 1, 490.4, 235.6 , 0 );
setMoveKey( spep_2 + 183, 1, 435.4, 221.6 , 0 );
setMoveKey( spep_2 + 184, 1, 435.4, 221.6 , 0 );
setMoveKey( spep_2 + 185, 1, 355.4, 81.6 , 0 );
setMoveKey( spep_2 + 186, 1, 355.4, 81.6 , 0 );

setMoveKey( spep_2 + 187, 1, 326.9, 44.3 , 0 );
setMoveKey( spep_2 + 188, 1, 326.9, 44.3 , 0 );
setMoveKey( spep_2 + 189, 1, 376.9, 44.3 , 0 );
setMoveKey( spep_2 + 190, 1, 376.9, 44.3 , 0 );
setMoveKey( spep_2 + 191, 1, 236.9, 44.3 , 0 );
setMoveKey( spep_2 + 192, 1, 236.9, 44.3 , 0 );
setMoveKey( spep_2 + 193, 1, 306.9, 44.3  , 0 );
setMoveKey( spep_2 + 194, 1, 306.9, 44.3  , 0 );
setMoveKey( spep_2 + 195, 1, 256.9, 154.3  , 0 );
setMoveKey( spep_2 + 196, 1, 256.9, 154.3  , 0 );
setMoveKey( spep_2 + 197, 1, 386.3, 238.7 , 0 );
setMoveKey( spep_2 + 198, 1, 386.3, 238.7 , 0 );
setMoveKey( spep_2 + 199, 1, 436.3, 268.7 , 0 );
setMoveKey( spep_2 + 200, 1, 436.3, 268.7 , 0 );
setMoveKey( spep_2 + 201, 1, 505.3, 288.7 , 0 );
setMoveKey( spep_2 + 202, 1, 505.3, 288.7 , 0 );
setMoveKey( spep_2 + 203, 1, 555.3, 338.7 , 0 );
setMoveKey( spep_2 + 204, 1, 555.3, 338.7 , 0 );
setMoveKey( spep_2 + 205, 1, 570.3, 343.7 , 0 );
setMoveKey( spep_2 + 206, 1, 570.3, 343.7 , 0 );
setMoveKey( spep_2 + 207, 1, 560.3, 343.7 , 0 );
setMoveKey( spep_2 + 208, 1, 560.3, 343.7 , 0 );
setMoveKey( spep_2 + 209, 1, 570.3, 350.7 , 0 );
setMoveKey( spep_2 + 210, 1, 570.3, 350.7 , 0 );
setMoveKey( spep_2 + 211, 1, 573.3, 353.7 , 0 );
setMoveKey( spep_2 + 212, 1, 573.3, 353.7 , 0 );
setMoveKey( spep_2 + 213, 1, 576.3, 356.7 , 0 );
setMoveKey( spep_2 + 214, 1, 576.3, 356.7 , 0 );
setMoveKey( spep_2 + 215, 1, 579.3, 359.7 , 0 );
setMoveKey( spep_2 + 216, 1, 579.3, 359.7 , 0 );
setMoveKey( spep_2 + 217, 1, 581.3, 361.7 , 0 );
setMoveKey( spep_2 + 218, 1, 581.3, 361.7 , 0 );
setMoveKey( spep_2 + 219, 1, 584.3, 364.7 , 0 );
setMoveKey( spep_2 + 220, 1, 584.3, 364.7 , 0 );
setMoveKey( spep_2 + 221, 1, 587.3, 367.7 , 0 );
setMoveKey( spep_2 + 222, 1, 587.3, 367.7 , 0 );
setMoveKey( spep_2 + 223, 1, 590.3, 370.7 , 0 );
setMoveKey( spep_2 + 224, 1, 590.3, 370.7 , 0 );
setMoveKey( spep_2 + 225, 1, 593.5, 373.9 , 0 );
setMoveKey( spep_2 + 226, 1, 593.5, 373.9 , 0 );
setMoveKey( spep_2 + 227, 1, 596.5, 376.9 , 0 );
setMoveKey( spep_2 + 228, 1, 596.5, 376.9 , 0 );
setMoveKey( spep_2 + 229, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 230, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 231, 1, 602.5, 381.9 , 0 );
setMoveKey( spep_2 + 232, 1, 602.5, 381.9 , 0 );
setMoveKey( spep_2 + 233, 1, 604.5, 383.9 , 0 );
setMoveKey( spep_2 + 234, 1, 604.5, 383.9 , 0 );
setMoveKey( spep_2 + 235, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 236, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 237, 1, 575.5, 355.9 , 0 );
setMoveKey( spep_2 + 238, 1, 575.5, 355.9 , 0 );
setMoveKey( spep_2 + 239, 1, 560.5, 340.9 , 0 );
setMoveKey( spep_2 + 240, 1, 560.5, 340.9 , 0 );
setMoveKey( spep_2 + 241, 1, 550.3, 330.7 , 0 );
setMoveKey( spep_2 + 242, 1, 550.3, 330.7 , 0 );
setMoveKey( spep_2 + 243, 1, 535.3, 320.7 , 0 );
setMoveKey( spep_2 + 244, 1, 535.3, 320.7 , 0 );
setMoveKey( spep_2 + 245, 1, 510.3, 305.7 , 0 );
setMoveKey( spep_2 + 246, 1, 510.3, 305.7 , 0 );
setMoveKey( spep_2 + 247, 1, 480.3, 285.7 , 0 );
setMoveKey( spep_2 + 248, 1, 480.3, 285.7 , 0 );
setMoveKey( spep_2 + 249, 1, 450.3, 265.7 , 0 );
setMoveKey( spep_2 + 250, 1, 450.3, 265.7 , 0 );
setMoveKey( spep_2 + 251, 1, 420.3, 235.7 , 0 );
setMoveKey( spep_2 + 252, 1, 420.3, 235.7 , 0 );
setMoveKey( spep_2 + 253, 1, 380.3, 200.7 , 0 );
setMoveKey( spep_2 + 254, 1, 380.3, 200.7 , 0 );
setMoveKey( spep_2 + 255, 1, 340.6, 165.9 , 0 );
setMoveKey( spep_2 + 256, 1, 340.6, 165.9 , 0 );
setMoveKey( spep_2 + 257, 1, 340.2, -40.5 , 0 );
setMoveKey( spep_2 + 258, 1, 340.2, -40.5 , 0 );
setMoveKey( spep_2 + 259, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 260, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 261, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 262, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 263, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 264, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 265, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 266, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 267, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 268, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 269, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 270, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 271, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 272, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 273, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 274, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 275, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 276, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 277, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 278, 1, 270.1, -40.5 , 0 );

setMoveKey( spep_2 + 279, 1, 125.5, 112.4 , 0 );
setMoveKey( spep_2 + 280, 1, 125.5, 112.4 , 0 );
setMoveKey( spep_2 + 281, 1, 155.5, 185.9 , 0 );
setMoveKey( spep_2 + 282, 1, 155.5, 185.9 , 0 );
setMoveKey( spep_2 + 283, 1, 178.8, 255.7 , 0 );
setMoveKey( spep_2 + 284, 1, 178.8, 255.7 , 0 );
setMoveKey( spep_2 + 285, 1, 205.3, 319.9 , 0 );
setMoveKey( spep_2 + 286, 1, 205.3, 319.9 , 0 );
setMoveKey( spep_2 + 287, 1, 217.3, 370.9 , 0 );
setMoveKey( spep_2 + 288, 1, 217.3, 370.9 , 0 );
setMoveKey( spep_2 + 289, 1, 230.3, 380.2 , 0 );
setMoveKey( spep_2 + 290, 1, 230.3, 380.2 , 0 );
setMoveKey( spep_2 + 291, 1, 242.3, 390.2 , 0 );
setMoveKey( spep_2 + 292, 1, 242.3, 390.2 , 0 );
setMoveKey( spep_2 + 293, 1, 245.3, 405.2, 0 );
setMoveKey( spep_2 + 294, 1, 245.3, 405.2 , 0 );
setMoveKey( spep_2 + 295, 1, 248.2, 395.2 , 0 );
setMoveKey( spep_2 + 296, 1, 248.2, 395.2 , 0 );
setMoveKey( spep_2 + 297, 1, 251.4, 382.2 , 0 );
setMoveKey( spep_2 + 298, 1, 251.4, 382.2 , 0 );
setMoveKey( spep_2 + 299, 1, 253.4, 384.2, 0 );
setMoveKey( spep_2 + 300, 1, 253.4, 384.2 , 0 );
setMoveKey( spep_2 + 301, 1, 255.4, 375.2 , 0 );
setMoveKey( spep_2 + 302, 1, 255.4, 375.2 , 0 );
setMoveKey( spep_2 + 303, 1, 253.4, 365.2 , 0 );
setMoveKey( spep_2 + 304, 1, 253.4, 365.2 , 0 );
setMoveKey( spep_2 + 305, 1, 251.4, 360.2 , 0 );
setMoveKey( spep_2 + 306, 1, 251.4, 360.2  , 0 );
setMoveKey( spep_2 + 307, 1, 248.4, 350.2  , 0 );
setMoveKey( spep_2 + 308, 1, 248.4, 350.2  , 0 );
setMoveKey( spep_2 + 309, 1, 245.4, 340.2  , 0 );
setMoveKey( spep_2 + 310, 1, 245.4, 340.2  , 0 );
setMoveKey( spep_2 + 311, 1, 242.4, 325.2  , 0 );
setMoveKey( spep_2 + 312, 1, 242.4, 325.2  , 0 );
setMoveKey( spep_2 + 313, 1, 240.4, 315.2  , 0 );
setMoveKey( spep_2 + 314, 1, 240.4, 315.2  , 0 );
setMoveKey( spep_2 + 315, 1, 238.4, 305.2  , 0 );
setMoveKey( spep_2 + 316, 1, 238.4, 305.2  , 0 );
setMoveKey( spep_2 + 317, 1, 236.4, 290.2  , 0 );
setMoveKey( spep_2 + 318, 1, 236.4, 290.2  , 0 );
setMoveKey( spep_2 + 319, 1, 234.4, 275.2  , 0 );
setMoveKey( spep_2 + 320, 1, 234.4, 275.2  , 0 );
setMoveKey( spep_2 + 321, 1, 225.4, 260.2  , 0 );
setMoveKey( spep_2 + 322, 1, 225.4, 260.2  , 0 );
setMoveKey( spep_2 + 323, 1, 210.4, 235.2  , 0 );
setMoveKey( spep_2 + 324, 1, 210.4, 235.2  , 0 );
setMoveKey( spep_2 + 325, 1, 200.4, 205.2  , 0 );
setMoveKey( spep_2 + 326, 1, 200.4, 205.2  , 0 );

setMoveKey( spep_2 + 373, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 374, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 375, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 376, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 377, 1, 1006.7, 493.6 , 0 );
setMoveKey( spep_2 + 378, 1, 1006.7, 493.6 , 0 );
setMoveKey( spep_2 + 380, 1, 956.7, 433.6 , 0 );
setMoveKey( spep_2 + 381, 1, 650.1, 463.7 , 0 );
setMoveKey( spep_2 + 382, 1, 650.1, 463.7 , 0 );
setMoveKey( spep_2 + 383, 1, 580.1, 403.7 , 0 );
setMoveKey( spep_2 + 384, 1, 580.1, 403.7 , 0 );
setMoveKey( spep_2 + 385, 1, 500.1, 463.7 , 0 );
setMoveKey( spep_2 + 386, 1, 500.1, 463.7 , 0 );
setMoveKey( spep_2 + 387, 1, 388, 390.5 , 0 );
setMoveKey( spep_2 + 388, 1, 388, 390.5 , 0 );
setMoveKey( spep_2 + 389, 1, 353, 310.8 , 0 );
setMoveKey( spep_2 + 390, 1, 353, 310.8 , 0 );
setMoveKey( spep_2 + 391, 1, 345, 295.8 , 0 );
setMoveKey( spep_2 + 392, 1, 345, 295.8 , 0 );
setMoveKey( spep_2 + 393, 1, 343, 301 , 0 );
setMoveKey( spep_2 + 394, 1, 343, 301 , 0 );
setMoveKey( spep_2 + 395, 1, 338, 321 , 0 );
setMoveKey( spep_2 + 396, 1, 338, 321 , 0 );
setMoveKey( spep_2 + 397, 1, 336, 311.1 , 0 );
setMoveKey( spep_2 + 398, 1, 336, 311.1 , 0 );
setMoveKey( spep_2 + 399, 1, 330, 300.1 , 0 );
setMoveKey( spep_2 + 400, 1, 330, 300.1 , 0 );
setMoveKey( spep_2 + 401, 1, 340.4, 298.5 , 0 );
setMoveKey( spep_2 + 402, 1, 340.4, 298.5 , 0 );
setMoveKey( spep_2 + 403, 1, 324.6, 313.1 , 0 );
setMoveKey( spep_2 + 404, 1, 324.6, 313.1 , 0 );
setMoveKey( spep_2 + 405, 1, 328.2, 325.9 , 0 );
setMoveKey( spep_2 + 406, 1, 328.2, 325.9 , 0 );
setMoveKey( spep_2 + 407, 1, 312.3, 294 , 0 );
setMoveKey( spep_2 + 408, 1, 312.3, 294 , 0 );
setMoveKey( spep_2 + 409, 1, 292.7, 277.2 , 0 );
setMoveKey( spep_2 + 410, 1, 292.7, 277.2 , 0 );
setMoveKey( spep_2 + 411, 1, 287.6, 305.7 , 0 );
setMoveKey( spep_2 + 412, 1, 287.6, 305.7 , 0 );
setMoveKey( spep_2 + 413, 1, 266.9, 229.3 , 0 );
setMoveKey( spep_2 + 414, 1, 266.9, 229.3 , 0 );
setMoveKey( spep_2 + 415, 1, 200.6, 178.2 , 0 );
setMoveKey( spep_2 + 416, 1, 200.6, 178.2 , 0 );
setMoveKey( spep_2 + 417, 1, 158.7, 142.3 , 0 );
setMoveKey( spep_2 + 418, 1, 158.7, 142.3 , 0 );
setMoveKey( spep_2 + 419, 1, 111.2, 101.6 , 0 );
setMoveKey( spep_2 + 420, 1, 111.2, 101.6 , 0 );
setMoveKey( spep_2 + 421, 1, 58.1, 56.1 , 0 );
setMoveKey( spep_2 + 422, 1, 58.1, 56.1 , 0 );
setMoveKey( spep_2 + 423, 1, 3.1, 6.1 , 0 );
setMoveKey( spep_2 + 424, 1, 3.1, 6.1 , 0 );
setMoveKey( spep_2 + 434, 1, 3.1, 6.1 , 0 );

setScaleKey( spep_2 + 48, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 49, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 50, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 51, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 52, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 53, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 54, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 55, 1, 6.05, 6.05 ); 
setScaleKey( spep_2 + 56, 1, 6.05, 6.05 ); 
setScaleKey( spep_2 + 57, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 58, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 59, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 60, 1, 8.25, 8.25 );

setScaleKey( spep_2 + 61, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 62, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 63, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 64, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 65, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 67, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 68, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 69, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 70, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 71, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 72, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 73, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 74, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 75, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 76, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 77, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 78, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 79, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 80, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 81, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 82, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 83, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 85, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 86, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 87, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 88, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 89, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 90, 1, 2.3, 2.3 );

setScaleKey( spep_2 + 143, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 144, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 145, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 146, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 147, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 148, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 149, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 150, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 151, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 152, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 153, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 154, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 163, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 164, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 165, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 166, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 167, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 168, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 169, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 170, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 171, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 172, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 173, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 174, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 181, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 182, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 183, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 184, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 185, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 186, 1, 4.2, 4.2 );

setScaleKey( spep_2 + 187, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 188, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 189, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 190, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 191, 1, 4, 4 );
setScaleKey( spep_2 + 192, 1, 4, 4 );
setScaleKey( spep_2 + 193, 1, 6.2, 6.2 );
setScaleKey( spep_2 + 194, 1, 6.2, 6.2 );
setScaleKey( spep_2 + 195, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 196, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 197, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 198, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 199, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 200, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 201, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 202, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 203, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 204, 1, 4.0, 4.0 );

setScaleKey( spep_2 + 256, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 257, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 258, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 277, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 278, 1, 5.0, 5.0 );

setScaleKey( spep_2 + 279, 1, 1.0, 1.0 );
setScaleKey( spep_2 + 280, 1, 1.0, 1.0 );
setScaleKey( spep_2 + 281, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 282, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 283, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 284, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 285, 1, 0.83, 0.83 ); 
setScaleKey( spep_2 + 286, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 287, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 288, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 289, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 290, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 291, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 292, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 294, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 295, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 296, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 297, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 298, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 299, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 300, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 301, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 302, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 303, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 304, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 305, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 306, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 307, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 308, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 309, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 310, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 311, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 312, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 326, 1, 0.5, 0.5 );

setScaleKey( spep_2 + 373, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 374, 1, 8.78, 8.78 );

setScaleKey( spep_2 + 380, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 381, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 382, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 383, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 384, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 385, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 386, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 387, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 388, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 389, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 390, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 391, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 392, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 393, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 394, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 395, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 396, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 397, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 398, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 399, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 400, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 401, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 402, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 403, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 404, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 405, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 406, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 407, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 408, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 409, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 410, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 411, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 412, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 413, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 414, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 415, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 416, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 417, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 418, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 419, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 420, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 421, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 422, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 423, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 424, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 434, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 48, 1, 7.3 );
setRotateKey( spep_2 + 54, 1, 7.3 );
setRotateKey( spep_2 + 55, 1, 10.3 );
setRotateKey( spep_2 + 56, 1, 10.3 );
setRotateKey( spep_2 + 58, 1, 10.3 );
setRotateKey( spep_2 + 59, 1, 8.3 );
setRotateKey( spep_2 + 60, 1, 8.3 );

setRotateKey( spep_2 + 61, 1, 17.8 );
setRotateKey( spep_2 + 62, 1, 17.8 );
setRotateKey( spep_2 + 63, 1, 17.8 );
setRotateKey( spep_2 + 64, 1, 17.8 );
setRotateKey( spep_2 + 65, 1, 19.8 );
setRotateKey( spep_2 + 66, 1, 19.8 );
setRotateKey( spep_2 + 90, 1, 19.8 );

setRotateKey( spep_2 + 143, 1, -41.5 );
setRotateKey( spep_2 + 144, 1, -41.5 );
setRotateKey( spep_2 + 145, 1, -41.9 );
setRotateKey( spep_2 + 146, 1, -41.9 );
setRotateKey( spep_2 + 147, 1, -40.3 );
setRotateKey( spep_2 + 148, 1, -40.3 );
setRotateKey( spep_2 + 149, 1, -40.3 );
setRotateKey( spep_2 + 150, 1, -40.3 );
setRotateKey( spep_2 + 151, 1, -40.2 );
setRotateKey( spep_2 + 152, 1, -40.2 );
setRotateKey( spep_2 + 156, 1, -40.2 );
setRotateKey( spep_2 + 157, 1, -40.1 );
setRotateKey( spep_2 + 158, 1, -40.1 );
setRotateKey( spep_2 + 171, 1, -40.1 );
setRotateKey( spep_2 + 172, 1, -40.1 );
setRotateKey( spep_2 + 173, 1, -39.8 );
setRotateKey( spep_2 + 174, 1, -39.8 );
setRotateKey( spep_2 + 175, 1, -39.6 );
setRotateKey( spep_2 + 176, 1, -39.6 );
setRotateKey( spep_2 + 177, 1, -39.2 );
setRotateKey( spep_2 + 178, 1, -39.2 );
setRotateKey( spep_2 + 179, 1, -38.7 );
setRotateKey( spep_2 + 180, 1, -38.7 );
setRotateKey( spep_2 + 181, 1, -38.2 );
setRotateKey( spep_2 + 182, 1, -38.2 );
setRotateKey( spep_2 + 183, 1, -37.5 );
setRotateKey( spep_2 + 184, 1, -37.5 );
setRotateKey( spep_2 + 185, 1, -36.8 );
setRotateKey( spep_2 + 186, 1, -36.8 );

setRotateKey( spep_2 + 187, 1, -36.8 );
setRotateKey( spep_2 + 188, 1, -36.8 );
setRotateKey( spep_2 + 189, 1, -32.8 );
setRotateKey( spep_2 + 190, 1, -32.8 );
setRotateKey( spep_2 + 191, 1, -36.8 );
setRotateKey( spep_2 + 192, 1, -36.8 );
setRotateKey( spep_2 + 193, 1, -36.8 );
setRotateKey( spep_2 + 194, 1, -36.8 );
setRotateKey( spep_2 + 195, 1, -36.8 );
setRotateKey( spep_2 + 196, 1, -36.8 );
setRotateKey( spep_2 + 197, 1, -30.8 );
setRotateKey( spep_2 + 198, 1, -30.8 );
setRotateKey( spep_2 + 199, 1, -33.8 );
setRotateKey( spep_2 + 200, 1, -33.8 );
setRotateKey( spep_2 + 201, 1, -36.9 );
setRotateKey( spep_2 + 202, 1, -36.9 );
setRotateKey( spep_2 + 234, 1, -36.9 );
setRotateKey( spep_2 + 236, 1, -37 );
setRotateKey( spep_2 + 238, 1, -37 );
setRotateKey( spep_2 + 240, 1, -37.1 );
setRotateKey( spep_2 + 242, 1, -37.1 );
setRotateKey( spep_2 + 244, 1, -37.2 );
setRotateKey( spep_2 + 246, 1, -37.3 );
setRotateKey( spep_2 + 248, 1, -37.4 );
setRotateKey( spep_2 + 250, 1, -37.6 );
setRotateKey( spep_2 + 252, 1, -37.7 );
setRotateKey( spep_2 + 254, 1, -37.8 );
setRotateKey( spep_2 + 256, 1, -37.8 );
setRotateKey( spep_2 + 257, 1, 30.1 );
setRotateKey( spep_2 + 258, 1, 30.1 );
setRotateKey( spep_2 + 268, 1, 30.1 );
setRotateKey( spep_2 + 278, 1, 30.1 );

setRotateKey( spep_2 + 279, 1, 45 );
setRotateKey( spep_2 + 280, 1, 45 );
setRotateKey( spep_2 + 326, 1, 45 );

setRotateKey( spep_2 + 373, 1, -45.4 );
setRotateKey( spep_2 + 374, 1, -45.4 );
setRotateKey( spep_2 + 384, 1, -45.4 );
setRotateKey( spep_2 + 434, 1, -45.4 );

-- ** 音 ** --
--パンチ
SE014 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1359, "", 0, 0, 0, -1);

--構える
SE016 = playSeVer2( spep_2 + 90, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE016, 151 );
SE017 = playSeVer2( spep_2 + 90, 1233, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 114, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 222, 1004, "", 0, 0, 0, -1);

--蹴り上げる
SE019 = playSeVer2( spep_2 + 136, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 136, 1110, "", 0, 0, 0, -1);

--殴る
SE022 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);

--エルボー
SE025 = playSeVer2( spep_2 + 258, 1190, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE027 = playSeVer2( spep_2 + 298, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE027, 120 );
SE028 = playSeVer2( spep_2 + 298, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE028, 140 );

--向かっていく
SE029 = playSeVer2( spep_2 + 326, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 326, 1264, "",spep_2 + 414, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 326, SE030, 75 );

--蹴り飛ばし
SE031 = playSeVer2( spep_2 + 376, 1359, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 376, 1123, "", 0, 0, 0, -1);

--気弾飛んでくる
SE033 = playSeVer2( spep_2 + 420, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 420, 1215, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_2 + 420, 1044, "", 0, 56, 0, -1);
setSeVolumeByWorkId( spep_2 + 420, SE035, 178 );
SE036 = playSeVer2( spep_2 + 428, 1021, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 432 );
endPhase( spep_2 + 532 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カットイン(208F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開幕〜カットイン   ef_001r

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 208, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 208, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 208, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 208 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 208 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 208, first_f, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 112;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]--

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

--顔カットイン
--SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 222, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 10, 1004, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 74, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 98, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1233, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 120, 1006, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 126, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE009, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 208 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 208;

--//////////カードカットインテンプレ
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

------------------------------------------------------
-- パンチ〜フィニッシュ(542F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --パンチ〜フィニッシュ(敵の手前に配置) ef_002r

setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 542, punch_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 542, punch_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 542, punch_f, 0 );

setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 542, punch_f, 255 );


punch_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --パンチ〜フィニッシュ(敵の奥に配置) ef_003r

setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 542, punch_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 542, punch_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 542, punch_b, 0 );

setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 542, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 26, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 1, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 2, 1, 160, -132.2 , 0 );
setMoveKey( spep_2 + 3, 1, 165.9, -132.3 , 0 );
setMoveKey( spep_2 + 4, 1, 165.9, -132.3 , 0 );
setMoveKey( spep_2 + 5, 1, 172.3, -132.4 , 0 );
setMoveKey( spep_2 + 6, 1, 172.3, -132.4 , 0 );
setMoveKey( spep_2 + 7, 1, 179.4, -132.5 , 0 );
setMoveKey( spep_2 + 8, 1, 179.4, -132.5 , 0 );
setMoveKey( spep_2 + 9, 1, 187.1, -132.6 , 0 );
setMoveKey( spep_2 + 10, 1, 187.1, -132.6 , 0 );
setMoveKey( spep_2 + 11, 1, 195.4, -132.7 , 0 );
setMoveKey( spep_2 + 12, 1, 195.4, -132.7 , 0 );
setMoveKey( spep_2 + 13, 1, 204.3, -132.9 , 0 );
setMoveKey( spep_2 + 14, 1, 204.3, -132.9 , 0 );
setMoveKey( spep_2 + 15, 1, 252.6, -127.4 , 0 );
setMoveKey( spep_2 + 16, 1, 252.6, -127.4 , 0 );
setMoveKey( spep_2 + 17, 1, 309.7, -120.9 , 0 );
setMoveKey( spep_2 + 18, 1, 309.7, -120.9 , 0 );
setMoveKey( spep_2 + 19, 1, 375.5, -113.5 , 0 );
setMoveKey( spep_2 + 20, 1, 375.5, -113.5 , 0 );
setMoveKey( spep_2 + 21, 1, 450, -105 , 0 );
setMoveKey( spep_2 + 22, 1, 450, -105 , 0 );
setMoveKey( spep_2 + 23, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 24, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 25, 1, 600, -105 , 0 );
setMoveKey( spep_2 + 26, 1, 600, -105 , 0 );

setScaleKey( spep_2 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 1, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 3, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 4, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 5, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 7, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 9, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 11, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 12, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 13, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 15, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 17, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 19, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 21, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 23, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 25, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 26, 1, 1.14, 1.14 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 26, 1, 0 );

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 88, 0, 34, -1);
SE012 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 44, 0, 20, -1);
SE013 = playSeVer2( spep_2 + 14, 1332, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 542 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 48, 1, 1 );
setDisp( spep_2 + 89, 1, 0 );
setDisp( spep_2 + 90, 1, 0 );
setDisp( spep_2 + 143, 1, 1 );
setDisp( spep_2 + 144, 1, 1 );
setDisp( spep_2 + 327, 1, 0 );
setDisp( spep_2 + 328, 1, 0 );
setDisp( spep_2 + 373, 1, 1 );
setDisp( spep_2 + 374, 1, 1 );
setDisp( spep_2 + 433, 1, 0 );
setDisp( spep_2 + 434, 1, 0 );

changeAnime( spep_2 + 48, 1, 118 );
changeAnime( spep_2 + 61, 1, 107 );
changeAnime( spep_2 + 62, 1, 107 );
changeAnime( spep_2 + 143, 1, 106 );
changeAnime( spep_2 + 144, 1, 106 );
changeAnime( spep_2 + 187, 1, 108 );
changeAnime( spep_2 + 188, 1, 108 );
changeAnime( spep_2 + 257, 1, 5 );
changeAnime( spep_2 + 258, 1, 5 );
changeAnime( spep_2 + 373, 1, 107 );
changeAnime( spep_2 + 374, 1, 107 );

setMoveKey( spep_2 + 48, 1, 885.5, -100 , 0 );
setMoveKey( spep_2 + 49, 1, 778.8, -146.1 , 0 );
setMoveKey( spep_2 + 50, 1, 778.8, -146.1 , 0 );
setMoveKey( spep_2 + 51, 1, 672.1, -192.2 , 0 );
setMoveKey( spep_2 + 52, 1, 672.1, -192.2 , 0 );
setMoveKey( spep_2 + 53, 1, 565.3, -238.3 , 0 );
setMoveKey( spep_2 + 54, 1, 565.3, -238.3 , 0 );
setMoveKey( spep_2 + 55, 1, 542.7, -280.7 , 0 );
setMoveKey( spep_2 + 56, 1, 542.7, -280.7 , 0 );
setMoveKey( spep_2 + 57, 1, 460, -291 , 0 );
setMoveKey( spep_2 + 58, 1, 460, -291 , 0 );
setMoveKey( spep_2 + 59, 1, 667.9, -468.8 , 0 );
setMoveKey( spep_2 + 60, 1, 667.9, -468.8 , 0 );

setMoveKey( spep_2 + 61, 1, 438.6, -360.8 , 0 );
setMoveKey( spep_2 + 62, 1, 438.6, -360.8 , 0 );
setMoveKey( spep_2 + 63, 1, 308.6, -247.5 , 0 );
setMoveKey( spep_2 + 64, 1, 308.6, -247.5 , 0 );
setMoveKey( spep_2 + 65, 1, 172.8, -128.9 , 0 );
setMoveKey( spep_2 + 66, 1, 172.8, -128.9 , 0 );
setMoveKey( spep_2 + 67, 1, 320.1, -285.4 , 0 );
setMoveKey( spep_2 + 68, 1, 320.1, -285.4 , 0 );
setMoveKey( spep_2 + 69, 1, 185.1, -155.1 , 0 );
setMoveKey( spep_2 + 70, 1, 185.1, -155.1 , 0 );
setMoveKey( spep_2 + 71, 1, 190.7, -150.2 , 0 );
setMoveKey( spep_2 + 72, 1, 190.7, -150.2 , 0 );
setMoveKey( spep_2 + 73, 1, 196, -149.9 , 0 );
setMoveKey( spep_2 + 74, 1, 196, -149.9 , 0 );
setMoveKey( spep_2 + 75, 1, 200.8, -158.3 , 0 );
setMoveKey( spep_2 + 76, 1, 200.8, -158.3 , 0 );
setMoveKey( spep_2 + 77, 1, 205.3, -158.4 , 0 );
setMoveKey( spep_2 + 78, 1, 205.3, -158.4 , 0 );
setMoveKey( spep_2 + 79, 1, 209.4, -167.1 , 0 );
setMoveKey( spep_2 + 80, 1, 209.4, -167.1 , 0 );
setMoveKey( spep_2 + 81, 1, 213.1, -165.5 , 0 );
setMoveKey( spep_2 + 82, 1, 213.1, -165.5 , 0 );
setMoveKey( spep_2 + 83, 1, 216.4, -163.5 , 0 );
setMoveKey( spep_2 + 84, 1, 216.4, -163.5 , 0 );
setMoveKey( spep_2 + 85, 1, 219.3, -171.1 , 0 );
setMoveKey( spep_2 + 86, 1, 219.3, -171.1 , 0 );
setMoveKey( spep_2 + 87, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 88, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 89, 1, 221.9, -173.5 , 0 );
setMoveKey( spep_2 + 90, 1, 221.9, -173.5 , 0 );

setMoveKey( spep_2 + 143, 1, 215.4, 165.3 , 0 );
setMoveKey( spep_2 + 144, 1, 215.4, 165.3 , 0 );
setMoveKey( spep_2 + 145, 1, 339.5, 201.3 , 0 );
setMoveKey( spep_2 + 146, 1, 339.5, 201.3 , 0 );
setMoveKey( spep_2 + 147, 1, 533.6, 282.3 , 0 );
setMoveKey( spep_2 + 148, 1, 533.6, 282.3 , 0 );
setMoveKey( spep_2 + 149, 1, 532.4, 285 , 0 );
setMoveKey( spep_2 + 150, 1, 532.4, 285 , 0 );
setMoveKey( spep_2 + 151, 1, 420.7, 227.6 , 0 );
setMoveKey( spep_2 + 152, 1, 420.7, 227.6 , 0 );
setMoveKey( spep_2 + 153, 1, 425.3, 225 , 0 );
setMoveKey( spep_2 + 154, 1, 425.3, 225 , 0 );
setMoveKey( spep_2 + 155, 1, 412.4, 212.2 , 0 );
setMoveKey( spep_2 + 156, 1, 412.4, 212.2 , 0 );
setMoveKey( spep_2 + 157, 1, 425.9, 224.2 , 0 );
setMoveKey( spep_2 + 158, 1, 425.9, 224.2 , 0 );
setMoveKey( spep_2 + 159, 1, 417.8, 236.1 , 0 );
setMoveKey( spep_2 + 160, 1, 417.8, 236.1 , 0 );
setMoveKey( spep_2 + 161, 1, 433.1, 227.7 , 0 );
setMoveKey( spep_2 + 162, 1, 433.1, 227.7 , 0 );
setMoveKey( spep_2 + 163, 1, 432.8, 249.2 , 0 );
setMoveKey( spep_2 + 164, 1, 432.8, 249.2 , 0 );
setMoveKey( spep_2 + 165, 1, 455.9, 240.5 , 0 );
setMoveKey( spep_2 + 166, 1, 455.9, 240.5 , 0 );
setMoveKey( spep_2 + 167, 1, 525.9, 240.5 , 0 );
setMoveKey( spep_2 + 168, 1, 525.9, 240.5 , 0 );
setMoveKey( spep_2 + 169, 1, 655.4, 271.6 , 0 );
setMoveKey( spep_2 + 170, 1, 655.4, 271.6 , 0 );
setMoveKey( spep_2 + 171, 1, 660.4, 271.6 , 0 );
setMoveKey( spep_2 + 172, 1, 660.4, 271.6 , 0 );
setMoveKey( spep_2 + 173, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 174, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 175, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 176, 1, 665.4, 271.6 , 0 );
setMoveKey( spep_2 + 177, 1, 605.4, 271.6, 0 );
setMoveKey( spep_2 + 178, 1, 605.4, 271.6 , 0 );
setMoveKey( spep_2 + 179, 1, 550.4, 241.6 , 0 );
setMoveKey( spep_2 + 180, 1, 550.4, 241.6 , 0 );
setMoveKey( spep_2 + 181, 1, 490.4, 235.6 , 0 );
setMoveKey( spep_2 + 182, 1, 490.4, 235.6 , 0 );
setMoveKey( spep_2 + 183, 1, 435.4, 221.6 , 0 );
setMoveKey( spep_2 + 184, 1, 435.4, 221.6 , 0 );
setMoveKey( spep_2 + 185, 1, 355.4, 81.6 , 0 );
setMoveKey( spep_2 + 186, 1, 355.4, 81.6 , 0 );

setMoveKey( spep_2 + 187, 1, 326.9, 44.3 , 0 );
setMoveKey( spep_2 + 188, 1, 326.9, 44.3 , 0 );
setMoveKey( spep_2 + 189, 1, 376.9, 44.3 , 0 );
setMoveKey( spep_2 + 190, 1, 376.9, 44.3 , 0 );
setMoveKey( spep_2 + 191, 1, 236.9, 44.3 , 0 );
setMoveKey( spep_2 + 192, 1, 236.9, 44.3 , 0 );
setMoveKey( spep_2 + 193, 1, 306.9, 44.3  , 0 );
setMoveKey( spep_2 + 194, 1, 306.9, 44.3  , 0 );
setMoveKey( spep_2 + 195, 1, 256.9, 154.3  , 0 );
setMoveKey( spep_2 + 196, 1, 256.9, 154.3  , 0 );
setMoveKey( spep_2 + 197, 1, 386.3, 238.7 , 0 );
setMoveKey( spep_2 + 198, 1, 386.3, 238.7 , 0 );
setMoveKey( spep_2 + 199, 1, 436.3, 268.7 , 0 );
setMoveKey( spep_2 + 200, 1, 436.3, 268.7 , 0 );
setMoveKey( spep_2 + 201, 1, 505.3, 288.7 , 0 );
setMoveKey( spep_2 + 202, 1, 505.3, 288.7 , 0 );
setMoveKey( spep_2 + 203, 1, 555.3, 338.7 , 0 );
setMoveKey( spep_2 + 204, 1, 555.3, 338.7 , 0 );
setMoveKey( spep_2 + 205, 1, 570.3, 343.7 , 0 );
setMoveKey( spep_2 + 206, 1, 570.3, 343.7 , 0 );
setMoveKey( spep_2 + 207, 1, 560.3, 343.7 , 0 );
setMoveKey( spep_2 + 208, 1, 560.3, 343.7 , 0 );
setMoveKey( spep_2 + 209, 1, 570.3, 350.7 , 0 );
setMoveKey( spep_2 + 210, 1, 570.3, 350.7 , 0 );
setMoveKey( spep_2 + 211, 1, 573.3, 353.7 , 0 );
setMoveKey( spep_2 + 212, 1, 573.3, 353.7 , 0 );
setMoveKey( spep_2 + 213, 1, 576.3, 356.7 , 0 );
setMoveKey( spep_2 + 214, 1, 576.3, 356.7 , 0 );
setMoveKey( spep_2 + 215, 1, 579.3, 359.7 , 0 );
setMoveKey( spep_2 + 216, 1, 579.3, 359.7 , 0 );
setMoveKey( spep_2 + 217, 1, 581.3, 361.7 , 0 );
setMoveKey( spep_2 + 218, 1, 581.3, 361.7 , 0 );
setMoveKey( spep_2 + 219, 1, 584.3, 364.7 , 0 );
setMoveKey( spep_2 + 220, 1, 584.3, 364.7 , 0 );
setMoveKey( spep_2 + 221, 1, 587.3, 367.7 , 0 );
setMoveKey( spep_2 + 222, 1, 587.3, 367.7 , 0 );
setMoveKey( spep_2 + 223, 1, 590.3, 370.7 , 0 );
setMoveKey( spep_2 + 224, 1, 590.3, 370.7 , 0 );
setMoveKey( spep_2 + 225, 1, 593.5, 373.9 , 0 );
setMoveKey( spep_2 + 226, 1, 593.5, 373.9 , 0 );
setMoveKey( spep_2 + 227, 1, 596.5, 376.9 , 0 );
setMoveKey( spep_2 + 228, 1, 596.5, 376.9 , 0 );
setMoveKey( spep_2 + 229, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 230, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 231, 1, 602.5, 381.9 , 0 );
setMoveKey( spep_2 + 232, 1, 602.5, 381.9 , 0 );
setMoveKey( spep_2 + 233, 1, 604.5, 383.9 , 0 );
setMoveKey( spep_2 + 234, 1, 604.5, 383.9 , 0 );
setMoveKey( spep_2 + 235, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 236, 1, 599.5, 379.9 , 0 );
setMoveKey( spep_2 + 237, 1, 575.5, 355.9 , 0 );
setMoveKey( spep_2 + 238, 1, 575.5, 355.9 , 0 );
setMoveKey( spep_2 + 239, 1, 560.5, 340.9 , 0 );
setMoveKey( spep_2 + 240, 1, 560.5, 340.9 , 0 );
setMoveKey( spep_2 + 241, 1, 550.3, 330.7 , 0 );
setMoveKey( spep_2 + 242, 1, 550.3, 330.7 , 0 );
setMoveKey( spep_2 + 243, 1, 535.3, 320.7 , 0 );
setMoveKey( spep_2 + 244, 1, 535.3, 320.7 , 0 );
setMoveKey( spep_2 + 245, 1, 510.3, 305.7 , 0 );
setMoveKey( spep_2 + 246, 1, 510.3, 305.7 , 0 );
setMoveKey( spep_2 + 247, 1, 480.3, 285.7 , 0 );
setMoveKey( spep_2 + 248, 1, 480.3, 285.7 , 0 );
setMoveKey( spep_2 + 249, 1, 450.3, 265.7 , 0 );
setMoveKey( spep_2 + 250, 1, 450.3, 265.7 , 0 );
setMoveKey( spep_2 + 251, 1, 420.3, 235.7 , 0 );
setMoveKey( spep_2 + 252, 1, 420.3, 235.7 , 0 );
setMoveKey( spep_2 + 253, 1, 380.3, 200.7 , 0 );
setMoveKey( spep_2 + 254, 1, 380.3, 200.7 , 0 );
setMoveKey( spep_2 + 255, 1, 340.6, 165.9 , 0 );
setMoveKey( spep_2 + 256, 1, 340.6, 165.9 , 0 );
setMoveKey( spep_2 + 257, 1, 340.2, -40.5 , 0 );
setMoveKey( spep_2 + 258, 1, 340.2, -40.5 , 0 );
setMoveKey( spep_2 + 259, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 260, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 261, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 262, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 263, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 264, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 265, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 266, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 267, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 268, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 269, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 270, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 271, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 272, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 273, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 274, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 275, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 276, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 277, 1, 270.1, -40.5 , 0 );
setMoveKey( spep_2 + 278, 1, 270.1, -40.5 , 0 );

setMoveKey( spep_2 + 279, 1, 125.5, 112.4 , 0 );
setMoveKey( spep_2 + 280, 1, 125.5, 112.4 , 0 );
setMoveKey( spep_2 + 281, 1, 155.5, 185.9 , 0 );
setMoveKey( spep_2 + 282, 1, 155.5, 185.9 , 0 );
setMoveKey( spep_2 + 283, 1, 178.8, 255.7 , 0 );
setMoveKey( spep_2 + 284, 1, 178.8, 255.7 , 0 );
setMoveKey( spep_2 + 285, 1, 205.3, 319.9 , 0 );
setMoveKey( spep_2 + 286, 1, 205.3, 319.9 , 0 );
setMoveKey( spep_2 + 287, 1, 217.3, 370.9 , 0 );
setMoveKey( spep_2 + 288, 1, 217.3, 370.9 , 0 );
setMoveKey( spep_2 + 289, 1, 230.3, 380.2 , 0 );
setMoveKey( spep_2 + 290, 1, 230.3, 380.2 , 0 );
setMoveKey( spep_2 + 291, 1, 242.3, 390.2 , 0 );
setMoveKey( spep_2 + 292, 1, 242.3, 390.2 , 0 );
setMoveKey( spep_2 + 293, 1, 245.3, 405.2, 0 );
setMoveKey( spep_2 + 294, 1, 245.3, 405.2 , 0 );
setMoveKey( spep_2 + 295, 1, 248.2, 395.2 , 0 );
setMoveKey( spep_2 + 296, 1, 248.2, 395.2 , 0 );
setMoveKey( spep_2 + 297, 1, 251.4, 382.2 , 0 );
setMoveKey( spep_2 + 298, 1, 251.4, 382.2 , 0 );
setMoveKey( spep_2 + 299, 1, 253.4, 384.2, 0 );
setMoveKey( spep_2 + 300, 1, 253.4, 384.2 , 0 );
setMoveKey( spep_2 + 301, 1, 255.4, 375.2 , 0 );
setMoveKey( spep_2 + 302, 1, 255.4, 375.2 , 0 );
setMoveKey( spep_2 + 303, 1, 253.4, 365.2 , 0 );
setMoveKey( spep_2 + 304, 1, 253.4, 365.2 , 0 );
setMoveKey( spep_2 + 305, 1, 251.4, 360.2 , 0 );
setMoveKey( spep_2 + 306, 1, 251.4, 360.2  , 0 );
setMoveKey( spep_2 + 307, 1, 248.4, 350.2  , 0 );
setMoveKey( spep_2 + 308, 1, 248.4, 350.2  , 0 );
setMoveKey( spep_2 + 309, 1, 245.4, 340.2  , 0 );
setMoveKey( spep_2 + 310, 1, 245.4, 340.2  , 0 );
setMoveKey( spep_2 + 311, 1, 242.4, 325.2  , 0 );
setMoveKey( spep_2 + 312, 1, 242.4, 325.2  , 0 );
setMoveKey( spep_2 + 313, 1, 240.4, 315.2  , 0 );
setMoveKey( spep_2 + 314, 1, 240.4, 315.2  , 0 );
setMoveKey( spep_2 + 315, 1, 238.4, 305.2  , 0 );
setMoveKey( spep_2 + 316, 1, 238.4, 305.2  , 0 );
setMoveKey( spep_2 + 317, 1, 236.4, 290.2  , 0 );
setMoveKey( spep_2 + 318, 1, 236.4, 290.2  , 0 );
setMoveKey( spep_2 + 319, 1, 234.4, 275.2  , 0 );
setMoveKey( spep_2 + 320, 1, 234.4, 275.2  , 0 );
setMoveKey( spep_2 + 321, 1, 225.4, 260.2  , 0 );
setMoveKey( spep_2 + 322, 1, 225.4, 260.2  , 0 );
setMoveKey( spep_2 + 323, 1, 210.4, 235.2  , 0 );
setMoveKey( spep_2 + 324, 1, 210.4, 235.2  , 0 );
setMoveKey( spep_2 + 325, 1, 200.4, 205.2  , 0 );
setMoveKey( spep_2 + 326, 1, 200.4, 205.2  , 0 );

setMoveKey( spep_2 + 373, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 374, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 375, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 376, 1, 1126.2, 499.5 , 0 );
setMoveKey( spep_2 + 377, 1, 1006.7, 493.6 , 0 );
setMoveKey( spep_2 + 378, 1, 1006.7, 493.6 , 0 );
setMoveKey( spep_2 + 380, 1, 956.7, 433.6 , 0 );
setMoveKey( spep_2 + 381, 1, 650.1, 463.7 , 0 );
setMoveKey( spep_2 + 382, 1, 650.1, 463.7 , 0 );
setMoveKey( spep_2 + 383, 1, 580.1, 403.7 , 0 );
setMoveKey( spep_2 + 384, 1, 580.1, 403.7 , 0 );
setMoveKey( spep_2 + 385, 1, 500.1, 463.7 , 0 );
setMoveKey( spep_2 + 386, 1, 500.1, 463.7 , 0 );
setMoveKey( spep_2 + 387, 1, 388, 390.5 , 0 );
setMoveKey( spep_2 + 388, 1, 388, 390.5 , 0 );
setMoveKey( spep_2 + 389, 1, 353, 310.8 , 0 );
setMoveKey( spep_2 + 390, 1, 353, 310.8 , 0 );
setMoveKey( spep_2 + 391, 1, 345, 295.8 , 0 );
setMoveKey( spep_2 + 392, 1, 345, 295.8 , 0 );
setMoveKey( spep_2 + 393, 1, 343, 301 , 0 );
setMoveKey( spep_2 + 394, 1, 343, 301 , 0 );
setMoveKey( spep_2 + 395, 1, 338, 321 , 0 );
setMoveKey( spep_2 + 396, 1, 338, 321 , 0 );
setMoveKey( spep_2 + 397, 1, 336, 311.1 , 0 );
setMoveKey( spep_2 + 398, 1, 336, 311.1 , 0 );
setMoveKey( spep_2 + 399, 1, 330, 300.1 , 0 );
setMoveKey( spep_2 + 400, 1, 330, 300.1 , 0 );
setMoveKey( spep_2 + 401, 1, 340.4, 298.5 , 0 );
setMoveKey( spep_2 + 402, 1, 340.4, 298.5 , 0 );
setMoveKey( spep_2 + 403, 1, 324.6, 313.1 , 0 );
setMoveKey( spep_2 + 404, 1, 324.6, 313.1 , 0 );
setMoveKey( spep_2 + 405, 1, 328.2, 325.9 , 0 );
setMoveKey( spep_2 + 406, 1, 328.2, 325.9 , 0 );
setMoveKey( spep_2 + 407, 1, 312.3, 294 , 0 );
setMoveKey( spep_2 + 408, 1, 312.3, 294 , 0 );
setMoveKey( spep_2 + 409, 1, 292.7, 277.2 , 0 );
setMoveKey( spep_2 + 410, 1, 292.7, 277.2 , 0 );
setMoveKey( spep_2 + 411, 1, 287.6, 305.7 , 0 );
setMoveKey( spep_2 + 412, 1, 287.6, 305.7 , 0 );
setMoveKey( spep_2 + 413, 1, 266.9, 229.3 , 0 );
setMoveKey( spep_2 + 414, 1, 266.9, 229.3 , 0 );
setMoveKey( spep_2 + 415, 1, 200.6, 178.2 , 0 );
setMoveKey( spep_2 + 416, 1, 200.6, 178.2 , 0 );
setMoveKey( spep_2 + 417, 1, 158.7, 142.3 , 0 );
setMoveKey( spep_2 + 418, 1, 158.7, 142.3 , 0 );
setMoveKey( spep_2 + 419, 1, 111.2, 101.6 , 0 );
setMoveKey( spep_2 + 420, 1, 111.2, 101.6 , 0 );
setMoveKey( spep_2 + 421, 1, 58.1, 56.1 , 0 );
setMoveKey( spep_2 + 422, 1, 58.1, 56.1 , 0 );
setMoveKey( spep_2 + 423, 1, 3.1, 6.1 , 0 );
setMoveKey( spep_2 + 424, 1, 3.1, 6.1 , 0 );
setMoveKey( spep_2 + 434, 1, 3.1, 6.1 , 0 );

setScaleKey( spep_2 + 48, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 49, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 50, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 51, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 52, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 53, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 54, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 55, 1, 6.05, 6.05 ); 
setScaleKey( spep_2 + 56, 1, 6.05, 6.05 ); 
setScaleKey( spep_2 + 57, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 58, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 59, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 60, 1, 8.25, 8.25 );

setScaleKey( spep_2 + 61, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 62, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 63, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 64, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 65, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 67, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 68, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 69, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 70, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 71, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 72, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 73, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 74, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 75, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 76, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 77, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 78, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 79, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 80, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 81, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 82, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 83, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 85, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 86, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 87, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 88, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 89, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 90, 1, 2.3, 2.3 );

setScaleKey( spep_2 + 143, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 144, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 145, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 146, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 147, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 148, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 149, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 150, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 151, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 152, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 153, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 154, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 163, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 164, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 165, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 166, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 167, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 168, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 169, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 170, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 171, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 172, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 173, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 174, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 181, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 182, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 183, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 184, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 185, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 186, 1, 4.2, 4.2 );

setScaleKey( spep_2 + 187, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 188, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 189, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 190, 1, 6.98, 6.98 );
setScaleKey( spep_2 + 191, 1, 4, 4 );
setScaleKey( spep_2 + 192, 1, 4, 4 );
setScaleKey( spep_2 + 193, 1, 6.2, 6.2 );
setScaleKey( spep_2 + 194, 1, 6.2, 6.2 );
setScaleKey( spep_2 + 195, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 196, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 197, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 198, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 199, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 200, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 201, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 202, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 203, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 204, 1, 4.0, 4.0 );

setScaleKey( spep_2 + 256, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 257, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 258, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 277, 1, 5.0, 5.0 );
setScaleKey( spep_2 + 278, 1, 5.0, 5.0 );

setScaleKey( spep_2 + 279, 1, 1.0, 1.0 );
setScaleKey( spep_2 + 280, 1, 1.0, 1.0 );
setScaleKey( spep_2 + 281, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 282, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 283, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 284, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 285, 1, 0.83, 0.83 ); 
setScaleKey( spep_2 + 286, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 287, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 288, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 289, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 290, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 291, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 292, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 294, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 295, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 296, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 297, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 298, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 299, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 300, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 301, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 302, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 303, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 304, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 305, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 306, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 307, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 308, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 309, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 310, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 311, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 312, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 326, 1, 0.5, 0.5 );

setScaleKey( spep_2 + 373, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 374, 1, 8.78, 8.78 );

setScaleKey( spep_2 + 380, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 381, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 382, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 383, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 384, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 385, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 386, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 387, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 388, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 389, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 390, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 391, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 392, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 393, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 394, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 395, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 396, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 397, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 398, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 399, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 400, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 401, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 402, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 403, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 404, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 405, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 406, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 407, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 408, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 409, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 410, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 411, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 412, 1, 3.0, 3.0 );
setScaleKey( spep_2 + 413, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 414, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 415, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 416, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 417, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 418, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 419, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 420, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 421, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 422, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 423, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 424, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 434, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 48, 1, 7.3 );
setRotateKey( spep_2 + 54, 1, 7.3 );
setRotateKey( spep_2 + 55, 1, 10.3 );
setRotateKey( spep_2 + 56, 1, 10.3 );
setRotateKey( spep_2 + 58, 1, 10.3 );
setRotateKey( spep_2 + 59, 1, 8.3 );
setRotateKey( spep_2 + 60, 1, 8.3 );

setRotateKey( spep_2 + 61, 1, 17.8 );
setRotateKey( spep_2 + 62, 1, 17.8 );
setRotateKey( spep_2 + 63, 1, 17.8 );
setRotateKey( spep_2 + 64, 1, 17.8 );
setRotateKey( spep_2 + 65, 1, 19.8 );
setRotateKey( spep_2 + 66, 1, 19.8 );
setRotateKey( spep_2 + 90, 1, 19.8 );

setRotateKey( spep_2 + 143, 1, -41.5 );
setRotateKey( spep_2 + 144, 1, -41.5 );
setRotateKey( spep_2 + 145, 1, -41.9 );
setRotateKey( spep_2 + 146, 1, -41.9 );
setRotateKey( spep_2 + 147, 1, -40.3 );
setRotateKey( spep_2 + 148, 1, -40.3 );
setRotateKey( spep_2 + 149, 1, -40.3 );
setRotateKey( spep_2 + 150, 1, -40.3 );
setRotateKey( spep_2 + 151, 1, -40.2 );
setRotateKey( spep_2 + 152, 1, -40.2 );
setRotateKey( spep_2 + 156, 1, -40.2 );
setRotateKey( spep_2 + 157, 1, -40.1 );
setRotateKey( spep_2 + 158, 1, -40.1 );
setRotateKey( spep_2 + 171, 1, -40.1 );
setRotateKey( spep_2 + 172, 1, -40.1 );
setRotateKey( spep_2 + 173, 1, -39.8 );
setRotateKey( spep_2 + 174, 1, -39.8 );
setRotateKey( spep_2 + 175, 1, -39.6 );
setRotateKey( spep_2 + 176, 1, -39.6 );
setRotateKey( spep_2 + 177, 1, -39.2 );
setRotateKey( spep_2 + 178, 1, -39.2 );
setRotateKey( spep_2 + 179, 1, -38.7 );
setRotateKey( spep_2 + 180, 1, -38.7 );
setRotateKey( spep_2 + 181, 1, -38.2 );
setRotateKey( spep_2 + 182, 1, -38.2 );
setRotateKey( spep_2 + 183, 1, -37.5 );
setRotateKey( spep_2 + 184, 1, -37.5 );
setRotateKey( spep_2 + 185, 1, -36.8 );
setRotateKey( spep_2 + 186, 1, -36.8 );

setRotateKey( spep_2 + 187, 1, -36.8 );
setRotateKey( spep_2 + 188, 1, -36.8 );
setRotateKey( spep_2 + 189, 1, -32.8 );
setRotateKey( spep_2 + 190, 1, -32.8 );
setRotateKey( spep_2 + 191, 1, -36.8 );
setRotateKey( spep_2 + 192, 1, -36.8 );
setRotateKey( spep_2 + 193, 1, -36.8 );
setRotateKey( spep_2 + 194, 1, -36.8 );
setRotateKey( spep_2 + 195, 1, -36.8 );
setRotateKey( spep_2 + 196, 1, -36.8 );
setRotateKey( spep_2 + 197, 1, -30.8 );
setRotateKey( spep_2 + 198, 1, -30.8 );
setRotateKey( spep_2 + 199, 1, -33.8 );
setRotateKey( spep_2 + 200, 1, -33.8 );
setRotateKey( spep_2 + 201, 1, -36.9 );
setRotateKey( spep_2 + 202, 1, -36.9 );
setRotateKey( spep_2 + 234, 1, -36.9 );
setRotateKey( spep_2 + 236, 1, -37 );
setRotateKey( spep_2 + 238, 1, -37 );
setRotateKey( spep_2 + 240, 1, -37.1 );
setRotateKey( spep_2 + 242, 1, -37.1 );
setRotateKey( spep_2 + 244, 1, -37.2 );
setRotateKey( spep_2 + 246, 1, -37.3 );
setRotateKey( spep_2 + 248, 1, -37.4 );
setRotateKey( spep_2 + 250, 1, -37.6 );
setRotateKey( spep_2 + 252, 1, -37.7 );
setRotateKey( spep_2 + 254, 1, -37.8 );
setRotateKey( spep_2 + 256, 1, -37.8 );
setRotateKey( spep_2 + 257, 1, 30.1 );
setRotateKey( spep_2 + 258, 1, 30.1 );
setRotateKey( spep_2 + 268, 1, 30.1 );
setRotateKey( spep_2 + 278, 1, 30.1 );

setRotateKey( spep_2 + 279, 1, 45 );
setRotateKey( spep_2 + 280, 1, 45 );
setRotateKey( spep_2 + 326, 1, 45 );

setRotateKey( spep_2 + 373, 1, -45.4 );
setRotateKey( spep_2 + 374, 1, -45.4 );
setRotateKey( spep_2 + 384, 1, -45.4 );
setRotateKey( spep_2 + 434, 1, -45.4 );

-- ** 音 ** --
--パンチ
SE014 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1359, "", 0, 0, 0, -1);

--構える
SE016 = playSeVer2( spep_2 + 90, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE016, 151 );
SE017 = playSeVer2( spep_2 + 90, 1233, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 114, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 222, 1004, "", 0, 0, 0, -1);

--蹴り上げる
SE019 = playSeVer2( spep_2 + 136, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 136, 1110, "", 0, 0, 0, -1);

--殴る
SE022 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 184, 1187, "", 0, 0, 0, -1);

--エルボー
SE025 = playSeVer2( spep_2 + 258, 1190, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE027 = playSeVer2( spep_2 + 298, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE027, 120 );
SE028 = playSeVer2( spep_2 + 298, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE028, 140 );

--向かっていく
SE029 = playSeVer2( spep_2 + 326, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 326, 1264, "",spep_2 + 414, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 326, SE030, 75 );

--蹴り飛ばし
SE031 = playSeVer2( spep_2 + 376, 1359, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 376, 1123, "", 0, 0, 0, -1);

--気弾飛んでくる
SE033 = playSeVer2( spep_2 + 420, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 420, 1215, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_2 + 420, 1044, "", 0, 56, 0, -1);
setSeVolumeByWorkId( spep_2 + 420, SE035, 178 );
SE036 = playSeVer2( spep_2 + 428, 1021, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 432 );
endPhase( spep_2 + 532 );

end