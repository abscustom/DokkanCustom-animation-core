--1023330:魔神プティン_アイシクルトリック
--sp_effect_a7_00046

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
SP_01=	158625	;--	杖を回す　カットイン
SP_02=	158626	;--	杖が光る
SP_03=	158627	;--	氷を放つ
SP_04=	158629	;--	敵にあたり～フィニッシュ（手前）　
SP_05=	158630	;--	敵にあたり～フィニッシュ（奥）　

--エフェクト(てき)
SP_01x=	158625	;--	杖を回す　カットイン	
SP_02x=	158626	;--	杖が光る	
SP_03x=	158628	;--	氷を放つ	(敵)
SP_04x=	158631	;--	敵にあたり～フィニッシュ（手前）　	(敵)
SP_05x=	158632	;--	敵にあたり～フィニッシュ（奥）　	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--杖を回す　カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
wand = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, wand, 0, 0, 0 );
setEffMoveKey( spep_0 + 182, wand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, wand, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, wand, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, wand, 0 );
setEffRotateKey( spep_0 + 182, wand, 0 );
setEffAlphaKey( spep_0 + 0, wand, 255 );
setEffAlphaKey( spep_0 + 180, wand, 255 );
setEffAlphaKey( spep_0 + 181, wand, 255 );
setEffAlphaKey( spep_0 + 182, wand, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

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

--SE
--魔法陣広がる
SE001 = playSeVer2( spep_0 + 0, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 266, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 123 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--杖まわす
SE005 = playSeVer2( spep_0 + 106, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
SE006 = playSeVer2( spep_0 + 106, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE006, 269 );
SE004 = playSeVer2( spep_0 + 110, 1263, "", 0, 8, 0, -1);
setStartTimeMs( SE004,  433 );

--次の準備
spep_1=spep_0+182;
------------------------------------------------------
--杖が光る
------------------------------------------------------
-- ** エフェクト等 ** --
shine = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, shine, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, shine, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shine, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, shine, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shine, 0 );
setEffRotateKey( spep_1 + 60, shine, 0 );
setEffAlphaKey( spep_1 + 0, shine, 255 );
setEffAlphaKey( spep_1 + 60, shine, 255 );

--SE
--杖光る
SE007 = playSeVer2( spep_1 + 4, 1026, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE007, 85 );
SE008 = playSeVer2( spep_1 + 4, 1221, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE008, 178 );
SE009 = playSeVer2( spep_1 + 4, 1289, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE009, 35 );

--白フェード
entryFade( spep_1 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 92; 
------------------------------------------------------
--氷を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
ice = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ice, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, ice, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ice, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, ice, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ice, 0 );
setEffRotateKey( spep_3 + 86, ice, 0 );
setEffAlphaKey( spep_3 + 0, ice, 255 );
setEffAlphaKey( spep_3 + 84, ice, 255 );
setEffAlphaKey( spep_3 + 85, ice, 255 );
setEffAlphaKey( spep_3 + 86, ice, 0 );

--SE
--発射前溜め
SE011 = playSeVer2( spep_3 + 0, 1221, "",spep_3 + 58, 0, 6, -1);
SE012 = playSeVer2( spep_3 + 0, 1241, "",spep_3 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 81 );
SE013 = playSeVer2( spep_3 + 0, 1240, "",spep_3 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 123 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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
--SE
--杖振りかぶる
SE014 = playSeVer2( spep_3 + 20, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE014, 108 );

--氷魔法発射
SE015 = playSeVer2( spep_3 + 58, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE015, 86 );
SE016 = playSeVer2( spep_3 + 58, 1173, "",spep_3 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE016, 114 );
SE017 = playSeVer2( spep_3 + 58, 1044, "",spep_3 + 148, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 58, SE017, 115 );
SE018 = playSeVer2( spep_3 + 58, 1250, "",spep_3 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 58, SE018, 229 );

--氷向かっていく
SE019 = playSeVer2( spep_3 + 58, 1061, "",spep_3 + 98, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE019, 81 );
setPitch( spep_3 + 58, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_4= spep_3 + 86; 
------------------------------------------------------
--敵にあたり～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 226, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 226, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 226, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 226, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 226, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 226, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 226, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 226, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 40, 1, 108 );
changeAnime( spep_4-3 + 108, 1, 106 );

setMoveKey( spep_4 + 0, 1, 175.1, 202.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 171.7, 199.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 168.3, 195.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, 164.9, 192.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 161.6, 188.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, 158.2, 185.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 154.9, 182.1 , 0 );
setMoveKey( spep_4-3 + 14, 1, 151.5, 178.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 148.1, 175.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 144.7, 172 , 0 );
setMoveKey( spep_4-3 + 20, 1, 141.4, 168.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 138, 165.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 134.7, 161.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 131.2, 158.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 127.9, 155 , 0 );
setMoveKey( spep_4-3 + 30, 1, 124.6, 151.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 121.2, 148.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 40.4, 66.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, -40.4, -14.8 , 0 );
setMoveKey( spep_4-3 + 39, 1, -40.4, -1.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, 55.4, 16.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 55.4, 65.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 55.4, 2.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 34.7, 34 , 0 );
setMoveKey( spep_4-3 + 48, 1, 55.4, 34 , 0 );
setMoveKey( spep_4-3 + 58, 1, 55.4, 34 , 0 );
setMoveKey( spep_4-3 + 60, 1, 41.9, 19 , 0 );
setMoveKey( spep_4-3 + 62, 1, 28.4, 3.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 27.3, 2.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 26.1, 1.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 26.1, 1.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 26, 1.3 , 0 );
setMoveKey( spep_4-3 + 72, 1, 25.9, 1.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_4-3 + 76, 1, 25.8, 1.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 25.7, 1 , 0 );
setMoveKey( spep_4-3 + 80, 1, 25.7, 0.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 25.5, 0.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 25.4, 0.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, 25.2, 0.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 25.1, 0.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 24.9, 0.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 24.8, 0.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, 24.6, 0.9 , 0 );
setMoveKey( spep_4-3 + 96, 1, 24.5, 0.9 , 0 );
setMoveKey( spep_4-3 + 98, 1, 24.3, 0.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, 24.2, 0.8 , 0 );
setMoveKey( spep_4-3 + 102, 1, 24, 0.8 , 0 );
setMoveKey( spep_4-3 + 104, 1, 23.9, 0.8 , 0 );
setMoveKey( spep_4-3 + 107, 1, 23.8, 0.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, -7.7, -1 , 0 );
setMoveKey( spep_4-3 + 110, 1, -7.7, -49 , 0 );
setMoveKey( spep_4-3 + 112, 1, -31.7, -25 , 0 );
setMoveKey( spep_4-3 + 114, 1, 16.3, -25 , 0 );
setMoveKey( spep_4-3 + 116, 1, -7.7, -1 , 0 );
setMoveKey( spep_4-3 + 118, 1, -7.7, -49 , 0 );
setMoveKey( spep_4-3 + 120, 1, -23.7, -25 , 0 );
setMoveKey( spep_4-3 + 122, 1, 8.3, -25 , 0 );
setMoveKey( spep_4-3 + 124, 1, -7.7, -9 , 0 );
setMoveKey( spep_4-3 + 126, 1, -7.7, -41 , 0 );
setMoveKey( spep_4-3 + 128, 1, -23.7, -25 , 0 );
setMoveKey( spep_4-3 + 130, 1, 8.3, -25 , 0 );
setMoveKey( spep_4-3 + 132, 1, -7.7, -9 , 0 );
setMoveKey( spep_4-3 + 134, 1, -7.7, -41 , 0 );
setMoveKey( spep_4-3 + 136, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 138, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 140, 1, -7.7, -17 , 0 );
setMoveKey( spep_4-3 + 142, 1, -7.7, -33 , 0 );
setMoveKey( spep_4-3 + 144, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 146, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 148, 1, -7.7, -17 , 0 );
setMoveKey( spep_4-3 + 150, 1, -7.7, -33 , 0 );
setMoveKey( spep_4-3 + 152, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 154, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 156, 1, -7.7, -25 , 0 );
setMoveKey( spep_4-3 + 158, 1, -7.8, -25 , 0 );
setMoveKey( spep_4-3 + 160, 1, -7.9, -25 , 0 );
setMoveKey( spep_4-3 + 162, 1, -8, -25 , 0 );
setMoveKey( spep_4-3 + 164, 1, -8.1, -25 , 0 );
setMoveKey( spep_4-3 + 166, 1, -8.2, -25.1 , 0 );
setMoveKey( spep_4-3 + 168, 1, -8.3, -25 , 0 );
setMoveKey( spep_4-3 + 170, 1, -8.4, -25 , 0 );
setMoveKey( spep_4-3 + 172, 1, -8.5, -25 , 0 );
setMoveKey( spep_4-3 + 174, 1, -8.6, -25 , 0 );
setMoveKey( spep_4-3 + 176, 1, -8.7, -25.1 , 0 );
setMoveKey( spep_4-3 + 178, 1, -8.8, -25.1 , 0 );
setMoveKey( spep_4-3 + 180, 1, -8.9, -25.1 , 0 );
setMoveKey( spep_4-3 + 182, 1, -9, -25.1 , 0 );
setMoveKey( spep_4-3 + 184, 1, -9.1, -25.1 , 0 );
setMoveKey( spep_4-3 + 186, 1, -9.1, -25.1 , 0 );
setMoveKey( spep_4-3 + 188, 1, -9.2, -25.1 , 0 );
setMoveKey( spep_4-3 + 190, 1, -9.3, -25.1 , 0 );
setMoveKey( spep_4-3 + 192, 1, -9.4, -25.1 , 0 );
setMoveKey( spep_4-3 + 194, 1, -9.5, -25.1 , 0 );
setMoveKey( spep_4-3 + 196, 1, -9.6, -25.1 , 0 );
setMoveKey( spep_4-3 + 198, 1, -9.7, -25.1 , 0 );
setMoveKey( spep_4-3 + 200, 1, -9.8, -25.1 , 0 );
setMoveKey( spep_4-3 + 202, 1, -9.9, -25.1 , 0 );
setMoveKey( spep_4-3 + 204, 1, -10, -25.1 , 0 );
setMoveKey( spep_4 + 220, 1, -10, -25.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_4-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 10, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 12, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 18, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 20, 1, 1, 1 );
setScaleKey( spep_4-3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4-3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 26, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 32, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 36, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 39, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 40, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 64, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 66, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 74, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 80, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 96, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 98, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 107, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 158, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 160, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 164, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 174, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 178, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 180, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 184, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 186, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 192, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 194, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 198, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 200, 1, 0.65, 0.65 );
setScaleKey( spep_4-3 + 220, 1, 0.65, 0.65 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 107, 1, 0 );
setRotateKey( spep_4-3 + 108, 1, -33 );
setRotateKey( spep_4 + 220, 1, -33 );

--SE
--氷向かっていく
SE020 = playSeVer2( spep_4 + 0, 1061, "",spep_4 + 38, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 0, SE020, 81 );
setPitch( spep_4 + 0, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );
SE021 = playSeVer2( spep_4 + 14, 1061, "",spep_4 + 50, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 14, SE021, 78 );
setPitch( spep_4 + 14, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );
SE022 = playSeVer2( spep_4 + 32, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE022, 136 );
setPitch( spep_4 + 32, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );

--氷になる
SE023 = playSeVer2( spep_4 + 32, 1330, "",spep_4 + 82, 0, 20, -1);

--爆発
SE024 = playSeVer2( spep_4 + 108, 1017, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 108, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 108 );
endPhase( spep_4 + 216 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--杖を回す　カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
wand = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, wand, 0, 0, 0 );
setEffMoveKey( spep_0 + 182, wand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, wand, -1.0, 1.0 );
setEffScaleKey( spep_0 + 182, wand, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, wand, 0 );
setEffRotateKey( spep_0 + 182, wand, 0 );
setEffAlphaKey( spep_0 + 0, wand, 255 );
setEffAlphaKey( spep_0 + 180, wand, 255 );
setEffAlphaKey( spep_0 + 181, wand, 255 );
setEffAlphaKey( spep_0 + 182, wand, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

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

--SE
--魔法陣広がる
SE001 = playSeVer2( spep_0 + 0, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE002 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 266, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 123 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--杖まわす
SE005 = playSeVer2( spep_0 + 106, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
SE006 = playSeVer2( spep_0 + 106, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE006, 269 );
SE004 = playSeVer2( spep_0 + 110, 1263, "", 0, 8, 0, -1);
setStartTimeMs( SE004,  433 );

--次の準備
spep_1=spep_0+182;
------------------------------------------------------
--杖が光る
------------------------------------------------------
-- ** エフェクト等 ** --
shine = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, shine, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, shine, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shine, -1.0, 1.0 );
setEffScaleKey( spep_1 + 60, shine, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shine, 0 );
setEffRotateKey( spep_1 + 60, shine, 0 );
setEffAlphaKey( spep_1 + 0, shine, 255 );
setEffAlphaKey( spep_1 + 60, shine, 255 );

--SE
--杖光る
SE007 = playSeVer2( spep_1 + 4, 1026, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE007, 85 );
SE008 = playSeVer2( spep_1 + 4, 1221, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE008, 178 );
SE009 = playSeVer2( spep_1 + 4, 1289, "",spep_1 + 62, 0, 6, 0.6);
setSeVolumeByWorkId( spep_1 + 4, SE009, 35 );

--白フェード
entryFade( spep_1 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 92; 
------------------------------------------------------
--氷を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
ice = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ice, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, ice, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, ice, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, ice, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ice, 0 );
setEffRotateKey( spep_3 + 86, ice, 0 );
setEffAlphaKey( spep_3 + 0, ice, 255 );
setEffAlphaKey( spep_3 + 84, ice, 255 );
setEffAlphaKey( spep_3 + 85, ice, 255 );
setEffAlphaKey( spep_3 + 86, ice, 0 );

--SE
--発射前溜め
SE011 = playSeVer2( spep_3 + 0, 1221, "",spep_3 + 58, 0, 6, -1);
SE012 = playSeVer2( spep_3 + 0, 1241, "",spep_3 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 81 );
SE013 = playSeVer2( spep_3 + 0, 1240, "",spep_3 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 123 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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
--SE
--杖振りかぶる
SE014 = playSeVer2( spep_3 + 20, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE014, 108 );

--氷魔法発射
SE015 = playSeVer2( spep_3 + 58, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE015, 86 );
SE016 = playSeVer2( spep_3 + 58, 1173, "",spep_3 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE016, 114 );
SE017 = playSeVer2( spep_3 + 58, 1044, "",spep_3 + 148, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 58, SE017, 115 );
SE018 = playSeVer2( spep_3 + 58, 1250, "",spep_3 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 58, SE018, 229 );

--氷向かっていく
SE019 = playSeVer2( spep_3 + 58, 1061, "",spep_3 + 98, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 58, SE019, 81 );
setPitch( spep_3 + 58, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_4= spep_3 + 86; 
------------------------------------------------------
--敵にあたり～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 226, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 226, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 226, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 226, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 226, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 226, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 226, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 226, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 40, 1, 108 );
changeAnime( spep_4-3 + 108, 1, 106 );

setMoveKey( spep_4 + 0, 1, 175.1, 202.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 171.7, 199.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, 168.3, 195.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, 164.9, 192.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 161.6, 188.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, 158.2, 185.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 154.9, 182.1 , 0 );
setMoveKey( spep_4-3 + 14, 1, 151.5, 178.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 148.1, 175.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 144.7, 172 , 0 );
setMoveKey( spep_4-3 + 20, 1, 141.4, 168.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 138, 165.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, 134.7, 161.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 131.2, 158.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 127.9, 155 , 0 );
setMoveKey( spep_4-3 + 30, 1, 124.6, 151.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 121.2, 148.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 40.4, 66.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, -40.4, -14.8 , 0 );
setMoveKey( spep_4-3 + 39, 1, -40.4, -1.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, 55.4, 16.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 55.4, 65.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 55.4, 2.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 34.7, 34 , 0 );
setMoveKey( spep_4-3 + 48, 1, 55.4, 34 , 0 );
setMoveKey( spep_4-3 + 58, 1, 55.4, 34 , 0 );
setMoveKey( spep_4-3 + 60, 1, 41.9, 19 , 0 );
setMoveKey( spep_4-3 + 62, 1, 28.4, 3.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 27.3, 2.7 , 0 );
setMoveKey( spep_4-3 + 66, 1, 26.1, 1.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 26.1, 1.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 26, 1.3 , 0 );
setMoveKey( spep_4-3 + 72, 1, 25.9, 1.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, 25.9, 1.2 , 0 );
setMoveKey( spep_4-3 + 76, 1, 25.8, 1.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 25.7, 1 , 0 );
setMoveKey( spep_4-3 + 80, 1, 25.7, 0.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 25.5, 0.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 25.4, 0.9 , 0 );
setMoveKey( spep_4-3 + 86, 1, 25.2, 0.9 , 0 );
setMoveKey( spep_4-3 + 88, 1, 25.1, 0.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 24.9, 0.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 24.8, 0.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, 24.6, 0.9 , 0 );
setMoveKey( spep_4-3 + 96, 1, 24.5, 0.9 , 0 );
setMoveKey( spep_4-3 + 98, 1, 24.3, 0.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, 24.2, 0.8 , 0 );
setMoveKey( spep_4-3 + 102, 1, 24, 0.8 , 0 );
setMoveKey( spep_4-3 + 104, 1, 23.9, 0.8 , 0 );
setMoveKey( spep_4-3 + 107, 1, 23.8, 0.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, -7.7, -1 , 0 );
setMoveKey( spep_4-3 + 110, 1, -7.7, -49 , 0 );
setMoveKey( spep_4-3 + 112, 1, -31.7, -25 , 0 );
setMoveKey( spep_4-3 + 114, 1, 16.3, -25 , 0 );
setMoveKey( spep_4-3 + 116, 1, -7.7, -1 , 0 );
setMoveKey( spep_4-3 + 118, 1, -7.7, -49 , 0 );
setMoveKey( spep_4-3 + 120, 1, -23.7, -25 , 0 );
setMoveKey( spep_4-3 + 122, 1, 8.3, -25 , 0 );
setMoveKey( spep_4-3 + 124, 1, -7.7, -9 , 0 );
setMoveKey( spep_4-3 + 126, 1, -7.7, -41 , 0 );
setMoveKey( spep_4-3 + 128, 1, -23.7, -25 , 0 );
setMoveKey( spep_4-3 + 130, 1, 8.3, -25 , 0 );
setMoveKey( spep_4-3 + 132, 1, -7.7, -9 , 0 );
setMoveKey( spep_4-3 + 134, 1, -7.7, -41 , 0 );
setMoveKey( spep_4-3 + 136, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 138, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 140, 1, -7.7, -17 , 0 );
setMoveKey( spep_4-3 + 142, 1, -7.7, -33 , 0 );
setMoveKey( spep_4-3 + 144, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 146, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 148, 1, -7.7, -17 , 0 );
setMoveKey( spep_4-3 + 150, 1, -7.7, -33 , 0 );
setMoveKey( spep_4-3 + 152, 1, -15.7, -25 , 0 );
setMoveKey( spep_4-3 + 154, 1, 0.3, -25 , 0 );
setMoveKey( spep_4-3 + 156, 1, -7.7, -25 , 0 );
setMoveKey( spep_4-3 + 158, 1, -7.8, -25 , 0 );
setMoveKey( spep_4-3 + 160, 1, -7.9, -25 , 0 );
setMoveKey( spep_4-3 + 162, 1, -8, -25 , 0 );
setMoveKey( spep_4-3 + 164, 1, -8.1, -25 , 0 );
setMoveKey( spep_4-3 + 166, 1, -8.2, -25.1 , 0 );
setMoveKey( spep_4-3 + 168, 1, -8.3, -25 , 0 );
setMoveKey( spep_4-3 + 170, 1, -8.4, -25 , 0 );
setMoveKey( spep_4-3 + 172, 1, -8.5, -25 , 0 );
setMoveKey( spep_4-3 + 174, 1, -8.6, -25 , 0 );
setMoveKey( spep_4-3 + 176, 1, -8.7, -25.1 , 0 );
setMoveKey( spep_4-3 + 178, 1, -8.8, -25.1 , 0 );
setMoveKey( spep_4-3 + 180, 1, -8.9, -25.1 , 0 );
setMoveKey( spep_4-3 + 182, 1, -9, -25.1 , 0 );
setMoveKey( spep_4-3 + 184, 1, -9.1, -25.1 , 0 );
setMoveKey( spep_4-3 + 186, 1, -9.1, -25.1 , 0 );
setMoveKey( spep_4-3 + 188, 1, -9.2, -25.1 , 0 );
setMoveKey( spep_4-3 + 190, 1, -9.3, -25.1 , 0 );
setMoveKey( spep_4-3 + 192, 1, -9.4, -25.1 , 0 );
setMoveKey( spep_4-3 + 194, 1, -9.5, -25.1 , 0 );
setMoveKey( spep_4-3 + 196, 1, -9.6, -25.1 , 0 );
setMoveKey( spep_4-3 + 198, 1, -9.7, -25.1 , 0 );
setMoveKey( spep_4-3 + 200, 1, -9.8, -25.1 , 0 );
setMoveKey( spep_4-3 + 202, 1, -9.9, -25.1 , 0 );
setMoveKey( spep_4-3 + 204, 1, -10, -25.1 , 0 );
setMoveKey( spep_4 + 220, 1, -10, -25.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_4-3 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 10, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 12, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_4-3 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 18, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 20, 1, 1, 1 );
setScaleKey( spep_4-3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4-3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 26, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 32, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 36, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 39, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 40, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_4-3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 64, 1, 0.92, 0.92 );
setScaleKey( spep_4-3 + 66, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4-3 + 74, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 80, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 96, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 98, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 107, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 158, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 160, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 164, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 174, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 178, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 180, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 184, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 186, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 192, 1, 0.67, 0.67 );
setScaleKey( spep_4-3 + 194, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 198, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 200, 1, 0.65, 0.65 );
setScaleKey( spep_4-3 + 220, 1, 0.65, 0.65 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 107, 1, 0 );
setRotateKey( spep_4-3 + 108, 1, -33 );
setRotateKey( spep_4 + 220, 1, -33 );

--SE
--氷向かっていく
SE020 = playSeVer2( spep_4 + 0, 1061, "",spep_4 + 38, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 0, SE020, 81 );
setPitch( spep_4 + 0, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );
SE021 = playSeVer2( spep_4 + 14, 1061, "",spep_4 + 50, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 14, SE021, 78 );
setPitch( spep_4 + 14, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );
SE022 = playSeVer2( spep_4 + 32, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE022, 136 );
setPitch( spep_4 + 32, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );

--氷になる
SE023 = playSeVer2( spep_4 + 32, 1330, "",spep_4 + 82, 0, 20, -1);

--爆発
SE024 = playSeVer2( spep_4 + 108, 1017, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 108, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 108 );
endPhase( spep_4 + 216 );
end