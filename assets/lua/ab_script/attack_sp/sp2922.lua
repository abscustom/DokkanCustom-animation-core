--1032010:LR_超サイヤ人孫悟飯(GT)(寄生)&超サイヤ人孫悟天(GT)(寄生)_必殺技：兄弟コンビネーション
--sp_effect_b1_00344
--sp2922

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164162; --並ぶ二人 ef_001
SP_02  = 164164; --迫る悟天～フィニッシュ 前面 ef_002
SP_02b = 164165; --迫る悟天～フィニッシュ 後ろ ef_002b

--エフェクト(敵)
SP_01r  = 164163; --並ぶ二人 敵側 ef_001r
SP_02r  = 164166; --迫る悟天～フィニッシュ 敵側前面 ef_002r
SP_02br = 164167; --迫る悟天～フィニッシュ 敵側後ろ ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 並ぶ二人
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 並ぶ二人 ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 50, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 124, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--向かってくる
SE005 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 102, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE007, 56 );
setTimeStretch( SE007, 1.24, 30, 4 );

-------------------------------------------------
-- 迫る悟天～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 688;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 迫る悟天～フィニッシュ 前面 ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 迫る悟天～フィニッシュ 後ろ ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 45.1, -63.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 45.1, -63.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 135.1, 50.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 135.1, 50.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 98.1, 12.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 98.1, 12.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 126.2, 30.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 126.2, 30.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 117, 17.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 117, 17.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 122.3, 37.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 122.3, 37.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 111.8, 26.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 111.8, 26.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 129.1, 41.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 129.1, 41.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 110.3, 18.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 110.3, 18.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 119.5, 33.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 119.5, 33.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 118.1, 24 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 118.1, 24 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 131.1, 28.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 131.1, 28.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 120.2, 25.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 120.2, 25.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 125.3, 28.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 125.3, 28.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 125.8, 28.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 125.8, 28.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 85.8, 67.5, 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 85.8, 67.5, 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 44.7, 42.4, 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 44.7, 42.4, 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 105.7, 74.1, 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 105.7, 74.1, 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 80.7, 62.1, 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 80.7, 62.1, 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 107.3, 89.4, 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 107.3, 89.4, 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 94.1, 81.7, 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 94.1, 81.7, 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 99.1, 85.9, 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 99.1, 85.9, 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 99.9, 87.2, 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 99.9, 87.2, 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 103.6, 90.6, 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 103.6, 90.6, 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 104.4, 91.9, 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 104.4, 91.9, 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 119.5, 32.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 119.5, 32.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 109.7, 27.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 109.7, 27.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 127.4, 19.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 127.4, 19.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 112.4, 34.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 112.4, 34.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 112.1, 38.1, 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 112.1, 38.1, 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 99.5,  34.5, 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 99.5,  34.5, 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 118.2, 48.1, 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 118.2, 48.1, 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 106,   32.5, 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 106,   32.5, 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 125.3, 19.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 125.3, 19.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 106, 21.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 106, 21.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 113.7, 15.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 113.7, 15.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 113.8, 15.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 113.8, 15.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 114, 15.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 114, 15.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 114.1, 15 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 114.1, 15 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 106.8, 20.5, 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 106.8, 20.5, 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 70.5,  -20.5, 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 70.5,  -20.5, 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 130.1, 34.4, 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 130.1, 34.4, 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 112.3, 10.4, 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 112.3, 10.4, 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 134,   38.4, 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 134,   38.4, 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 114,   25.4, 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 114,   25.4, 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 130.8, 38.4, 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 130.8, 38.4, 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 121.8, 41.4, 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 121.8, 41.4, 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 131,   49.6, 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 131,   49.6, 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 128.2, 40.7, 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 128.2, 40.7, 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 413.7, 268.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 413.7, 268.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 413.7, 268.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 413.7, 268.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 995.6, 671.4 , 0 );


setRotateKey( spep_2 + 70 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -60.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -60.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -16 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.94, 2.94 );

setAlphaKey( spep_2 + 70 + OFFSET_X, 1, 255 );

--敵の動き2
setDisp( spep_2 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 342 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 262 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 242 + OFFSET_X, 1, 34.8, -68 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 34.8, -68 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 34.8, -68.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 34.8, -68.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 34.8, -68.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 34.8, -68.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 34.9, -68.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 34.9, -68.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 103.9, -48.7, 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 103.9, -48.7, 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 77.7, -69.6, 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 77.7, -69.6, 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 98.2, -62.7, 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 98.2, -62.7, 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 97.6, -55.8, 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 97.6, -55.8, 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 80.5, -72.1, 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 80.5, -72.1, 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 106.1, -45.4, 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 106.1, -45.4, 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 40.6, -22.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 40.6, -22.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 49.6, -18.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 49.6, -18.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 41.6, -18.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 41.6, -18.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 59.4, -13.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 59.4, -13.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 51.6, -16.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 51.6, -16.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 49.1, -27.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 49.1, -27.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 61.4, -10 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 61.4, -10 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 49, -23 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 49, -23 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 79.6, -58.3, 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 79.6, -58.3, 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 97.4, -58.2, 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 97.4, -58.2, 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 86,    -44.9, 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 86,    -44.9, 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 93.1, -55.2, 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 93.1, -55.2, 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 109.4, -63, 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 109.4, -63, 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 90.1,  -46.5, 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 90.1,  -46.5, 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 59.3, -26.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 59.3, -26.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 38.2, -21.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 38.2, -21.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 52.8, -18 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 52.8, -18 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 49.8, -21 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 49.8, -21 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 43, -22.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 43, -22.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 43.5, -22.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 43.5, -22.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 43.6, -22.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 43.6, -22.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 43.7, -22.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 43.7, -22.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 76.5, -7.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 76.5, -7.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 254.5, -70.9, 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 254.5, -70.9, 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 308.9,   -36.5, 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 308.9,   -36.5, 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 279.5,  -45.6, 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 279.5,  -45.6, 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 314.4,  -28.8, 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 314.4,  -28.8, 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 293.2,  -29.9, 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 293.2,  -29.9, 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 313.6,  -21.9, 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 313.6,  -21.9, 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 302.8,  -22.2, 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 302.8,  -22.2, 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 311.7,  -21.4, 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 311.7,  -21.4, 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 313.5,  -16.3, 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 313.5,  -16.3, 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 312.9,  -15.9, 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 312.9,  -15.9, 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 539.7,   94, 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 539.7,   94, 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 539.8, 93.9, 0 );

setRotateKey( spep_2 + 242 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -4 );

setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.68, 2.68 );

--敵の動き3
setDisp( spep_2 + 354 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 354 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 354 + OFFSET_X, 1, 212.5, -337.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 212.5, -337.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 59.4, -259.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 59.4, -259.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 15.7, -194.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 15.7, -194.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 0.9, -150.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 0.9, -150.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -3.8, -120.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -3.8, -120.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -4.2, -100.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -4.2, -100.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -8.6, -98.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -8.6, -98.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -12, -95.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -12, -95.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -14.4, -93.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -14.4, -93.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -15.7, -90.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -15.7, -90.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -16.2, -87.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -16.2, -87.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -16.1, -85 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -16.1, -85 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -15.6, -82.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -15.6, -82.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -14.9, -81.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -14.9, -81.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -14.4, -79.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -14.4, -79.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -14, -78.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -14, -78.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -13.9, -78 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -13.9, -78 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -13.9, -77.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -13.9, -77.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -14, -76.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -14, -76.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -14, -75.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -14, -75.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 31.7, -13.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 31.7, -13.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -44, -111.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -44, -111.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 26.7, -54.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 26.7, -54.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -8.5, -89.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -8.5, -89.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 12.9, -77.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 12.9, -77.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -7.9, -85.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -7.9, -85.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 6.4, -73.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 6.4, -73.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -5.5, -80.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -5.5, -80.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -4.6, -73.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -4.6, -73.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 1.2, -80.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 1.2, -80.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 1.3, -70.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 1.3, -70.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -3.6, -73.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -3.6, -73.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -3.8, -77.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -3.8, -77.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -1.3, -72.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -1.3, -72.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 1.2, -67.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 1.2, -67.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -0.5, -70.9 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -0.5, -70.9 , 0 );

setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 77.5 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 77.5 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 84.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 84.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 91.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 91.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 97.1 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 97.1 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 106.5 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 106.5 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 110.5 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 110.5 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 114.1 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 114.1 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 117.4 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 117.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 120.4 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 120.4 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 123.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 123.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 126 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 126 );

setScaleKey( spep_2 + 354 + OFFSET_X, 1, 13.92, 13.92 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 13.92, 13.92 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.53, 0.53 );

--敵の動き4
setDisp( spep_2 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 558 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 494 + OFFSET_X, 1, 144.2, 0.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 144.2, 0.6 , 0 );

setRotateKey( spep_2 + 494 + OFFSET_X, 1, 135 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 135 );

setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.2, 0.2 );

setAlphaKey( spep_2 + 537 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 538 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 547 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 548 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 558 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 548 + OFFSET_X, 1, 1, 1,1,1,1);
setBlendColor( spep_2 + 557 + OFFSET_X, 1, 1, 1,1,1,1);
setBlendColor( spep_2 + 558 + OFFSET_X, 1, 1, 0,0,0,0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 62; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE008 = playSeVer2( spep_2 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE008, 126 );
SE009 = playSeVer2( spep_2 + 78, 1425, "",spep_2 + 114, 0, 14, -1);
SE010 = playSeVer2( spep_2 + 78, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 96, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE011, 74 );
SE012 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 112, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE013, 68 );
SE014 = playSeVer2( spep_2 + 130, 1425, "",spep_2 + 162, 0, 8, -1);
SE015 = playSeVer2( spep_2 + 132, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE016, 79 );
--向かっていく
SE017 = playSeVer2( spep_2 + 208, 1264, "",spep_2 + 296, 0, 64, -1);
SE018 = playSeVer2( spep_2 + 208, 1117, "", 0, 0, 0, -1);
--ラッシュ２
SE019 = playSeVer2( spep_2 + 240, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 246, 1425, "",spep_2 + 306, 0, 12, -1);
SE021 = playSeVer2( spep_2 + 246, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 286, 1110, "", 0, 0, 0, -1);
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE023, 71 );
SE024 = playSeVer2( spep_2 + 314, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE024, 81 );
--敵飛んでいく
SE025 = playSeVer2( spep_2 + 338, 1121, "",spep_2 + 414, 0, 16, -1);
--壁激突
SE026 = playSeVer2( spep_2 + 396, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE026, 74 );
--気弾飛んでいく
SE027 = playSeVer2( spep_2 + 470, 1212, "",spep_2 + 564, 20, 26, -1);
setStartTimeMs( SE027, 333 );
--気弾発射
SE028 = playSeVer2( spep_2 + 452, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE028, 95 );
SE029 = playSeVer2( spep_2 + 452, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE029, 136 );
SE030 = playSeVer2( spep_2 + 456, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE030, 68 );
SE031 = playSeVer2( spep_2 + 462, 1177, "",spep_2 + 574, 0, 32, -1);
--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 478, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE032, 148 );
--爆発
SE033 = playSeVer2( spep_2 + 538, 1024, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 542, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 566); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 688

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 並ぶ二人
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 並ぶ二人 敵側 ef_001r
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 124, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--向かってくる
SE005 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 102, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE007, 56 );
setTimeStretch( SE007, 1.24, 30, 4 );

-------------------------------------------------
-- 迫る悟天～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 688;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 迫る悟天～フィニッシュ 敵側前面 ef_002r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 迫る悟天～フィニッシュ 敵側後ろ ef_002br
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 45.1, -63.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 45.1, -63.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 135.1, 50.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 135.1, 50.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 98.1, 12.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 98.1, 12.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 126.2, 30.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 126.2, 30.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 117, 17.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 117, 17.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 122.3, 37.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 122.3, 37.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 111.8, 26.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 111.8, 26.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 129.1, 41.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 129.1, 41.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 110.3, 18.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 110.3, 18.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 119.5, 33.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 119.5, 33.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 118.1, 24 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 118.1, 24 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 131.1, 28.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 131.1, 28.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 120.2, 25.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 120.2, 25.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 125.3, 28.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 125.3, 28.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 125.8, 28.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 125.8, 28.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 85.8, 67.5, 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 85.8, 67.5, 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 44.7, 42.4, 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 44.7, 42.4, 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 105.7, 74.1, 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 105.7, 74.1, 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 80.7, 62.1, 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 80.7, 62.1, 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 107.3, 89.4, 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 107.3, 89.4, 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 94.1, 81.7, 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 94.1, 81.7, 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 99.1, 85.9, 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 99.1, 85.9, 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 99.9, 87.2, 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 99.9, 87.2, 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 103.6, 90.6, 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 103.6, 90.6, 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 104.4, 91.9, 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 104.4, 91.9, 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 119.5, 32.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 119.5, 32.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 109.7, 27.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 109.7, 27.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 127.4, 19.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 127.4, 19.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 112.4, 34.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 112.4, 34.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 112.1, 38.1, 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 112.1, 38.1, 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 99.5,  34.5, 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 99.5,  34.5, 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 118.2, 48.1, 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 118.2, 48.1, 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 106,   32.5, 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 106,   32.5, 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 125.3, 19.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 125.3, 19.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 106, 21.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 106, 21.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 113.7, 15.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 113.7, 15.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 113.8, 15.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 113.8, 15.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 114, 15.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 114, 15.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 114.1, 15 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 114.1, 15 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 106.8, 20.5, 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 106.8, 20.5, 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 70.5,  -20.5, 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 70.5,  -20.5, 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 130.1, 34.4, 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 130.1, 34.4, 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 112.3, 10.4, 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 112.3, 10.4, 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 134,   38.4, 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 134,   38.4, 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 114,   25.4, 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 114,   25.4, 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 130.8, 38.4, 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 130.8, 38.4, 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 121.8, 41.4, 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 121.8, 41.4, 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 131,   49.6, 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 131,   49.6, 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 128.2, 40.7, 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 128.2, 40.7, 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 413.7, 268.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 413.7, 268.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 413.7, 268.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 413.7, 268.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 995.6, 671.4 , 0 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -60.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -60.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -16 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.94, 2.94 );

setAlphaKey( spep_2 + 70 + OFFSET_X, 1, 255 );

--敵の動き2
setDisp( spep_2 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 342 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 262 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 108 );


setMoveKey( spep_2 + 242 + OFFSET_X, 1, 34.8, -68 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 34.8, -68 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 34.8, -68.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 34.8, -68.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 34.8, -68.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 34.8, -68.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 34.9, -68.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 34.9, -68.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 103.9, -48.7, 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 103.9, -48.7, 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 77.7, -69.6, 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 77.7, -69.6, 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 98.2, -62.7, 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 98.2, -62.7, 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 97.6, -55.8, 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 97.6, -55.8, 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 80.5, -72.1, 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 80.5, -72.1, 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 106.1, -45.4, 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 106.1, -45.4, 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 40.6, -22.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 40.6, -22.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 49.6, -18.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 49.6, -18.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 41.6, -18.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 41.6, -18.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 59.4, -13.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 59.4, -13.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 51.6, -16.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 51.6, -16.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 49.1, -27.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 49.1, -27.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 61.4, -10 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 61.4, -10 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 49, -23 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 49, -23 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 79.6, -58.3, 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 79.6, -58.3, 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 97.4, -58.2, 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 97.4, -58.2, 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 86,    -44.9, 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 86,    -44.9, 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 93.1, -55.2, 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 93.1, -55.2, 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 109.4, -63, 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 109.4, -63, 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 90.1,  -46.5, 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 90.1,  -46.5, 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 59.3, -26.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 59.3, -26.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 38.2, -21.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 38.2, -21.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 52.8, -18 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 52.8, -18 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 49.8, -21 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 49.8, -21 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 43, -22.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 43, -22.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 43.5, -22.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 43.5, -22.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 43.6, -22.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 43.6, -22.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 43.7, -22.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 43.7, -22.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 76.5, -7.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 76.5, -7.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 254.5, -70.9, 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 254.5, -70.9, 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 308.9,   -36.5, 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 308.9,   -36.5, 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 279.5,  -45.6, 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 279.5,  -45.6, 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 314.4,  -28.8, 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 314.4,  -28.8, 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 293.2,  -29.9, 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 293.2,  -29.9, 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 313.6,  -21.9, 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 313.6,  -21.9, 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 302.8,  -22.2, 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 302.8,  -22.2, 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 311.7,  -21.4, 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 311.7,  -21.4, 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 313.5,  -16.3, 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 313.5,  -16.3, 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 312.9,  -15.9, 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 312.9,  -15.9, 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 539.7,   94, 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 539.7,   94, 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 539.8, 93.9, 0 );

setRotateKey( spep_2 + 242 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -4 );

setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.68, 2.68 );

--敵の動き3
setDisp( spep_2 + 354 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 354 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 354 + OFFSET_X, 1, -212.5, -337.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -212.5, -337.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -59.4, -259.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -59.4, -259.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -15.7, -194.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -15.7, -194.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -0.9, -150.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -0.9, -150.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 3.8, -120.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 3.8, -120.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 4.2, -100.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 4.2, -100.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 8.6, -98.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 8.6, -98.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 12, -95.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 12, -95.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 14.4, -93.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 14.4, -93.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 15.7, -90.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 15.7, -90.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 16.2, -87.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 16.2, -87.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 16.1, -85 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 16.1, -85 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 15.6, -82.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 15.6, -82.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 14.9, -81.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 14.9, -81.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 14.4, -79.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 14.4, -79.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 14, -78.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 14, -78.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 13.9, -78 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 13.9, -78 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 13.9, -77.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 13.9, -77.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 14, -76.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 14, -76.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 14, -75.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 14, -75.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -31.7, -13.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -31.7, -13.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 44, -111.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 44, -111.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -26.7, -54.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -26.7, -54.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 8.5, -89.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 8.5, -89.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -12.9, -77.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -12.9, -77.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 7.9, -85.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 7.9, -85.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -6.4, -73.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -6.4, -73.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 5.5, -80.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 5.5, -80.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 4.6, -73.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 4.6, -73.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -1.2, -80.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -1.2, -80.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -1.3, -70.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -1.3, -70.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 3.6, -73.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 3.6, -73.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 3.8, -77.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 3.8, -77.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 1.3, -72.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 1.3, -72.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -1.2, -67.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -1.2, -67.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 0.5, -70.9 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 0.5, -70.9 , 0 );

setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -97.1 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -97.1 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -102.1 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -102.1 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -110.5 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -110.5 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -114.1 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -114.1 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -117.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -120.4 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -120.4 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -123.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -123.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -126 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -126 );

setScaleKey( spep_2 + 354 + OFFSET_X, 1, 13.92, 13.92 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 13.92, 13.92 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.53, 0.53 );

--敵の動き4
setDisp( spep_2 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 558 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 494 + OFFSET_X, 1, -144.2, 0.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -144.2, 0.6 , 0 );

setRotateKey( spep_2 + 494 + OFFSET_X, 1, -135 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -135 );

setScaleKey( spep_2 + 494 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 0.2, 0.2 );

setAlphaKey( spep_2 + 537 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 538 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 547 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 548 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 558 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 548 + OFFSET_X, 1, 1, 1,1,1,1);
setBlendColor( spep_2 + 557 + OFFSET_X, 1, 1, 1,1,1,1);
setBlendColor( spep_2 + 558 + OFFSET_X, 1, 1, 0,0,0,0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 62; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE008 = playSeVer2( spep_2 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE008, 126 );
SE009 = playSeVer2( spep_2 + 78, 1425, "",spep_2 + 114, 0, 14, -1);
SE010 = playSeVer2( spep_2 + 78, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 96, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE011, 74 );
SE012 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 112, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE013, 68 );
SE014 = playSeVer2( spep_2 + 130, 1425, "",spep_2 + 162, 0, 8, -1);
SE015 = playSeVer2( spep_2 + 132, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE016, 79 );
--向かっていく
SE017 = playSeVer2( spep_2 + 208, 1264, "",spep_2 + 296, 0, 64, -1);
SE018 = playSeVer2( spep_2 + 208, 1117, "", 0, 0, 0, -1);
--ラッシュ２
SE019 = playSeVer2( spep_2 + 240, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 246, 1425, "",spep_2 + 306, 0, 12, -1);
SE021 = playSeVer2( spep_2 + 246, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 286, 1110, "", 0, 0, 0, -1);
--殴り飛ばす
SE023 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE023, 71 );
SE024 = playSeVer2( spep_2 + 314, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE024, 81 );
--敵飛んでいく
SE025 = playSeVer2( spep_2 + 338, 1121, "",spep_2 + 414, 0, 16, -1);
--壁激突
SE026 = playSeVer2( spep_2 + 396, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE026, 74 );
--気弾飛んでいく
SE027 = playSeVer2( spep_2 + 470, 1212, "",spep_2 + 564, 20, 26, -1);
setStartTimeMs( SE027, 333 );
--気弾発射
SE028 = playSeVer2( spep_2 + 452, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE028, 95 );
SE029 = playSeVer2( spep_2 + 452, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE029, 136 );
SE030 = playSeVer2( spep_2 + 456, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE030, 68 );
SE031 = playSeVer2( spep_2 + 462, 1177, "",spep_2 + 574, 0, 32, -1);
--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 478, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE032, 148 );
--爆発
SE033 = playSeVer2( spep_2 + 538, 1024, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 542, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 566); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 688


end