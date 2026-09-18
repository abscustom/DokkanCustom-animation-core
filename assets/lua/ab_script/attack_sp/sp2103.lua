--4021390:ベジータ(GT)(大猿)_超火炎砲_sp2103
--sp_effect_a3_00073
--sp2103

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
SP_01 = 156314;  --正対してして咆哮、ドラミング  ef_001
SP_02 = 156315;  --口から２方向に火炎砲  ef_002
SP_03 = 156317;  --火炎砲が敵にHIT   ef_003_eff
SP_04 = 156318;  --↑敵より奥の背景    ef_003_bg
SP_05 = 156321;  --追撃の火炎砲  ef_004
SP_06 = 156323;  --火炎砲が到達地点に向かう    ef_005
SP_07 = 156326;	--大爆発のシーンの捲き上る岩（大）	ef_006
SP_08 = 156327;	--大爆発のシーンの捲き上る岩（小）	ef_007
SP_09 = 1563;--魔人ベジータ・ファイナルエクスプロージョンで使用
SP_10 = 156328;--魔人ベジータ・ファイナルエクスプロージョンで使用
SP_11 = 156329;--魔人ベジータ・ファイナルエクスプロージョンで使用

--敵側
SP_02r = 156316;  --口から２方向に火炎砲  ef_002_r
SP_03r = 156319;  --火炎砲が的にHIT   ef_003_eff_r
SP_04r = 156320;  --↑敵より奥の背景    ef_003_bg_r
SP_05r = 156322;  --追撃の火炎砲  ef_004_r

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
--正対してして咆哮、ドラミング(176F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正対してして咆哮、ドラミング(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 176, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 176, first_f, 255 );

shuchusen1 = entryEffectLife( spep_0 + 17,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 17, shuchusen1, 80, 25 );
setEffMoveKey(   spep_0 + 17, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 97, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 17, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 97, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 17, shuchusen1, 0 );
setEffRotateKey( spep_0 + 97, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 70, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 80, shuchusen1, 200 );
setEffAlphaKey(  spep_0 + 90, shuchusen1, 170 );
setEffAlphaKey(  spep_0 + 97, shuchusen1, 0 );

spep_x = spep_0 + 80;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--咆哮1
SE001 = playSe( spep_0 + 20, 1125 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 141 );
stopSe( spep_0 +176 + 8, SE001, 0 );

--咆哮2
SE002 = playSe( spep_0 + 20, 1017 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 75 );

--咆哮3
SE003 = playSe( spep_0 + 20, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 74 );

--ドラミング１_1
SE004 = playSe( spep_0 + 70, 1182 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 141 );

--ドラミング１_2
SE005 = playSe( spep_0 + 70, 1014 );
setSeVolumeByWorkId( spep_0 + 70, SE005, 70 );

--顔カットイン	
SE006 = playSe( spep_0 + 92, 1018 );

--ドラミング２_1
SE007 = playSe( spep_0 + 96, 1182 );
setSeVolumeByWorkId( spep_0 + 96, SE007, 141 );

--ドラミング２_2
SE008 = playSe( spep_0 + 96, 1014 );
setSeVolumeByWorkId( spep_0 + 96, SE008, 89 );

--ドラミング３_1
SE009 = playSe( spep_0 + 118, 1182 );
setSeVolumeByWorkId( spep_0 + 122, SE009, 141 );

--ドラミング３_2
SE010 = playSe( spep_0 + 118, 1014 );

--ドラミング４_1
SE011 = playSe( spep_0 + 142, 1182 );

--ドラミング４_2
SE012 = playSe( spep_0 + 142, 1014 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 158, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;


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
speff = entryEffect( spep_1, 1507, 0x100, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0x100, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0x100, -1, 0, 0, 0); -- カード
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--口から２方向に火炎砲116F)
--------------------------------------
-- ** エフェクト等 ** --
bless = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --口から２方向に火炎砲(ef_002)
setEffMoveKey( spep_2 + 0, bless, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, bless, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bless, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, bless, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bless, 0 );
setEffRotateKey( spep_2 + 116, bless, 0 );
setEffAlphaKey( spep_2 + 0, bless, 255 );
setEffAlphaKey( spep_2 + 116, bless, 255 );

-- ** 音 ** --
--ビーム１_1
SE014 = playSe( spep_2 + 24, 1028 );
setSeVolumeByWorkId( spep_2 + 24, SE014, 89 );

--ビーム１_2
SE015 = playSe( spep_2 + 24, 1030 );

--ビーム１_3
SE016 = playSe( spep_2 + 24, 1177 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 82 );
stopSe( spep_2 + 86, SE016, 22 );

--ビーム１_4
SE017 = playSe( spep_2 + 24, 1145 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 76 );
stopSe( spep_2 + 86, SE017, 22 );

--ビーム２_1
SE018 = playSe( spep_2 + 88, 1028 );
setSeVolumeByWorkId( spep_2 + 88, SE018, 88 );

--ビーム２_2
SE019 = playSe( spep_2 + 88, 1030 );

--ビーム２_3
SE020 = playSe( spep_2 + 88, 1177 );
setSeVolumeByWorkId( spep_2 + 88, SE020, 80 );
stopSe( spep_2 +116 + 46, SE020, 48 );

--ビーム２_4
SE021 = playSe( spep_2 + 88, 1145 );
setSeVolumeByWorkId( spep_2 + 88, SE021, 79 );
stopSe( spep_2 +116 + 46, SE021, 48 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

--------------------------------------
--火炎砲が敵にHIT(140F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --火炎砲が敵にHIT(ef_003_eff)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 140, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 140, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵より奥の背景(ef_003_bg)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 140, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 140, hit_b, 255 );

setEffBlendColor( spep_3 + 0, hit_b, 1, 0.3, 0.3, 0.3, 0 )
setEffBlendColor( spep_3 + 6, hit_b, 1, 0.3, 0.3, 0.3, 0 )
setEffBlendColor( spep_3 + 8, hit_b, 1, 0.3, 0.3, 0.3, 0.2 )
setEffBlendColor( spep_3 + 10, hit_b, 1, 0.3, 0.3, 0.3, 0.3 )
setEffBlendColor( spep_3 + 12, hit_b, 1, 0.3, 0.3, 0.3, 0.4 )
setEffBlendColor( spep_3 + 14, hit_b, 1, 0.3, 0.3, 0.3, 0.5 )
setEffBlendColor( spep_3 + 16, hit_b, 1, 0.3, 0.3, 0.3, 0.6 )
setEffBlendColor( spep_3 + 18, hit_b, 1, 0.3, 0.3, 0.3, 0.7 )
setEffBlendColor( spep_3 + 20, hit_b, 1, 0.3, 0.3, 0.3, 0.8 )
setEffBlendColor( spep_3 + 22, hit_b, 1, 0.3, 0.3, 0.3, 0.9 )
setEffBlendColor( spep_3 + 24, hit_b, 1, 0.3, 0.3, 0.3, 1.0 )
setEffBlendColor( spep_3 + 140, hit_b, 1, 0.3, 0.3, 0.3, 1.0 )

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

a1=30;
b1=20;

setMoveKey( spep_3 + 0, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 1, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 2, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 3, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 4, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 5, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 6, 1, 44.8, -151.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 1, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 3, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 4, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 5, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 6, 1, 1.57, 1.57 );

setRotateKey( spep_3 + 0, 1, 15 );
setRotateKey( spep_3 + 1, 1, 15 );
setRotateKey( spep_3 + 2, 1, 15 );
setRotateKey( spep_3 + 3, 1, 15 );
setRotateKey( spep_3 + 4, 1, 15 );
setRotateKey( spep_3 + 5, 1, 15 );
setRotateKey( spep_3 + 6, 1, 15 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 16 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 44.8, -151.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 2, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 4, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 6, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 8, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 10, 1, 1.57, 1.57 );

    setRotateKey( SP_dodge + 0, 1, 15 );
    setRotateKey( SP_dodge + 2, 1, 15 );
    setRotateKey( SP_dodge + 4, 1, 15 );
    setRotateKey( SP_dodge + 6, 1, 15 );
    setRotateKey( SP_dodge + 8, 1, 15 );
    setRotateKey( SP_dodge + 10, 1, 15 );

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
setDisp( spep_3 + 76+1, 1, 0 );
setDisp( spep_3 -3 + 88, 1, 1 );
setDisp( spep_3 -3 + 143, 1, 0 );
changeAnime( spep_3 -3 + 36, 1, 106 );

a1=30;
b1=20;

setMoveKey( spep_3 -3 + 32, 1, 44.8 , -151.4 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 44.7 -a1, -151.5 +b1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 25.4 -a1, -149.4 +b1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 31.3 -a1, -157.2 +b1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 40.9 -a1, -170.8 +b1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 26.8 -a1, -151 +b1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 42.6 -a1, -120.1 +b1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 33.3 -a1, -77.5 +b1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 47.9 -a1, -62.3 +b1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 37.2 -a1, -32.9 +b1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 50.5 -a1, -31 +b1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 38.6 -a1, -32 +b1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 50.8 -a1, -13.4 +b1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 45.8 -a1, -20.3 +b1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 52.2 -a1, -6.1 +b1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 49.7 -a1, -16.4 +b1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 58 -a1, 3.7 +b1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 57.5 -a1, -7.1 +b1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 65.8 -a1, 4.2 +b1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 61.4 -a1, -11.5 +b1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 57.4 -a1, -7.5 +b1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 65.1 -a1, -5.4 +b1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 70.9 -a1, -21 +b1, 0 );
setMoveKey( spep_3 -3 + 79, 1, 71.3 -a1, -48.8 +b1, 0 );
--

a1=70;
b1=145;

setMoveKey( spep_3 -3 + 88, 1, -20 +a1, 229.3 -b1, 0 );
setMoveKey( spep_3 -3 + 90, 1, -12.7 +a1, 234.8 -b1, 0 );
setMoveKey( spep_3 -3 + 92, 1, -23.9 +a1, 241.2 -b1, 0 );
setMoveKey( spep_3 -3 + 94, 1, -15.5 +a1, 250.5 -b1, 0 );
setMoveKey( spep_3 -3 + 96, 1, -7.7 +a1, 253.5 -b1, 0 );
setMoveKey( spep_3 -3 + 98, 1, -11.6 +a1, 261.3 -b1, 0 );
setMoveKey( spep_3 -3 + 100, 1, -9.6 +a1, 265.2 -b1, 0 );
setMoveKey( spep_3 -3 + 102, 1, -5.7 +a1, 267.1 -b1, 0 );
setMoveKey( spep_3 -3 + 104, 1, -3.8 +a1, 274.9 -b1, 0 );
setMoveKey( spep_3 -3 + 106, 1, -13.5 +a1, 280.8 -b1, 0 );
setMoveKey( spep_3 -3 + 108, 1, -11.6 +a1, 282.7 -b1, 0 );
setMoveKey( spep_3 -3 + 110, 1, -13.5 +a1, 284.7 -b1, 0 );
setMoveKey( spep_3 -3 + 112, 1, -11.6 +a1, 286.6 -b1, 0 );
setMoveKey( spep_3 -3 + 114, 1, -13.5 +a1, 288.6 -b1, 0 );
setMoveKey( spep_3 -3 + 116, 1, -11.6 +a1, 290.5 -b1, 0 );
setMoveKey( spep_3 -3 + 118, 1, -13.5 +a1, 292.5 -b1, 0 );
setMoveKey( spep_3 -3 + 120, 1, 3.5 +a1, 298.1 -b1, 0 );
setMoveKey( spep_3 -3 + 122, 1, 9.2 +a1, 280.2 -b1, 0 );
setMoveKey( spep_3 -3 + 124, 1, 13.4 +a1, 270 -b1, 0 );
setMoveKey( spep_3 -3 + 126, 1, 17.3 +a1, 259.7 -b1, 0 );
setMoveKey( spep_3 -3 + 128, 1, 22.7 +a1, 238.2 -b1, 0 );
setMoveKey( spep_3 -3 + 130, 1, 30.5 +a1, 207.3 -b1, 0 );
setMoveKey( spep_3 -3 + 132, 1, 41.8 +a1, 172.1 -b1, 0 );
setMoveKey( spep_3 -3 + 134, 1, 44.9 +a1, 160.7 -b1, 0 );
setMoveKey( spep_3 -3 + 136, 1, 53 +a1, 108 -b1, 0 );
setMoveKey( spep_3 -3 + 138, 1, 56.8 +a1, 93 -b1, 0 );
setMoveKey( spep_3 -3 + 140, 1, 58 +a1, 79.2 -b1, 0 );
setMoveKey( spep_3 -3 + 142, 1, 61.8 +a1, 66.7 -b1, 0 );
setMoveKey( spep_3 -3 + 143, 1, 61.8 +a1, 66.7 -b1, 0 );

setScaleKey( spep_3 -3 + 35, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 79, 1, 1.5, 1.5 );
--
setScaleKey( spep_3 -3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 143, 1, 1.5, 1.5 );

setRotateKey( spep_3 -3 + 35, 1, 15 );
setRotateKey( spep_3 -3 + 36, 1, -50 );
setRotateKey( spep_3 -3 + 40, 1, -50 );
setRotateKey( spep_3 -3 + 42, 1, -40 );
setRotateKey( spep_3 -3 + 44, 1, -40.6 );
setRotateKey( spep_3 -3 + 46, 1, -41.1 );
setRotateKey( spep_3 -3 + 48, 1, -41.5 );
setRotateKey( spep_3 -3 + 50, 1, -41.8 );
setRotateKey( spep_3 -3 + 52, 1, -41.9 );
setRotateKey( spep_3 -3 + 54, 1, -42 );
setRotateKey( spep_3 -3 + 79, 1, -42 );
--
setRotateKey( spep_3 -3 + 88, 1, -30 );--20
setRotateKey( spep_3 -3 + 90, 1, -32 );
setRotateKey( spep_3 -3 + 92, 1, -34 );
setRotateKey( spep_3 -3 + 94, 1, -36 );
setRotateKey( spep_3 -3 + 143, 1, -36 );


-- ** 音 ** --
--ビーム着弾前１
SE022 = playSe( spep_3 + 26, 1256 );
setSeVolumeByWorkId( spep_3 + 26, SE022, 65 );
setPitch( spep_3 + 26, SE022, -200 );
setTimeStretch( SE022, 0.87, 10, 1 );

--爆発１
SE023 = playSe( spep_3 + 46, 1159 );
stopSe( spep_3 +140 + 42, SE023, 26 );

--ビーム着弾前２
SE024 = playSe( spep_3 + 74, 1256 );
setSeVolumeByWorkId( spep_3 + 74, SE024, 69 );
setPitch( spep_3 + 74, SE024, -200 );
setTimeStretch( SE024, 0.87, 10, 1 );

--爆発２
SE025 = playSe( spep_3 + 88, 1159 );
stopSe( spep_3 +140 + 34, SE025, 32 );

--爆発２
SE026 = playSe( spep_3 + 88, 1023 );
setSeVolumeByWorkId( spep_3 + 88, SE026, 85 );				

-- ** 次の準備 ** --
spep_4 = spep_3 + 140;


--------------------------------------
--追撃の火炎砲(116F)
--------------------------------------
-- ** エフェクト等 ** --
bless2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --追撃の火炎砲  ef_004
setEffMoveKey( spep_4 + 0, bless2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, bless2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bless2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, bless2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bless2, 0 );
setEffRotateKey( spep_4 + 116, bless2, 0 );
setEffAlphaKey( spep_4 + 0, bless2, 255 );
setEffAlphaKey( spep_4 + 116, bless2, 255 );

-- ** 音 ** --
--口気弾溜め
SE027 = playSe( spep_4 + 38, 1276,"",0.5 );
setSeVolumeByWorkId( spep_4 + 38, SE027, 126 );
stopSe( spep_4 + 64, SE027, 6 );

--口気弾発射1
SE028 = playSe( spep_4 + 60, 1021 );

--口気弾発射2
SE029 = playSe( spep_4 + 62, 1028 );

--口気弾発射3
SE030 = playSe( spep_4 + 62, 1030 );

--口気弾発射4
SE031 = playSe( spep_4 + 62, 1177 );
stopSe( spep_4 +116 +56 + 8, SE031, 12 );

--口気弾発射5
SE032 = playSe( spep_4 + 88, 1128,"",0.5 );
setSeVolumeByWorkId( spep_4 + 88, SE032, 63 );
stopSe( spep_4 +116 +56 + 8, SE032, 12 );
setPitch( spep_4 + 88, SE032, 500 );
setTimeStretch( SE032, 1.03, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;



--------------------------------------
--火炎砲が到達地点に向かう(56F)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --火炎砲が到達地点に向かう(ef_005)
setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 55 -2, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 55 -2, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 55 -2, hit2_f, 0 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 53 -2, hit2_f, 255 );
setEffAlphaKey( spep_5 + 54 -2, hit2_f, 255 );
setEffAlphaKey( spep_5 + 55 -2, hit2_f, 0 );
setEffAlphaKey( spep_5 + 56 -2, hit2_f, 0 );

-- ** 音 ** --


-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 55, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 54 -2;


--------------------------------------
--大爆発のシーンの捲き上る岩(176F)
--------------------------------------
-- ** エフェクト等 ** --
finish_b = entryEffectLife( spep_6 , SP_08,120,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（小）(ef_007)
setEffMoveKey( spep_6 , finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_b, 0 );
setEffRotateKey( spep_6 + 204, finish_b, 0 );
setEffAlphaKey( spep_6 , finish_b, 255 );
setEffAlphaKey( spep_6 + 204, finish_b, 255 );

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_6, SP_07,120,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（大）(ef_006)
setEffMoveKey( spep_6 , finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_f, 0 );
setEffRotateKey( spep_6 + 204, finish_f, 0 );
setEffAlphaKey( spep_6 , finish_f, 255 );
setEffAlphaKey( spep_6 + 204, finish_f, 255 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_6, SP_10,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（大）(ef_006)
setEffMoveKey( spep_6 , finish_f2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_f2, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_f2, 0 );
setEffRotateKey( spep_6 + 204, finish_f2, 0 );
setEffAlphaKey( spep_6 , finish_f2, 255 );
setEffAlphaKey( spep_6 + 204, finish_f2, 255 );

-- ** エフェクト等 ** --
finish_n = entryEffect( spep_6 , SP_11,  0x80, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（小）(ef_007)
setEffMoveKey( spep_6 , finish_n, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_n, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_n, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_n, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_n, 0 );
setEffRotateKey( spep_6 + 204, finish_n, 0 );
setEffAlphaKey( spep_6 , finish_n, 255 );
setEffAlphaKey( spep_6 + 204, finish_n, 255 );
-- ** 音 ** --
--爆発1
SE033 = playSe( spep_6 + 6, 1023 );

--爆発2
SE034 = playSe( spep_6 + 6, 1159 );

--爆発3
SE035 = playSe( spep_6 + 10, 1188 );
setSeVolumeByWorkId( spep_6 + 10, SE035, 85 );

--爆発4
SE036 = playSe( spep_6 + 14, 1168 );
setSeVolumeByWorkId( spep_6 + 14, SE036, 82 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_6 + 156, 16, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_6  );
endPhase( spep_6 + 110 );


else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--正対してして咆哮、ドラミング(176F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正対してして咆哮、ドラミング(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 176, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 176, first_f, 255 );

shuchusen1 = entryEffectLife( spep_0 + 17,  906, 80, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 17, shuchusen1, 80, 25 );
setEffMoveKey(   spep_0 + 17, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 97, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 17, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 97, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 17, shuchusen1, 0 );
setEffRotateKey( spep_0 + 97, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 17, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 70, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 80, shuchusen1, 200 );
setEffAlphaKey(  spep_0 + 90, shuchusen1, 170 );
setEffAlphaKey(  spep_0 + 97, shuchusen1, 0 );

spep_x = spep_0 + 80;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--咆哮1
SE001 = playSe( spep_0 + 20, 1125 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 141 );
stopSe( spep_0 +176 + 8, SE001, 0 );

--咆哮2
SE002 = playSe( spep_0 + 20, 1017 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 75 );

--咆哮3
SE003 = playSe( spep_0 + 20, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 74 );

--ドラミング１_1
SE004 = playSe( spep_0 + 70, 1182 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 141 );

--ドラミング１_2
SE005 = playSe( spep_0 + 70, 1014 );
setSeVolumeByWorkId( spep_0 + 70, SE005, 70 );

--顔カットイン    
SE006 = playSe( spep_0 + 92, 1018 );

--ドラミング２_1
SE007 = playSe( spep_0 + 96, 1182 );
setSeVolumeByWorkId( spep_0 + 96, SE007, 141 );

--ドラミング２_2
SE008 = playSe( spep_0 + 96, 1014 );
setSeVolumeByWorkId( spep_0 + 96, SE008, 89 );

--ドラミング３_1
SE009 = playSe( spep_0 + 118, 1182 );
setSeVolumeByWorkId( spep_0 + 122, SE009, 141 );

--ドラミング３_2
SE010 = playSe( spep_0 + 118, 1014 );

--ドラミング４_1
SE011 = playSe( spep_0 + 142, 1182 );

--ドラミング４_2
SE012 = playSe( spep_0 + 142, 1014 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 158, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;


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
--口から２方向に火炎砲116F)
--------------------------------------
-- ** エフェクト等 ** --
bless = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --口から２方向に火炎砲(ef_002)
setEffMoveKey( spep_2 + 0, bless, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, bless, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bless, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, bless, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bless, 0 );
setEffRotateKey( spep_2 + 116, bless, 0 );
setEffAlphaKey( spep_2 + 0, bless, 255 );
setEffAlphaKey( spep_2 + 116, bless, 255 );

-- ** 音 ** --
--ビーム１_1
SE014 = playSe( spep_2 + 24, 1028 );
setSeVolumeByWorkId( spep_2 + 24, SE014, 89 );

--ビーム１_2
SE015 = playSe( spep_2 + 24, 1030 );

--ビーム１_3
SE016 = playSe( spep_2 + 24, 1177 );
setSeVolumeByWorkId( spep_2 + 24, SE016, 82 );
stopSe( spep_2 + 86, SE016, 22 );

--ビーム１_4
SE017 = playSe( spep_2 + 24, 1145 );
setSeVolumeByWorkId( spep_2 + 24, SE017, 76 );
stopSe( spep_2 + 86, SE017, 22 );

--ビーム２_1
SE018 = playSe( spep_2 + 88, 1028 );
setSeVolumeByWorkId( spep_2 + 88, SE018, 88 );

--ビーム２_2
SE019 = playSe( spep_2 + 88, 1030 );

--ビーム２_3
SE020 = playSe( spep_2 + 88, 1177 );
setSeVolumeByWorkId( spep_2 + 88, SE020, 80 );
stopSe( spep_2 +116 + 46, SE020, 48 );

--ビーム２_4
SE021 = playSe( spep_2 + 88, 1145 );
setSeVolumeByWorkId( spep_2 + 88, SE021, 79 );
stopSe( spep_2 +116 + 46, SE021, 48 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


--------------------------------------
--火炎砲が敵にHIT(140F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --火炎砲が敵にHIT(ef_003_eff)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 140, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 140, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵より奥の背景(ef_003_bg)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 140, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 140, hit_b, 255 );

setEffBlendColor( spep_3 + 0, hit_b, 1, 0.3, 0.3, 0.3, 0 )
setEffBlendColor( spep_3 + 6, hit_b, 1, 0.3, 0.3, 0.3, 0 )
setEffBlendColor( spep_3 + 8, hit_b, 1, 0.3, 0.3, 0.3, 0.2 )
setEffBlendColor( spep_3 + 10, hit_b, 1, 0.3, 0.3, 0.3, 0.3 )
setEffBlendColor( spep_3 + 12, hit_b, 1, 0.3, 0.3, 0.3, 0.4 )
setEffBlendColor( spep_3 + 14, hit_b, 1, 0.3, 0.3, 0.3, 0.5 )
setEffBlendColor( spep_3 + 16, hit_b, 1, 0.3, 0.3, 0.3, 0.6 )
setEffBlendColor( spep_3 + 18, hit_b, 1, 0.3, 0.3, 0.3, 0.7 )
setEffBlendColor( spep_3 + 20, hit_b, 1, 0.3, 0.3, 0.3, 0.8 )
setEffBlendColor( spep_3 + 22, hit_b, 1, 0.3, 0.3, 0.3, 0.9 )
setEffBlendColor( spep_3 + 24, hit_b, 1, 0.3, 0.3, 0.3, 1.0 )
setEffBlendColor( spep_3 + 140, hit_b, 1, 0.3, 0.3, 0.3, 1.0 )

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

a1=30;
b1=20;

setMoveKey( spep_3 + 0, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 1, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 2, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 3, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 4, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 5, 1, 44.8, -151.4 , 0 );
setMoveKey( spep_3 + 6, 1, 44.8, -151.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 1, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 3, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 4, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 5, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 6, 1, 1.57, 1.57 );

setRotateKey( spep_3 + 0, 1, 15 );
setRotateKey( spep_3 + 1, 1, 15 );
setRotateKey( spep_3 + 2, 1, 15 );
setRotateKey( spep_3 + 3, 1, 15 );
setRotateKey( spep_3 + 4, 1, 15 );
setRotateKey( spep_3 + 5, 1, 15 );
setRotateKey( spep_3 + 6, 1, 15 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 16 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 44.8, -151.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 44.8, -151.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 2, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 4, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 6, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 8, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 10, 1, 1.57, 1.57 );

    setRotateKey( SP_dodge + 0, 1, 15 );
    setRotateKey( SP_dodge + 2, 1, 15 );
    setRotateKey( SP_dodge + 4, 1, 15 );
    setRotateKey( SP_dodge + 6, 1, 15 );
    setRotateKey( SP_dodge + 8, 1, 15 );
    setRotateKey( SP_dodge + 10, 1, 15 );

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
setDisp( spep_3 + 76+1, 1, 0 );
setDisp( spep_3 -3 + 88, 1, 1 );
setDisp( spep_3 -3 + 143, 1, 0 );
changeAnime( spep_3 -3 + 36, 1, 106 );

a1=30;
b1=20;

setMoveKey( spep_3 -3 + 32, 1, 44.8 , -151.4 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 44.7 -a1, -151.5 +b1, 0 );
setMoveKey( spep_3 -3 + 36, 1, 25.4 -a1, -149.4 +b1, 0 );
setMoveKey( spep_3 -3 + 38, 1, 31.3 -a1, -157.2 +b1, 0 );
setMoveKey( spep_3 -3 + 40, 1, 40.9 -a1, -170.8 +b1, 0 );
setMoveKey( spep_3 -3 + 42, 1, 26.8 -a1, -151 +b1, 0 );
setMoveKey( spep_3 -3 + 44, 1, 42.6 -a1, -120.1 +b1, 0 );
setMoveKey( spep_3 -3 + 46, 1, 33.3 -a1, -77.5 +b1, 0 );
setMoveKey( spep_3 -3 + 48, 1, 47.9 -a1, -62.3 +b1, 0 );
setMoveKey( spep_3 -3 + 50, 1, 37.2 -a1, -32.9 +b1, 0 );
setMoveKey( spep_3 -3 + 52, 1, 50.5 -a1, -31 +b1, 0 );
setMoveKey( spep_3 -3 + 54, 1, 38.6 -a1, -32 +b1, 0 );
setMoveKey( spep_3 -3 + 56, 1, 50.8 -a1, -13.4 +b1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 45.8 -a1, -20.3 +b1, 0 );
setMoveKey( spep_3 -3 + 60, 1, 52.2 -a1, -6.1 +b1, 0 );
setMoveKey( spep_3 -3 + 62, 1, 49.7 -a1, -16.4 +b1, 0 );
setMoveKey( spep_3 -3 + 64, 1, 58 -a1, 3.7 +b1, 0 );
setMoveKey( spep_3 -3 + 66, 1, 57.5 -a1, -7.1 +b1, 0 );
setMoveKey( spep_3 -3 + 68, 1, 65.8 -a1, 4.2 +b1, 0 );
setMoveKey( spep_3 -3 + 70, 1, 61.4 -a1, -11.5 +b1, 0 );
setMoveKey( spep_3 -3 + 72, 1, 57.4 -a1, -7.5 +b1, 0 );
setMoveKey( spep_3 -3 + 74, 1, 65.1 -a1, -5.4 +b1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 70.9 -a1, -21 +b1, 0 );
setMoveKey( spep_3 -3 + 79, 1, 71.3 -a1, -48.8 +b1, 0 );
--

a1=70;
b1=145;

setMoveKey( spep_3 -3 + 88, 1, -20 +a1, 229.3 -b1, 0 );
setMoveKey( spep_3 -3 + 90, 1, -12.7 +a1, 234.8 -b1, 0 );
setMoveKey( spep_3 -3 + 92, 1, -23.9 +a1, 241.2 -b1, 0 );
setMoveKey( spep_3 -3 + 94, 1, -15.5 +a1, 250.5 -b1, 0 );
setMoveKey( spep_3 -3 + 96, 1, -7.7 +a1, 253.5 -b1, 0 );
setMoveKey( spep_3 -3 + 98, 1, -11.6 +a1, 261.3 -b1, 0 );
setMoveKey( spep_3 -3 + 100, 1, -9.6 +a1, 265.2 -b1, 0 );
setMoveKey( spep_3 -3 + 102, 1, -5.7 +a1, 267.1 -b1, 0 );
setMoveKey( spep_3 -3 + 104, 1, -3.8 +a1, 274.9 -b1, 0 );
setMoveKey( spep_3 -3 + 106, 1, -13.5 +a1, 280.8 -b1, 0 );
setMoveKey( spep_3 -3 + 108, 1, -11.6 +a1, 282.7 -b1, 0 );
setMoveKey( spep_3 -3 + 110, 1, -13.5 +a1, 284.7 -b1, 0 );
setMoveKey( spep_3 -3 + 112, 1, -11.6 +a1, 286.6 -b1, 0 );
setMoveKey( spep_3 -3 + 114, 1, -13.5 +a1, 288.6 -b1, 0 );
setMoveKey( spep_3 -3 + 116, 1, -11.6 +a1, 290.5 -b1, 0 );
setMoveKey( spep_3 -3 + 118, 1, -13.5 +a1, 292.5 -b1, 0 );
setMoveKey( spep_3 -3 + 120, 1, 3.5 +a1, 298.1 -b1, 0 );
setMoveKey( spep_3 -3 + 122, 1, 9.2 +a1, 280.2 -b1, 0 );
setMoveKey( spep_3 -3 + 124, 1, 13.4 +a1, 270 -b1, 0 );
setMoveKey( spep_3 -3 + 126, 1, 17.3 +a1, 259.7 -b1, 0 );
setMoveKey( spep_3 -3 + 128, 1, 22.7 +a1, 238.2 -b1, 0 );
setMoveKey( spep_3 -3 + 130, 1, 30.5 +a1, 207.3 -b1, 0 );
setMoveKey( spep_3 -3 + 132, 1, 41.8 +a1, 172.1 -b1, 0 );
setMoveKey( spep_3 -3 + 134, 1, 44.9 +a1, 160.7 -b1, 0 );
setMoveKey( spep_3 -3 + 136, 1, 53 +a1, 108 -b1, 0 );
setMoveKey( spep_3 -3 + 138, 1, 56.8 +a1, 93 -b1, 0 );
setMoveKey( spep_3 -3 + 140, 1, 58 +a1, 79.2 -b1, 0 );
setMoveKey( spep_3 -3 + 142, 1, 61.8 +a1, 66.7 -b1, 0 );
setMoveKey( spep_3 -3 + 143, 1, 61.8 +a1, 66.7 -b1, 0 );

setScaleKey( spep_3 -3 + 35, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 79, 1, 1.5, 1.5 );
--
setScaleKey( spep_3 -3 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 143, 1, 1.5, 1.5 );

setRotateKey( spep_3 -3 + 35, 1, 15 );
setRotateKey( spep_3 -3 + 36, 1, -50 );
setRotateKey( spep_3 -3 + 40, 1, -50 );
setRotateKey( spep_3 -3 + 42, 1, -40 );
setRotateKey( spep_3 -3 + 44, 1, -40.6 );
setRotateKey( spep_3 -3 + 46, 1, -41.1 );
setRotateKey( spep_3 -3 + 48, 1, -41.5 );
setRotateKey( spep_3 -3 + 50, 1, -41.8 );
setRotateKey( spep_3 -3 + 52, 1, -41.9 );
setRotateKey( spep_3 -3 + 54, 1, -42 );
setRotateKey( spep_3 -3 + 79, 1, -42 );
--
setRotateKey( spep_3 -3 + 88, 1, -30 );--20
setRotateKey( spep_3 -3 + 90, 1, -32 );
setRotateKey( spep_3 -3 + 92, 1, -34 );
setRotateKey( spep_3 -3 + 94, 1, -36 );
setRotateKey( spep_3 -3 + 143, 1, -36 );


-- ** 音 ** --
--ビーム着弾前１
SE022 = playSe( spep_3 + 26, 1256 );
setSeVolumeByWorkId( spep_3 + 26, SE022, 65 );
setPitch( spep_3 + 26, SE022, -200 );
setTimeStretch( SE022, 0.87, 10, 1 );

--爆発１
SE023 = playSe( spep_3 + 46, 1159 );
stopSe( spep_3 +140 + 42, SE023, 26 );

--ビーム着弾前２
SE024 = playSe( spep_3 + 74, 1256 );
setSeVolumeByWorkId( spep_3 + 74, SE024, 69 );
setPitch( spep_3 + 74, SE024, -200 );
setTimeStretch( SE024, 0.87, 10, 1 );

--爆発２
SE025 = playSe( spep_3 + 88, 1159 );
stopSe( spep_3 +140 + 34, SE025, 32 );

--爆発２
SE026 = playSe( spep_3 + 88, 1023 );
setSeVolumeByWorkId( spep_3 + 88, SE026, 85 );              

-- ** 次の準備 ** --
spep_4 = spep_3 + 140;


--------------------------------------
--追撃の火炎砲(116F)
--------------------------------------
-- ** エフェクト等 ** --
bless2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --追撃の火炎砲  ef_004
setEffMoveKey( spep_4 + 0, bless2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, bless2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bless2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, bless2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bless2, 0 );
setEffRotateKey( spep_4 + 116, bless2, 0 );
setEffAlphaKey( spep_4 + 0, bless2, 255 );
setEffAlphaKey( spep_4 + 116, bless2, 255 );

-- ** 音 ** --
--口気弾溜め
SE027 = playSe( spep_4 + 38, 1276,"",0.5 );
setSeVolumeByWorkId( spep_4 + 38, SE027, 126 );
stopSe( spep_4 + 64, SE027, 6 );

--口気弾発射1
SE028 = playSe( spep_4 + 60, 1021 );

--口気弾発射2
SE029 = playSe( spep_4 + 62, 1028 );

--口気弾発射3
SE030 = playSe( spep_4 + 62, 1030 );

--口気弾発射4
SE031 = playSe( spep_4 + 62, 1177 );
stopSe( spep_4 +116 +56 + 8, SE031, 12 );

--口気弾発射5
SE032 = playSe( spep_4 + 88, 1128,"",0.5 );
setSeVolumeByWorkId( spep_4 + 88, SE032, 63 );
stopSe( spep_4 +116 +56 + 8, SE032, 12 );
setPitch( spep_4 + 88, SE032, 500 );
setTimeStretch( SE032, 1.03, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;



--------------------------------------
--火炎砲が到達地点に向かう(56F)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --火炎砲が到達地点に向かう(ef_005)
setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 55 -2, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 55 -2, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 55 -2, hit2_f, 0 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 53 -2, hit2_f, 255 );
setEffAlphaKey( spep_5 + 54 -2, hit2_f, 255 );
setEffAlphaKey( spep_5 + 55 -2, hit2_f, 0 );
setEffAlphaKey( spep_5 + 56 -2, hit2_f, 0 );

-- ** 音 ** --


-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 55, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 54 -2;


--------------------------------------
--大爆発のシーンの捲き上る岩(176F)
--------------------------------------
-- ** エフェクト等 ** --
finish_b = entryEffectLife( spep_6 , SP_08,120,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（小）(ef_007)
setEffMoveKey( spep_6 , finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_b, 0 );
setEffRotateKey( spep_6 + 204, finish_b, 0 );
setEffAlphaKey( spep_6 , finish_b, 255 );
setEffAlphaKey( spep_6 + 204, finish_b, 255 );

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_6, SP_07,120,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（大）(ef_006)
setEffMoveKey( spep_6 , finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_f, 0 );
setEffRotateKey( spep_6 + 204, finish_f, 0 );
setEffAlphaKey( spep_6 , finish_f, 255 );
setEffAlphaKey( spep_6 + 204, finish_f, 255 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_6, SP_10,  0x100, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（大）(ef_006)
setEffMoveKey( spep_6 , finish_f2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_f2, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_f2, 0 );
setEffRotateKey( spep_6 + 204, finish_f2, 0 );
setEffAlphaKey( spep_6 , finish_f2, 255 );
setEffAlphaKey( spep_6 + 204, finish_f2, 255 );

-- ** エフェクト等 ** --
finish_n = entryEffect( spep_6 , SP_11,  0x80, -1, 0, 0, 0 );  --大爆発のシーンの捲き上る岩（小）(ef_007)
setEffMoveKey( spep_6 , finish_n, 0, 0 , 0 );
setEffMoveKey( spep_6 + 204, finish_n, 0, 0 , 0 );
setEffScaleKey( spep_6 , finish_n, 1.0, 1.0 );
setEffScaleKey( spep_6 + 204, finish_n, 1.0, 1.0 );
setEffRotateKey( spep_6 , finish_n, 0 );
setEffRotateKey( spep_6 + 204, finish_n, 0 );
setEffAlphaKey( spep_6 , finish_n, 255 );
setEffAlphaKey( spep_6 + 204, finish_n, 255 );
-- ** 音 ** --
--爆発1
SE033 = playSe( spep_6 + 6, 1023 );

--爆発2
SE034 = playSe( spep_6 + 6, 1159 );

--爆発3
SE035 = playSe( spep_6 + 10, 1188 );
setSeVolumeByWorkId( spep_6 + 10, SE035, 85 );

--爆発4
SE036 = playSe( spep_6 + 14, 1168 );
setSeVolumeByWorkId( spep_6 + 14, SE036, 82 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_6 + 156, 16, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_6  );
endPhase( spep_6 + 110 );

end