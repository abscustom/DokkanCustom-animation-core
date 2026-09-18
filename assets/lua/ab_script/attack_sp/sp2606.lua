--1027430:UR_人造人間17号&18号_必殺技：アクセルダンス
--sp_effect_a1_00408
--sp2606

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162310;  --ef_001  冒頭
SP_02  = 162311;  --ef_002  ダッシュ～ラスト・手前
--SP_02b = 162312;  --ef_002b ダッシュ～ラスト・奥



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

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 冒頭(118f)
-------------------------------------------------
MAX_FRAME_0 = 118;

-- ** エフェクト等 ** --
--[[
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001  冒頭
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
spep_x = spep_0 + 4;

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
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 146, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 12, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 42, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 130 );
SE007 = playSeVer2( spep_0 + 62, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 56 );

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
spep_1 = spep_0 + MAX_FRAME_0-2;  --118f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- セリフカットイン～フィニッシュ(798f)
-------------------------------------------------
MAX_FRAME_2 = 798;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
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
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 479.5, 167.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 445.8, 157.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 409.9, 146.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 371.7, 134.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 331.3, 122.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 288.6, 109.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 243.7, 95.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 196.5, 81.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 147, 65.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 95.3, 49.8 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, -933.7, -1658.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -933.7, -1658.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -504.1, -862.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -201.7, -257.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 30.4, 126.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 135.4, 323.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 157, 343.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 157, 343.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 151.6, 342 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 151.6, 342 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 176.3, 350.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 176.3, 350.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 174.1, 342.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 174.1, 342.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 191.7, 354.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 191.7, 354.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 197.9, 355.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 197.9, 355.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 203.1, 355.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 203.1, 355.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 207.3, 355.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 207.3, 355.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 210.6, 354.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 210.6, 354.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 207.7, 342.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 207.7, 342.4 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 34.42, 34.42 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 34.42, 34.42 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 21.19, 21.19 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.15, 0.15 );

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
setDisp( spep_2 + 630 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 672 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 799 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 682+ OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 630 + OFFSET_X, 1, 0.5, 265.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 0.6, 258.1 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 0.6, 250.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 0.7, 241.4 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 0.8, 231.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 0.8, 221.5 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 0.9, 210.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 1, 198.3 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 1.1, 185.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 1.2, 172 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 1.5, 158.9 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 1.7, 145.2 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 2.1, 131.4 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 2.3, 116.9 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 2.7, 102.2 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 2.9, 86.9 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 3.2, 71.3 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 4, 47 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 4.8, 22.3 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 5.7, -2.9 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 6.5, -29.5 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 0.6, 228.1 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 170.6, 6.4 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 170.6, 6.4 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 178, 27.1 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 178, 27.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 149.2, 58.3 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 149.2, 58.3 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 172.6, 27 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 172.6, 27 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 154.5, 16.6 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 154.5, 16.6 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 167.8, 27 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 167.8, 27 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 160.5, 6.1 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 160.5, 6.1 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 163.7, 26.9 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 163.7, 26.9 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 146.3, 16.5 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 146.3, 16.5 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 160.2, 26.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 160.2, 26.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 137.9, 52.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 137.9, 52.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 157.4, 26.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 157.4, 26.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 146.6, 16.4 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 146.6, 16.4 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 156.6, 26.8 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 156.6, 26.8 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 135.4, 21.5 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 135.4, 21.5 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 155.8, 26.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 155.8, 26.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 144.9, 21.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 144.9, 21.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 154.9, 26.7 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 154.9, 26.7 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 154.5, 26.7 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 154.5, 26.7 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 154.1, 26.7 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 154.1, 26.7 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 153.7, 26.7 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 153.7, 26.7 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 153.3, 26.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 153.3, 26.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 152.8, 26.7 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 152.8, 26.7 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 152.4, 26.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 152.4, 26.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 152, 26.7 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 152, 26.7 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 151.6, 26.7 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 151.6, 26.7 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 151.2, 26.7 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 151.2, 26.7 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 150.8, 26.7 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 150.8, 26.7 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 150.3, 26.7 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 150.3, 26.7 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 149.9, 26.7 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 149.9, 26.7 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 149.5, 26.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, 149.5, 26.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 149.1, 26.6 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, 149.1, 26.6 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, 148.7, 26.6 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, 148.7, 26.6 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, 148.3, 26.6 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, 148.3, 26.6 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, 147.8, 26.6 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, 147.8, 26.6 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 147.4, 26.6 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 147.4, 26.6 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 147, 26.6 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 147, 26.6 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 146.6, 26.6 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 146.6, 26.6 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 146.2, 26.6 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 146.2, 26.6 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 145.8, 26.6 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 145.8, 26.6 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 145.3, 26.6 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 145.3, 26.6 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 144.9, 26.6 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 144.9, 26.6 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 144.5, 26.6 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 144.5, 26.6 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 144.1, 26.6 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 144.1, 26.6 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 143.7, 26.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 143.7, 26.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 143.3, 26.6 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 143.3, 26.6 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 142.8, 26.6 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 142.8, 26.6 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 142.4, 26.6 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 142.4, 26.6 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 142, 26.6 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 142, 26.6 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 141.6, 26.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 141.6, 26.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 141.2, 26.5 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 141.2, 26.5 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 140.8, 26.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 140.8, 26.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 140.4, 26.5 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 140.4, 26.5 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 139.9, 26.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 139.9, 26.5 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, 139.5, 26.5 , 0 );

setScaleKey( spep_2 + 630 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 695 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 696 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 697 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 701 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 702 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 705 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 706 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 799 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 630 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 672 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 690 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 691 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 693 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 694 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 695 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 696 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 697 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 698 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_2 + 699 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_2 + 700 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 701 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 702 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 703 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 704 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 705 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 706 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 707 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 708 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 709 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 710 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 711 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 712 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 713 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 714 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 715 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 716 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 717 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 718 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 719 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 720 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 721 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 722 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 723 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 725 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 726 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 727 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 728 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 729 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_2 + 730 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 731 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 732 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 733 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 734 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 735 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 736 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 737 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 738 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 739 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 740 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 741 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 743 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 744 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 745 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 746 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 747 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 748 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 749 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 750 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_2 + 751 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_2 + 752 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 753 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 754 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 755 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 757 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 758 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 759 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 763 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 764 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 785 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_2 + 786 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 799 + OFFSET_X, 1, -51.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

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

--17号飛び上がる
SE028 = playSeVer2( spep_2 + 230, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE028, 234 );
SE029 = playSeVer2( spep_2 + 230, 1207, "",spep_2 + 276, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 230, SE029, 68 );

--瞬間移動
SE030 = playSeVer2( spep_2 + 246, 1109, "", 0, 0, 0, -1);

--17号気弾溜め
SE031 = playSeVer2( spep_2 + 296, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE031, 59 );
SE032 = playSeVer2( spep_2 + 302, 1191, "",spep_2 + 378, 0, 10, -1);
SE033 = playSeVer2( spep_2 + 302, 1296, "",spep_2 + 378, 0, 10, -1);

--17号気弾発射
SE034 = playSeVer2( spep_2 + 370, 1215, "",spep_2 + 456, 24, 16, -1);
setSeVolumeByWorkId( spep_2 + 370, SE034, 83 );
setStartTimeMs( SE034,  533 );
setPitch( spep_2 + 370, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE035 = playSeVer2( spep_2 + 368, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 368, 1430, "",spep_2 + 490, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 368, SE036, 141 );

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 368, 1402, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 400, 1202, "", 0, 0, 0, 0.5);

--気弾爆発
SE039 = playSeVer2( spep_2 + 438, 1159, "",spep_2 + 542, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 438, SE039, 68 );

--18号踏み出す
SE040 = playSeVer2( spep_2 + 478, 1116, "",spep_2 + 530, 0, 18, -1);
SE041 = playSeVer2( spep_2 + 496, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE041, 168 );
SE042 = playSeVer2( spep_2 + 496, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE042, 188 );
SE043 = playSeVer2( spep_2 + 496, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE043, 56 );

--岩間移動１
SE044 = playSeVer2( spep_2 + 526, 1117, "",spep_2 + 578, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 526, SE044, 126 );
SE045 = playSeVer2( spep_2 + 526, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE045, 71 );
SE046 = playSeVer2( spep_2 + 552, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 552, SE046, 122 );

--岩間移動２
SE047 = playSeVer2( spep_2 + 572, 1117, "",spep_2 + 614, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 572, SE047, 120 );
SE048 = playSeVer2( spep_2 + 572, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE048, 85 );
SE049 = playSeVer2( spep_2 + 580, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 580, SE049, 129 );

--向かってくる
SE050 = playSeVer2( spep_2 + 598, 1117, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 598, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 598, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 598, SE052, 53 );
setTimeStretch( SE052, 1.4, 30, 4 );

--ラストパンチ
SE053 = playSeVer2( spep_2 + 660, 1427, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 668, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE054, 70 );
SE055 = playSeVer2( spep_2 + 672, 1120, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 678, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 678, SE056, 68 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 690 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 798f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 冒頭(118f)
-------------------------------------------------
MAX_FRAME_0 = 118;

-- ** エフェクト等 ** --
--[[
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001  冒頭
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
spep_x = spep_0 + 4;

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
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 146, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 12, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 42, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 130 );
SE007 = playSeVer2( spep_0 + 62, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 56 );

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
spep_1 = spep_0 + MAX_FRAME_0-2;  --118f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- セリフカットイン～フィニッシュ(798f)
-------------------------------------------------
MAX_FRAME_2 = 798;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002  セリフカットイン～フィニッシュ
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
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -479.5, 167.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -445.8, 157.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -409.9, 146.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -371.7, 134.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -331.3, 122.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -288.6, 109.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -243.7, 95.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -196.5, 81.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -147, 65.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -95.3, 49.8 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 160 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 160 + OFFSET_X, 1, 933.7, -1658.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 933.7, -1658.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 504.1, -862.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 201.7, -257.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -30.4, 126.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -135.4, 323.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -157, 343.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -157, 343.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -151.6, 342 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -151.6, 342 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -176.3, 350.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -176.3, 350.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -174.1, 342.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -174.1, 342.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -191.7, 354.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -191.7, 354.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -197.9, 355.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -197.9, 355.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -203.1, 355.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -203.1, 355.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -207.3, 355.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -207.3, 355.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -210.6, 354.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -210.6, 354.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -207.7, 342.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -207.7, 342.4 , 0 );

setScaleKey( spep_2 + 160 + OFFSET_X, 1, 34.42, 34.42 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 34.42, 34.42 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 21.19, 21.19 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.15, 0.15 );

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
setDisp( spep_2 + 630 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 672 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 799 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 682+ OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 630 + OFFSET_X, 1, -0.5, 265.3 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -0.6, 258.1 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -0.6, 250.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -0.7, 241.4 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -0.8, 231.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -0.8, 221.5 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -0.9, 210.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -1, 198.3 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -1.1, 185.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -1.2, 172 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -1.5, 158.9 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -1.7, 145.2 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -2.1, 131.4 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -2.3, 116.9 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -2.7, 102.2 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -2.9, 86.9 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -3.2, 71.3 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -4, 47 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -4.8, 22.3 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -5.7, -2.9 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -6.5, -29.5 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -0.6, 228.1 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -170.6, 6.4 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -170.6, 6.4 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -178, 27.1 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -178, 27.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -149.2, 58.3 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -149.2, 58.3 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -172.6, 27 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, -172.6, 27 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -154.5, 16.6 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, -154.5, 16.6 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -167.8, 27 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, -167.8, 27 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, -160.5, 6.1 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -160.5, 6.1 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -163.7, 26.9 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -163.7, 26.9 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -146.3, 16.5 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -146.3, 16.5 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -160.2, 26.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -160.2, 26.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -137.9, 52.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -137.9, 52.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -157.4, 26.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -157.4, 26.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -146.6, 16.4 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -146.6, 16.4 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -156.6, 26.8 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -156.6, 26.8 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -135.4, 21.5 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -135.4, 21.5 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -155.8, 26.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -155.8, 26.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -144.9, 21.5 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -144.9, 21.5 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -154.9, 26.7 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, -154.9, 26.7 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, -154.5, 26.7 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, -154.5, 26.7 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, -154.1, 26.7 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, -154.1, 26.7 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, -153.7, 26.7 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -153.7, 26.7 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -153.3, 26.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -153.3, 26.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -152.8, 26.7 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -152.8, 26.7 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -152.4, 26.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -152.4, 26.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -152, 26.7 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -152, 26.7 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -151.6, 26.7 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, -151.6, 26.7 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -151.2, 26.7 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, -151.2, 26.7 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, -150.8, 26.7 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, -150.8, 26.7 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, -150.3, 26.7 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, -150.3, 26.7 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, -149.9, 26.7 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, -149.9, 26.7 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, -149.5, 26.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, -149.5, 26.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -149.1, 26.6 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, -149.1, 26.6 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, -148.7, 26.6 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, -148.7, 26.6 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, -148.3, 26.6 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, -148.3, 26.6 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, -147.8, 26.6 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, -147.8, 26.6 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, -147.4, 26.6 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -147.4, 26.6 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -147, 26.6 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -147, 26.6 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -146.6, 26.6 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -146.6, 26.6 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -146.2, 26.6 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -146.2, 26.6 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -145.8, 26.6 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -145.8, 26.6 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -145.3, 26.6 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -145.3, 26.6 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -144.9, 26.6 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -144.9, 26.6 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -144.5, 26.6 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -144.5, 26.6 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -144.1, 26.6 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -144.1, 26.6 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -143.7, 26.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -143.7, 26.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -143.3, 26.6 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -143.3, 26.6 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -142.8, 26.6 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -142.8, 26.6 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -142.4, 26.6 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -142.4, 26.6 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -142, 26.6 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -142, 26.6 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -141.6, 26.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -141.6, 26.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, -141.2, 26.5 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, -141.2, 26.5 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, -140.8, 26.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, -140.8, 26.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, -140.4, 26.5 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, -140.4, 26.5 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, -139.9, 26.5 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, -139.9, 26.5 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, -139.5, 26.5 , 0 );

setScaleKey( spep_2 + 630 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 695 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 696 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 697 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 701 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 702 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 705 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 706 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 799 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 630 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 672 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 690 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 691 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 693 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 694 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 695 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 696 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 697 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 698 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 699 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 700 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 701 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 702 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 703 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 704 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 705 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 706 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 707 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 708 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 709 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 710 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 711 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_2 + 712 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 713 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 714 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 715 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_2 + 716 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 717 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 718 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 719 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 720 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 721 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 722 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 723 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 725 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 726 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 727 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 728 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 729 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_2 + 730 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_2 + 731 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_2 + 732 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 733 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 734 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 735 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 736 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_2 + 737 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_2 + 738 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 739 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 740 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 741 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 743 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_2 + 744 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 745 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 746 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 747 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 748 + OFFSET_X, 1, 44.2 );
setRotateKey( spep_2 + 749 + OFFSET_X, 1, 44.2 );
setRotateKey( spep_2 + 750 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 751 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 752 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 753 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 754 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 755 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 756 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 757 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 758 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 759 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 760 + OFFSET_X, 1, 45.9 );
setRotateKey( spep_2 + 761 + OFFSET_X, 1, 45.9 );
setRotateKey( spep_2 + 762 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 763 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 764 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 785 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 786 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 799 + OFFSET_X, 1, 51.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

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

--17号飛び上がる
SE028 = playSeVer2( spep_2 + 230, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE028, 234 );
SE029 = playSeVer2( spep_2 + 230, 1207, "",spep_2 + 276, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 230, SE029, 68 );

--瞬間移動
SE030 = playSeVer2( spep_2 + 246, 1109, "", 0, 0, 0, -1);

--17号気弾溜め
SE031 = playSeVer2( spep_2 + 296, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE031, 59 );
SE032 = playSeVer2( spep_2 + 302, 1191, "",spep_2 + 378, 0, 10, -1);
SE033 = playSeVer2( spep_2 + 302, 1296, "",spep_2 + 378, 0, 10, -1);

--17号気弾発射
SE034 = playSeVer2( spep_2 + 370, 1215, "",spep_2 + 456, 24, 16, -1);
setSeVolumeByWorkId( spep_2 + 370, SE034, 83 );
setStartTimeMs( SE034,  533 );
setPitch( spep_2 + 370, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE035 = playSeVer2( spep_2 + 368, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 368, 1430, "",spep_2 + 490, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 368, SE036, 141 );

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 368, 1402, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 400, 1202, "", 0, 0, 0, 0.5);

--気弾爆発
SE039 = playSeVer2( spep_2 + 438, 1159, "",spep_2 + 542, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 438, SE039, 68 );

--18号踏み出す
SE040 = playSeVer2( spep_2 + 478, 1116, "",spep_2 + 530, 0, 18, -1);
SE041 = playSeVer2( spep_2 + 496, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE041, 168 );
SE042 = playSeVer2( spep_2 + 496, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE042, 188 );
SE043 = playSeVer2( spep_2 + 496, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE043, 56 );

--岩間移動１
SE044 = playSeVer2( spep_2 + 526, 1117, "",spep_2 + 578, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 526, SE044, 126 );
SE045 = playSeVer2( spep_2 + 526, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 526, SE045, 71 );
SE046 = playSeVer2( spep_2 + 552, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 552, SE046, 122 );

--岩間移動２
SE047 = playSeVer2( spep_2 + 572, 1117, "",spep_2 + 614, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 572, SE047, 120 );
SE048 = playSeVer2( spep_2 + 572, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE048, 85 );
SE049 = playSeVer2( spep_2 + 580, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 580, SE049, 129 );

--向かってくる
SE050 = playSeVer2( spep_2 + 598, 1117, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 598, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 598, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 598, SE052, 53 );
setTimeStretch( SE052, 1.4, 30, 4 );

--ラストパンチ
SE053 = playSeVer2( spep_2 + 660, 1427, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 668, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 668, SE054, 70 );
SE055 = playSeVer2( spep_2 + 672, 1120, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 678, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 678, SE056, 68 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 690 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 798f -4



end
