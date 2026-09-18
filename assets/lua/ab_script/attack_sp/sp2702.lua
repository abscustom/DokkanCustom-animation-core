--1028720:LR_ギニュー(特戦隊)_必殺技：先攻ジャンケン(リクーム)
--sp_effect_a1_00431
--sp2702

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162795;	--じゃんけん	ef_001
SP_02 = 162796;	--ビーム発射→被弾→爆発：前	ef_002
SP_02b = 162797;--ビーム発射→被弾→爆発：後ろ	ef_002b

--エフェクト(てき)
SP_02r = 162798;--ビーム発射→被弾→爆発：前：反転	ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- じゃんけん	
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
--気弾溜め
SE006 = playSeVer2( spep_c + 88, 1266, "",spep_c + 142, 4, 18, -1);
setStartTimeMs( SE006,  1500 );
--気弾溜め
SE008 = playSeVer2( spep_c + 90, 1255, "",spep_c + 138, 4, 16, -1);
setStartTimeMs( SE008,  733 );
SE009 = playSeVer2( spep_c + 88, 1264, "",spep_c + 150, 0, 30, -1);
setSeVolumeByWorkId( spep_c + 88, SE009, 60 );
SE010 = playSeVer2( spep_c + 88, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE010, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- ビーム発射→被弾→爆発
-------------------------------------------------

MAX_FRAME_1 = 304;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射→被弾→爆発：前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビーム発射→被弾→爆発：後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 128 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 128 + OFFSET_X, 1, 640, -131.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 640, -131.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 556.9, -128.5 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 556.9, -128.5 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 536.3, -95.7 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 536.3, -95.7 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 461.3, -91 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 461.3, -91 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 413.8, -80.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 413.8, -80.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 357.5, -55.5 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 357.5, -55.5 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 310.1, -45.2 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 310.1, -45.2 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 253.8, -20.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 253.8, -20.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 206.4, -9.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 206.4, -9.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 154.5, 8 , 0 );

setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 0.64, 0.64 );

setRotateKey( spep_1 + 128 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE011 = playSeVer2( spep_1 + 24, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE011, 141 );
SE012 = playSeVer2( spep_1 + 26, 1213, "",spep_1 + 190, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 26, SE012, 71 );
SE013 = playSeVer2( spep_1 + 26, 1177, "",spep_1 + 196, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE014 = playSeVer2( spep_1 + 108, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 108, SE014, 158 );
--爆発
SE015 = playSeVer2( spep_1 + 156, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 166, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 304F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- じゃんけん	
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
--気弾溜め
SE006 = playSeVer2( spep_c + 88, 1266, "",spep_c + 142, 4, 18, -1);
setStartTimeMs( SE006,  1500 );
--気弾溜め
SE008 = playSeVer2( spep_c + 90, 1255, "",spep_c + 138, 4, 16, -1);
setStartTimeMs( SE008,  733 );
SE009 = playSeVer2( spep_c + 88, 1264, "",spep_c + 150, 0, 30, -1);
setSeVolumeByWorkId( spep_c + 88, SE009, 60 );
SE010 = playSeVer2( spep_c + 88, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE010, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- ビーム発射→被弾→爆発
-------------------------------------------------

MAX_FRAME_1 = 304;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ビーム発射→被弾→爆発：前：反転	ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビーム発射→被弾→爆発：後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 128 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 128 + OFFSET_X, 1, 640, -131.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 640, -131.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 556.9, -128.5 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 556.9, -128.5 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 536.3, -95.7 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 536.3, -95.7 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 461.3, -91 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 461.3, -91 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 413.8, -80.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 413.8, -80.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 357.5, -55.5 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 357.5, -55.5 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 310.1, -45.2 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 310.1, -45.2 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 253.8, -20.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 253.8, -20.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 206.4, -9.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 206.4, -9.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 150.1, 15.4 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 154.5, 8 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 154.5, 8 , 0 );

setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 0.64, 0.64 );

setRotateKey( spep_1 + 128 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE011 = playSeVer2( spep_1 + 24, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE011, 141 );
SE012 = playSeVer2( spep_1 + 26, 1213, "",spep_1 + 190, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 26, SE012, 71 );
SE013 = playSeVer2( spep_1 + 26, 1177, "",spep_1 + 196, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE014 = playSeVer2( spep_1 + 108, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 108, SE014, 158 );
--爆発
SE015 = playSeVer2( spep_1 + 156, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 166, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 304F-4

end
