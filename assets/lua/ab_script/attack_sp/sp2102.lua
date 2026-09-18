--1021100:孫悟飯(じいちゃん)＆パン(GT)_ダブルかめはめ波
--sp_effect_a1_00260

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
SP_01=	156228	;--	構え→気溜め
SP_02=	156229	;--	かめはめ波を放つ
SP_03=	156230	;--	かめはめ波が敵に向かっていく　前
SP_04=	156231	;--	かめはめ波が敵に向かっていく　後
SP_05=	156232	;--	爆発
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(1.0);


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
-- 構え→気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 176, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 176, tame, 255 );
setEffAlphaKey( spep_0 + 177, tame, 0 );
setEffAlphaKey( spep_0 + 178, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 6,  906, 82, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 6, shuchusen1, 82, 20 );
setEffMoveKey( spep_0-3 + 6, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 82, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 6, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 82, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 82, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 6, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 82, shuchusen1, 255 );

--SE
--顔カットイン
SE001 = playSe( spep_0 + 10, 1018 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 79 );

--うなづく
SE002 = playSe( spep_0 + 18, 37 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 158 );
stopSe( spep_0 + 34, SE002, 6 );
SE003 = playSe( spep_0 + 18, 1003 );

--向き直る
SE004 = playSe( spep_0 + 80, 1197 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 40 );
SE005 = playSe( spep_0 + 80, 1192 );

--かめはめ波溜め
SE006 = playSe( spep_0 + 114, 1131 );
SE007 = playSe( spep_0 + 114, 1132 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 176, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+82 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+176;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

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
--playSe( spep_1 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_1 + 4, SE006, 0 );
stopSe( spep_1 + 4, SE007, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- かめはめ波を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 86, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 84, beam, 255 );
setEffAlphaKey( spep_2 + 85, beam, 255 );
setEffAlphaKey( spep_2 + 86, beam, 0 );

--SE
--かめはめ波発射
SE009 = playSe( spep_2 + 12, 1027 );
SE010 = playSe( spep_2 + 12, 1022 );
SE011 = playSe( spep_2 + 12, 1177 );
SE012 = playSe( spep_2 + 30, 1215 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- かめはめ波が敵に向かっていく
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 60, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 60, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 1.2, -1.1 , 0 );
setMoveKey( spep_3 + 2, 1, -2.7, -4.9 , 0 );
setMoveKey( spep_3 + 4, 1, 4.9, -1.1 , 0 );
setMoveKey( spep_3 + 6, 1, 1.1, 2.8 , 0 );
setMoveKey( spep_3 + 8, 1, -0.9, 2.8 , 0 );
setMoveKey( spep_3 + 10, 1, 4.8, -4.9 , 0 );
setMoveKey( spep_3 + 12, 1, 8.6, -8.7 , 0 );
setMoveKey( spep_3 + 14, 1, 16.3, -4.9 , 0 );
setMoveKey( spep_3 + 16, 1, 12.4, 2.9 , 0 );
setMoveKey( spep_3 + 18, 1, 12.3, -2.9 , 0 );
setMoveKey( spep_3 + 20, 1, 12.2, -0.9 , 0 );
setMoveKey( spep_3 + 22, 1, 14, -0.9 , 0 );
setMoveKey( spep_3 + 24, 1, 15.8, 6.8 , 0 );
setMoveKey( spep_3 + 26, 1, 13.8, 12.6 , 0 );
setMoveKey( spep_3 + 28, 1, 19.4, 10.8 , 0 );
setMoveKey( spep_3 + 30, 1, 15.4, 10.8 , 0 );
setMoveKey( spep_3 + 32, 1, 15.3, 7 , 0 );
setMoveKey( spep_3 + 34, 1, 18.9, 3.2 , 0 );
setMoveKey( spep_3 + 36, 1, 11, 3.3 , 0 );
setMoveKey( spep_3 + 38, 1, 6.9, 7.2 , 0 );
setMoveKey( spep_3 + 40, 1, 14.3, -0.4 , 0 );
setMoveKey( spep_3 + 42, 1, 6.3, -4.1 , 0 );
setMoveKey( spep_3 + 44, 1, 13.7, -11.7 , 0 );
setMoveKey( spep_3 + 46, 1, 5.6, -3.9 , 0 );
setMoveKey( spep_3 + 48, 1, 5.1, -11.4 , 0 );
setMoveKey( spep_3 + 50, 1, 4.6, -7.4 , 0 );
setMoveKey( spep_3 + 52, 1, 4, -7.2 , 0 );
setMoveKey( spep_3 + 54, 1, -0.5, -3.1 , 0 );
setMoveKey( spep_3 + 56, 1, -1.3, 1 , 0 );
setMoveKey( spep_3 + 58, 1, 1.9, -7.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 2, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 4, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 28, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 32, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 34, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 46, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 48, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 52, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 54, 1, 2.26, 2.26 );
setScaleKey( spep_3 + 56, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 58, 1, 2.72, 2.72 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );

--敵に迫る
SE013 = playSe( spep_3 + 0, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190000, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 58, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
SE014 = playSe( spep_4 + 0, 1023 );

--かめはめ波発射
stopSe( spep_4 + 10, SE010, 0 );
stopSe( spep_4 + 10, SE011, 0 );
stopSe( spep_4 + 10, SE012, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 50, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 200, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 200, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 200, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 200, explosion, 255 );

--SE
--爆発
SE015 = playSe( spep_5 + 0, 1159 );
SE016 = playSe( spep_5 + 10, 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +20 );
endPhase( spep_5 + 120 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え→気溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 176, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 176, tame, 255 );
setEffAlphaKey( spep_0 + 177, tame, 0 );
setEffAlphaKey( spep_0 + 178, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 6,  906, 82, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 6, shuchusen1, 82, 20 );
setEffMoveKey( spep_0-3 + 6, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 82, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 6, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0-3 + 82, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0-3 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 82, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 6, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 82, shuchusen1, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x102, -1, 0, 100, 510, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07);

--SE
--顔カットイン
SE001 = playSe( spep_0 + 10, 1018 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 79 );

--うなづく
SE002 = playSe( spep_0 + 18, 37 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 158 );
stopSe( spep_0 + 34, SE002, 6 );
SE003 = playSe( spep_0 + 18, 1003 );

--向き直る
SE004 = playSe( spep_0 + 80, 1197 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 40 );
SE005 = playSe( spep_0 + 80, 1192 );

--かめはめ波溜め
SE006 = playSe( spep_0 + 114, 1131 );
SE007 = playSe( spep_0 + 114, 1132 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 176, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+82 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+176;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

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
--playSe( spep_1 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_1 + 4, SE006, 0 );
stopSe( spep_1 + 4, SE007, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- かめはめ波を放つ
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, beam, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 86, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 84, beam, 255 );
setEffAlphaKey( spep_2 + 85, beam, 255 );
setEffAlphaKey( spep_2 + 86, beam, 0 );

--SE
--かめはめ波発射
SE009 = playSe( spep_2 + 12, 1027 );
SE010 = playSe( spep_2 + 12, 1022 );
SE011 = playSe( spep_2 + 12, 1177 );
SE012 = playSe( spep_2 + 30, 1215 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- かめはめ波が敵に向かっていく
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 60, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 60, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 60, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 60, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 1.2, -1.1 , 0 );
setMoveKey( spep_3 + 2, 1, -2.7, -4.9 , 0 );
setMoveKey( spep_3 + 4, 1, 4.9, -1.1 , 0 );
setMoveKey( spep_3 + 6, 1, 1.1, 2.8 , 0 );
setMoveKey( spep_3 + 8, 1, -0.9, 2.8 , 0 );
setMoveKey( spep_3 + 10, 1, 4.8, -4.9 , 0 );
setMoveKey( spep_3 + 12, 1, 8.6, -8.7 , 0 );
setMoveKey( spep_3 + 14, 1, 16.3, -4.9 , 0 );
setMoveKey( spep_3 + 16, 1, 12.4, 2.9 , 0 );
setMoveKey( spep_3 + 18, 1, 12.3, -2.9 , 0 );
setMoveKey( spep_3 + 20, 1, 12.2, -0.9 , 0 );
setMoveKey( spep_3 + 22, 1, 14, -0.9 , 0 );
setMoveKey( spep_3 + 24, 1, 15.8, 6.8 , 0 );
setMoveKey( spep_3 + 26, 1, 13.8, 12.6 , 0 );
setMoveKey( spep_3 + 28, 1, 19.4, 10.8 , 0 );
setMoveKey( spep_3 + 30, 1, 15.4, 10.8 , 0 );
setMoveKey( spep_3 + 32, 1, 15.3, 7 , 0 );
setMoveKey( spep_3 + 34, 1, 18.9, 3.2 , 0 );
setMoveKey( spep_3 + 36, 1, 11, 3.3 , 0 );
setMoveKey( spep_3 + 38, 1, 6.9, 7.2 , 0 );
setMoveKey( spep_3 + 40, 1, 14.3, -0.4 , 0 );
setMoveKey( spep_3 + 42, 1, 6.3, -4.1 , 0 );
setMoveKey( spep_3 + 44, 1, 13.7, -11.7 , 0 );
setMoveKey( spep_3 + 46, 1, 5.6, -3.9 , 0 );
setMoveKey( spep_3 + 48, 1, 5.1, -11.4 , 0 );
setMoveKey( spep_3 + 50, 1, 4.6, -7.4 , 0 );
setMoveKey( spep_3 + 52, 1, 4, -7.2 , 0 );
setMoveKey( spep_3 + 54, 1, -0.5, -3.1 , 0 );
setMoveKey( spep_3 + 56, 1, -1.3, 1 , 0 );
setMoveKey( spep_3 + 58, 1, 1.9, -7.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 2, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 4, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 16, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 28, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 32, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 34, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 46, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 48, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 52, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 54, 1, 2.26, 2.26 );
setScaleKey( spep_3 + 56, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 58, 1, 2.72, 2.72 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );

--敵に迫る
SE013 = playSe( spep_3 + 0, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4 + 0, 190000, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 58, gyan, 255 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_4 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 58, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
SE014 = playSe( spep_4 + 0, 1023 );

--かめはめ波発射
stopSe( spep_4 + 10, SE010, 0 );
stopSe( spep_4 + 10, SE011, 0 );
stopSe( spep_4 + 10, SE012, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 50, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 200, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_5 + 200, explosion, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 200, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 200, explosion, 255 );

--SE
--爆発
SE015 = playSe( spep_5 + 0, 1159 );
SE016 = playSe( spep_5 + 10, 1024 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_5 +20 );
endPhase( spep_5 + 120 );
end