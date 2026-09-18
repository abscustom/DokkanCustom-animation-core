-- 4029410:LR_伝説の超サイヤ人ブロリー_超必殺技：ブラスターメテオ
-- sp_effect_a2_00241
-- sp2748

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163083 --ブロリーのアップ〜遠景 ef_001
SP_02 = 163085 --気弾発射〜フィニッシュ ef_002
SP_04 = 163087 --敵に気弾がヒット〜着弾 ef_003
SP_06 = 163089 --KO ef_004

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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
--[[
setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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
]]
ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文(敵の初期化)
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- ブロリーのアップ〜遠景
-------------------------------------------------
MAX_FRAME_0 = 420;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ブロリーのアップ〜遠景 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 430, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 426, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );

--力む
SE005 = playSeVer2( spep_0 + 42, 1344, "", 0, 0, 0, -1);

--のけぞる
SE006 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 184, 0, 26, -1);

--気ダメ
SE007 = playSeVer2( spep_0 + 168, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE007, 141 );
SE008 = playSeVer2( spep_0 + 168, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 63 );

--オーラ
SE009 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);

--腕あげる
SE010 = playSeVer2( spep_0 + 200, 1004, "", 0, 0, 0, -1);

--腕おろす
SE013 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 168 );

--浮き上がる
SE014 = playSeVer2( spep_0 + 248, 1067, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 248, 1190, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 248, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE016, 79 );

--オーラ
SE017 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);

--オーラ収束１
SE018 = playSeVer2( spep_0 + 312, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE018, 86 );
setTimeStretch( SE018, 0.66, 30, 4 );
SE019 = playSeVer2( spep_0 + 312, 1277, "",spep_0 + 372, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 312, SE019, 230 );
setPitch( spep_0 + 312, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 360; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止 

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--オーラ収束２
SE020 = playSeVer2( spep_0 + 346, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE020, 86 );
setTimeStretch( SE020, 0.66, 30, 4 );
SE021 = playSeVer2( spep_0 + 346, 1277, "",spep_0 + 406, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 346, SE021, 230 );
setPitch( spep_0 + 346, SE021, -800 );
setTimeStretch( SE021, 0.47, 30, 4 );

--気が弾ける
SE022 = playSeVer2( spep_0 + 380, 1173, "",spep_0 + 432, 2, 22, -1);
setSeVolumeByWorkId( spep_0 + 380, SE022, 200 );
setStartTimeMs( SE022,  333 );
SE023 = playSeVer2( spep_0 + 382, 1179, "",spep_0 + 428, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE023, 78 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --420

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾発射
SE025 = playSeVer2( spep_1 + 74, 1226, "",spep_1 + 170, 0, 50, -1);

--気弾発射
SE026 = playSeVer2( spep_1 + 90, 1257, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 90, 1289, "",spep_2 + 156, 0, 66, -1);
setSeVolumeByWorkId( spep_1 + 90, SE027, 53 );
setPitch( spep_1 + 90, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );

-------------------------------------------------
-- 気弾発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 342;

-- ** エフェクト等 ** --
base_f2 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, base_f2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_f2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f2, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_f2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_f2, 0);
setEffAlphaKey( spep_2 + 0, base_f2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_f2, 255);

spep_3 = spep_2 + MAX_FRAME_2-2;

finish = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0); -- KO ef_004
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_3 + 170, finish, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_3 + 170, finish, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish, 0);
setEffRotateKey( spep_3 + 170, finish, 0);
setEffAlphaKey( spep_3 + 0, finish, 255);
setEffAlphaKey( spep_3 + 170, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 96 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 96 + OFFSET_X, 1, 29.2, 0.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 29.2, 0.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 189.2, 80.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 189.2, 80.2 , 0 );

setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -45 );

-- ** 音 ** --
--気弾発射
SE028 = playSeVer2( spep_2 + 8, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE028, 73 );
SE029 = playSeVer2( spep_2 + 12, 1401, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 24, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 36, 1401, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 46, 1401, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 56, 1401, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 68, 1401, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 80, 1401, "", 0, 0, 0, -1);

--気弾発射2
SE060 = playSeVer2( spep_2 + 40, 1226, "",spep_2 + 100, 30, 40, -1);

--敵ヒット
SE036 = playSeVer2( spep_2 + 98, 1027, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 98, 1021, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 98, 1178, "", 0, 0, 0, -1);

--気弾飛んでいく
SE039 = playSeVer2( spep_2 + 108, 1272, "",spep_2 + 152, 0, 16, -1);
setPitch( spep_2 + 108, SE039, 600 );
setTimeStretch( SE039, 1.4, 30, 4 );

--爆発
SE040 = playSeVer2( spep_2 + 124, 1069, "", 0, 8, 0, -1);
setStartTimeMs( SE040,  133 );
SE041 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 144, 1044, "",spep_2 + 244, 0, 48, -1);

--地響き
SE043 = playSeVer2( spep_2 + 144, 1044, "",spep_2 + 368, 0, 36, -1);

--地面爆発する
SE044 = playSeVer2( spep_2 + 180, 1067, "",spep_2 + 250, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 224, 1008, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 252, 1011, "",spep_2 + 320, 0, 26, -1);
SE047 = playSeVer2( spep_2 + 282, 1068, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 302, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 318, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_2 + 338 + OFFSET_X, 6, 10, 0, 0, 0, 0, 255);  -- black fade
end

hideKoScreen();
dealDamage( spep_2 + 242 ); -- ダメージ表示フレーム
pauseMovie( spep_2 + MAX_FRAME_2 - 2, 1 );   -- 一時停止(endphaseから-2F)
endPhase( spep_2 + MAX_FRAME_2); --  342

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- ブロリーのアップ〜遠景
-------------------------------------------------
MAX_FRAME_0 = 420;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ブロリーのアップ〜遠景 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 430, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 426, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );

--力む
SE005 = playSeVer2( spep_0 + 42, 1344, "", 0, 0, 0, -1);

--のけぞる
SE006 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 184, 0, 26, -1);

--気ダメ
SE007 = playSeVer2( spep_0 + 168, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE007, 141 );
SE008 = playSeVer2( spep_0 + 168, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE008, 63 );

--オーラ
SE009 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);

--腕あげる
SE010 = playSeVer2( spep_0 + 200, 1004, "", 0, 0, 0, -1);

--腕おろす
SE013 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 168 );

--浮き上がる
SE014 = playSeVer2( spep_0 + 248, 1067, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 248, 1190, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 248, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE016, 79 );

--オーラ
SE017 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);

--オーラ収束１
SE018 = playSeVer2( spep_0 + 312, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE018, 86 );
setTimeStretch( SE018, 0.66, 30, 4 );
SE019 = playSeVer2( spep_0 + 312, 1277, "",spep_0 + 372, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 312, SE019, 230 );
setPitch( spep_0 + 312, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 360; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止 

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--オーラ収束２
SE020 = playSeVer2( spep_0 + 346, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE020, 86 );
setTimeStretch( SE020, 0.66, 30, 4 );
SE021 = playSeVer2( spep_0 + 346, 1277, "",spep_0 + 406, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 346, SE021, 230 );
setPitch( spep_0 + 346, SE021, -800 );
setTimeStretch( SE021, 0.47, 30, 4 );

--気が弾ける
SE022 = playSeVer2( spep_0 + 380, 1173, "",spep_0 + 432, 2, 22, -1);
setSeVolumeByWorkId( spep_0 + 380, SE022, 200 );
setStartTimeMs( SE022,  333 );
SE023 = playSeVer2( spep_0 + 382, 1179, "",spep_0 + 428, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 382, SE023, 78 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --420

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾発射
SE025 = playSeVer2( spep_1 + 74, 1226, "",spep_1 + 170, 0, 50, -1);

--気弾発射
SE026 = playSeVer2( spep_1 + 90, 1257, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 90, 1289, "",spep_2 + 156, 0, 66, -1);
setSeVolumeByWorkId( spep_1 + 90, SE027, 53 );
setPitch( spep_1 + 90, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );

-------------------------------------------------
-- 気弾発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 342;

-- ** エフェクト等 ** --
base_f2 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, base_f2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_f2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f2, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_f2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_f2, 0);
setEffAlphaKey( spep_2 + 0, base_f2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_f2, 255);

-- spep_3 = spep_2 + MAX_FRAME_2-2;

-- finish = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0); -- KO ef_004
-- setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
-- setEffMoveKey( spep_3 + 170, finish, 0, 0 , 0);
-- setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0);
-- setEffScaleKey( spep_3 + 170, finish, -1.0, 1.0);
-- setEffRotateKey( spep_3 + 0, finish, 0);
-- setEffRotateKey( spep_3 + 170, finish, 0);
-- setEffAlphaKey( spep_3 + 0, finish, 255);
-- setEffAlphaKey( spep_3 + 170, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 116 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 96 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 96 + OFFSET_X, 1, -29.2, 0.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -29.2, 0.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -189.2, 80.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -189.2, 80.2 , 0 );

setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 45 );

-- ** 音 ** --
--気弾発射
SE028 = playSeVer2( spep_2 + 8, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE028, 73 );
SE029 = playSeVer2( spep_2 + 12, 1401, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 24, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 36, 1401, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 46, 1401, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 56, 1401, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 68, 1401, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 80, 1401, "", 0, 0, 0, -1);

--気弾発射2
SE060 = playSeVer2( spep_2 + 40, 1226, "",spep_2 + 100, 30, 40, -1);

--敵ヒット
SE036 = playSeVer2( spep_2 + 98, 1027, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 98, 1021, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 98, 1178, "", 0, 0, 0, -1);

--気弾飛んでいく
SE039 = playSeVer2( spep_2 + 108, 1272, "",spep_2 + 152, 0, 16, -1);
setPitch( spep_2 + 108, SE039, 600 );
setTimeStretch( SE039, 1.4, 30, 4 );

--爆発
SE040 = playSeVer2( spep_2 + 124, 1069, "", 0, 8, 0, -1);
setStartTimeMs( SE040,  133 );
SE041 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 144, 1044, "",spep_2 + 244, 0, 48, -1);

--地響き
SE043 = playSeVer2( spep_2 + 144, 1044, "",spep_2 + 368, 0, 36, -1);

--地面爆発する
SE044 = playSeVer2( spep_2 + 180, 1067, "",spep_2 + 250, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 224, 1008, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 252, 1011, "",spep_2 + 320, 0, 26, -1);
SE047 = playSeVer2( spep_2 + 282, 1068, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 302, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 318, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
-- if ( _IS_DEAD_LAST_ == 0 ) then
--     entryFade( spep_2 + 338 + OFFSET_X, 6, 10, 0, 0, 0, 0, 255);  -- black fade
-- end

-- hideKoScreen();
dealDamage( spep_2 + 242 ); -- ダメージ表示フレーム
pauseMovie( spep_2 + MAX_FRAME_2 - 2, 1 );   -- 一時停止(endphaseから-2F)
endPhase( spep_2 + MAX_FRAME_2); --  342

end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避 2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 192;

setupMovie(0, SP_01, 860, 1); -- xxxxはusmの全体攻撃背景が始まるフレームを指定

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0); -- 敵に気弾がヒット〜着弾 ef_003
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

spep_3 = spep_z + MAX_FRAME_Z-2;

finish = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0); -- KO ef_004
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_3 + 170, finish, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_3 + 170, finish, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish, 0);
setEffRotateKey( spep_3 + 170, finish, 0);
setEffAlphaKey( spep_3 + 0, finish, 255);
setEffAlphaKey( spep_3 + 170, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 20 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 100 );
changeAnime( spep_z + 12 + OFFSET_X, 1, 104 );
changeAnime( spep_z + 16 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 180, 84 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 180, 84 , 0 );

setScaleKey( spep_z + 0, 1, 1, 1 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 15 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 16 + OFFSET_X, 1, -45 );
setRotateKey( spep_z + 20 + OFFSET_X, 1, -45 );

-- ** 音 ** --
--【全体】敵ヒット
SE050 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_z + 0, 1177, "",spep_z + 78, 0, 26, -1);
setSeVolumeByWorkId( spep_z + 0, SE051, 73 );
SE052 = playSeVer2( spep_z + 0, 1422, "",spep_z + 76, 0, 22, -1);
setSeVolumeByWorkId( spep_z + 0, SE052, 140 );
SE053 = playSeVer2( spep_z + 0, 1304, "",spep_z + 74, 0, 20, -1);
setPitch( spep_z + 0, SE053, 400 );
setTimeStretch( SE053, 1.27, 30, 4 );

--爆発
SE054 = playSeVer2( spep_z + 50, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_z + 76, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_z + 188 + OFFSET_X, 6, 10, 0, 0, 0, 0, 255);  -- black fade
end

hideKoScreen();
dealDamage( spep_z + 92 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z); -- 192

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避 2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 192;

setupMovie(0, SP_01, 860, 1); -- xxxxはusmの全体攻撃背景が始まるフレームを指定

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0); -- 敵に気弾がヒット〜着弾 ef_003
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, -1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

-- spep_3 = spep_z + MAX_FRAME_Z-2;

-- finish = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0); -- KO ef_004
-- setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
-- setEffMoveKey( spep_3 + 170, finish, 0, 0 , 0);
-- setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0);
-- setEffScaleKey( spep_3 + 170, finish, -1.0, 1.0);
-- setEffRotateKey( spep_3 + 0, finish, 0);
-- setEffRotateKey( spep_3 + 170, finish, 0);
-- setEffAlphaKey( spep_3 + 0, finish, 255);
-- setEffAlphaKey( spep_3 + 170, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 20 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 0 );
changeAnime( spep_z + 12 + OFFSET_X, 1, 4 );
changeAnime( spep_z + 16 + OFFSET_X, 1, 6 );

setMoveKey( spep_z + 0, 1, 20, 3.9 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, -20, 3.9 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -180, 84 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -180, 84 , 0 );

setScaleKey( spep_z + 0, 1, 1, 1 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 15 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 16 + OFFSET_X, 1, 45 );
setRotateKey( spep_z + 20 + OFFSET_X, 1, 45 );

-- ** 音 ** --
--【全体】敵ヒット
SE050 = playSeVer2( spep_z + 0, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_z + 0, 1177, "",spep_z + 78, 0, 26, -1);
setSeVolumeByWorkId( spep_z + 0, SE051, 73 );
SE052 = playSeVer2( spep_z + 0, 1422, "",spep_z + 76, 0, 22, -1);
setSeVolumeByWorkId( spep_z + 0, SE052, 140 );
SE053 = playSeVer2( spep_z + 0, 1304, "",spep_z + 74, 0, 20, -1);
setPitch( spep_z + 0, SE053, 400 );
setTimeStretch( SE053, 1.27, 30, 4 );

--爆発
SE054 = playSeVer2( spep_z + 50, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_z + 76, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
-- if ( _IS_DEAD_LAST_ == 0 ) then
--     entryFade( spep_z + 188 + OFFSET_X, 6, 10, 0, 0, 0, 0, 255);  -- black fade
-- end

--hideKoScreen();
dealDamage( spep_z + 92 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z); -- 192

end
end