--4023520:ベジータ(大猿)_ギガントランペイジ
--sp_effect_b1_00185
--sp2314

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
SP_01 = 158881;  --突撃  ef001
SP_02 = 158882;  --右下に向かってパンチ  ef002
SP_03 = 158883;  --岩砕ける→追撃で蹴り　手前   ef003
SP_04 = 158884;  --岩砕ける→追撃で蹴り　奥    ef003_b
SP_05 = 158885;  --フィニッシュ  ef004

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
-- 突撃(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --突撃  ef001
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
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "",spep_0 +96 + 18, 0, 12, -1);
SE003 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 8, SE003, 65 );
setTimeStretch( SE003, 1.6, 30, 4 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 88, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
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
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 右下に向かってパンチ(28F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_02, 28, 0x100, -1, 0, 0, 0 );  --右下に向かってパンチ  ef002
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 28, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_2 + 28, punch, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 28, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 28 -1, punch, 255 );
setEffAlphaKey( spep_2 + 28, punch, 0 );

-- ** 音 ** --
--叩きつける
SE006 = playSeVer2( spep_2 + 2, 1116, "",spep_2 +28 + 18, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 28 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 20, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 20, 1190, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 20, 1168, "",spep_2 +28 + 82, 0, 40, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 28;


------------------------------------------------------
-- 岩砕ける→追撃で蹴り(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --岩砕ける→追撃で蹴り　手前   ef003
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 96, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 96 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 96, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --岩砕ける→追撃で蹴り　奥    ef003_b
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 96, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 96, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 88, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 68, 1, 6 );

setMoveKey( spep_3 -3 + 0, 1, 14.8, -249.7 , 0 );
setMoveKey( spep_3 -3 + 2, 1, 26.4, -261.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 61.9, -190.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 71.1, -217.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 41.3, -168.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 79.7, -164.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 93.6, -158.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 110.6, -139.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 127.6, -120.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 140.2, -103.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 152.7, -87.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 168.2, -71.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 183.7, -56.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 192.8, -36.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 191.1, -29 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 197.2, -28.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 203.3, -27.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 204.4, -21.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 205.4, -15.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 214.3, -10 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 223, -4.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 223.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 224.5, -1.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 229.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 234.9, -1.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 238.3, 2.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 241.5, 5.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 244.8, 9.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 248.1, 12.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 251.4, 16.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 254.7, 19.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 258, 23 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 261.3, 26.4 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 264.5, 29.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -82.6, 2.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -225.7, -6.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -248.2, -3.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -410.1, -25.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -470.3, -10.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -607.8, -13.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -677.4, -43 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -797, -37.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -898.7, -43.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -1000.5, -49.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -1000.5, -49.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 88, 1, 0.81, 0.81 );

setRotateKey( spep_3 -3 + 0, 1, -26.8 );
setRotateKey( spep_3 -3 + 2, 1, -26.9 );
setRotateKey( spep_3 -3 + 4, 1, -26.8 );
setRotateKey( spep_3 -3 + 6, 1, -26.6 );
setRotateKey( spep_3 -3 + 8, 1, -26.5 );
setRotateKey( spep_3 -3 + 10, 1, -26.4 );
setRotateKey( spep_3 -3 + 12, 1, -26.3 );
setRotateKey( spep_3 -3 + 14, 1, -26.2 );
setRotateKey( spep_3 -3 + 16, 1, -26 );
setRotateKey( spep_3 -3 + 18, 1, -25.9 );
setRotateKey( spep_3 -3 + 20, 1, -25.8 );
setRotateKey( spep_3 -3 + 22, 1, -25.7 );
setRotateKey( spep_3 -3 + 24, 1, -25.5 );
setRotateKey( spep_3 -3 + 26, 1, -25.4 );
setRotateKey( spep_3 -3 + 28, 1, -24.8 );
setRotateKey( spep_3 -3 + 30, 1, -24.2 );
setRotateKey( spep_3 -3 + 32, 1, -23.6 );
setRotateKey( spep_3 -3 + 34, 1, -23 );
setRotateKey( spep_3 -3 + 36, 1, -22.3 );
setRotateKey( spep_3 -3 + 38, 1, -21.7 );
setRotateKey( spep_3 -3 + 40, 1, -21.1 );
setRotateKey( spep_3 -3 + 42, 1, -20.5 );
setRotateKey( spep_3 -3 + 44, 1, -19.9 );
setRotateKey( spep_3 -3 + 46, 1, -19.3 );
setRotateKey( spep_3 -3 + 48, 1, -18.7 );
setRotateKey( spep_3 -3 + 50, 1, -18 );
setRotateKey( spep_3 -3 + 52, 1, -17.4 );
setRotateKey( spep_3 -3 + 54, 1, -16.8 );
setRotateKey( spep_3 -3 + 56, 1, -16.2 );
setRotateKey( spep_3 -3 + 58, 1, -15.6 );
setRotateKey( spep_3 -3 + 60, 1, -15.2 );
setRotateKey( spep_3 -3 + 62, 1, -14.8 );
setRotateKey( spep_3 -3 + 64, 1, -14.4 );
setRotateKey( spep_3 -3 + 67, 1, -14 );
setRotateKey( spep_3 -3 + 68, 1, 32 );
setRotateKey( spep_3 -3 + 70, 1, 31.8 );
setRotateKey( spep_3 -3 + 72, 1, 31.6 );
setRotateKey( spep_3 -3 + 74, 1, 31.3 );
setRotateKey( spep_3 -3 + 76, 1, 31.1 );
setRotateKey( spep_3 -3 + 78, 1, 30.9 );
setRotateKey( spep_3 -3 + 80, 1, 30.7 );
setRotateKey( spep_3 -3 + 82, 1, 30.4 );
setRotateKey( spep_3 -3 + 84, 1, 30.2 );
setRotateKey( spep_3 -3 + 86, 1, 30 );
setRotateKey( spep_3 -3 + 88, 1, 30 );

-- ** 音 ** --
--蹴り飛ばし
SE011 = playSeVer2( spep_3 + 42, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 52, 1123, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 52, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_3 + 78, 1121, "",spep_3 +96 + 54, 0, 38, -1);
SE015 = playSeVer2( spep_3 + 78, 1183, "",spep_3 +96 + 50, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- フィニッシュ(132F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef004
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 132, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 132, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 132, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 24, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -504.2, -207.1 , 0 );
setMoveKey( spep_4 + 1, 1, -286.9, -137 , 0 );
setMoveKey( spep_4 + 2, 1, -213.3, -111.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -162.9, -94 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -124.6, -79.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -94.1, -68 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -68.4, -57 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -47.7, -47.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -31.3, -39.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -18.5, -32.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -9.1, -27 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -3.4, -22.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -3.4, -22.4 , 0 );

setScaleKey( spep_4 + 0, 1, 5.61, 5.61 );
setScaleKey( spep_4 + 1, 1, 3.59, 3.58 );
setScaleKey( spep_4 + 2, 1, 2.85, 2.84 );
setScaleKey( spep_4 -3 + 6, 1, 2.32, 2.31 );
setScaleKey( spep_4 -3 + 8, 1, 1.89, 1.88 );
setScaleKey( spep_4 -3 + 10, 1, 1.53, 1.52 );
setScaleKey( spep_4 -3 + 12, 1, 1.2, 1.19 );
setScaleKey( spep_4 -3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 18, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 20, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 22, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 24, 1, 0.12, 0.12 );

setRotateKey( spep_4 + 0, 1, 22 );
setRotateKey( spep_4 + 1, 1, 23.5 );
setRotateKey( spep_4 + 2, 1, 25.1 );
setRotateKey( spep_4 -3 + 6, 1, 26.6 );
setRotateKey( spep_4 -3 + 8, 1, 28.2 );
setRotateKey( spep_4 -3 + 10, 1, 29.7 );
setRotateKey( spep_4 -3 + 12, 1, 31.3 );
setRotateKey( spep_4 -3 + 14, 1, 32.8 );
setRotateKey( spep_4 -3 + 16, 1, 34.4 );
setRotateKey( spep_4 -3 + 18, 1, 35.9 );
setRotateKey( spep_4 -3 + 20, 1, 37.5 );
setRotateKey( spep_4 -3 + 22, 1, 39 );
setRotateKey( spep_4 -3 + 24, 1, 39 );

-- ** 音 ** --
--岩激突
SE016 = playSeVer2( spep_4 + 14, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE016, 69 );
SE017 = playSeVer2( spep_4 + 14, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 22 );
endPhase( spep_4 + 122 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突撃(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --突撃  ef001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
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
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "",spep_0 +96 + 18, 0, 12, -1);
SE003 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 8, SE003, 65 );
setTimeStretch( SE003, 1.6, 30, 4 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 88, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 右下に向かってパンチ(28F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_02, 28, 0x100, -1, 0, 0, 0 );  --右下に向かってパンチ  ef002
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 28, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_2 + 28, punch, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 28, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 28 -1, punch, 255 );
setEffAlphaKey( spep_2 + 28, punch, 0 );

-- ** 音 ** --
--叩きつける
SE006 = playSeVer2( spep_2 + 2, 1116, "",spep_2 +28 + 18, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 28 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 20, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 20, 1190, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 20, 1168, "",spep_2 +28 + 82, 0, 40, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 28;


------------------------------------------------------
-- 岩砕ける→追撃で蹴り(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --岩砕ける→追撃で蹴り　手前   ef003
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 96, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 96 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 96, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --岩砕ける→追撃で蹴り　奥    ef003_b
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 96, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 96, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 88, 1, 0 );
changeAnime( spep_3 + 0, 1, 6 );
changeAnime( spep_3 -3 + 68, 1, 106 );

setMoveKey( spep_3 -3 + 0, 1, -14.8, -249.7 , 0 );
setMoveKey( spep_3 -3 + 2, 1, -26.4, -261.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -61.9, -190.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -71.1, -217.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -41.3, -168.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -79.7, -164.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -93.6, -158.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -110.6, -139.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -127.6, -120.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -140.2, -103.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -152.7, -87.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -168.2, -71.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -183.7, -56.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -192.8, -36.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -191.1, -29 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -197.2, -28.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -203.3, -27.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -204.4, -21.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -205.4, -15.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -214.3, -10 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -223, -4.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -223.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -224.5, -1.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -229.8, -1.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -234.9, -1.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -238.3, 2.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -241.5, 5.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -244.8, 9.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -248.1, 12.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -251.4, 16.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -254.7, 19.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -258, 23 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -261.3, 26.4 , 0 );
setMoveKey( spep_3 -3 + 67, 1, -264.5, 29.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 82.6, 2.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 225.7, -6.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 248.2, -3.8 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 410.1, -25.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 470.3, -10.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 607.8, -13.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 677.4, -43 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 797, -37.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 898.7, -43.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 1000.5, -49.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 1000.5, -49.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 88, 1, 0.81, 0.81 );

setRotateKey( spep_3 -3 + 0, 1, 26.8 );
setRotateKey( spep_3 -3 + 2, 1, 26.9 );
setRotateKey( spep_3 -3 + 4, 1, 26.8 );
setRotateKey( spep_3 -3 + 6, 1, 26.6 );
setRotateKey( spep_3 -3 + 8, 1, 26.5 );
setRotateKey( spep_3 -3 + 10, 1, 26.4 );
setRotateKey( spep_3 -3 + 12, 1, 26.3 );
setRotateKey( spep_3 -3 + 14, 1, 26.2 );
setRotateKey( spep_3 -3 + 16, 1, 26 );
setRotateKey( spep_3 -3 + 18, 1, 25.9 );
setRotateKey( spep_3 -3 + 20, 1, 25.8 );
setRotateKey( spep_3 -3 + 22, 1, 25.7 );
setRotateKey( spep_3 -3 + 24, 1, 25.5 );
setRotateKey( spep_3 -3 + 26, 1, 25.4 );
setRotateKey( spep_3 -3 + 28, 1, 24.8 );
setRotateKey( spep_3 -3 + 30, 1, 24.2 );
setRotateKey( spep_3 -3 + 32, 1, 23.6 );
setRotateKey( spep_3 -3 + 34, 1, 23 );
setRotateKey( spep_3 -3 + 36, 1, 22.3 );
setRotateKey( spep_3 -3 + 38, 1, 21.7 );
setRotateKey( spep_3 -3 + 40, 1, 21.1 );
setRotateKey( spep_3 -3 + 42, 1, 20.5 );
setRotateKey( spep_3 -3 + 44, 1, 19.9 );
setRotateKey( spep_3 -3 + 46, 1, 19.3 );
setRotateKey( spep_3 -3 + 48, 1, 18.7 );
setRotateKey( spep_3 -3 + 50, 1, 18 );
setRotateKey( spep_3 -3 + 52, 1, 17.4 );
setRotateKey( spep_3 -3 + 54, 1, 16.8 );
setRotateKey( spep_3 -3 + 56, 1, 16.2 );
setRotateKey( spep_3 -3 + 58, 1, 15.6 );
setRotateKey( spep_3 -3 + 60, 1, 15.2 );
setRotateKey( spep_3 -3 + 62, 1, 14.8 );
setRotateKey( spep_3 -3 + 64, 1, 14.4 );
setRotateKey( spep_3 -3 + 67, 1, 14 );
setRotateKey( spep_3 -3 + 68, 1, -32 );
setRotateKey( spep_3 -3 + 70, 1, -31.8 );
setRotateKey( spep_3 -3 + 72, 1, -31.6 );
setRotateKey( spep_3 -3 + 74, 1, -31.3 );
setRotateKey( spep_3 -3 + 76, 1, -31.1 );
setRotateKey( spep_3 -3 + 78, 1, -30.9 );
setRotateKey( spep_3 -3 + 80, 1, -30.7 );
setRotateKey( spep_3 -3 + 82, 1, -30.4 );
setRotateKey( spep_3 -3 + 84, 1, -30.2 );
setRotateKey( spep_3 -3 + 86, 1, -30 );
setRotateKey( spep_3 -3 + 88, 1, -30 );

-- ** 音 ** --
--蹴り飛ばし
SE011 = playSeVer2( spep_3 + 42, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 52, 1123, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 52, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_3 + 78, 1121, "",spep_3 +96 + 54, 0, 38, -1);
SE015 = playSeVer2( spep_3 + 78, 1183, "",spep_3 +96 + 50, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- フィニッシュ(132F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef004
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 132, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 132, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 132, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 24, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -504.2, -207.1 , 0 );
setMoveKey( spep_4 + 1, 1, -286.9, -137 , 0 );
setMoveKey( spep_4 + 2, 1, -213.3, -111.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -162.9, -94 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -124.6, -79.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -94.1, -68 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -68.4, -57 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -47.7, -47.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -31.3, -39.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -18.5, -32.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -9.1, -27 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -3.4, -22.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -3.4, -22.4 , 0 );

setScaleKey( spep_4 + 0, 1, 5.61, 5.61 );
setScaleKey( spep_4 + 1, 1, 3.59, 3.58 );
setScaleKey( spep_4 + 2, 1, 2.85, 2.84 );
setScaleKey( spep_4 -3 + 6, 1, 2.32, 2.31 );
setScaleKey( spep_4 -3 + 8, 1, 1.89, 1.88 );
setScaleKey( spep_4 -3 + 10, 1, 1.53, 1.52 );
setScaleKey( spep_4 -3 + 12, 1, 1.2, 1.19 );
setScaleKey( spep_4 -3 + 14, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 18, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 20, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 22, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 24, 1, 0.12, 0.12 );

setRotateKey( spep_4 + 0, 1, 22 );
setRotateKey( spep_4 + 1, 1, 23.5 );
setRotateKey( spep_4 + 2, 1, 25.1 );
setRotateKey( spep_4 -3 + 6, 1, 26.6 );
setRotateKey( spep_4 -3 + 8, 1, 28.2 );
setRotateKey( spep_4 -3 + 10, 1, 29.7 );
setRotateKey( spep_4 -3 + 12, 1, 31.3 );
setRotateKey( spep_4 -3 + 14, 1, 32.8 );
setRotateKey( spep_4 -3 + 16, 1, 34.4 );
setRotateKey( spep_4 -3 + 18, 1, 35.9 );
setRotateKey( spep_4 -3 + 20, 1, 37.5 );
setRotateKey( spep_4 -3 + 22, 1, 39 );
setRotateKey( spep_4 -3 + 24, 1, 39 );

-- ** 音 ** --
--岩激突
SE016 = playSeVer2( spep_4 + 14, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE016, 69 );
SE017 = playSeVer2( spep_4 + 14, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 22 );
endPhase( spep_4 + 122 );

end