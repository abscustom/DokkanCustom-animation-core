--1027430:UR_人造人間17号&18号_ユニット必殺：オーバードライブパワー
--sp_effect_a1_00408_b
--sp2607

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164362;  --ef_002  ユニット必殺技：冒頭
SP_02  = 162317;  --ef_004  ユニット必殺技：ダッシュ～ラスト・手前
SP_02r = 162320;  --ef_004r  ユニット必殺技：ダッシュ～ラスト・手前

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 0);


-------------------------------------------------
-- ユニット必殺技：冒頭
-------------------------------------------------
MAX_FRAME_0 = 118;
--[[
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_003  ユニット必殺技：冒頭
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);
]]
-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--二人向かっていく
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 148, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 14, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 130 );
SE007 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 56 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --118

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ユニット必殺技：ダッシュ～ラスト
-------------------------------------------------
MAX_FRAME_2 = 1012;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_004  ユニット必殺技：ダッシュ～ラスト・手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004b  ユニット必殺技：ダッシュ～ラスト・奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 70 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 894.7, 297.3 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 857.9, 285.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 814.7, 272.4 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 765, 256.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 708.8, 239.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 646.2, 219.8 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 577.1, 198.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 501.6, 174.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 470.6, 164.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 430, 152.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 389.2, 139.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 348.1, 127.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 306.7, 114.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 265, 101.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 223, 88.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 180.8, 75.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 138.2, 62.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 95.3, 49.8 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, -735, -1319.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -735, -1319.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -391.4, -685 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -149.3, -227.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 40.2, 115.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 125.5, 301.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 146.2, 298.6 , 0 );
setMoveKey( spep_2 + 171+ OFFSET_X, 1, 146.2, 298.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 149.5, 298.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 149.5, 298.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 165.5, 311.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 165.5, 311.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 174.1, 317.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 174.1, 317.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 182.1, 322.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 182.1, 322.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 189.3, 327.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 189.3, 327.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 195.8, 331.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 195.8, 331.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 201.6, 335.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 201.6, 335.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 206.7, 339.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 206.7, 339.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 201, 329 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 201, 329 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 27.54, 27.54 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 27.54, 27.54 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 56.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 56.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 66.8 );

--敵の動き３
setDisp( spep_2 + 834 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 895 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 834 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 834 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 191.5, 114.7 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 191.5, 114.7 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 184.8, 118 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 184.8, 118 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 188.1, 111.3 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 188.1, 111.3 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 181.4, 114.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 181.4, 114.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 184.8, 111.3 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 184.8, 111.3 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 171.4, 104.6 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 171.4, 104.6 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 178.1, 144.8 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 178.1, 144.8 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 178.1, 97.9 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 178.1, 97.9 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 178.1, 111.3 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, 178.1, 111.3 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 184.8, 101.3 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, 184.8, 101.3 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, 184.8, 134.8 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, 184.8, 134.8 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, 174.7, 108 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, 174.7, 108 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, 178.1, 97.9 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, 178.1, 97.9 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, 194.8, 121.4 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, 181.4, 111.3 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, 181.4, 111.3 , 0 );

setScaleKey( spep_2 + 834 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 895 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 834 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 895 + OFFSET_X, 1, 18.8 );

-- ** 音 ** --
--二人飛んでいく
SE009 = playSeVer2( spep_2 + 4, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1277, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);

--ラッシュ
SE014 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 84, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 92, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 100, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 108, 1000, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 120, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 124, 1001, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 136, 1000, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 142, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 148, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 156, 1121, "",spep_2 + 210, 0, 16, -1);

--岩激突
SE027 = playSeVer2( spep_2 + 184, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE027, 78 );

--17.18号着地
SE028 = playSeVer2( spep_2 + 194, 63, "",spep_2 + 228, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 194, SE028, 129 );
SE029 = playSeVer2( spep_2 + 214, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE029, 155 );
SE030 = playSeVer2( spep_2 + 218, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE030, 184 );

--悟空着地
SE031 = playSeVer2( spep_2 + 220, 63, "",spep_2 + 254, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 236, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE032, 124 );
SE033 = playSeVer2( spep_2 + 248, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE033, 207 );

--画面遷移
SE034 = playSeVer2( spep_2 + 270, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 270, SE034, 78 );

--悟空構える
SE035 = playSeVer2( spep_2 + 338, 1233, "", 0, 0, 0, -1);

--気ダメ
SE036 = playSeVer2( spep_2 + 338, 1407, "",spep_2 + 618, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 338, SE036, 224 );
SE037 = playSeVer2( spep_2 + 342, 1181, "",spep_2 + 634, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 342, SE037, 157 );
SE038 = playSeVer2( spep_2 + 358, 1035, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 358, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 358, SE039, 86 );

--オーラ
SE040 = playSeVer2( spep_2 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE040, 50 );
SE041 = playSeVer2( spep_2 + 406, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 406, SE041, 50 );
SE042 = playSeVer2( spep_2 + 430, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE042, 50 );
SE045 = playSeVer2( spep_2 + 454, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 454, SE045, 50 );

--17.18号気弾溜め
SE043 = playSeVer2( spep_2 + 436, 1296, "",spep_2 + 604, 0, 78, -1);
SE044 = playSeVer2( spep_2 + 436, 1265, "",spep_2 + 616, 0, 32, -1);

--悟空気弾発射前溜め
SE046 = playSeVer2( spep_2 + 630, 1210, "",spep_2 + 714, 12, 40, 0.5);
setStartTimeMs( SE046,  2800 );

--悟空気弾溜め
SE047 = playSeVer2( spep_2 + 482, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE047, 85 );
SE048 = playSeVer2( spep_2 + 482, 1210, "",spep_2 + 630, 0, 62, -1);

--17.18号気弾発射
SE049 = playSeVer2( spep_2 + 588, 1430, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 588, SE049, 129 );
SE050 = playSeVer2( spep_2 + 588, 1145, "", 0, 0, 0, -1);

--悟空気弾発射
SE051 = playSeVer2( spep_2 + 664, 1146, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 664, 1284, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 664, 1223, "", 0, 0, 0, -1);

--気弾飛んでいく
SE054 = playSeVer2( spep_2 + 726, 1211, "",spep_2 + 1008, 0, 120, -1);
setSeVolumeByWorkId( spep_2 + 726, SE054, 200 );
SE055 = playSeVer2( spep_2 + 772, 1212, "", 0, 16, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 772, SE055, 76 );
setStartTimeMs( SE055,  567 );
SE056 = playSeVer2( spep_2 + 762, 1334, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 762, SE056, 126 );
SE057 = playSeVer2( spep_2 + 778, 1215, "",spep_2 + 906, 0, 14, -1);
SE058 = playSeVer2( spep_2 + 820, 1258, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 820, SE058, 72 );

--気弾突き抜ける
SE059 = playSeVer2( spep_2 + 882, 1213, "",spep_2 + 1008, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 882, SE059, 73 );
SE060 = playSeVer2( spep_2 + 882, 1296, "",spep_2 + 1008, 0, 52, -1);

--環境音
SE061 = playSeVer2( spep_2 + 882, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 882, SE061, 25 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 894 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 1012f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 0);


-------------------------------------------------
-- ユニット必殺技：冒頭
-------------------------------------------------
MAX_FRAME_0 = 118;
--[[
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_003  ユニット必殺技：冒頭
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);
]]
-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** セリフカットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--二人向かっていく
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 148, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 14, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 130 );
SE007 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 56 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --118

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- ユニット必殺技：ダッシュ～ラスト
-------------------------------------------------
MAX_FRAME_2 = 1012;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_004  ユニット必殺技：ダッシュ～ラスト・手前
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004b  ユニット必殺技：ダッシュ～ラスト・奥
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 70 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, -894.7, 297.3 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -857.9, 285.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -814.7, 272.4 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -765, 256.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -708.8, 239.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -646.2, 219.8 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -577.1, 198.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -501.6, 174.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -470.6, 164.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -430, 152.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -389.2, 139.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -348.1, 127.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -306.7, 114.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -265, 101.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -223, 88.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -180.8, 75.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -138.2, 62.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -95.3, 49.8 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, 735, -1319.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 735, -1319.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 391.4, -685 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 149.3, -227.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -40.2, 115.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -125.5, 301.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -146.2, 298.6 , 0 );
setMoveKey( spep_2 + 171+ OFFSET_X, 1, -146.2, 298.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -149.5, 298.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -149.5, 298.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -165.5, 311.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -165.5, 311.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -174.1, 317.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -174.1, 317.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -182.1, 322.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -182.1, 322.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -189.3, 327.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -189.3, 327.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -195.8, 331.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -195.8, 331.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -201.6, 335.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -201.6, 335.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -206.7, 339.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -206.7, 339.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -201, 329 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -201, 329 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 27.54, 27.54 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 27.54, 27.54 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_2 + 160 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -62.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -66.8 );

--敵の動き３
setDisp( spep_2 + 834 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 895 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 834 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 834 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, -191.5, 114.7 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, -191.5, 114.7 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, -184.8, 118 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, -184.8, 118 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, -188.1, 111.3 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, -188.1, 111.3 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, -181.4, 114.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, -181.4, 114.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, -184.8, 111.3 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, -184.8, 111.3 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, -171.4, 104.6 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, -171.4, 104.6 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, -178.1, 144.8 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, -178.1, 144.8 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, -178.1, 97.9 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, -178.1, 97.9 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, -178.1, 111.3 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, -178.1, 111.3 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, -184.8, 101.3 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, -184.8, 101.3 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, -184.8, 134.8 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, -184.8, 134.8 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, -174.7, 108 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, -174.7, 108 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, -178.1, 97.9 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, -178.1, 97.9 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, -194.8, 121.4 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, -181.4, 111.3 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, -181.4, 111.3 , 0 );

setScaleKey( spep_2 + 834 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 895 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 834 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 895 + OFFSET_X, 1, -18.8 );

-- ** 音 ** --
--二人飛んでいく
SE009 = playSeVer2( spep_2 + 4, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1277, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);

--ラッシュ
SE014 = playSeVer2( spep_2 + 78, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 84, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 92, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 100, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 108, 1000, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 120, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 124, 1001, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 136, 1000, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 142, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 148, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 156, 1121, "",spep_2 + 210, 0, 16, -1);

--岩激突
SE027 = playSeVer2( spep_2 + 184, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE027, 78 );

--17.18号着地
SE028 = playSeVer2( spep_2 + 194, 63, "",spep_2 + 228, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 194, SE028, 129 );
SE029 = playSeVer2( spep_2 + 214, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE029, 155 );
SE030 = playSeVer2( spep_2 + 218, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE030, 184 );

--悟空着地
SE031 = playSeVer2( spep_2 + 220, 63, "",spep_2 + 254, 0, 12, -1);
SE032 = playSeVer2( spep_2 + 236, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE032, 124 );
SE033 = playSeVer2( spep_2 + 248, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE033, 207 );

--画面遷移
SE034 = playSeVer2( spep_2 + 270, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 270, SE034, 78 );

--悟空構える
SE035 = playSeVer2( spep_2 + 338, 1233, "", 0, 0, 0, -1);

--気ダメ
SE036 = playSeVer2( spep_2 + 338, 1407, "",spep_2 + 618, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 338, SE036, 224 );
SE037 = playSeVer2( spep_2 + 342, 1181, "",spep_2 + 634, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 342, SE037, 157 );
SE038 = playSeVer2( spep_2 + 358, 1035, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 358, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 358, SE039, 86 );

--オーラ
SE040 = playSeVer2( spep_2 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE040, 50 );
SE041 = playSeVer2( spep_2 + 406, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 406, SE041, 50 );
SE042 = playSeVer2( spep_2 + 430, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE042, 50 );
SE045 = playSeVer2( spep_2 + 454, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 454, SE045, 50 );

--17.18号気弾溜め
SE043 = playSeVer2( spep_2 + 436, 1296, "",spep_2 + 604, 0, 78, -1);
SE044 = playSeVer2( spep_2 + 436, 1265, "",spep_2 + 616, 0, 32, -1);

--悟空気弾発射前溜め
SE046 = playSeVer2( spep_2 + 630, 1210, "",spep_2 + 714, 12, 40, 0.5);
setStartTimeMs( SE046,  2800 );

--悟空気弾溜め
SE047 = playSeVer2( spep_2 + 482, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE047, 85 );
SE048 = playSeVer2( spep_2 + 482, 1210, "",spep_2 + 630, 0, 62, -1);

--17.18号気弾発射
SE049 = playSeVer2( spep_2 + 588, 1430, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 588, SE049, 129 );
SE050 = playSeVer2( spep_2 + 588, 1145, "", 0, 0, 0, -1);

--悟空気弾発射
SE051 = playSeVer2( spep_2 + 664, 1146, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 664, 1284, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 664, 1223, "", 0, 0, 0, -1);

--気弾飛んでいく
SE054 = playSeVer2( spep_2 + 726, 1211, "",spep_2 + 1008, 0, 120, -1);
setSeVolumeByWorkId( spep_2 + 726, SE054, 200 );
SE055 = playSeVer2( spep_2 + 772, 1212, "", 0, 16, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 772, SE055, 76 );
setStartTimeMs( SE055,  567 );
SE056 = playSeVer2( spep_2 + 762, 1334, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 762, SE056, 126 );
SE057 = playSeVer2( spep_2 + 778, 1215, "",spep_2 + 906, 0, 14, -1);
SE058 = playSeVer2( spep_2 + 820, 1258, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 820, SE058, 72 );

--気弾突き抜ける
SE059 = playSeVer2( spep_2 + 882, 1213, "",spep_2 + 1008, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 882, SE059, 73 );
SE060 = playSeVer2( spep_2 + 882, 1296, "",spep_2 + 1008, 0, 52, -1);

--環境音
SE061 = playSeVer2( spep_2 + 882, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 882, SE061, 25 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 894 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 1012f -4

end
