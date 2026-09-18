--1029890:UR_フュー(少年期)(ドギドギ完全吸収)_必殺技：起爆式・本気玉
--sp_effect_a2_00249
--sp2772

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163310;  --ef_001  正面文字～衝撃発射
SP_01b = 163311;  --ef_001b 正面文字～衝撃発射
SP_02  = 163312;  --ef_002  気弾発射～フィニッシュ
SP_02b = 163313;  --ef_002b 気弾発射～フィニッシュ

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 正面文字～衝撃発射
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面文字～衝撃発射(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 正面文字～衝撃発射(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 24, 20, MAX_FRAME_0 +2, 0, 0, 0, 0, 80);  --背景 暗め

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 92 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 92 + OFFSET_X, 1, 209.9, -56.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 209.9, -56.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 219.9, -56.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 219.9, -56.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 199.9, -56.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 199.9, -56.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 209.9, -46.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 209.9, -46.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 209.9, -66.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 209.9, -66.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 203.7, -56.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 203.7, -56.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 209.9, -50.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 209.9, -50.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 209.9, -63.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 209.9, -63.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 203.7, -56.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 203.7, -56.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 209.9, -50.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 209.9, -50.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 209.9, -63.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 209.9, -63.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 216.2, -56.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 204.9, -56.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 204.9, -56.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 213.7, -56.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 213.7, -56.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 209.9, -53.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 209.9, -53.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 209.9, -59.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 209.9, -59.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 207.4, -56.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 207.4, -56.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 212.4, -56.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 212.4, -56.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 209.9, -54.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 209.9, -54.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 209.9, -58.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 209.9, -58.1 , 0 );

setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -42.2 );

-- ** 音 ** --
--文字描く
SE002 = playSeVer2( spep_0 + 18, 44, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1255, "",spep_0 + 114, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 52 );
SE004 = playSeVer2( spep_0 + 18, 1209, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 50 );
SE005 = playSeVer2( spep_0 + 18, 1240, "",spep_0 + 118, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 122 );
SE006 = playSeVer2( spep_0 + 18, 1003, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--敵拘束する
SE008 = playSeVer2( spep_0 + 104, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 116, 45, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 116, 1153, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 116, 1321, "",spep_0 + 192, 0, 28, -1);
SE012 = playSeVer2( spep_0 + 118, 1291, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 172f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--顔アップ
SE014 = playSeVer2( spep_1 + 86, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 86, 12, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 86, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE016, 63 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 304;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80);  --背景 暗め

-- ** 敵キャラクター ** --
setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 136 + OFFSET_X, 1, 546.8, -116.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 546.8, -116.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 512.8, -115.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 512.8, -115.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 479.1, -114.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 479.1, -114.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 445.8, -143.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 445.8, -143.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 413, -88.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 413, -88.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 380.6, -130 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 380.6, -130 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 342.5, -111 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 342.5, -111 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 254.4, -88.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 254.4, -88.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 144.7, -55.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 144.7, -55.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 144.7, -77.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 144.7, -77.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 138.7, -55.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 138.7, -55.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 126.6, -48.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 126.6, -48.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 114.5, -41.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 114.5, -41.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 146.2, -71.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 146.2, -71.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 142, -69.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 142, -69.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 89.1, -10.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 89.1, -10.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 101.8, -67.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 101.8, -67.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 129.3, -25 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 129.3, -25 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 118.7, -60.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 118.7, -60.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 95.5, -33.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 95.5, -33.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 127.1, -52.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 127.1, -52.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 112.4, -25 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 112.4, -25 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 106, -58.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 106, -58.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 133.5, -39.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 133.5, -39.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 97.6, -41.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 97.6, -41.9 , 0 );

setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 136 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -45 );

-- ** 音 ** --
--気を溜める
SE017 = playSeVer2( spep_2 + 58, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE017, 146 );
SE018 = playSeVer2( spep_2 + 60, 1006, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 80, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE019, 148 );
SE021 = playSeVer2( spep_2 + 96, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE021, 146 );
SE022 = playSeVer2( spep_2 + 118, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE022, 150 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 154, 0, 32, -1);

--気弾投げる
SE023 = playSeVer2( spep_2 + 136, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE023, 132 );
SE024 = playSeVer2( spep_2 + 146, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 146, 1052, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_2 + 166, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 166, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE027, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 186); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  304f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 正面文字～衝撃発射
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面文字～衝撃発射(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 正面文字～衝撃発射(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 24, 20, MAX_FRAME_0 +2, 0, 0, 0, 0, 80);  --背景 暗め

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 92 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 92 + OFFSET_X, 1, -209.9, -56.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -209.9, -56.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -219.9, -56.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -219.9, -56.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -199.9, -56.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -199.9, -56.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -209.9, -46.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -209.9, -46.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -209.9, -66.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -209.9, -66.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -203.7, -56.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -203.7, -56.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -209.9, -50.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -209.9, -50.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -209.9, -63.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -209.9, -63.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -203.7, -56.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -203.7, -56.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -209.9, -50.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -209.9, -50.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -209.9, -63.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -209.9, -63.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -216.2, -56.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -204.9, -56.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -204.9, -56.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -213.7, -56.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -213.7, -56.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -209.9, -53.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -209.9, -53.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -209.9, -59.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -209.9, -59.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -207.4, -56.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -207.4, -56.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -212.4, -56.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -212.4, -56.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -209.9, -54.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -209.9, -54.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -209.9, -58.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -209.9, -58.1 , 0 );

setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 42.2 );

-- ** 音 ** --
--文字描く
SE002 = playSeVer2( spep_0 + 18, 44, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1255, "",spep_0 + 114, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 52 );
SE004 = playSeVer2( spep_0 + 18, 1209, "",spep_0 + 138, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 50 );
SE005 = playSeVer2( spep_0 + 18, 1240, "",spep_0 + 118, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 122 );
SE006 = playSeVer2( spep_0 + 18, 1003, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--敵拘束する
SE008 = playSeVer2( spep_0 + 104, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 116, 45, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 116, 1153, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 116, 1321, "",spep_0 + 192, 0, 28, -1);
SE012 = playSeVer2( spep_0 + 118, 1291, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 172f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--顔アップ
SE014 = playSeVer2( spep_1 + 86, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 86, 12, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 86, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE016, 63 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 304;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80);  --背景 暗め

-- ** 敵キャラクター ** --
setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 136 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 136 + OFFSET_X, 1, -546.8, -116.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -546.8, -116.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -512.8, -115.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -512.8, -115.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -479.1, -114.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -479.1, -114.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -445.8, -143.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -445.8, -143.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -413, -88.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -413, -88.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -380.6, -130 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -380.6, -130 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -342.5, -111 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -342.5, -111 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -254.4, -88.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -254.4, -88.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -144.7, -55.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -144.7, -55.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -144.7, -77.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -144.7, -77.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -138.7, -55.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -138.7, -55.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -126.6, -48.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -126.6, -48.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -114.5, -41.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -114.5, -41.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -146.2, -71.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -146.2, -71.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -142, -69.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -142, -69.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -89.1, -10.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -89.1, -10.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -101.8, -67.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -101.8, -67.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -129.3, -25 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -129.3, -25 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -118.7, -60.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -118.7, -60.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -95.5, -33.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -95.5, -33.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -127.1, -52.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -127.1, -52.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -112.4, -25 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -112.4, -25 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -106, -58.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -106, -58.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -133.5, -39.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -133.5, -39.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -97.6, -41.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -97.6, -41.9 , 0 );

setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 136 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 45 );

-- ** 音 ** --
--気を溜める
SE017 = playSeVer2( spep_2 + 58, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE017, 146 );
SE018 = playSeVer2( spep_2 + 60, 1006, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 80, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE019, 148 );
SE021 = playSeVer2( spep_2 + 96, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE021, 146 );
SE022 = playSeVer2( spep_2 + 118, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE022, 150 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 92, 1116, "",spep_2 + 154, 0, 32, -1);

--気弾投げる
SE023 = playSeVer2( spep_2 + 136, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE023, 132 );
SE024 = playSeVer2( spep_2 + 146, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 146, 1052, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_2 + 166, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 166, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE027, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 186); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  304f -4

end
