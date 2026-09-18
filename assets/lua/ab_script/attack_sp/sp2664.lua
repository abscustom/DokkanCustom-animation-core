--1028310:UR_孫悟飯(ビースト)_必殺技(↓簡易版)：魔旋連撃
--sp_effect_a1_00422
--sp2664

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 162698;	-- 冒頭構え(ef_003)
SP_02 = 162699; -- 突進～ラスト・手前(ef_004)
SP_02b = 162700; -- 突進～ラスト・奥(ef_004b)
SP_03 = 162701; -- ガッ 差し替え背景(ef_005)

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭構え
-------------------------------------------------
MAX_FRAME_0 = 106;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭構え(ef_003)
setEffMoveKey( spep_0 + 0, base_0, -463.35, 610.35 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, -463.35, 610.35 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

--白フェード
entryFade( spep_0 + 104, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 126, 0, 14, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
setPitch( spep_0 + 0, SE002, -800 );
setTimeStretch( SE002, 0.47, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );

--オーラ
SE005 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 50 );
setPitch( spep_0 + 12, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 50 );
setPitch( spep_0 + 36, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 50 );
setPitch( spep_0 + 60, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE009 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE009, 50 );
setPitch( spep_0 + 84, SE009, -800 );
setTimeStretch( SE009, 0.47, 30, 4 );

--構える
SE008 = playSeVer2( spep_0 + 58, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE008, 78 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --106

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 突進～ラスト
-------------------------------------------------
MAX_FRAME_1 = 478;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); --突進～ラスト・手前(ef_004)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進～ラスト・奥(ef_004b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1+ 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 114 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 124 + OFFSET_X, 1, 111 ); -- イレギュラー対応(モーション付きアニメのため1F単位で指定)
changeAnime( spep_1 + 125 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 126 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 127 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 128 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 129 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 130 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 131 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 132 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 133 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 135 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 136 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 137 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 138 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 139 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 140 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 141 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 142 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 143 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 144 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 145 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 146 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 147 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 148 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 149 + OFFSET_X, 1, 111 );
changeAnime( spep_1 + 150 + OFFSET_X, 1, 111 ); -- イレギュラー対応ここまで
changeAnime( spep_1 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 270 + OFFSET_X, 1, 6 );
changeAnime( spep_1 + 422 + OFFSET_X, 1, 8 );
changeAnime( spep_1 + 450 + OFFSET_X, 1, 7 );

setMoveKey( spep_1 + 114 + OFFSET_X, 1, 673.5, 218.9 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 673.5, 218.9 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 604.9, 196.9 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 604.9, 196.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 545.4, 177.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 545.4, 177.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 495.3, 161.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 495.3, 161.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 455, 148.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 455, 148.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 416.6, 122 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 416.6, 122 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 396.2, 116.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 396.2, 116.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 361.3, 107.5 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 361.3, 107.5 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 311.9, 94.8 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 311.9, 94.8 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 290.9, 89.3 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 290.9, 89.3 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 268.1, 83.3 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 268.1, 83.3 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 260.4, 78.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 260.4, 78.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 247.9, 72.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 247.9, 72.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 230.3, 64.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 230.3, 64.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 207.2, 56.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 207.2, 56.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 178.2, 46.1 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 178.2, 46.1 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 142.8, 34.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 142.8, 34.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 100.9, 21.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 100.9, 21.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -51.1, 7.9 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -51.1, 7.9 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -42.3, 23 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -42.3, 23 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -50.8, 49.7 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -50.8, 49.7 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -30.4, 41.7 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -30.4, 41.7 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -33.1, 36.5 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -33.1, 36.5 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -18.5, 60.3 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -18.5, 60.3 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -21.3, 60.9 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -21.3, 60.9 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -14.1, 72 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -14.1, 72 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -21.4, 68.6 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -21.4, 68.6 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -17.2, 76.8 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -17.2, 76.8 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -27.4, 90.8 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -27.4, 90.8 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -20.2, 81.6 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -20.2, 81.6 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -30.4, 78.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, -30.4, 78.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -22.9, 84.4 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, -22.9, 84.4 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, -30, 81.9 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, -30, 81.9 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, -25.6, 85.3 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, -25.6, 85.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, -27.1, 85.8 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, -27.1, 85.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, -28.8, 86.3 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, -28.8, 86.3 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, -30.5, 86.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, -30.5, 86.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, -32.4, 87.5 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, -32.4, 87.5 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, -34.5, 88.2 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, -34.5, 88.2 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, -36.6, 88.9 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -36.6, 88.9 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, -38.9, 89.7 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, -38.9, 89.7 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, -41.2, 90.4 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, -41.2, 90.4 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, -43.8, 91.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, -43.8, 91.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, -46.4, 92.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, -46.4, 92.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, -49.1, 93 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, -49.1, 93 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, -52, 94 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, -52, 94 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, -55, 94.9 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, -55, 94.9 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, -58.1, 96 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, -58.1, 96 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, -61.4, 97 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, -61.4, 97 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -62.9, 101.2 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -62.9, 101.2 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, -64.8, 106.4 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, -64.8, 106.4 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, -67.1, 112.7 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, -67.1, 112.7 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, -69.8, 119.9 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, -69.8, 119.9 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -72.8, 128.3 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -72.8, 128.3 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, -76.3, 137.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, -76.3, 137.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, -80.1, 148.1 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -80.1, 148.1 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -84.3, 159.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -84.3, 159.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -88.9, 172 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -88.9, 172 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -93.8, 185.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -93.8, 185.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -99.2, 200.1 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -99.2, 200.1 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -104.9, 215.7 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -104.9, 215.7 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -111, 232.4 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -111, 232.4 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, -117.5, 250.1 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, -117.5, 250.1 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -124.4, 268.8 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -124.4, 268.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -131.7, 288.6 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, -131.7, 288.6 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, -139.3, 309.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, -139.3, 309.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -147.3, 331.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, -147.3, 331.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -155.8, 354.1 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, -155.8, 354.1 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, -164.5, 378.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, -164.5, 378.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -173.7, 403 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -173.7, 403 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X ,1 ,-42.5 ,-11.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X ,1 ,-42.5 ,-11.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X ,1 ,-80.6 ,111.1 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X ,1 ,-80.6 ,111.1 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X ,1 ,-107.6 ,149.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X ,1 ,-107.6 ,149.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X ,1 ,-75.6 ,106.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X ,1 ,-75.6 ,106.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X ,1 ,-68.1 ,73 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X ,1 ,-68.1 ,73 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X ,1 ,-63.4 ,89.5 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X ,1 ,-63.4 ,89.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X ,1 ,-81.9 ,88.6 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X ,1 ,-81.9 ,88.6 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X ,1 ,-71.4 ,105 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X ,1 ,-71.4 ,105 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X ,1 ,-81.2 ,101.2 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X ,1 ,-81.2 ,101.2 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X ,1 ,-79.4 ,120.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X ,1 ,-79.4 ,120.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X ,1 ,-93 ,139 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X ,1 ,-93 ,139 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X ,1 ,-87.4 ,136.2 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X ,1 ,-87.4 ,136.2 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X ,1 ,-105.8 ,138.1 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X ,1 ,-105.8 ,138.1 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X ,1 ,-95.3 ,151.7 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X ,1 ,-95.3 ,151.7 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X ,1 ,-108 ,153.7 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X ,1 ,-108 ,153.7 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X ,1 ,-103.3 ,167.3 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X ,1 ,-103.3 ,167.3 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X ,1 ,-113.1 ,180.9 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X ,1 ,-113.1 ,180.9 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X ,1 ,-111.3 ,182.8 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X ,1 ,-111.3 ,182.8 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X ,1 ,-335.1 ,508 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X ,1 ,-335.1 ,508 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X ,1 ,-506.5 ,782.7 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X ,1 ,-506.5 ,782.7 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X ,1 ,-642.8 ,989.6 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X ,1 ,-642.8 ,989.6 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X ,1 ,-738.2 ,1134.4 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X ,1 ,-738.2 ,1134.4 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X ,1 ,-792.7 ,1217.1 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X ,1 ,-792.7 ,1217.1 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 300.6, -556.9 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 300.6, -556.9 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 217.4, -403.6 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 217.4, -403.6 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 134.3, -250.4 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 134.3, -250.4 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 51.1, -97.1 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 51.1, -97.1 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 39.2, -75.2 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 39.2, -75.2 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 27.3, -53.3 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 27.3, -53.3 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 15.4, -31.5 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 15.4, -31.5 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 3.6, -9.6 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 3.6, -9.6 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 2.2, -7 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 2.2, -7 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 0.8, -4.5 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 0.8, -4.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -0.6, -1.9 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, -0.6, -1.9 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -2, 0.6 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, -2, 0.6 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -4.8, 5.7 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, -4.8, 5.7 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -6.2, 8.3 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, -6.2, 8.3 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -8.8, -2.4 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, -8.8, -2.4 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -13, -19.6 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, -13, -19.6 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, -18.9, -43.3 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, -18.9, -43.3 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, -26.3, -73.4 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, -26.3, -73.4 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, -35.4, -110.1 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, -35.4, -110.1 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, -45.8, -153.3 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, -45.8, -153.3 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, -48.2, -155.3 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, -48.2, -155.3 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, -50.5, -157.1 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, -50.5, -157.1 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, -53, -159 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, -53, -159 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, -55.5, -160.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, -55.5, -160.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, -57.9, -162.8 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, -57.9, -162.8 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, -60.4, -164.6 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, -60.4, -164.6 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, -62.9, -166.6 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, -62.9, -166.6 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, -65.4, -168.6 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, -65.4, -168.6 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, -68.1, -170.6 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, -68.1, -170.6 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, -70.6, -172.6 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, -70.6, -172.6 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, -73.5, -174.7 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, -73.5, -174.7 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, -17.7, -149.7 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, -17.7, -149.7 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, -10.2, -143.5 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, -10.2, -143.5 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, -25.8, -137.3 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, -25.8, -137.3 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, -12.5, -160.1 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, -12.5, -160.1 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, -28.1, -180 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, -28.1, -180 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, -14.8, -176.8 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, -14.8, -176.8 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, -21.8, -196.7 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, -21.8, -196.7 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, -17.1, -193.4 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, -17.1, -193.4 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, -24.1, -195.9 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, -24.1, -195.9 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, -19.5, -210.1 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, -19.5, -210.1 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, -26.4, -221.3 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, -26.4, -221.3 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, -21.8, -226.7 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, -21.8, -226.7 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, -28.8, -237.9 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, -28.8, -237.9 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, -28, -274.2 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, -28, -274.2 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, -123.3, -297.7 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, -123.3, -297.7 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, -169.3, -404.4 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, -169.3, -404.4 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, -254.8, -602.5 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, -254.8, -602.5 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, -379.7, -892 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, -379.7, -892 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, -544.1, -1273 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, -544.1, -1273 , 0 );

setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 355 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 379 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 383 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 385 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 389 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 393 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 395 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 397 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 399 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 401 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 403 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 405 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 407 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 411 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 449 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 451 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 455 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 457 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 114 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 10 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, 10 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, 44 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, 44 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -12 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, -12 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_1 + 365 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_1 + 367 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_1 + 369 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 373 + OFFSET_X, 1, 23 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 375 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_1 + 377 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_1 + 378 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 391 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, 21 );
setRotateKey( spep_1 + 393 + OFFSET_X, 1, 21 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_1 + 395 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_1 + 397 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_1 + 399 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_1 + 401 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 403 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_1 + 405 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, 19 );
setRotateKey( spep_1 + 407 + OFFSET_X, 1, 19 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_1 + 411 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_1 + 421 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_1 + 423 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, -75.9 );
setRotateKey( spep_1 + 425 + OFFSET_X, 1, -75.9 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_1 + 427 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_1 + 429 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_1 + 431 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_1 + 433 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_1 + 435 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_1 + 439 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_1 + 441 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_1 + 443 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_1 + 445 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, -78.6 );
setRotateKey( spep_1 + 447 + OFFSET_X, 1, -78.6 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 449 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, -68 );
setRotateKey( spep_1 + 451 + OFFSET_X, 1, -68 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_1 + 453 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_1 + 455 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 457 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 458 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_1 + 468 + OFFSET_X, 1, -78.7 );

-- ** 音 ** --
--オーラ２
SE012 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 50 );
setPitch( spep_1 + 0, SE012, -800 );
setTimeStretch( SE012, 0.47, 30, 4 );
SE013 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 52, 0, 30, -1);
setPitch( spep_1 + 0, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );

--向かってくる
SE014 = playSeVer2( spep_1 + 6, 1452, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_1 + 6, SE014, 190 );
SE017 = playSeVer2( spep_1 + 6, 1277, "", 0, 0, 0, 0.7);
SE018 = playSeVer2( spep_1 + 6, 1019, "", 0, 0, 0, 0.7);
SE019 = playSeVer2( spep_1 + 6, 1278, "",spep_1 + 272, 0, 88, 0.7);
setSeVolumeByWorkId( spep_1 + 6, SE019, 68 );

--近づいていく
SE011 = playSeVer2( spep_1 + 24, 1356, "",spep_1 + 178, 28, 22, -1);
setStartTimeMs( SE011,  767 );
setPitch( spep_1 + 24, SE011, 500 );
setTimeStretch( SE011, 1.33, 30, 4 );
SE020 = playSeVer2( spep_1 + 74, 1019, "", spep_1 + 128, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 74, 1176, "",spep_1 + 178, 0, 22, -1);
setPitch( spep_1 + 74, SE021, -1200 );
setTimeStretch( SE021, 0.2, 30, 4 );
SE022 = playSeVer2( spep_1 + 74, 1147, "",spep_1 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 74, SE022, 53 );
setPitch( spep_1 + 74, SE022, -800 );
setTimeStretch( SE022, 0.47, 30, 4 );

--敵ヒット
SE023 = playSeVer2( spep_1 + 132, 1126, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 132, SE023, 89 );
setPitch( spep_1 + 132, SE023, 300 );
setTimeStretch( SE023, 1.2, 30, 4 );
SE024 = playSeVer2( spep_1 + 134, 1067, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 138, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 136, 1187, "", 0, 0, 0, -1);
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 138; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 0, SE023, 0);
    stopSe( SP_dodge - 0, SE024, 0);
    stopSe( SP_dodge - 0, SE025, 0);
    stopSe( SP_dodge - 0, SE026, 0);
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
--右下から近づく
SE027 = playSeVer2( spep_1 + 180, 1116, "",spep_1 + 232, 0, 18, -1);
SE028 = playSeVer2( spep_1 + 180, 1019, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 180, 1147, "",spep_1 + 356, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 180, SE029, 56 );
setPitch( spep_1 + 180, SE029, -800 );
setTimeStretch( SE029, 0.47, 30, 4 );
SE030 = playSeVer2( spep_1 + 196, 1072, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 214, 1176, "",spep_1 + 360, 30, 18, -1);
setPitch( spep_1 + 214, SE031, -1200 );
setTimeStretch( SE031, 0.2, 30, 4 );
SE032 = playSeVer2( spep_1 + 244, 1019, "",spep_1 + 316, 0, 42, -1);

--アッパー
SE033 = playSeVer2( spep_1 + 248, 1359, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE035 = playSeVer2( spep_1 + 310, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 310, SE035, 65 );
SE036 = playSeVer2( spep_1 + 312, 1109, "", 0, 0, 0, -1);

--敵追いつく
SE037 = playSeVer2( spep_1 + 338, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 340, 1043, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 356, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE039, 174 );

--エルボー
SE040 = playSeVer2( spep_1 + 392, 1123, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 398, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE043 = playSeVer2( spep_1 + 428, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 428, 1183, "",spep_1 + 514, 0, 18, -1);
SE042 = playSeVer2( spep_1 + 428, 1121, "",spep_1 + 518, 20, 14, -1);
setStartTimeMs( SE042,  494 );

-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1; --　478

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
  
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭構え
-------------------------------------------------
MAX_FRAME_0 = 106;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭構え(ef_003)
setEffMoveKey( spep_0 + 0, base_0, 463.35, 610.35 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 463.35, 610.35 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

--白フェード
entryFade( spep_0 + 104, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 126, 0, 14, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 126, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
setPitch( spep_0 + 0, SE002, -800 );
setTimeStretch( SE002, 0.47, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );

--オーラ
SE005 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 50 );
setPitch( spep_0 + 12, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 50 );
setPitch( spep_0 + 36, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 50 );
setPitch( spep_0 + 60, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE009 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE009, 50 );
setPitch( spep_0 + 84, SE009, -800 );
setTimeStretch( SE009, 0.47, 30, 4 );

--構える
SE008 = playSeVer2( spep_0 + 58, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE008, 78 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --106

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 突進～ラスト
-------------------------------------------------
MAX_FRAME_1 = 478;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); --突進～ラスト・手前(ef_004)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進～ラスト・奥(ef_004b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1+ 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 114 + OFFSET_X, 1, 17 );
changeAnime( spep_1 + 124 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 125 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 126 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 127 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 128 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 129 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 130 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 131 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 132 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 133 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 135 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 136 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 137 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 138 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 139 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 140 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 141 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 142 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 143 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 144 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 145 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 146 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 147 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 148 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 149 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 150 + OFFSET_X, 1, 11 );
changeAnime( spep_1 + 158 + OFFSET_X, 1, 6 );
changeAnime( spep_1 + 270 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 422 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 450 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 114 + OFFSET_X, 1, -673.5, 218.9 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -673.5, 218.9 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -604.9, 196.9 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -604.9, 196.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -545.4, 177.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -545.4, 177.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -495.3, 161.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -495.3, 161.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -455, 148.6 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -455, 148.6 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -416.6, 122 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -416.6, 122 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -396.2, 116.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, -396.2, 116.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -361.3, 107.5 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -361.3, 107.5 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, -311.9, 94.8 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, -311.9, 94.8 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -290.9, 89.3 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -290.9, 89.3 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, -268.1, 83.3 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -268.1, 83.3 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -260.4, 78.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -260.4, 78.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -247.9, 72.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -247.9, 72.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -230.3, 64.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -230.3, 64.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -207.2, 56.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -207.2, 56.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -178.2, 46.1 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -178.2, 46.1 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -142.8, 34.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -142.8, 34.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -100.9, 21.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -100.9, 21.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 51.1, 7.9 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 51.1, 7.9 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 42.3, 23 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 42.3, 23 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 50.8, 49.7 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 50.8, 49.7 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 30.4, 41.7 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 30.4, 41.7 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 33.1, 36.5 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 33.1, 36.5 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 18.5, 60.3 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 18.5, 60.3 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 21.3, 60.9 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 21.3, 60.9 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 14.1, 72 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 14.1, 72 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 21.4, 68.6 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 21.4, 68.6 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 17.2, 76.8 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 17.2, 76.8 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 27.4, 90.8 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 27.4, 90.8 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 20.2, 81.6 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 20.2, 81.6 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 30.4, 78.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 30.4, 78.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 22.9, 84.4 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 22.9, 84.4 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 30, 81.9 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 30, 81.9 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 25.6, 85.3 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 25.6, 85.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 27.1, 85.8 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 27.1, 85.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 28.8, 86.3 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 28.8, 86.3 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 30.5, 86.9 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 30.5, 86.9 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 32.4, 87.5 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 32.4, 87.5 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 34.5, 88.2 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 34.5, 88.2 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 36.6, 88.9 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 36.6, 88.9 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 38.9, 89.7 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 38.9, 89.7 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 41.2, 90.4 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 41.2, 90.4 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 43.8, 91.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 43.8, 91.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 46.4, 92.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 46.4, 92.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 49.1, 93 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 49.1, 93 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 52, 94 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 52, 94 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 55, 94.9 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 55, 94.9 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 58.1, 96 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 58.1, 96 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 61.4, 97 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 61.4, 97 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 62.9, 101.2 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 62.9, 101.2 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 64.8, 106.4 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 64.8, 106.4 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 67.1, 112.7 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 67.1, 112.7 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 69.8, 119.9 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 69.8, 119.9 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 72.8, 128.3 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 72.8, 128.3 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 76.3, 137.6 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 76.3, 137.6 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 80.1, 148.1 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 80.1, 148.1 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 84.3, 159.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 84.3, 159.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 88.9, 172 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 88.9, 172 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 93.8, 185.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 93.8, 185.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 99.2, 200.1 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 99.2, 200.1 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 104.9, 215.7 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 104.9, 215.7 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 111, 232.4 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 111, 232.4 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 117.5, 250.1 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 117.5, 250.1 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 124.4, 268.8 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 124.4, 268.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 131.7, 288.6 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 131.7, 288.6 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 139.3, 309.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 139.3, 309.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 147.3, 331.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 147.3, 331.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 155.8, 354.1 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 155.8, 354.1 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 164.5, 378.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 164.5, 378.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 173.7, 403 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 173.7, 403 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X ,1 ,42.5 ,-11.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X ,1 ,42.5 ,-11.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X ,1 ,80.6 ,111.1 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X ,1 ,80.6 ,111.1 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X ,1 ,107.6 ,149.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X ,1 ,107.6 ,149.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X ,1 ,75.6 ,106.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X ,1 ,75.6 ,106.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X ,1 ,68.1 ,73 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X ,1 ,68.1 ,73 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X ,1 ,63.4 ,89.5 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X ,1 ,63.4 ,89.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X ,1 ,81.9 ,88.6 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X ,1 ,81.9 ,88.6 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X ,1 ,71.4 ,105 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X ,1 ,71.4 ,105 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X ,1 ,81.2 ,101.2 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X ,1 ,81.2 ,101.2 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X ,1 ,79.4 ,120.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X ,1 ,79.4 ,120.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X ,1 ,93 ,139 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X ,1 ,93 ,139 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X ,1 ,87.4 ,136.2 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X ,1 ,87.4 ,136.2 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X ,1 ,105.8 ,138.1 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X ,1 ,105.8 ,138.1 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X ,1 ,95.3 ,151.7 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X ,1 ,95.3 ,151.7 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X ,1 ,108 ,153.7 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X ,1 ,108 ,153.7 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X ,1 ,103.3 ,167.3 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X ,1 ,103.3 ,167.3 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X ,1 ,113.1 ,180.9 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X ,1 ,113.1 ,180.9 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X ,1 ,111.3 ,182.8 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X ,1 ,111.3 ,182.8 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X ,1 ,335.1 ,508 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X ,1 ,335.1 ,508 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X ,1 ,506.5 ,782.7 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X ,1 ,506.5 ,782.7 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X ,1 ,642.8 ,989.6 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X ,1 ,642.8 ,989.6 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X ,1 ,738.2 ,1134.4 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X ,1 ,738.2 ,1134.4 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X ,1 ,792.7 ,1217.1 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X ,1 ,792.7 ,1217.1 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -300.6, -556.9 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -300.6, -556.9 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -217.4, -403.6 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, -217.4, -403.6 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -134.3, -250.4 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, -134.3, -250.4 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -51.1, -97.1 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, -51.1, -97.1 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -39.2, -75.2 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, -39.2, -75.2 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -27.3, -53.3 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, -27.3, -53.3 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -15.4, -31.5 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, -15.4, -31.5 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -3.6, -9.6 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, -3.6, -9.6 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -2.2, -7 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, -2.2, -7 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -0.8, -4.5 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, -0.8, -4.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 0.6, -1.9 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 0.6, -1.9 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 2, 0.6 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 2, 0.6 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 3.4, 3.2 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 3.4, 3.2 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 4.8, 5.7 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 4.8, 5.7 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 6.2, 8.3 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 6.2, 8.3 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 13, -19.6 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 13, -19.6 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 18.9, -43.3 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 18.9, -43.3 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 26.3, -73.4 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 26.3, -73.4 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 35.4, -110.1 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 35.4, -110.1 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 45.8, -153.3 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 45.8, -153.3 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 48.2, -155.3 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 48.2, -155.3 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 50.5, -157.1 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 50.5, -157.1 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 53, -159 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, 53, -159 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 55.5, -160.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, 55.5, -160.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 57.9, -162.8 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, 57.9, -162.8 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 60.4, -164.6 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, 60.4, -164.6 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 62.9, -166.6 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, 62.9, -166.6 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 65.4, -168.6 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, 65.4, -168.6 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 68.1, -170.6 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 68.1, -170.6 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 70.6, -172.6 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, 70.6, -172.6 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 73.5, -174.7 , 0 );
setMoveKey( spep_1 + 421 + OFFSET_X, 1, 73.5, -174.7 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 17.7, -149.7 , 0 );
setMoveKey( spep_1 + 423 + OFFSET_X, 1, 17.7, -149.7 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 10.2, -143.5 , 0 );
setMoveKey( spep_1 + 425 + OFFSET_X, 1, 10.2, -143.5 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 25.8, -137.3 , 0 );
setMoveKey( spep_1 + 427 + OFFSET_X, 1, 25.8, -137.3 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 12.5, -160.1 , 0 );
setMoveKey( spep_1 + 429 + OFFSET_X, 1, 12.5, -160.1 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 28.1, -180 , 0 );
setMoveKey( spep_1 + 431 + OFFSET_X, 1, 28.1, -180 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 14.8, -176.8 , 0 );
setMoveKey( spep_1 + 433 + OFFSET_X, 1, 14.8, -176.8 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 21.8, -196.7 , 0 );
setMoveKey( spep_1 + 435 + OFFSET_X, 1, 21.8, -196.7 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 17.1, -193.4 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 17.1, -193.4 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 24.1, -195.9 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 24.1, -195.9 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 19.5, -210.1 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 19.5, -210.1 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 26.4, -221.3 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 26.4, -221.3 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 21.8, -226.7 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 21.8, -226.7 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 28.8, -237.9 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 28.8, -237.9 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 28, -274.2 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, 28, -274.2 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 123.3, -297.7 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 123.3, -297.7 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 169.3, -404.4 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 169.3, -404.4 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 254.8, -602.5 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, 254.8, -602.5 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 379.7, -892 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, 379.7, -892 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 544.1, -1273 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, 544.1, -1273 , 0 );

setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 355 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 379 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 383 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 385 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 387 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 389 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 393 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 395 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 397 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 399 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 400 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 401 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 402 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 403 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 404 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 405 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 406 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 407 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 408 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 409 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 410 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 411 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 412 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 421 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 422 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 449 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 451 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 453 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 455 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 457 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 2.25, 2.25 );

setRotateKey( spep_1 + 114 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -10 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -10 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -44 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -44 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 365 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_1 + 367 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 369 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, -23 );
setRotateKey( spep_1 + 373 + OFFSET_X, 1, -23 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 375 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_1 + 377 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_1 + 378 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 391 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 393 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_1 + 395 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_1 + 397 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 399 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_1 + 401 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_1 + 403 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_1 + 405 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, -19 );
setRotateKey( spep_1 + 407 + OFFSET_X, 1, -19 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_1 + 411 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 421 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_1 + 423 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, 75.9 );
setRotateKey( spep_1 + 425 + OFFSET_X, 1, 75.9 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_1 + 427 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_1 + 429 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_1 + 431 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 433 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_1 + 435 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_1 + 439 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_1 + 441 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_1 + 443 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_1 + 445 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 78.6 );
setRotateKey( spep_1 + 447 + OFFSET_X, 1, 78.6 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_1 + 449 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, 68 );
setRotateKey( spep_1 + 451 + OFFSET_X, 1, 68 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, 69.2 );
setRotateKey( spep_1 + 453 + OFFSET_X, 1, 69.2 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 455 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, 74.5 );
setRotateKey( spep_1 + 457 + OFFSET_X, 1, 74.5 );
setRotateKey( spep_1 + 458 + OFFSET_X, 1, 78.7 );
setRotateKey( spep_1 + 468 + OFFSET_X, 1, 78.7 );

-- ** 音 ** --
--オーラ２
SE012 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 50 );
setPitch( spep_1 + 0, SE012, -800 );
setTimeStretch( SE012, 0.47, 30, 4 );
SE013 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 52, 0, 30, -1);
setPitch( spep_1 + 0, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );

--向かってくる
SE014 = playSeVer2( spep_1 + 6, 1452, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_1 + 6, SE014, 190 );
SE017 = playSeVer2( spep_1 + 6, 1277, "", 0, 0, 0, 0.7);
SE018 = playSeVer2( spep_1 + 6, 1019, "", 0, 0, 0, 0.7);
SE019 = playSeVer2( spep_1 + 6, 1278, "",spep_1 + 272, 0, 88, 0.7);
setSeVolumeByWorkId( spep_1 + 6, SE019, 68 );

--近づいていく
SE011 = playSeVer2( spep_1 + 24, 1356, "",spep_1 + 178, 28, 22, -1);
setStartTimeMs( SE011,  767 );
setPitch( spep_1 + 24, SE011, 500 );
setTimeStretch( SE011, 1.33, 30, 4 );
SE020 = playSeVer2( spep_1 + 74, 1019, "", spep_1 + 128, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 74, 1176, "",spep_1 + 178, 0, 22, -1);
setPitch( spep_1 + 74, SE021, -1200 );
setTimeStretch( SE021, 0.2, 30, 4 );
SE022 = playSeVer2( spep_1 + 74, 1147, "",spep_1 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 74, SE022, 53 );
setPitch( spep_1 + 74, SE022, -800 );
setTimeStretch( SE022, 0.47, 30, 4 );

--敵ヒット
SE023 = playSeVer2( spep_1 + 132, 1126, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 132, SE023, 89 );
setPitch( spep_1 + 132, SE023, 300 );
setTimeStretch( SE023, 1.2, 30, 4 );
SE024 = playSeVer2( spep_1 + 134, 1067, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 138, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 136, 1187, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 138; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 0, SE023, 0);
    stopSe( SP_dodge - 0, SE024, 0);
    stopSe( SP_dodge - 0, SE025, 0);
    stopSe( SP_dodge - 0, SE026, 0);
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
--右下から近づく
SE027 = playSeVer2( spep_1 + 180, 1116, "",spep_1 + 232, 0, 18, -1);
SE028 = playSeVer2( spep_1 + 180, 1019, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 180, 1147, "",spep_1 + 356, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 180, SE029, 56 );
setPitch( spep_1 + 180, SE029, -800 );
setTimeStretch( SE029, 0.47, 30, 4 );
SE030 = playSeVer2( spep_1 + 196, 1072, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 214, 1176, "",spep_1 + 360, 30, 18, -1);
setPitch( spep_1 + 214, SE031, -1200 );
setTimeStretch( SE031, 0.2, 30, 4 );
SE032 = playSeVer2( spep_1 + 244, 1019, "",spep_1 + 316, 0, 42, -1);

--アッパー
SE033 = playSeVer2( spep_1 + 248, 1359, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE035 = playSeVer2( spep_1 + 310, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 310, SE035, 65 );
SE036 = playSeVer2( spep_1 + 312, 1109, "", 0, 0, 0, -1);

--敵追いつく
SE037 = playSeVer2( spep_1 + 338, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 340, 1043, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 356, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 356, SE039, 174 );

--エルボー
SE040 = playSeVer2( spep_1 + 392, 1123, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 398, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE043 = playSeVer2( spep_1 + 428, 1027, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 428, 1183, "",spep_1 + 514, 0, 18, -1);
SE042 = playSeVer2( spep_1 + 428, 1121, "",spep_1 + 518, 20, 14, -1);
setStartTimeMs( SE042,  494 );

-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1; --　478

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
  
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
--ここまで

-- ** 音 ** -- 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end