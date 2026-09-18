--1020890:魔神サルサ_トリックオブトルネード
--sp_effect_a3_00072

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
SP_01=	156203	;--	回転〜構え
SP_02=	156205	;--	トルネード発動

--エフェクト(てき)
SP_01x=	156204	;--	回転〜構え	(敵)
SP_02x=	156206	;--	トルネード発動	(敵)
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
-- 冒頭、気タメ&セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 212, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 212, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 212, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 212, tame, 255 );

--集中線
shuchusem1 = entryEffectLife( spep_0-3 + 122,  906, 78+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 122, shuchusem1, 78+3, 20 );
setEffMoveKey( spep_0-3 + 122, shuchusem1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, shuchusem1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 122, shuchusem1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 200, shuchusem1, 1.05, 1.05 );

setEffRotateKey( spep_0-3 + 122, shuchusem1, 0 );
setEffRotateKey( spep_0 + 200, shuchusem1, 0 );

setEffAlphaKey( spep_0-3 + 122, shuchusem1, 255 );
setEffAlphaKey( spep_0 + 200, shuchusem1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 47 );
setPitch( spep_0 + 0, SE001, -200 );
setTimeStretch( SE001, 0.87, 10, 1 );

--回転
SE002 = playSe( spep_0-10 + 52, 1117 );
SE003 = playSe( spep_0-10 + 52, 1278 );
setSeVolumeByWorkId( spep_0-10 + 52, SE003, 40 );
setPitch( spep_0-10 + 52, SE003, 300 );
setTimeStretch( SE003, 1.2, 10, 1 );
SE004 = playSe( spep_0-10 + 52, 1175 );
setSeVolumeByWorkId( spep_0-10 + 52, SE004, 18 );
setPitch( spep_0-10 + 52, SE004, 600 );
setTimeStretch( SE004, 1.4, 10, 1 );
SE005 = playSe( spep_0-10 + 54, 1026 );

--杖構える
SE006 = playSe( spep_0 + 104, 1003 );

--杖溜める
SE007 = playSe( spep_0 + 120, 1132 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 212, 0,  0, 0, 0, 200 ); --くろ 背景

--白フェード
entryFade( spep_0 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+90 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

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
-- ** 顔カットイン ** --
speff = entryEffect( spep_0+116  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+116  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +128, 190006, 72, 0x100, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +128,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +200,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +128, ctgogo, 0 );
setEffAlphaKey( spep_0 + 129, ctgogo, 255 );
setEffAlphaKey( spep_0 + 130, ctgogo, 255 );
setEffAlphaKey( spep_0 + 194, ctgogo, 255 );
setEffAlphaKey( spep_0 + 196, ctgogo, 191 );
setEffAlphaKey( spep_0 + 198, ctgogo, 112 );
setEffAlphaKey( spep_0 + 200, ctgogo, 64 );

setEffRotateKey(  spep_0 +128,  ctgogo,  0);
setEffRotateKey(  spep_0 +200,  ctgogo,  0);

setEffScaleKey(  spep_0 +128,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +190,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +200,  ctgogo, 1.07, 1.07);

--SE
--顔カットイン
SE008 = playSe( spep_0 + 128, 1018 );

--白フェード
entryFade( spep_0+201 , 5, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 212;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

--回転
stopSe( spep_1 + 8, SE003, 0 );
stopSe( spep_1 + 8, SE004, 0 );

--杖溜める
stopSe( spep_1 + 8, SE007, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;
--------------------------------------
--トルネード発動
--------------------------------------
-- ** エフェクト等 ** --
tornado = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tornado, 0, 0, 0 );
setEffMoveKey( spep_2 + 124, tornado, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tornado, 1.0, 1.0 );
setEffScaleKey( spep_2 + 124, tornado, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tornado, 0 );
setEffRotateKey( spep_2 + 124, tornado, 0 );
setEffAlphaKey( spep_2 + 0, tornado, 255 );
setEffAlphaKey( spep_2 + 124, tornado, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 40, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 18, 1, 108 );

setMoveKey( spep_2 + 0, 1, 237, -17.3 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 237, -17.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 237, -17.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, 240.5, -31.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, 238.8, -9.5 , 0 );
setMoveKey( spep_2-3 + 17, 1, 245.8, -28.2 , 0 );
setMoveKey( spep_2-3 + 18, 1, 241.6, -9.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 250.3, -27.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 267.4, -6.9 , 0 );
setMoveKey( spep_2-3 + 24, 1, 306.1, -15.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 357.4, 8.6 , 0 );
setMoveKey( spep_2-3 + 28, 1, 391.4, 12.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 420.5, 4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 435.7, 19.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 450.7, 9.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 457.1, 21.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 464.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 466.2, 22 , 0 );

a=0.2;

setScaleKey( spep_2 + 0, 1, 0.44+a, 0.44+a );
setScaleKey( spep_2-3 + 12, 1, 0.44+a, 0.44+a );
setScaleKey( spep_2-3 + 14, 1, 0.43+a, 0.43+a );
setScaleKey( spep_2-3 + 17, 1, 0.42+a, 0.42+a );
setScaleKey( spep_2-3 + 18, 1, 0.42+a, 0.42+a );
setScaleKey( spep_2-3 + 20, 1, 0.41+a, 0.41+a );
setScaleKey( spep_2-3 + 22, 1, 0.4+a, 0.4+a );
setScaleKey( spep_2-3 + 24, 1, 0.36+a, 0.36+a );
setScaleKey( spep_2-3 + 26, 1, 0.31+a, 0.31+a );
setScaleKey( spep_2-3 + 28, 1, 0.28+a, 0.28+a );
setScaleKey( spep_2-3 + 30, 1, 0.25+a, 0.25+a );
setScaleKey( spep_2-3 + 32, 1, 0.24+a, 0.24+a );
setScaleKey( spep_2-3 + 34, 1, 0.23+a, 0.23+a );
setScaleKey( spep_2-3 + 36, 1, 0.22+a, 0.22+a );
setScaleKey( spep_2-3 + 38, 1, 0.21+a, 0.21+a );
setScaleKey( spep_2-3 + 40, 1, 0.21+a, 0.21+a );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 40, 1, 0 );

--SE
--竜巻発射
SE010 = playSe( spep_2 + 10, 1027 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 71 );
SE011 = playSe( spep_2 + 10, 1145 );
setSeVolumeByWorkId( spep_2 + 10, SE011, 58 );
SE012 = playSe( spep_2 + 10, 1177 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 41 );
SE013 = playSe( spep_2 + 10, 1231 );
setSeVolumeByWorkId( spep_2 + 10, SE013, 141 );
SE014 = playSe( spep_2 + 18, 1258 );
setSeVolumeByWorkId( spep_2 + 18, SE014, 52 );

--白フェード
entryFade( spep_2+8 , 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 124, 0,  0, 0, 0, 200 ); --くろ 背景

--終わり
dealDamage( spep_2 +16 );
endPhase( spep_2 + 114 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭、気タメ&セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 212, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 212, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 212, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 212, tame, 255 );

--集中線
shuchusem1 = entryEffectLife( spep_0-3 + 122,  906, 78+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 122, shuchusem1, 78+3, 20 );
setEffMoveKey( spep_0-3 + 122, shuchusem1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, shuchusem1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 122, shuchusem1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 200, shuchusem1, 1.05, 1.05 );

setEffRotateKey( spep_0-3 + 122, shuchusem1, 0 );
setEffRotateKey( spep_0 + 200, shuchusem1, 0 );

setEffAlphaKey( spep_0-3 + 122, shuchusem1, 255 );
setEffAlphaKey( spep_0 + 200, shuchusem1, 255 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 47 );
setPitch( spep_0 + 0, SE001, -200 );
setTimeStretch( SE001, 0.87, 10, 1 );

--回転
SE002 = playSe( spep_0-10 + 52, 1117 );
SE003 = playSe( spep_0-10 + 52, 1278 );
setSeVolumeByWorkId( spep_0-10 + 52, SE003, 40 );
setPitch( spep_0-10 + 52, SE003, 300 );
setTimeStretch( SE003, 1.2, 10, 1 );
SE004 = playSe( spep_0-10 + 52, 1175 );
setSeVolumeByWorkId( spep_0-10 + 52, SE004, 18 );
setPitch( spep_0-10 + 52, SE004, 600 );
setTimeStretch( SE004, 1.4, 10, 1 );
SE005 = playSe( spep_0-10 + 54, 1026 );

--杖構える
SE006 = playSe( spep_0 + 104, 1003 );

--杖溜める
SE007 = playSe( spep_0 + 120, 1132 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 212, 0,  0, 0, 0, 200 ); --くろ 背景

--白フェード
entryFade( spep_0 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+90 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

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
-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+116  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+116  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +128, 190006, 72, 0x100, -1, 0, 60, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +128,  ctgogo,  60,  510);
setEffMoveKey(  spep_0 +200,  ctgogo,  60,  510);

setEffAlphaKey( spep_0 +128, ctgogo, 0 );
setEffAlphaKey( spep_0 + 129, ctgogo, 255 );
setEffAlphaKey( spep_0 + 130, ctgogo, 255 );
setEffAlphaKey( spep_0 + 194, ctgogo, 255 );
setEffAlphaKey( spep_0 + 196, ctgogo, 191 );
setEffAlphaKey( spep_0 + 198, ctgogo, 112 );
setEffAlphaKey( spep_0 + 200, ctgogo, 64 );

setEffRotateKey(  spep_0 +128,  ctgogo,  0);
setEffRotateKey(  spep_0 +200,  ctgogo,  0);

setEffScaleKey(  spep_0 +128,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +190,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +200,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
SE008 = playSe( spep_0 + 128, 1018 );

--白フェード
entryFade( spep_0+201 , 5, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 212;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--回転
stopSe( spep_1 + 8, SE003, 0 );
stopSe( spep_1 + 8, SE004, 0 );

--杖溜める
stopSe( spep_1 + 8, SE007, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;
--------------------------------------
--トルネード発動
--------------------------------------
-- ** エフェクト等 ** --
tornado = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tornado, 0, 0, 0 );
setEffMoveKey( spep_2 + 124, tornado, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tornado, 1.0, 1.0 );
setEffScaleKey( spep_2 + 124, tornado, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tornado, 0 );
setEffRotateKey( spep_2 + 124, tornado, 0 );
setEffAlphaKey( spep_2 + 0, tornado, 255 );
setEffAlphaKey( spep_2 + 124, tornado, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 40, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 18, 1, 108 );

setMoveKey( spep_2 + 0, 1, 237, -17.3 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 237, -17.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 237, -17.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, 240.5, -31.3 , 0 );
setMoveKey( spep_2-3 + 14, 1, 238.8, -9.5 , 0 );
setMoveKey( spep_2-3 + 17, 1, 245.8, -28.2 , 0 );
setMoveKey( spep_2-3 + 18, 1, 241.6, -9.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 250.3, -27.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 267.4, -6.9 , 0 );
setMoveKey( spep_2-3 + 24, 1, 306.1, -15.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 357.4, 8.6 , 0 );
setMoveKey( spep_2-3 + 28, 1, 391.4, 12.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 420.5, 4 , 0 );
setMoveKey( spep_2-3 + 32, 1, 435.7, 19.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 450.7, 9.1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 457.1, 21.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 464.3, 14.9 , 0 );
setMoveKey( spep_2-3 + 40, 1, 466.2, 22 , 0 );

a=0.2;

setScaleKey( spep_2 + 0, 1, 0.44+a, 0.44+a );
setScaleKey( spep_2-3 + 12, 1, 0.44+a, 0.44+a );
setScaleKey( spep_2-3 + 14, 1, 0.43+a, 0.43+a );
setScaleKey( spep_2-3 + 17, 1, 0.42+a, 0.42+a );
setScaleKey( spep_2-3 + 18, 1, 0.42+a, 0.42+a );
setScaleKey( spep_2-3 + 20, 1, 0.41+a, 0.41+a );
setScaleKey( spep_2-3 + 22, 1, 0.4+a, 0.4+a );
setScaleKey( spep_2-3 + 24, 1, 0.36+a, 0.36+a );
setScaleKey( spep_2-3 + 26, 1, 0.31+a, 0.31+a );
setScaleKey( spep_2-3 + 28, 1, 0.28+a, 0.28+a );
setScaleKey( spep_2-3 + 30, 1, 0.25+a, 0.25+a );
setScaleKey( spep_2-3 + 32, 1, 0.24+a, 0.24+a );
setScaleKey( spep_2-3 + 34, 1, 0.23+a, 0.23+a );
setScaleKey( spep_2-3 + 36, 1, 0.22+a, 0.22+a );
setScaleKey( spep_2-3 + 38, 1, 0.21+a, 0.21+a );
setScaleKey( spep_2-3 + 40, 1, 0.21+a, 0.21+a );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 40, 1, 0 );

--SE
--竜巻発射
SE010 = playSe( spep_2 + 10, 1027 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 71 );
SE011 = playSe( spep_2 + 10, 1145 );
setSeVolumeByWorkId( spep_2 + 10, SE011, 58 );
SE012 = playSe( spep_2 + 10, 1177 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 41 );
SE013 = playSe( spep_2 + 10, 1231 );
setSeVolumeByWorkId( spep_2 + 10, SE013, 141 );
SE014 = playSe( spep_2 + 18, 1258 );
setSeVolumeByWorkId( spep_2 + 18, SE014, 52 );

--白フェード
entryFade( spep_2+8 , 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 124, 0,  0, 0, 0, 200 ); --くろ 背景

--終わり
dealDamage( spep_2 +16 );
endPhase( spep_2 + 114 );
end