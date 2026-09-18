--リキール_破壊神の陶酔

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
SP_01 = 156865;  --セリフカットイン
SP_02 = 156867;  --気弾を展開する
SP_03 = 156868;  --気弾を放つ
SP_04 = 156870;  --気弾が敵に降り注ぎフィニッシュ
SP_05 = 156871;  --気弾が敵に降り注ぎフィニッシュ

--敵側
SP_01r = 156866;  --セリフカットイン
SP_03r = 156869;  --気弾を放つ

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

setAlphaKey( 0, 1, 255 );
setAlphaKey( 6, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ
setEffMoveKey(  spep_x + 12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x + 84,  ctgogo,  0,  510);

setEffAlphaKey( spep_x + 12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x + 12,  ctgogo,  0);
setEffRotateKey(  spep_x + 84,  ctgogo,  0);

setEffScaleKey(  spep_x + 12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x + 80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x + 84,  ctgogo, 1.07, 1.07);

-- ** 背景 ** --
--entryFadeBg( spep_0 + 0, 0, 830, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--入り
SE001 = playSe( spep_0 + 4, 1072 );
setStartTimeMs( SE001,  317 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 12 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 35 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 52 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 68 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 73 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 88 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 100 );

SE002 = playSe( spep_0 + 16, 1042 );
setPitch( spep_0 + 16, SE002, 200 );
setTimeStretch( SE002, 1.13, 10, 1 );

SE003 = playSe( spep_0 + 22, 20 );
setSeVolumeByWorkId( spep_0 + 22, SE003, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

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

--飛び上がる
SE005 = playSe( spep_1 + 90, 1116 );
SE006 = playSe( spep_1 + 90, 1117 );

-- ** 白背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0 -16, 16, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気弾を展開する(188F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_2 + 0, SP_02, 188, 0x100, -1, 0, 0, 0 );  --気弾を展開する(ef_002)
setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, kidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, kidan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan, 0 );
setEffRotateKey( spep_2 + 188, kidan, 0 );
setEffAlphaKey( spep_2 + 0, kidan, 255 );
setEffAlphaKey( spep_2 + 188, kidan, 255 );

-- ** 音 ** --
--飛び上がる
stopSe( spep_2 + 22, SE005, 52 );
stopSe( spep_2 + 48, SE006, 46 );

--気弾展開
SE007 = playSe( spep_2 + 72, 1127, "", 0.6 );
setSeVolumeByWorkId( spep_2 + 72, SE007, 62 );
setPitch( spep_2 + 72, SE007, -700 );
setTimeStretch( SE007, 0.53, 10, 1 );

SE008 = playSe( spep_2 + 72, 1265, "", 0.6 );
setSeVolumeByWorkId( spep_2 + 72, SE008, 141 );
setPitch( spep_2 + 72, SE008, -500 );
setTimeStretch( SE008, 0.67, 10, 1 );

SE009 = playSe( spep_2 + 72, 1221 );
setSeVolumeByWorkId( spep_2 + 72, SE009, 126 );

SE010 = playSe( spep_2 + 72, 1222 );
setSeVolumeByWorkId( spep_2 + 72, SE010, 126 );

--気弾出る
SE011 = playSe( spep_2 + 80, 1151 );
setSeVolumeByWorkId( spep_2 + 80, SE011, 126 );
stopSe( spep_2 + 88, SE011, 2 );
setPitch( spep_2 + 80, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );

SE012 = playSe( spep_2 + 86, 1151 );
setSeVolumeByWorkId( spep_2 + 86, SE012, 112 );
stopSe( spep_2 + 92, SE012, 6 );
setPitch( spep_2 + 86, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );

SE013 = playSe( spep_2 + 94, 1151 );
setSeVolumeByWorkId( spep_2 + 94, SE013, 79 );
stopSe( spep_2 + 100, SE013, 4 );
setPitch( spep_2 + 94, SE013, -600 );
setTimeStretch( SE013, 0.6, 10, 1 );

SE014 = playSe( spep_2 + 100, 1151 );
setSeVolumeByWorkId( spep_2 + 100, SE014, 79 );
stopSe( spep_2 + 104, SE014, 6 );
setPitch( spep_2 + 100, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

SE015 = playSe( spep_2 + 104, 1151 );
setSeVolumeByWorkId( spep_2 + 104, SE015, 79 );
stopSe( spep_2 + 112, SE015, 2 );
setPitch( spep_2 + 104, SE015, -600 );
setTimeStretch( SE015, 0.6, 10, 1 );

SE016 = playSe( spep_2 + 112, 1151 );
setSeVolumeByWorkId( spep_2 + 112, SE016, 79 );
stopSe( spep_2 + 118, SE016, 4 );
setPitch( spep_2 + 112, SE016, -600 );
setTimeStretch( SE016, 0.6, 10, 1 );

SE017 = playSe( spep_2 + 120, 1151 );
setSeVolumeByWorkId( spep_2 + 120, SE017, 79 );
setPitch( spep_2 + 120, SE017, -600 );
setTimeStretch( SE017, 0.6, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 24, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 188;

------------------------------------------------------
-- 気弾を放つ(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03, 86, 0x100, -1, 0, 0, 0 );  --気弾を放つ(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 86, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 85, hassha, 255 );
setEffAlphaKey( spep_3 + 86, hassha, 0 );

-- ** 音 ** --
--気弾展開
stopSe( spep_3 + 50, SE007, 6 );
stopSe( spep_3 + 50, SE008, 6 );

--気弾発射
SE018 = playSe( spep_3 + 46, 1027 );
setSeVolumeByWorkId( spep_3 + 46, SE018, 77 );

SE019 = playSe( spep_3 + 46, 1145, "", 0.6 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE018, 0 );
stopSe( SP_dodge - 12, SE019, 0 );

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
-- ** 音 ** --
--気弾道
SE020 = playSe( spep_3 + 56, 1241, "", 0.6 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 気弾が敵に降り注ぎフィニッシュ(202F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気弾が敵に降り注ぎフィニッシュ(ef_004_front)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 204, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 204, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 204, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾が敵に降り注ぎフィニッシュ(ef_004_back)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 204, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 204, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 204, finish_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 28 -3, 906, 176 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 28 -3, shuchusen1, 176 +3, 20 );

setEffMoveKey( spep_4 + 28 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 28 -3, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 204, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28 -3, shuchusen1, 0 );
setEffRotateKey( spep_4 + 204, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 28 -3, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 204, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 133, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 28, 1, 108 );
changeAnime( spep_4 -3 + 34, 1, 106 );
changeAnime( spep_4 -3 + 40, 1, 108 );
changeAnime( spep_4 -3 + 46, 1, 106 );
changeAnime( spep_4 -3 + 52, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 108 );
changeAnime( spep_4 -3 + 70, 1, 106 );
changeAnime( spep_4 -3 + 76, 1, 108 );
changeAnime( spep_4 -3 + 82, 1, 106 );
changeAnime( spep_4 -3 + 88, 1, 108 );
changeAnime( spep_4 -3 + 94, 1, 106 );
changeAnime( spep_4 -3 + 100, 1, 108 );
changeAnime( spep_4 -3 + 106, 1, 106 );
changeAnime( spep_4 -3 + 114, 1, 108 );
changeAnime( spep_4 -3 + 120, 1, 106 );
changeAnime( spep_4 -3 + 126, 1, 108 );

b = 180;
b1 = 180 +20;
setMoveKey( spep_4 + 0, 1, -150.3 +b, 7.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, -150.3 +b, 7.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -180.3 +b1, 11.8 , 0 );
setMoveKey( spep_4 -3 + 33, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -215.1 +b1, -13.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 39, 1, -225.1 +b1, 2.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -174.3 +b1, -16.2 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -223.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 51, 1, -223.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -172.3 +b1, 9.8 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -221.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -223.1 +b1, 10.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -174.3 +b1, -20.2 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -209.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 75, 1, -225.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -174.3 +b1, 13.8 , 0 );
setMoveKey( spep_4 -3 + 81, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -225.1 +b1, -19.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 87, 1, -209.1 +b1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -194.3 +b1, -26.2 , 0 );
setMoveKey( spep_4 -3 + 93, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -231.1 +b1, 8.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 99, 1, -205.1 +b1, -19.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -194.3 +b1, 11.8 , 0 );
setMoveKey( spep_4 -3 + 105, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -201.1 +b1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -227.1 +b1, -23.3 , 0 );
setMoveKey( spep_4 -3 + 113, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -200.3 +b1, 13.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 119, 1, -168.3 +b1, -14.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -231.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 125, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -180.3 +b1, -42.2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -176.3 +b1, 29.8 , 0 );
setMoveKey( spep_4 -3 + 133, 1, -180.3 +b1, -2.2 , 0 );

a1 = 1.3;
a = 0.86;
setScaleKey( spep_4 + 0, 1, 0.21 +a1, 0.21 +a1 );
setScaleKey( spep_4 -3 + 20, 1, 0.15 +a, 0.15 +a );
setScaleKey( spep_4 -3 + 133, 1, 0.15 +a, 0.15 +a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 133, 1, 0 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 119, 1, 255 );
setAlphaKey( spep_4 -3 + 120, 1, 139 );
setAlphaKey( spep_4 -3 + 122, 1, 116 );
setAlphaKey( spep_4 -3 + 124, 1, 93 );
setAlphaKey( spep_4 -3 + 133, 1, 0 );

-- ** 音 ** --
--連続爆発
SE021 = playSe( spep_4 + 26, 1023 );

SE022 = playSe( spep_4 + 40, 1011 );
setSeVolumeByWorkId( spep_4 + 40, SE022, 72 );

SE023 = playSe( spep_4 + 58, 1023 );
setSeVolumeByWorkId( spep_4 + 58, SE023, 81 );

SE024 = playSe( spep_4 + 70, 1024 );

SE025 = playSe( spep_4 + 82, 1023 );
setSeVolumeByWorkId( spep_4 + 82, SE025, 87 );

SE026 = playSe( spep_4 + 100, 1014 );
setSeVolumeByWorkId( spep_4 + 100, SE026, 77 );

SE027 = playSe( spep_4 + 114, 1023 );
setSeVolumeByWorkId( spep_4 + 114, SE027, 74 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 204, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 100 );
endPhase( spep_4 + 200 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ
setEffMoveKey(  spep_x + 12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x + 84,  ctgogo,  0,  510);

setEffAlphaKey( spep_x + 12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x + 12,  ctgogo,  0);
setEffRotateKey(  spep_x + 84,  ctgogo,  0);

setEffScaleKey(  spep_x + 12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x + 80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x + 84,  ctgogo, -1.07, 1.07);

-- ** 背景 ** --
--entryFadeBg( spep_0 + 0, 0, 830, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--入り
SE001 = playSe( spep_0 + 4, 1072 );
setStartTimeMs( SE001,  317 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 12 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 35 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 52 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 68 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 73 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 88 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 100 );

SE002 = playSe( spep_0 + 16, 1042 );
setPitch( spep_0 + 16, SE002, 200 );
setTimeStretch( SE002, 1.13, 10, 1 );

SE003 = playSe( spep_0 + 22, 20 );
setSeVolumeByWorkId( spep_0 + 22, SE003, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

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

--飛び上がる
SE005 = playSe( spep_1 + 90, 1116 );
SE006 = playSe( spep_1 + 90, 1117 );

-- ** 白背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0 -16, 16, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気弾を展開する(188F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_2 + 0, SP_02, 188, 0x100, -1, 0, 0, 0 );  --気弾を展開する(ef_002)
setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, kidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_2 + 188, kidan, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan, 0 );
setEffRotateKey( spep_2 + 188, kidan, 0 );
setEffAlphaKey( spep_2 + 0, kidan, 255 );
setEffAlphaKey( spep_2 + 188, kidan, 255 );

-- ** 音 ** --
--飛び上がる
stopSe( spep_2 + 22, SE005, 52 );
stopSe( spep_2 + 48, SE006, 46 );

--気弾展開
SE007 = playSe( spep_2 + 72, 1127, "", 0.6 );
setSeVolumeByWorkId( spep_2 + 72, SE007, 62 );
setPitch( spep_2 + 72, SE007, -700 );
setTimeStretch( SE007, 0.53, 10, 1 );

SE008 = playSe( spep_2 + 72, 1265, "", 0.6 );
setSeVolumeByWorkId( spep_2 + 72, SE008, 141 );
setPitch( spep_2 + 72, SE008, -500 );
setTimeStretch( SE008, 0.67, 10, 1 );

SE009 = playSe( spep_2 + 72, 1221 );
setSeVolumeByWorkId( spep_2 + 72, SE009, 126 );

SE010 = playSe( spep_2 + 72, 1222 );
setSeVolumeByWorkId( spep_2 + 72, SE010, 126 );

--気弾出る
SE011 = playSe( spep_2 + 80, 1151 );
setSeVolumeByWorkId( spep_2 + 80, SE011, 126 );
stopSe( spep_2 + 88, SE011, 2 );
setPitch( spep_2 + 80, SE011, -600 );
setTimeStretch( SE011, 0.6, 10, 1 );

SE012 = playSe( spep_2 + 86, 1151 );
setSeVolumeByWorkId( spep_2 + 86, SE012, 112 );
stopSe( spep_2 + 92, SE012, 6 );
setPitch( spep_2 + 86, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );

SE013 = playSe( spep_2 + 94, 1151 );
setSeVolumeByWorkId( spep_2 + 94, SE013, 79 );
stopSe( spep_2 + 100, SE013, 4 );
setPitch( spep_2 + 94, SE013, -600 );
setTimeStretch( SE013, 0.6, 10, 1 );

SE014 = playSe( spep_2 + 100, 1151 );
setSeVolumeByWorkId( spep_2 + 100, SE014, 79 );
stopSe( spep_2 + 104, SE014, 6 );
setPitch( spep_2 + 100, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

SE015 = playSe( spep_2 + 104, 1151 );
setSeVolumeByWorkId( spep_2 + 104, SE015, 79 );
stopSe( spep_2 + 112, SE015, 2 );
setPitch( spep_2 + 104, SE015, -600 );
setTimeStretch( SE015, 0.6, 10, 1 );

SE016 = playSe( spep_2 + 112, 1151 );
setSeVolumeByWorkId( spep_2 + 112, SE016, 79 );
stopSe( spep_2 + 118, SE016, 4 );
setPitch( spep_2 + 112, SE016, -600 );
setTimeStretch( SE016, 0.6, 10, 1 );

SE017 = playSe( spep_2 + 120, 1151 );
setSeVolumeByWorkId( spep_2 + 120, SE017, 79 );
setPitch( spep_2 + 120, SE017, -600 );
setTimeStretch( SE017, 0.6, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 24, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 188;

------------------------------------------------------
-- 気弾を放つ(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03r, 86, 0x100, -1, 0, 0, 0 );  --気弾を放つ(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 86, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 85, hassha, 255 );
setEffAlphaKey( spep_3 + 86, hassha, 0 );

-- ** 音 ** --
--気弾展開
stopSe( spep_3 + 50, SE007, 6 );
stopSe( spep_3 + 50, SE008, 6 );

--気弾発射
SE018 = playSe( spep_3 + 46, 1027 );
setSeVolumeByWorkId( spep_3 + 46, SE018, 77 );

SE019 = playSe( spep_3 + 46, 1145, "", 0.6 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE018, 0 );
stopSe( SP_dodge - 12, SE019, 0 );

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
-- ** 音 ** --
--気弾道
SE020 = playSe( spep_3 + 56, 1241, "", 0.6 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 気弾が敵に降り注ぎフィニッシュ(202F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気弾が敵に降り注ぎフィニッシュ(ef_004_front)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 204, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 204, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 204, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾が敵に降り注ぎフィニッシュ(ef_004_back)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 204, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 204, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 204, finish_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 28 -3, 906, 176 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 28 -3, shuchusen1, 176 +3, 20 );

setEffMoveKey( spep_4 + 28 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 204, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 28 -3, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 204, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28 -3, shuchusen1, 0 );
setEffRotateKey( spep_4 + 204, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 28 -3, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 204, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 133, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 28, 1, 108 );
changeAnime( spep_4 -3 + 34, 1, 106 );
changeAnime( spep_4 -3 + 40, 1, 108 );
changeAnime( spep_4 -3 + 46, 1, 106 );
changeAnime( spep_4 -3 + 52, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 108 );
changeAnime( spep_4 -3 + 70, 1, 106 );
changeAnime( spep_4 -3 + 76, 1, 108 );
changeAnime( spep_4 -3 + 82, 1, 106 );
changeAnime( spep_4 -3 + 88, 1, 108 );
changeAnime( spep_4 -3 + 94, 1, 106 );
changeAnime( spep_4 -3 + 100, 1, 108 );
changeAnime( spep_4 -3 + 106, 1, 106 );
changeAnime( spep_4 -3 + 114, 1, 108 );
changeAnime( spep_4 -3 + 120, 1, 106 );
changeAnime( spep_4 -3 + 126, 1, 108 );

b = 180;
b1 = 180 +20;
setMoveKey( spep_4 + 0, 1, -150.3 +b, 7.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, -150.3 +b, 7.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -180.3 +b1, 11.8 , 0 );
setMoveKey( spep_4 -3 + 33, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -215.1 +b1, -13.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 39, 1, -225.1 +b1, 2.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -174.3 +b1, -16.2 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -223.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 51, 1, -223.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -172.3 +b1, 9.8 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -221.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -223.1 +b1, 10.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -174.3 +b1, -20.2 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -209.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 75, 1, -225.1 +b1, -21.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -174.3 +b1, 13.8 , 0 );
setMoveKey( spep_4 -3 + 81, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -225.1 +b1, -19.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 87, 1, -209.1 +b1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -194.3 +b1, -26.2 , 0 );
setMoveKey( spep_4 -3 + 93, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -231.1 +b1, 8.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 99, 1, -205.1 +b1, -19.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -194.3 +b1, 11.8 , 0 );
setMoveKey( spep_4 -3 + 105, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -201.1 +b1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -227.1 +b1, -23.3 , 0 );
setMoveKey( spep_4 -3 + 113, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -200.3 +b1, 13.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 119, 1, -168.3 +b1, -14.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -231.1 +b1, 12.7 , 0 );
setMoveKey( spep_4 -3 + 125, 1, -215.1 +b1, -3.3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -180.3 +b1, -42.2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -180.3 +b1, -2.2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -176.3 +b1, 29.8 , 0 );
setMoveKey( spep_4 -3 + 133, 1, -180.3 +b1, -2.2 , 0 );

a1 = 1.3;
a = 0.86;
setScaleKey( spep_4 + 0, 1, 0.21 +a1, 0.21 +a1 );
setScaleKey( spep_4 -3 + 20, 1, 0.15 +a, 0.15 +a );
setScaleKey( spep_4 -3 + 133, 1, 0.15 +a, 0.15 +a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 133, 1, 0 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 119, 1, 255 );
setAlphaKey( spep_4 -3 + 120, 1, 139 );
setAlphaKey( spep_4 -3 + 122, 1, 116 );
setAlphaKey( spep_4 -3 + 124, 1, 93 );
setAlphaKey( spep_4 -3 + 133, 1, 0 );

-- ** 音 ** --
--連続爆発
SE021 = playSe( spep_4 + 26, 1023 );

SE022 = playSe( spep_4 + 40, 1011 );
setSeVolumeByWorkId( spep_4 + 40, SE022, 72 );

SE023 = playSe( spep_4 + 58, 1023 );
setSeVolumeByWorkId( spep_4 + 58, SE023, 81 );

SE024 = playSe( spep_4 + 70, 1024 );

SE025 = playSe( spep_4 + 82, 1023 );
setSeVolumeByWorkId( spep_4 + 82, SE025, 87 );

SE026 = playSe( spep_4 + 100, 1014 );
setSeVolumeByWorkId( spep_4 + 100, SE026, 77 );

SE027 = playSe( spep_4 + 114, 1023 );
setSeVolumeByWorkId( spep_4 + 114, SE027, 74 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 204, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 100 );
endPhase( spep_4 + 200 );

end