--1022010:トランクス(幼年期)_シャイニングスラッシュ
--sp_effect_b2_00042
--sp2191

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
SP_01=	157196	;--	トランクス笛投げる
SP_02=	157197	;--	トランクスが敵を斬る：手前
SP_03=	157198	;--	トランクスが敵を斬る：奥
SP_04=	157200	;--	地面着地→もう一度敵に接近：手前
SP_05=	157201	;--	地面着地→もう一度敵に接近：奥
SP_06=	157203	;--	斬撃エフェクト
SP_07=	157204	;--	敵を斬った後の余韻→爆発：手前
SP_08=	157205	;--	敵を斬った後の余韻→爆発：奥

--エフェクト(てき)
SP_01x=	157196	;--	トランクス笛投げる	
SP_02x=	157197	;--	トランクスが敵を斬る：手前	
SP_03x=	157199	;--	トランクスが敵を斬る：奥	(敵)
SP_04x=	157200	;--	地面着地→もう一度敵に接近：手前	
SP_05x=	157202	;--	地面着地→もう一度敵に接近：奥	(敵)
SP_06x=	157203	;--	斬撃エフェクト	
SP_07x=	157204	;--	敵を斬った後の余韻→爆発：手前	
SP_08x=	157205	;--	敵を斬った後の余韻→爆発：奥	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.85);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- トランクス笛投げる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
throw = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, throw, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, throw, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, throw, 0 );
setEffRotateKey( spep_0 + 90, throw, 0 );
setEffAlphaKey( spep_0 + 0, throw, 255 );
setEffAlphaKey( spep_0 + 90, throw, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, -57 );
setEffShake( spep_0 + 2, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 2, shuchusen1, 0, -57 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen1, 0, -57 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 118, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 2, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 2, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 116, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 118, shuchusen1, 0 );

--SE
--ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );
SE003 = playSe( spep_0 + 0, 1314 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );

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

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--顔カットイン
SE004 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_0 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;

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
stopSe( spep_1 + 2, SE001, 8 );
stopSe( spep_1 + 2, SE002, 8 );
stopSe( spep_1 + 2, SE003, 8 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- トランクスが敵を斬る
------------------------------------------------------
-- ** エフェクト等 ** --
kill_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kill_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, kill_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kill_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kill_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kill_f, 0 );
setEffRotateKey( spep_2 + 46, kill_f, 0 );
setEffAlphaKey( spep_2 + 0, kill_f, 255 );
setEffAlphaKey( spep_2 + 44, kill_f, 255 );
setEffAlphaKey( spep_2 + 45, kill_f, 255 );
setEffAlphaKey( spep_2 + 46, kill_f, 0 );

-- ** エフェクト等 ** --
kill_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kill_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, kill_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kill_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kill_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kill_b, 0 );
setEffRotateKey( spep_2 + 46, kill_b, 0 );
setEffAlphaKey( spep_2 + 0, kill_b, 255 );
setEffAlphaKey( spep_2 + 44, kill_b, 255 );
setEffAlphaKey( spep_2 + 45, kill_b, 255 );
setEffAlphaKey( spep_2 + 46, kill_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_2-3 + 8,  10010, 30, 0x100, -1, 0, 7.5, 223.5 );--ザンッ
setEffShake( spep_2-3 + 8, ctzan, 30, 10 );
setEffMoveKey( spep_2-3 + 8, ctzan, 7.5, 223.5 , 0 );
setEffMoveKey( spep_2-3 + 10, ctzan, 9.2, 225 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzan, 14.2, 229.5 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzan, -1.9, 219.9 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzan, 16.1, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzan, -2.9, 229.7 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzan, 18.9, 238.8 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzan, 11.5, 208.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzan, 21.1, 235.8 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzan, 31.9, 228.2 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzan, 28.9, 214.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzan, 17.1, 223.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzan, 10.8, 225.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzan, 13.9, 218.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzan, 7.8, 223.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzan, 7.9, 223.6 , 0 );

setEffScaleKey( spep_2-3 + 8, ctzan,0,0);
setEffScaleKey( spep_2-3 + 10, ctzan,0.76,0.67);
setEffScaleKey( spep_2-3 + 12, ctzan,1.53,1.35);
setEffScaleKey( spep_2-3 + 14, ctzan,1.48,1.35);
setEffScaleKey( spep_2-3 + 16, ctzan,1.44,1.35);
setEffScaleKey( spep_2-3 + 18, ctzan,1.4,1.35);
setEffScaleKey( spep_2-3 + 20, ctzan,1.36,1.35);
setEffScaleKey( spep_2-3 + 22, ctzan,1.31,1.35);
setEffScaleKey( spep_2-3 + 24, ctzan,1.27,1.35);
setEffScaleKey( spep_2-3 + 26, ctzan,1.23,1.35);
setEffScaleKey( spep_2-3 + 28, ctzan,1.19,1.35);
setEffScaleKey( spep_2-3 + 30, ctzan,1.14,1.35);
setEffScaleKey( spep_2-3 + 32, ctzan,1.1,1.35);
setEffScaleKey( spep_2-3 + 34, ctzan,1.8,2.19);
setEffScaleKey( spep_2-3 + 36, ctzan,2.49,3.04);
setEffScaleKey( spep_2-3 + 38, ctzan,3.18,3.88);

setEffRotateKey( spep_2-3 + 8, ctzan, 11.8 );
setEffRotateKey( spep_2-3 + 10, ctzan, 12 );
setEffRotateKey( spep_2-3 + 38, ctzan, 12 );

setEffAlphaKey( spep_2-3 + 8, ctzan, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzan, 255 );
setEffAlphaKey( spep_2-3 + 34, ctzan, 170 );
setEffAlphaKey( spep_2-3 + 36, ctzan, 85 );
setEffAlphaKey( spep_2-3 + 38, ctzan, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 8,  906, 40, 0x100, -1, 0, 0, 54.6 );
setEffShake( spep_2-3 + 8, shuchusen2, 40, 20 );
setEffMoveKey( spep_2-3 + 8, shuchusen2, 0, 54.6 , 0 );
setEffMoveKey( spep_2-3 + 48, shuchusen2, 0, 54.6 , 0 );

setEffScaleKey( spep_2-3 + 8, shuchusen2, 1.08, 1.24 );
setEffScaleKey( spep_2-3 + 48, shuchusen2, 1.08, 1.24 );

setEffRotateKey( spep_2-3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 48, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 287.9, 83.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 262.2, 79.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 236.6, 75.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, 211, 71.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, 185.4, 67 , 0 );
setMoveKey( spep_2-3 + 10, 1, 173.5, 74 , 0 );
setMoveKey( spep_2-3 + 12, 1, 131.3, 55.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 127.3, 35.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 70.9, 55.9 , 0 );
setMoveKey( spep_2-3 + 18, 1, 56.6, 33.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 39.1, 48.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 9.8, 41 , 0 );
setMoveKey( spep_2-3 + 24, 1, -2.8, 35.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, -8, 29.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, -13.1, 23.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, -25.7, 25.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, -38.2, 26.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, -47.1, 24.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, -56, 22.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, -64.8, 20.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, -73.7, 17.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, -82.6, 15.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, -91.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, -100.3, 11.4 , 0 );
setMoveKey( spep_2-3 + 48, 1, -109.2, 9.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 48, 1, 1.8, 1.8 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 48, 1, 1.5, 1.5 );

--SE
--横切り
SE006 = playSe( spep_2 + 0, 1189 );
SE007 = playSe( spep_2 + 4, 1143 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 86 );
SE008 = playSe( spep_2 + 6, 1032 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 103 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+46;
------------------------------------------------------
-- 地面着地→もう一度敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,landing_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 116,landing_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,landing_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116,landing_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,landing_f, 0 );
setEffRotateKey( spep_3 + 116,landing_f, 0 );
setEffAlphaKey( spep_3 + 0,landing_f, 255 );
setEffAlphaKey( spep_3 + 114,landing_f, 255 );
setEffAlphaKey( spep_3 + 115,landing_f, 255 );
setEffAlphaKey( spep_3 + 116,landing_f, 0 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,landing_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 116,landing_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,landing_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116,landing_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,landing_b, 0 );
setEffRotateKey( spep_3 + 116,landing_b, 0 );
setEffAlphaKey( spep_3 + 0,landing_b, 255 );
setEffAlphaKey( spep_3 + 114,landing_b, 255 );
setEffAlphaKey( spep_3 + 115,landing_b, 255 );
setEffAlphaKey( spep_3 + 116,landing_b, 0 );

--文字エントリー
ctba = entryEffectLife( spep_3-3 + 44,  10022, 24, 0x100, -1, 0, 123.8, 46.9 );--バッ
setEffShake( spep_3-3 + 44, ctba, 24, 10 );
setEffMoveKey( spep_3-3 + 44, ctba, 123.8, 46.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctba, 124.4, 50.3 , 0 );
setEffMoveKey( spep_3-3 + 48, ctba, 122.9, 43 , 0 );
setEffMoveKey( spep_3-3 + 50, ctba, 113.9, 49.4 , 0 );
setEffMoveKey( spep_3-3 + 52, ctba, 131.3, 49 , 0 );
setEffMoveKey( spep_3-3 + 54, ctba, 127.3, 49 , 0 );
setEffMoveKey( spep_3-3 + 56, ctba, 123.2, 49 , 0 );
setEffMoveKey( spep_3-3 + 58, ctba, 123, 50.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctba, 122.9, 51.3 , 0 );
setEffMoveKey( spep_3-3 + 62, ctba, 123, 50.2 , 0 );
setEffMoveKey( spep_3-3 + 64, ctba, 122.9, 49.8 , 0 );
setEffMoveKey( spep_3-3 + 66, ctba, 122.4, 52.3 , 0 );
setEffMoveKey( spep_3-3 + 68, ctba, 122.1, 53.4 , 0 );

setEffScaleKey( spep_3-3 + 44, ctba, 0, 0 );
setEffScaleKey( spep_3-3 + 46, ctba, 0.2, 0.21 );
setEffScaleKey( spep_3-3 + 48, ctba, 0.4, 0.41 );
setEffScaleKey( spep_3-3 + 50, ctba, 0.59, 0.62 );
setEffScaleKey( spep_3-3 + 52, ctba, 0.6, 0.63 );
setEffScaleKey( spep_3-3 + 54, ctba, 0.61, 0.64 );
setEffScaleKey( spep_3-3 + 56, ctba, 0.62, 0.65 );
setEffScaleKey( spep_3-3 + 58, ctba, 0.63, 0.66 );
setEffScaleKey( spep_3-3 + 60, ctba, 0.64, 0.67 );
setEffScaleKey( spep_3-3 + 62, ctba, 0.65, 0.68 );
setEffScaleKey( spep_3-3 + 64, ctba, 0.87, 0.89 );
setEffScaleKey( spep_3-3 + 66, ctba, 1.08, 1.09 );
setEffScaleKey( spep_3-3 + 68, ctba, 1.29, 1.3 );

setEffRotateKey( spep_3-3 + 44, ctba, 25 );
setEffRotateKey( spep_3-3 + 46, ctba, 24.9 );
setEffRotateKey( spep_3-3 + 68, ctba, 24.9 );

setEffAlphaKey( spep_3-3 + 44, ctba, 255 );
setEffAlphaKey( spep_3-3 + 62, ctba, 255 );
setEffAlphaKey( spep_3-3 + 64, ctba, 170 );
setEffAlphaKey( spep_3-3 + 66, ctba, 85 );
setEffAlphaKey( spep_3-3 + 68, ctba, 0 );

--敵の動き
setDisp( spep_3-3 + 13, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 34.8, -687.6 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 28.5, -745.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 22.2, -802.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 15.8, -860.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 9.5, -918 , 0 );
setMoveKey( spep_3-3 + 10, 1, 3.2, -975.6 , 0 );
setMoveKey( spep_3-3 + 13, 1, -3.1, -1033.2 , 0 );

setScaleKey( spep_3 + 0, 1, 6.93, 6.93 );
--setScaleKey( spep_3-3 + 2, 1, 7.36, 7.36 );
setScaleKey( spep_3-3 + 4, 1, 7.8, 7.8 );
setScaleKey( spep_3-3 + 6, 1, 8.23, 8.23 );
setScaleKey( spep_3-3 + 8, 1, 8.67, 8.67 );
setScaleKey( spep_3-3 + 10, 1, 9.1, 9.1 );
setScaleKey( spep_3-3 + 13, 1, 9.54, 9.54 );

setRotateKey( spep_3 + 0, 1, 26 );
setRotateKey( spep_3-3 + 13, 1, 26 );


--敵の動き
setDisp( spep_3-3 + 100, 1, 1 );
setDisp( spep_3-2 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

a=120;

setMoveKey( spep_3-3 + 100, 1, 125-a, -851.2 , 0 );
setMoveKey( spep_3-3 + 102, 1, 123.7-a, -817.9 , 0 );
setMoveKey( spep_3-3 + 104, 1, 122.3-a, -784.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, 121-a, -751.4 , 0 );
setMoveKey( spep_3-3 + 108, 1, 119.7-a, -718.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 118.3-a, -684.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, 117-a, -651.6 , 0 );
setMoveKey( spep_3-3 + 114, 1, 115.7-a, -618.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 114.3-a, -585 , 0 );
setMoveKey( spep_3-2 + 118, 1, 113-a, -551.8 , 0 );

setScaleKey( spep_3-3 + 100, 1, 10.07, 10.07 );
setScaleKey( spep_3-3 + 102, 1, 9.91, 9.91 );
setScaleKey( spep_3-3 + 104, 1, 9.76, 9.76 );
setScaleKey( spep_3-3 + 106, 1, 9.6, 9.6 );
setScaleKey( spep_3-3 + 108, 1, 9.45, 9.45 );
setScaleKey( spep_3-3 + 110, 1, 9.29, 9.29 );
setScaleKey( spep_3-3 + 112, 1, 9.14, 9.14 );
setScaleKey( spep_3-3 + 114, 1, 8.98, 8.98 );
setScaleKey( spep_3-3 + 116, 1, 8.83, 8.83 );
setScaleKey( spep_3-2 + 118, 1, 8.67, 8.67 );

setRotateKey( spep_3-3 + 100, 1, -9 );
setRotateKey( spep_3-2 + 118, 1, -9 );

--SE
--おりる
SE009 = playSe( spep_3 + 0, 63 );
stopSe( spep_3 + 36, SE009, 12 );

--着地
SE010 = playSe( spep_3 + 30, 1108 );
setSeVolumeByWorkId( spep_3 + 30, SE010, 186 );
SE011 = playSe( spep_3 + 32, 1106 );
setSeVolumeByWorkId( spep_3 + 32, SE011, 216 );

--飛び上がる
SE012 = playSe( spep_3 + 44, 1182 );
SE013 = playSe( spep_3 + 44, 1207 );
setSeVolumeByWorkId( spep_3 + 44, SE013, 0 );
setSeVolumeByWorkId( spep_3 + 45, SE013, 3.4 );
setSeVolumeByWorkId( spep_3 + 46, SE013, 6.8 );
setSeVolumeByWorkId( spep_3 + 47, SE013, 10.2 );
setSeVolumeByWorkId( spep_3 + 48, SE013, 13.6 );
setSeVolumeByWorkId( spep_3 + 49, SE013, 17 );
setSeVolumeByWorkId( spep_3 + 50, SE013, 20.4 );
setSeVolumeByWorkId( spep_3 + 51, SE013, 23.8 );
setSeVolumeByWorkId( spep_3 + 52, SE013, 27.2 );
setSeVolumeByWorkId( spep_3 + 53, SE013, 30.6 );
setSeVolumeByWorkId( spep_3 + 54, SE013, 34 );
setSeVolumeByWorkId( spep_3 + 55, SE013, 37.4 );
setSeVolumeByWorkId( spep_3 + 56, SE013, 40.8 );
setSeVolumeByWorkId( spep_3 + 57, SE013, 44.2 );
setSeVolumeByWorkId( spep_3 + 58, SE013, 47.6 );
setSeVolumeByWorkId( spep_3 + 59, SE013, 51 );
setSeVolumeByWorkId( spep_3 + 60, SE013, 54 );
stopSe( spep_3 + 98, SE013, 26 );
SE014 = playSe( spep_3 + 44, 1116 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 77 );
SE016 = playSe( spep_3 + 68, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+116;
------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_4 + 20,cut, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,cut, 1.0, 1.0 );
setEffScaleKey( spep_4 + 20,cut, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,cut, 0 );
setEffRotateKey( spep_4 + 20,cut, 0 );
setEffAlphaKey( spep_4 + 0,cut, 255 );
setEffAlphaKey( spep_4 + 18,cut, 255 );
setEffAlphaKey( spep_4 + 19,cut, 255 );
setEffAlphaKey( spep_4 + 20,cut, 0 );

--SE
--飛び上がる
stopSe( spep_4 + 0, SE029, 10 );

--ラスト切り
SE016 = playSe( spep_4 + 0, 1004 );
SE017 = playSe( spep_4 + 2, 1061 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 121 );
SE018 = playSe( spep_4 + 2, 1142 );
setSeVolumeByWorkId( spep_4 + 2, SE018, 99 )
SE019 = playSe( spep_4 + 4, 1318 );
setSeVolumeByWorkId( spep_4 + 4, SE019, 126 );
SE020 = playSe( spep_4 + 4, 1319,"",0.6 );
setSeVolumeByWorkId( spep_4 + 4, SE020, 158 );
setTimeStretch( SE020, 0.84, 10, 1 );
SE021 = playSe( spep_4 + 6, 1032 );
setSeVolumeByWorkId( spep_4 + 6, SE021, 126 );
SE022 = playSe( spep_4 + 10, 1141 );
setSeVolumeByWorkId( spep_4 + 10, SE022, 121 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 24, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+20;
------------------------------------------------------
-- 敵を斬った後の余韻
------------------------------------------------------
-- ** エフェクト等 ** --
afterglow_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,afterglow_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 180,afterglow_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,afterglow_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180,afterglow_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,afterglow_f, 0 );
setEffRotateKey( spep_5 + 180,afterglow_f, 0 );
setEffAlphaKey( spep_5 + 0,afterglow_f, 255 );
setEffAlphaKey( spep_5 + 180,afterglow_f, 255 );

-- ** エフェクト等 ** --
afterglow_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,afterglow_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180,afterglow_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,afterglow_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180,afterglow_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,afterglow_b, 0 );
setEffRotateKey( spep_5 + 180,afterglow_b, 0 );
setEffAlphaKey( spep_5 + 0,afterglow_b, 255 );
setEffAlphaKey( spep_5 + 180,afterglow_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 56.6, 12.8 , 0 );
setMoveKey( spep_5 + 2, 1, 62.2, 16.4 , 0 );
setMoveKey( spep_5 + 4, 1, 53.4, 7.8 , 0 );
setMoveKey( spep_5 + 6, 1, 47.7, 13.9 , 0 );
setMoveKey( spep_5 + 8, 1, 55.5, 11.5 , 0 );
setMoveKey( spep_5 + 10, 1, 55.3, 11.2 , 0 );
setMoveKey( spep_5 + 12, 1, 55, 10.8 , 0 );
setMoveKey( spep_5 + 14, 1, 54.8, 10.5 , 0 );
setMoveKey( spep_5 + 16, 1, 54.5, 10.1 , 0 );
setMoveKey( spep_5 + 18, 1, 54.2, 9.8 , 0 );
setMoveKey( spep_5 + 20, 1, 54, 9.5 , 0 );
setMoveKey( spep_5 + 22, 1, 53.7, 9.1 , 0 );
setMoveKey( spep_5 + 24, 1, 53.4, 8.8 , 0 );
setMoveKey( spep_5 + 26, 1, 53.2, 8.4 , 0 );
setMoveKey( spep_5 + 28, 1, 52.9, 8.1 , 0 );
setMoveKey( spep_5 + 30, 1, 52.7, 7.8 , 0 );
setMoveKey( spep_5 + 32, 1, 52.4, 7.4 , 0 );
setMoveKey( spep_5 + 34, 1, 52.1, 7.1 , 0 );
setMoveKey( spep_5 + 36, 1, 51.9, 6.7 , 0 );
setMoveKey( spep_5 + 38, 1, 51.6, 6.4 , 0 );
setMoveKey( spep_5 + 40, 1, 51.3, 6.1 , 0 );
setMoveKey( spep_5 + 42, 1, 51.1, 5.7 , 0 );
setMoveKey( spep_5 + 44, 1, 50.8, 5.4 , 0 );
setMoveKey( spep_5 + 46, 1, 50.6, 5 , 0 );
setMoveKey( spep_5 + 48, 1, 50.3, 4.7 , 0 );
setMoveKey( spep_5 + 50, 1, 50, 4.4 , 0 );
setMoveKey( spep_5 + 52, 1, 49.8, 4 , 0 );
setMoveKey( spep_5 + 54, 1, 49.5, 3.7 , 0 );
setMoveKey( spep_5 + 56, 1, 49.2, 3.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 2, 1, 1.49, 1.49 );
setScaleKey( spep_5 + 4, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 6, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 8, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 14, 1, 1.42, 1.43 );
setScaleKey( spep_5 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 30, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 32, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 34, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 36, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 38, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 40, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 44, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 46, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 48, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 54, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 56, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 56, 1, 0 );

--SE
--爆発前予兆
SE023 = playSe( spep_5 + 0, 1157 );
stopSe( spep_5 + 78, SE023, 10 );

--爆発
SE024 = playSe( spep_5 + 52, 1023 );
SE025 = playSe( spep_5 + 56, 1159 );
setSeVolumeByWorkId( spep_5 + 56, SE025, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +70 );
endPhase( spep_5 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- トランクス笛投げる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
throw = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, throw, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, throw, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, throw, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, throw, 0 );
setEffRotateKey( spep_0 + 90, throw, 0 );
setEffAlphaKey( spep_0 + 0, throw, 255 );
setEffAlphaKey( spep_0 + 90, throw, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, -57 );
setEffShake( spep_0 + 2, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 2, shuchusen1, 0, -57 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen1, 0, -57 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 118, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 2, shuchusen1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 2, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 116, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 118, shuchusen1, 0 );

--SE
--ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );
SE003 = playSe( spep_0 + 0, 1314 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );

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

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--顔カットイン
SE004 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_0 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_1

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 

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
playSe( spep_1 + 0, SE_05 );
stopSe( spep_1 + 2, SE001, 8 );
stopSe( spep_1 + 2, SE002, 8 );
stopSe( spep_1 + 2, SE003, 8 );
 
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- トランクスが敵を斬る
------------------------------------------------------
-- ** エフェクト等 ** --
kill_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kill_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, kill_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kill_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kill_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kill_f, 0 );
setEffRotateKey( spep_2 + 46, kill_f, 0 );
setEffAlphaKey( spep_2 + 0, kill_f, 255 );
setEffAlphaKey( spep_2 + 44, kill_f, 255 );
setEffAlphaKey( spep_2 + 45, kill_f, 255 );
setEffAlphaKey( spep_2 + 46, kill_f, 0 );

-- ** エフェクト等 ** --
kill_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kill_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, kill_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kill_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kill_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kill_b, 0 );
setEffRotateKey( spep_2 + 46, kill_b, 0 );
setEffAlphaKey( spep_2 + 0, kill_b, 255 );
setEffAlphaKey( spep_2 + 44, kill_b, 255 );
setEffAlphaKey( spep_2 + 45, kill_b, 255 );
setEffAlphaKey( spep_2 + 46, kill_b, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_2-3 + 8,  10010, 30, 0x100, -1, 0, 7.5, 223.5 );--ザンッ
setEffShake( spep_2-3 + 8, ctzan, 30, 10 );
setEffMoveKey( spep_2-3 + 8, ctzan, 7.5, 223.5 , 0 );
setEffMoveKey( spep_2-3 + 10, ctzan, 9.2, 225 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzan, 14.2, 229.5 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzan, -1.9, 219.9 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzan, 16.1, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzan, -2.9, 229.7 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzan, 18.9, 238.8 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzan, 11.5, 208.5 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzan, 21.1, 235.8 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzan, 31.9, 228.2 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzan, 28.9, 214.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzan, 17.1, 223.9 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzan, 10.8, 225.2 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzan, 13.9, 218.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzan, 7.8, 223.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzan, 7.9, 223.6 , 0 );

setEffScaleKey( spep_2-3 + 8, ctzan,0,0);
setEffScaleKey( spep_2-3 + 10, ctzan,0.76,0.67);
setEffScaleKey( spep_2-3 + 12, ctzan,1.53,1.35);
setEffScaleKey( spep_2-3 + 14, ctzan,1.48,1.35);
setEffScaleKey( spep_2-3 + 16, ctzan,1.44,1.35);
setEffScaleKey( spep_2-3 + 18, ctzan,1.4,1.35);
setEffScaleKey( spep_2-3 + 20, ctzan,1.36,1.35);
setEffScaleKey( spep_2-3 + 22, ctzan,1.31,1.35);
setEffScaleKey( spep_2-3 + 24, ctzan,1.27,1.35);
setEffScaleKey( spep_2-3 + 26, ctzan,1.23,1.35);
setEffScaleKey( spep_2-3 + 28, ctzan,1.19,1.35);
setEffScaleKey( spep_2-3 + 30, ctzan,1.14,1.35);
setEffScaleKey( spep_2-3 + 32, ctzan,1.1,1.35);
setEffScaleKey( spep_2-3 + 34, ctzan,1.8,2.19);
setEffScaleKey( spep_2-3 + 36, ctzan,2.49,3.04);
setEffScaleKey( spep_2-3 + 38, ctzan,3.18,3.88);

setEffRotateKey( spep_2-3 + 8, ctzan, 11.8 );
setEffRotateKey( spep_2-3 + 10, ctzan, 12 );
setEffRotateKey( spep_2-3 + 38, ctzan, 12 );

setEffAlphaKey( spep_2-3 + 8, ctzan, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzan, 255 );
setEffAlphaKey( spep_2-3 + 34, ctzan, 170 );
setEffAlphaKey( spep_2-3 + 36, ctzan, 85 );
setEffAlphaKey( spep_2-3 + 38, ctzan, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 8,  906, 40, 0x100, -1, 0, 0, 54.6 );
setEffShake( spep_2-3 + 8, shuchusen2, 40, 20 );
setEffMoveKey( spep_2-3 + 8, shuchusen2, 0, 54.6 , 0 );
setEffMoveKey( spep_2-3 + 48, shuchusen2, 0, 54.6 , 0 );

setEffScaleKey( spep_2-3 + 8, shuchusen2, 1.08, 1.24 );
setEffScaleKey( spep_2-3 + 48, shuchusen2, 1.08, 1.24 );

setEffRotateKey( spep_2-3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 48, shuchusen2, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 287.9, 83.9 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 262.2, 79.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 236.6, 75.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, 211, 71.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, 185.4, 67 , 0 );
setMoveKey( spep_2-3 + 10, 1, 173.5, 74 , 0 );
setMoveKey( spep_2-3 + 12, 1, 131.3, 55.7 , 0 );
setMoveKey( spep_2-3 + 14, 1, 127.3, 35.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 70.9, 55.9 , 0 );
setMoveKey( spep_2-3 + 18, 1, 56.6, 33.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 39.1, 48.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 9.8, 41 , 0 );
setMoveKey( spep_2-3 + 24, 1, -2.8, 35.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, -8, 29.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, -13.1, 23.5 , 0 );
setMoveKey( spep_2-3 + 30, 1, -25.7, 25.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, -38.2, 26.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, -47.1, 24.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, -56, 22.2 , 0 );
setMoveKey( spep_2-3 + 38, 1, -64.8, 20.1 , 0 );
setMoveKey( spep_2-3 + 40, 1, -73.7, 17.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, -82.6, 15.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, -91.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, -100.3, 11.4 , 0 );
setMoveKey( spep_2-3 + 48, 1, -109.2, 9.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 48, 1, 1.8, 1.8 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 48, 1, 1.5, 1.5 );

--SE
--横切り
SE006 = playSe( spep_2 + 0, 1189 );
SE007 = playSe( spep_2 + 4, 1143 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 86 );
SE008 = playSe( spep_2 + 6, 1032 );
setSeVolumeByWorkId( spep_2 + 6, SE008, 103 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+46;
------------------------------------------------------
-- 地面着地→もう一度敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
landing_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,landing_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 116,landing_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,landing_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116,landing_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0,landing_f, 0 );
setEffRotateKey( spep_3 + 116,landing_f, 0 );
setEffAlphaKey( spep_3 + 0,landing_f, 255 );
setEffAlphaKey( spep_3 + 114,landing_f, 255 );
setEffAlphaKey( spep_3 + 115,landing_f, 255 );
setEffAlphaKey( spep_3 + 116,landing_f, 0 );

-- ** エフェクト等 ** --
landing_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,landing_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 116,landing_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,landing_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116,landing_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0,landing_b, 0 );
setEffRotateKey( spep_3 + 116,landing_b, 0 );
setEffAlphaKey( spep_3 + 0,landing_b, 255 );
setEffAlphaKey( spep_3 + 114,landing_b, 255 );
setEffAlphaKey( spep_3 + 115,landing_b, 255 );
setEffAlphaKey( spep_3 + 116,landing_b, 0 );

--文字エントリー
ctba = entryEffectLife( spep_3-3 + 44,  10022, 24, 0x100, -1, 0, 123.8, 46.9 );--バッ
setEffShake( spep_3-3 + 44, ctba, 24, 10 );
setEffMoveKey( spep_3-3 + 44, ctba, 123.8, 46.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctba, 124.4, 50.3 , 0 );
setEffMoveKey( spep_3-3 + 48, ctba, 122.9, 43 , 0 );
setEffMoveKey( spep_3-3 + 50, ctba, 113.9, 49.4 , 0 );
setEffMoveKey( spep_3-3 + 52, ctba, 131.3, 49 , 0 );
setEffMoveKey( spep_3-3 + 54, ctba, 127.3, 49 , 0 );
setEffMoveKey( spep_3-3 + 56, ctba, 123.2, 49 , 0 );
setEffMoveKey( spep_3-3 + 58, ctba, 123, 50.1 , 0 );
setEffMoveKey( spep_3-3 + 60, ctba, 122.9, 51.3 , 0 );
setEffMoveKey( spep_3-3 + 62, ctba, 123, 50.2 , 0 );
setEffMoveKey( spep_3-3 + 64, ctba, 122.9, 49.8 , 0 );
setEffMoveKey( spep_3-3 + 66, ctba, 122.4, 52.3 , 0 );
setEffMoveKey( spep_3-3 + 68, ctba, 122.1, 53.4 , 0 );

setEffScaleKey( spep_3-3 + 44, ctba, 0, 0 );
setEffScaleKey( spep_3-3 + 46, ctba, 0.2, 0.21 );
setEffScaleKey( spep_3-3 + 48, ctba, 0.4, 0.41 );
setEffScaleKey( spep_3-3 + 50, ctba, 0.59, 0.62 );
setEffScaleKey( spep_3-3 + 52, ctba, 0.6, 0.63 );
setEffScaleKey( spep_3-3 + 54, ctba, 0.61, 0.64 );
setEffScaleKey( spep_3-3 + 56, ctba, 0.62, 0.65 );
setEffScaleKey( spep_3-3 + 58, ctba, 0.63, 0.66 );
setEffScaleKey( spep_3-3 + 60, ctba, 0.64, 0.67 );
setEffScaleKey( spep_3-3 + 62, ctba, 0.65, 0.68 );
setEffScaleKey( spep_3-3 + 64, ctba, 0.87, 0.89 );
setEffScaleKey( spep_3-3 + 66, ctba, 1.08, 1.09 );
setEffScaleKey( spep_3-3 + 68, ctba, 1.29, 1.3 );

setEffRotateKey( spep_3-3 + 44, ctba, 25 );
setEffRotateKey( spep_3-3 + 46, ctba, 24.9 );
setEffRotateKey( spep_3-3 + 68, ctba, 24.9 );

setEffAlphaKey( spep_3-3 + 44, ctba, 255 );
setEffAlphaKey( spep_3-3 + 62, ctba, 255 );
setEffAlphaKey( spep_3-3 + 64, ctba, 170 );
setEffAlphaKey( spep_3-3 + 66, ctba, 85 );
setEffAlphaKey( spep_3-3 + 68, ctba, 0 );

--敵の動き
setDisp( spep_3-3 + 13, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 34.8, -687.6 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 28.5, -745.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 22.2, -802.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 15.8, -860.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 9.5, -918 , 0 );
setMoveKey( spep_3-3 + 10, 1, 3.2, -975.6 , 0 );
setMoveKey( spep_3-3 + 13, 1, -3.1, -1033.2 , 0 );

setScaleKey( spep_3 + 0, 1, 6.93, 6.93 );
--setScaleKey( spep_3-3 + 2, 1, 7.36, 7.36 );
setScaleKey( spep_3-3 + 4, 1, 7.8, 7.8 );
setScaleKey( spep_3-3 + 6, 1, 8.23, 8.23 );
setScaleKey( spep_3-3 + 8, 1, 8.67, 8.67 );
setScaleKey( spep_3-3 + 10, 1, 9.1, 9.1 );
setScaleKey( spep_3-3 + 13, 1, 9.54, 9.54 );

setRotateKey( spep_3 + 0, 1, 26 );
setRotateKey( spep_3-3 + 13, 1, 26 );


--敵の動き
setDisp( spep_3-3 + 100, 1, 1 );
setDisp( spep_3-2 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );

a=120;

setMoveKey( spep_3-3 + 100, 1, 125-a, -851.2 , 0 );
setMoveKey( spep_3-3 + 102, 1, 123.7-a, -817.9 , 0 );
setMoveKey( spep_3-3 + 104, 1, 122.3-a, -784.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, 121-a, -751.4 , 0 );
setMoveKey( spep_3-3 + 108, 1, 119.7-a, -718.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 118.3-a, -684.8 , 0 );
setMoveKey( spep_3-3 + 112, 1, 117-a, -651.6 , 0 );
setMoveKey( spep_3-3 + 114, 1, 115.7-a, -618.3 , 0 );
setMoveKey( spep_3-3 + 116, 1, 114.3-a, -585 , 0 );
setMoveKey( spep_3-2 + 118, 1, 113-a, -551.8 , 0 );

setScaleKey( spep_3-3 + 100, 1, 10.07, 10.07 );
setScaleKey( spep_3-3 + 102, 1, 9.91, 9.91 );
setScaleKey( spep_3-3 + 104, 1, 9.76, 9.76 );
setScaleKey( spep_3-3 + 106, 1, 9.6, 9.6 );
setScaleKey( spep_3-3 + 108, 1, 9.45, 9.45 );
setScaleKey( spep_3-3 + 110, 1, 9.29, 9.29 );
setScaleKey( spep_3-3 + 112, 1, 9.14, 9.14 );
setScaleKey( spep_3-3 + 114, 1, 8.98, 8.98 );
setScaleKey( spep_3-3 + 116, 1, 8.83, 8.83 );
setScaleKey( spep_3-2 + 118, 1, 8.67, 8.67 );

setRotateKey( spep_3-3 + 100, 1, -9 );
setRotateKey( spep_3-2 + 118, 1, -9 );

--SE
--おりる
SE009 = playSe( spep_3 + 0, 63 );
stopSe( spep_3 + 36, SE009, 12 );

--着地
SE010 = playSe( spep_3 + 30, 1108 );
setSeVolumeByWorkId( spep_3 + 30, SE010, 186 );
SE011 = playSe( spep_3 + 32, 1106 );
setSeVolumeByWorkId( spep_3 + 32, SE011, 216 );

--飛び上がる
SE012 = playSe( spep_3 + 44, 1182 );
SE013 = playSe( spep_3 + 44, 1207 );
setSeVolumeByWorkId( spep_3 + 44, SE013, 0 );
setSeVolumeByWorkId( spep_3 + 45, SE013, 3.4 );
setSeVolumeByWorkId( spep_3 + 46, SE013, 6.8 );
setSeVolumeByWorkId( spep_3 + 47, SE013, 10.2 );
setSeVolumeByWorkId( spep_3 + 48, SE013, 13.6 );
setSeVolumeByWorkId( spep_3 + 49, SE013, 17 );
setSeVolumeByWorkId( spep_3 + 50, SE013, 20.4 );
setSeVolumeByWorkId( spep_3 + 51, SE013, 23.8 );
setSeVolumeByWorkId( spep_3 + 52, SE013, 27.2 );
setSeVolumeByWorkId( spep_3 + 53, SE013, 30.6 );
setSeVolumeByWorkId( spep_3 + 54, SE013, 34 );
setSeVolumeByWorkId( spep_3 + 55, SE013, 37.4 );
setSeVolumeByWorkId( spep_3 + 56, SE013, 40.8 );
setSeVolumeByWorkId( spep_3 + 57, SE013, 44.2 );
setSeVolumeByWorkId( spep_3 + 58, SE013, 47.6 );
setSeVolumeByWorkId( spep_3 + 59, SE013, 51 );
setSeVolumeByWorkId( spep_3 + 60, SE013, 54 );
stopSe( spep_3 + 98, SE013, 26 );
SE014 = playSe( spep_3 + 44, 1116 );
setSeVolumeByWorkId( spep_3 + 44, SE014, 77 );
SE016 = playSe( spep_3 + 68, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 220, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+116;
------------------------------------------------------
-- 斬撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_4 + 20,cut, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,cut, -1.0, 1.0 );
setEffScaleKey( spep_4 + 20,cut, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,cut, 0 );
setEffRotateKey( spep_4 + 20,cut, 0 );
setEffAlphaKey( spep_4 + 0,cut, 255 );
setEffAlphaKey( spep_4 + 18,cut, 255 );
setEffAlphaKey( spep_4 + 19,cut, 255 );
setEffAlphaKey( spep_4 + 20,cut, 0 );

--SE
--飛び上がる
stopSe( spep_4 + 0, SE029, 10 );

--ラスト切り
SE016 = playSe( spep_4 + 0, 1004 );
SE017 = playSe( spep_4 + 2, 1061 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 121 );
SE018 = playSe( spep_4 + 2, 1142 );
setSeVolumeByWorkId( spep_4 + 2, SE018, 99 )
SE019 = playSe( spep_4 + 4, 1318 );
setSeVolumeByWorkId( spep_4 + 4, SE019, 126 );
SE020 = playSe( spep_4 + 4, 1319,"",0.6 );
setSeVolumeByWorkId( spep_4 + 4, SE020, 158 );
setTimeStretch( SE020, 0.84, 10, 1 );
SE021 = playSe( spep_4 + 6, 1032 );
setSeVolumeByWorkId( spep_4 + 6, SE021, 126 );
SE022 = playSe( spep_4 + 10, 1141 );
setSeVolumeByWorkId( spep_4 + 10, SE022, 121 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 24, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+20;
------------------------------------------------------
-- 敵を斬った後の余韻
------------------------------------------------------
-- ** エフェクト等 ** --
afterglow_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,afterglow_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 180,afterglow_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,afterglow_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 180,afterglow_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0,afterglow_f, 0 );
setEffRotateKey( spep_5 + 180,afterglow_f, 0 );
setEffAlphaKey( spep_5 + 0,afterglow_f, 255 );
setEffAlphaKey( spep_5 + 180,afterglow_f, 255 );

-- ** エフェクト等 ** --
afterglow_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,afterglow_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180,afterglow_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,afterglow_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 180,afterglow_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0,afterglow_b, 0 );
setEffRotateKey( spep_5 + 180,afterglow_b, 0 );
setEffAlphaKey( spep_5 + 0,afterglow_b, 255 );
setEffAlphaKey( spep_5 + 180,afterglow_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, -56.6, 12.8 , 0 );
setMoveKey( spep_5 + 2, 1, -62.2, 16.4 , 0 );
setMoveKey( spep_5 + 4, 1, -53.4, 7.8 , 0 );
setMoveKey( spep_5 + 6, 1, -47.7, 13.9 , 0 );
setMoveKey( spep_5 + 8, 1, -55.5, 11.5 , 0 );
setMoveKey( spep_5 + 10, 1, -55.3, 11.2 , 0 );
setMoveKey( spep_5 + 12, 1, -55, 10.8 , 0 );
setMoveKey( spep_5 + 14, 1, -54.8, 10.5 , 0 );
setMoveKey( spep_5 + 16, 1, -54.5, 10.1 , 0 );
setMoveKey( spep_5 + 18, 1, -54.2, 9.8 , 0 );
setMoveKey( spep_5 + 20, 1, -54, 9.5 , 0 );
setMoveKey( spep_5 + 22, 1, -53.7, 9.1 , 0 );
setMoveKey( spep_5 + 24, 1, -53.4, 8.8 , 0 );
setMoveKey( spep_5 + 26, 1, -53.2, 8.4 , 0 );
setMoveKey( spep_5 + 28, 1, -52.9, 8.1 , 0 );
setMoveKey( spep_5 + 30, 1, -52.7, 7.8 , 0 );
setMoveKey( spep_5 + 32, 1, -52.4, 7.4 , 0 );
setMoveKey( spep_5 + 34, 1, -52.1, 7.1 , 0 );
setMoveKey( spep_5 + 36, 1, -51.9, 6.7 , 0 );
setMoveKey( spep_5 + 38, 1, -51.6, 6.4 , 0 );
setMoveKey( spep_5 + 40, 1, -51.3, 6.1 , 0 );
setMoveKey( spep_5 + 42, 1, -51.1, 5.7 , 0 );
setMoveKey( spep_5 + 44, 1, -50.8, 5.4 , 0 );
setMoveKey( spep_5 + 46, 1, -50.6, 5 , 0 );
setMoveKey( spep_5 + 48, 1, -50.3, 4.7 , 0 );
setMoveKey( spep_5 + 50, 1, -50, 4.4 , 0 );
setMoveKey( spep_5 + 52, 1, -49.8, 4 , 0 );
setMoveKey( spep_5 + 54, 1, -49.5, 3.7 , 0 );
setMoveKey( spep_5 + 56, 1, -49.2, 3.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 2, 1, 1.49, 1.49 );
setScaleKey( spep_5 + 4, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 6, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 8, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 14, 1, 1.42, 1.43 );
setScaleKey( spep_5 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 30, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 32, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 34, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 36, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 38, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 40, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 44, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 46, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 48, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 50, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 54, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 56, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 56, 1, 0 );

--SE
--爆発前予兆
SE023 = playSe( spep_5 + 0, 1157 );
stopSe( spep_5 + 78, SE023, 10 );

--爆発
SE024 = playSe( spep_5 + 52, 1023 );
SE025 = playSe( spep_5 + 56, 1159 );
setSeVolumeByWorkId( spep_5 + 56, SE025, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 76, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +70 );
endPhase( spep_5 + 170 );
end