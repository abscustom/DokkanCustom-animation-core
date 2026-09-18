--1028960:LR_セルマックス_必殺技：マキシマムスマッシュ
--sp_effect_b4_00333
--sp2716

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162932;  --ef_001 開幕〜セルマックスがジャンプまで
SP_01b = 162934;  --ef_001b 開幕〜セルマックスがジャンプまで
SP_02  = 162936;  --ef_002 敵が飛んでいく〜フィニッシュまで
SP_02b = 162938;  --ef_002 敵が飛んでいく〜フィニッシュまで

--エフェクト(敵)
SP_01r  = 162933;  --ef_001r 開幕〜セルマックスがジャンプまで
SP_01br = 162935;  --ef_001br 開幕〜セルマックスがジャンプまで
SP_02r  = 162937;  --ef_002r 敵が飛んでいく〜フィニッシュまで
SP_02br = 162939;  --ef_002br 敵が飛んでいく〜フィニッシュまで


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

 if( _IS_EXTRA_ATTACK_ == 0 ) then
  adjustAttackerLabel( 0, 205);
 end

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜セルマックスがジャンプまで
-------------------------------------------------
MAX_FRAME_0 = 404;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜セルマックスがジャンプまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜セルマックスがジャンプまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 322;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 38 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 38 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 38 + OFFSET_X, 1, 776.7, -83.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 776.7, -83.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 669.5, -90.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 669.5, -90.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 595.3, -83.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 595.3, -83.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 522.9, -80.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 522.9, -80.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 473.8, -83.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 473.8, -83.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 428.4, -86.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 428.4, -86.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 400.1, -83.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 400.1, -83.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 374.1, -85.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 374.1, -85.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 362.2, -83.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 362.2, -83.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 349.7, -82 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 349.7, -82 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 348.3, -83.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 348.3, -83.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 346.5, -83.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 346.5, -83.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 346.3, -83.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 346.3, -83.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 353.4, -82.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 353.4, -82.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 399.9, -79.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 399.9, -79.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 538.4, -51.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 538.4, -51.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 798.4, -5.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 798.4, -5.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 1235.7, 63.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 1235.7, 63.3 , 0 );

setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 10.16, 10.16 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 10.16, 10.16 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 15.62, 15.62 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 15.62, 15.62 );

setRotateKey( spep_0 + 38 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 190 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 28.6, -66.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 28.6, -66.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 28.2, -63.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 28.2, -63.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 27.8, -61.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 27.8, -61.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 27.4, -58.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 27.4, -58.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 27, -55.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 27, -55.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 26.6, -53 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 26.6, -53 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 26.1, -50.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 26.1, -50.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 25.7, -47.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 25.7, -47.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 25.3, -44.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 25.3, -44.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 24.9, -42.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 24.9, -42.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 24.5, -39.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 24.5, -39.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 24.1, -36.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 24.1, -36.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 23.7, -34 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 23.7, -34 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 23.3, -31.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 23.3, -31.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 22.9, -28.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 22.9, -28.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 22.5, -25.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 22.5, -25.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 22.5, -3.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 22.5, -3.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 17.8, -136.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 17.8, -136.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 5.8, -181.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 5.8, -181.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 17.8, -69.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 17.8, -69.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 25.8, -160.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 25.8, -160.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 17.8, -68.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 17.8, -68.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 7.8, -148.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 7.8, -148.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 17.8, -65 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 17.8, -65 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 25.8, -127.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 25.8, -127.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 17.8, -81.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 17.8, -81.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 20.8, -120.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 20.8, -120.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 17.8, -88.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 17.8, -88.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 19.8, -122.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 19.8, -122.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 18.8, -90.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 18.8, -90.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 18.8, -124.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 18.8, -124.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 18.3, -110.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 18.3, -110.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 17.8, -95.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 17.8, -95.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 17.8, -99.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 17.8, -99.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 24.6, -76.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 24.6, -76.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 31.2, -58.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 31.2, -58.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 37.5, -47.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 37.5, -47.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 43.7, -35 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 43.7, -35 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 49.5, -27.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 49.5, -27.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 55.2, -19.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 55.2, -19.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 60.6, -8.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 60.6, -8.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 65.8, 6.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 65.8, 6.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 70.7, 25.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 70.7, 25.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 75.4, 45.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 75.4, 45.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 79.8, 64.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 79.8, 64.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 583.8, 11.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 583.8, 11.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 584.1, 73.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 584.1, 73.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 580.7, 117.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 580.7, 117.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 570.3, 146.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 570.3, 146.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 549.4, 165.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 549.4, 165.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 514.8, 174.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 514.8, 174.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 463, 177.4 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 463, 177.4 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 390.6, 175.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 390.6, 175.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 294.2, 169 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 294.2, 169 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 228.1, 154.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 228.1, 154.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 162, 139 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 162, 139 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 227.6, 302.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 227.6, 302.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 121.6, 171.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 121.6, 171.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 233.9, 318.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 233.9, 318.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 160.2, 223.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 160.2, 223.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 188.2, 274.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 188.2, 274.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 175.3, 241.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 175.3, 241.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 210.6, 291.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 210.6, 291.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 228.5, 279.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 228.5, 279.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 249.4, 303.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 249.4, 303.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 281.2, 270.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 281.2, 270.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 349.4, 334.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 349.4, 334.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 378.3, 337.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 378.3, 337.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 414.8, 414.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 414.8, 414.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 445.9, 455.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 445.9, 455.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 472.2, 500.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 472.2, 500.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 495.3, 556.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 495.3, 556.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 516.1, 613.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 516.1, 613.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 535.6, 671.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 535.6, 671.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 93.4, 496 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 93.4, 496 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 105.4, 527.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 105.4, 527.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 116.3, 556.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 116.3, 556.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 126, 581.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 126, 581.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 134.5, 603.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 134.5, 603.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 141.8, 620.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 141.8, 620.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 147.7, 633.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 147.7, 633.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 152.2, 642.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 152.2, 642.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 155.1, 645.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 155.1, 645.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 156.1, 642.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 156.1, 642.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 155, 632.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 155, 632.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 151.2, 613.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 151.2, 613.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 143.8, 580.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 143.8, 580.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 131.3, 529.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 131.3, 529.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 112.3, 454.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 112.3, 454.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 93.3, 380 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 93.3, 380 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 84, 343.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 84, 343.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 77.6, 328.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 77.6, 328.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 60.3, 302 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 60.3, 302 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -7.3, 206.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -7.3, 206.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1.3, 214.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1.3, 214.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -28.6, 168.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -28.6, 168.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -50.3, 134.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -50.3, 134.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -64.7, 111 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -64.7, 111 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -70.6, 98.4 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -70.6, 98.4 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -65.2, 99.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -65.2, 99.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -44.6, 118 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -44.6, 118 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -3.3, 159.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -3.3, 159.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 64.9, 231.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 64.9, 231.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 167.7, 341.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 167.7, 341.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 314, 498.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 314, 498.6 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -96.6 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -96.6 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -103.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -103.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -105.2 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -105.2 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -106.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -106.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -106.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -106.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -79.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -79.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -76.8 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -76.8 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -71.8 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -71.8 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -89.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -89.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -98.2 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -98.2 );


-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 22, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "",spep_0 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
SE003 = playSeVer2( spep_0 + 2, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 2, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 10, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 10, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 10, 1182, "",spep_0 + 36, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 10, 1024, "",spep_0 + 46, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 10, SE006, 80 );
SE007 = playSeVer2( spep_0 + 26, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 26, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 26, 1182, "",spep_0 + 52, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 26, 1024, "",spep_0 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 26, SE009, 80 );
SE010 = playSeVer2( spep_0 + 38, 1024, "",spep_0 + 74, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 38, SE010, 80 );
SE011 = playSeVer2( spep_0 + 42, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 42, 1182, "",spep_0 + 68, 0, 12, -1);

--手前突っ込んでくる
SE013 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 58, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE015, 58 );
setPitch( spep_0 + 58, SE015, -600 );
setTimeStretch( SE015, 0.67, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--叩きつける
SE016 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 124, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 124, 1159, "", 0, 0, 0, -1);

--アッパー
SE019 = playSeVer2( spep_0 + 190, 1116, "",spep_0 + 244, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 190, SE019, 80 );
SE020 = playSeVer2( spep_0 + 204, 1068, "",spep_0 + 296, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 204, SE020, 80 );
SE021 = playSeVer2( spep_0 + 204, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE021, 82 );
SE022 = playSeVer2( spep_0 + 204, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE022, 79 );
SE023 = playSeVer2( spep_0 + 204, 1359, "", 0, 0, 0, -1);

--尻尾ではたく
SE024 = playSeVer2( spep_0 + 250, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE024,  0 );
SE025 = playSeVer2( spep_0 + 254, 1116, "",spep_0 + 302, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 268, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE026, 74 );
setPitch( spep_0 + 268, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 278, 1183, "",spep_0 + 394, 0, 54, -1);

--構える
SE030 = playSeVer2( spep_0 + 346, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE030, 89 );
setPitch( spep_0 + 346, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );

--飛び上がる
SE031 = playSeVer2( spep_0 + 370, 1116, "",spep_0 + 418, 0, 8, -1);
SE032 = playSeVer2( spep_0 + 372, 1182, "",spep_0 + 418, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --404f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 敵が飛んでいく〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 310;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵が飛んでいく〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵が飛んでいく〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 6 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 6 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 92 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 6 + OFFSET_X, 1, -364.7, -740.7 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -364.7, -740.7 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -242.3, -434.5 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -242.3, -434.5 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -149.3, -201.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -149.3, -201.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -85.2, -40.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -85.2, -40.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -62, -9.4 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -62, -9.4 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -43.8, 14.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -43.8, 14.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -30.9, 32.3 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -30.9, 32.3 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -23.1, 42.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -23.1, 42.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -20.2, 46.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -20.2, 46.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -19.2, 47.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -19.2, 47.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -18.2, 49.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -18.2, 49.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -17.3, 50.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -17.3, 50.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -16.4, 51.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -16.4, 51.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -15.5, 52.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -15.5, 52.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -14.7, 53.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -14.7, 53.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -14, 54.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -14, 54.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -13.3, 55.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -13.3, 55.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -12.6, 56.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -12.6, 56.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -12, 57.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -12, 57.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -11.4, 58.2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -11.4, 58.2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -10.9, 58.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -10.9, 58.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -10.5, 59.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -10.5, 59.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -10, 60 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -10, 60 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -9.7, 60.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -9.7, 60.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -9.4, 60.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -9.4, 60.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -9.1, 61.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -9.1, 61.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -8.9, 61.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -8.9, 61.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -8.7, 61.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -8.7, 61.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -8.6, 62 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -8.6, 62 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -8.5, 62.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -8.5, 62.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -8.3, 61.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -8.3, 61.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 0.9, 50.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 0.9, 50.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 2.7, 52.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 2.7, 52.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 4.5, 53.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 4.5, 53.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 6.3, 55.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 6.3, 55.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 8.1, 57 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 8.1, 57 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 9.9, 58.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 9.9, 58.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 11.7, 60.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 11.7, 60.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 13.5, 61.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 13.5, 61.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 15.2, 63.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 15.2, 63.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 17, 64.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 17, 64.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 18.8, 66.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 18.8, 66.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 20.6, 67.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 20.6, 67.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -89.6, 8.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -89.6, 8.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -78.2, 24.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -78.2, 24.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -96.5, 40.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -96.5, 40.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -81.8, 23.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -81.8, 23.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -96.9, 10 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -96.9, 10 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -85.5, 22.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -85.5, 22.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -100.5, 18.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -100.5, 18.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -228.9, -8.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -228.9, -8.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -232.2, -18.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -232.2, -18.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -451.8, -224.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -451.8, -224.5 , 0 );

setScaleKey( spep_2 + 6 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.29, 1.29 );

setRotateKey( spep_2 + 6 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -76.4 );

--敵の動き2
setDisp( spep_2 + 168 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 168 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 168 + OFFSET_X, 1, 777.2, 706.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 777.2, 706.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 777.7, 707.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 777.7, 707.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 777.6, 709 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 777.6, 709 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 774.2, 707.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 774.2, 707.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 765.2, 699.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 765.2, 699.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 748.4, 682.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 748.4, 682.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 722.2, 654.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 722.2, 654.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 685.4, 614.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 685.4, 614.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 637, 561.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 637, 561.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 577.2, 494.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 577.2, 494.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 506.6, 414.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 506.6, 414.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 426.7, 324.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 426.7, 324.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 339.8, 226.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 339.8, 226.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 249.5, 125.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 249.5, 125.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 160.2, 26.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 160.2, 26.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 77.7, -63.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 77.7, -63.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 9.1, -134.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 9.1, -134.6 , 0 );

setScaleKey( spep_2 + 168 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_2 + 168 + OFFSET_X, 1, -89 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -89 );

-- ** 音 ** --
--逆さまで回り込む
SE034 = playSeVer2( spep_2 + 2, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE034, 130 );
setStartTimeMs( SE034,  333 );
SE035 = playSeVer2( spep_2 + 12, 43, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 12, 1003, "", 0, 0, 0, -1);

--ラストパンチ
SE037 = playSeVer2( spep_2 + 72, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 78, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE038, 79 );
SE039 = playSeVer2( spep_2 + 80, 1068, "",spep_2 + 192, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 80, SE039, 84 );
SE040 = playSeVer2( spep_2 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE040, 78 );
SE041 = playSeVer2( spep_2 + 80, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE041, 66 );

--敵飛んでいく
SE042 = playSeVer2( spep_2 + 138, 1121, "",spep_2 + 234, 0, 30, -1);

--地面激突
SE043 = playSeVer2( spep_2 + 180, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE043, 78 );
setPitch( spep_2 + 180, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE044 = playSeVer2( spep_2 + 186, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 188, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 202); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  310f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜セルマックスがジャンプまで
-------------------------------------------------
MAX_FRAME_0 = 404;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕〜セルマックスがジャンプまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕〜セルマックスがジャンプまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 322;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 38 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 38 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 38 + OFFSET_X, 1, 776.7, -83.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 776.7, -83.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 669.5, -90.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 669.5, -90.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 595.3, -83.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 595.3, -83.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 522.9, -80.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 522.9, -80.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 473.8, -83.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 473.8, -83.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 428.4, -86.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 428.4, -86.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 400.1, -83.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 400.1, -83.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 374.1, -85.3 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 374.1, -85.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 362.2, -83.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 362.2, -83.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 349.7, -82 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 349.7, -82 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 348.3, -83.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 348.3, -83.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 346.5, -83.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 346.5, -83.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 346.3, -83.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 346.3, -83.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 353.4, -82.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 353.4, -82.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 399.9, -79.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 399.9, -79.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 538.4, -51.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 538.4, -51.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 798.4, -5.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 798.4, -5.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 1235.7, 63.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 1235.7, 63.3 , 0 );

setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 6.85, 6.85 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 10.16, 10.16 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 10.16, 10.16 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 15.62, 15.62 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 15.62, 15.62 );

setRotateKey( spep_0 + 38 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 190 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 28.6, -66.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 28.6, -66.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 28.2, -63.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 28.2, -63.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 27.8, -61.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 27.8, -61.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 27.4, -58.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 27.4, -58.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 27, -55.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 27, -55.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 26.6, -53 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 26.6, -53 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 26.1, -50.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 26.1, -50.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 25.7, -47.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 25.7, -47.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 25.3, -44.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 25.3, -44.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 24.9, -42.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 24.9, -42.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 24.5, -39.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 24.5, -39.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 24.1, -36.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 24.1, -36.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 23.7, -34 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 23.7, -34 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 23.3, -31.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 23.3, -31.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 22.9, -28.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 22.9, -28.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 22.5, -25.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 22.5, -25.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 22.5, -3.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 22.5, -3.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 17.8, -136.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 17.8, -136.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 5.8, -181.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 5.8, -181.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 17.8, -69.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 17.8, -69.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 25.8, -160.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 25.8, -160.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 17.8, -68.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 17.8, -68.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 7.8, -148.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 7.8, -148.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 17.8, -65 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 17.8, -65 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 25.8, -127.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 25.8, -127.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 17.8, -81.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 17.8, -81.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 20.8, -120.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 20.8, -120.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 17.8, -88.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 17.8, -88.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 19.8, -122.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 19.8, -122.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 18.8, -90.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 18.8, -90.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 18.8, -124.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 18.8, -124.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 18.3, -110.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 18.3, -110.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 17.8, -95.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 17.8, -95.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 17.8, -99.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 17.8, -99.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 24.6, -76.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 24.6, -76.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 31.2, -58.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 31.2, -58.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 37.5, -47.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 37.5, -47.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 43.7, -35 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 43.7, -35 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 49.5, -27.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 49.5, -27.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 55.2, -19.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 55.2, -19.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 60.6, -8.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 60.6, -8.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 65.8, 6.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 65.8, 6.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 70.7, 25.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 70.7, 25.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 75.4, 45.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 75.4, 45.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 79.8, 64.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 79.8, 64.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 583.8, 11.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 583.8, 11.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 584.1, 73.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 584.1, 73.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 580.7, 117.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 580.7, 117.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 570.3, 146.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 570.3, 146.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 549.4, 165.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 549.4, 165.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 514.8, 174.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 514.8, 174.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 463, 177.4 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 463, 177.4 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 390.6, 175.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 390.6, 175.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 294.2, 169 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 294.2, 169 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 228.1, 154.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 228.1, 154.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 162, 139 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 162, 139 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 227.6, 302.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 227.6, 302.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 121.6, 171.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 121.6, 171.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 233.9, 318.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 233.9, 318.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 160.2, 223.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 160.2, 223.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 188.2, 274.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 188.2, 274.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 175.3, 241.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 175.3, 241.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 210.6, 291.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 210.6, 291.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 228.5, 279.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 228.5, 279.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 249.4, 303.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 249.4, 303.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 281.2, 270.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 281.2, 270.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 349.4, 334.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 349.4, 334.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 378.3, 337.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 378.3, 337.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 414.8, 414.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 414.8, 414.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 445.9, 455.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 445.9, 455.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 472.2, 500.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 472.2, 500.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 495.3, 556.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 495.3, 556.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 516.1, 613.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 516.1, 613.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 535.6, 671.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 535.6, 671.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 93.4, 496 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 93.4, 496 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 105.4, 527.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 105.4, 527.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 116.3, 556.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 116.3, 556.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 126, 581.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 126, 581.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 134.5, 603.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 134.5, 603.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 141.8, 620.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 141.8, 620.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 147.7, 633.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 147.7, 633.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 152.2, 642.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 152.2, 642.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 155.1, 645.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 155.1, 645.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 156.1, 642.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 156.1, 642.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 155, 632.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 155, 632.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 151.2, 613.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 151.2, 613.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 143.8, 580.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 143.8, 580.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 131.3, 529.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 131.3, 529.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 112.3, 454.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 112.3, 454.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 93.3, 380 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 93.3, 380 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 84, 343.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 84, 343.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 77.6, 328.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 77.6, 328.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 51.6, 314.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 77.6, 334.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 41.5, 324.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 60.3, 302 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 60.3, 302 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -7.3, 206.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -7.3, 206.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1.3, 214.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1.3, 214.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -28.6, 168.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -28.6, 168.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -50.3, 134.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -50.3, 134.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -64.7, 111 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -64.7, 111 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -70.6, 98.4 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -70.6, 98.4 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -65.2, 99.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -65.2, 99.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -44.6, 118 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -44.6, 118 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -3.3, 159.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -3.3, 159.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 64.9, 231.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 64.9, 231.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 167.7, 341.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 167.7, 341.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 314, 498.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 314, 498.6 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -96.6 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -96.6 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -100.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -103.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -103.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -105.2 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -105.2 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -106.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -106.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -106.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -106.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -106.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -80.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -79.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -79.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -76.8 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -76.8 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -71.8 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -71.8 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -89.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -89.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -98.2 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -98.2 );


-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 22, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "",spep_0 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
SE003 = playSeVer2( spep_0 + 2, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 2, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 10, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 10, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 10, 1182, "",spep_0 + 36, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 10, 1024, "",spep_0 + 46, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 10, SE006, 80 );
SE007 = playSeVer2( spep_0 + 26, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 26, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 26, 1182, "",spep_0 + 52, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 26, 1024, "",spep_0 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 26, SE009, 80 );
SE010 = playSeVer2( spep_0 + 38, 1024, "",spep_0 + 74, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 38, SE010, 80 );
SE011 = playSeVer2( spep_0 + 42, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 42, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 42, 1182, "",spep_0 + 68, 0, 12, -1);

--手前突っ込んでくる
SE013 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 58, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 58, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE015, 58 );
setPitch( spep_0 + 58, SE015, -600 );
setTimeStretch( SE015, 0.67, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--叩きつける
SE016 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 124, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 124, 1159, "", 0, 0, 0, -1);

--アッパー
SE019 = playSeVer2( spep_0 + 190, 1116, "",spep_0 + 244, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 190, SE019, 80 );
SE020 = playSeVer2( spep_0 + 204, 1068, "",spep_0 + 296, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 204, SE020, 80 );
SE021 = playSeVer2( spep_0 + 204, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE021, 82 );
SE022 = playSeVer2( spep_0 + 204, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE022, 79 );
SE023 = playSeVer2( spep_0 + 204, 1359, "", 0, 0, 0, -1);

--尻尾ではたく
SE024 = playSeVer2( spep_0 + 250, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE024,  0 );
SE025 = playSeVer2( spep_0 + 254, 1116, "",spep_0 + 302, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 268, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE026, 74 );
setPitch( spep_0 + 268, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 278, 1183, "",spep_0 + 394, 0, 54, -1);

--構える
SE030 = playSeVer2( spep_0 + 346, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE030, 89 );
setPitch( spep_0 + 346, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );

--飛び上がる
SE031 = playSeVer2( spep_0 + 370, 1116, "",spep_0 + 418, 0, 8, -1);
SE032 = playSeVer2( spep_0 + 372, 1182, "",spep_0 + 418, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --404f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 敵が飛んでいく〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 310;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 敵が飛んでいく〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 敵が飛んでいく〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 6 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 6 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 92 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 6 + OFFSET_X, 1, -364.7, -740.7 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -364.7, -740.7 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -242.3, -434.5 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -242.3, -434.5 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -149.3, -201.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -149.3, -201.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -85.2, -40.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -85.2, -40.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -62, -9.4 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -62, -9.4 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -43.8, 14.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -43.8, 14.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -30.9, 32.3 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -30.9, 32.3 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -23.1, 42.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -23.1, 42.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -20.2, 46.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -20.2, 46.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -19.2, 47.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -19.2, 47.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -18.2, 49.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -18.2, 49.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -17.3, 50.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -17.3, 50.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -16.4, 51.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -16.4, 51.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -15.5, 52.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -15.5, 52.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -14.7, 53.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -14.7, 53.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -14, 54.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -14, 54.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -13.3, 55.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -13.3, 55.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -12.6, 56.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -12.6, 56.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -12, 57.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -12, 57.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -11.4, 58.2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -11.4, 58.2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -10.9, 58.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -10.9, 58.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -10.5, 59.5 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -10.5, 59.5 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -10, 60 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -10, 60 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -9.7, 60.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -9.7, 60.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -9.4, 60.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -9.4, 60.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -9.1, 61.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -9.1, 61.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -8.9, 61.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -8.9, 61.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -8.7, 61.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -8.7, 61.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -8.6, 62 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -8.6, 62 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -8.5, 62.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -8.5, 62.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -8.3, 61.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -8.3, 61.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 0.9, 50.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 0.9, 50.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 2.7, 52.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 2.7, 52.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 4.5, 53.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 4.5, 53.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 6.3, 55.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 6.3, 55.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 8.1, 57 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 8.1, 57 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 9.9, 58.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 9.9, 58.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 11.7, 60.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 11.7, 60.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 13.5, 61.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 13.5, 61.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 15.2, 63.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 15.2, 63.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 17, 64.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 17, 64.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 18.8, 66.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 18.8, 66.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 20.6, 67.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 20.6, 67.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -89.6, 8.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -89.6, 8.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -78.2, 24.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -78.2, 24.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -96.5, 40.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -96.5, 40.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -81.8, 23.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -81.8, 23.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -96.9, 10 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -96.9, 10 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -85.5, 22.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -85.5, 22.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -100.5, 18.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -100.5, 18.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -228.9, -8.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -228.9, -8.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -232.2, -18.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -232.2, -18.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -451.8, -224.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -451.8, -224.5 , 0 );

setScaleKey( spep_2 + 6 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.29, 1.29 );

setRotateKey( spep_2 + 6 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -76.4 );

--敵の動き2
setDisp( spep_2 + 168 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 168 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 168 + OFFSET_X, 1, 777.2, 706.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 777.2, 706.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 777.7, 707.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 777.7, 707.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 777.6, 709 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 777.6, 709 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 774.2, 707.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 774.2, 707.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 765.2, 699.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 765.2, 699.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 748.4, 682.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 748.4, 682.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 722.2, 654.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 722.2, 654.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 685.4, 614.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 685.4, 614.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 637, 561.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 637, 561.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 577.2, 494.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 577.2, 494.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 506.6, 414.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 506.6, 414.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 426.7, 324.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 426.7, 324.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 339.8, 226.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 339.8, 226.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 249.5, 125.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 249.5, 125.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 160.2, 26.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 160.2, 26.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 77.7, -63.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 77.7, -63.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 9.1, -134.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 9.1, -134.6 , 0 );

setScaleKey( spep_2 + 168 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_2 + 168 + OFFSET_X, 1, -89 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -89 );

-- ** 音 ** --
--逆さまで回り込む
SE034 = playSeVer2( spep_2 + 2, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE034, 130 );
setStartTimeMs( SE034,  333 );
SE035 = playSeVer2( spep_2 + 12, 43, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 12, 1003, "", 0, 0, 0, -1);

--ラストパンチ
SE037 = playSeVer2( spep_2 + 72, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 78, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE038, 79 );
SE039 = playSeVer2( spep_2 + 80, 1068, "",spep_2 + 192, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 80, SE039, 84 );
SE040 = playSeVer2( spep_2 + 80, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE040, 78 );
SE041 = playSeVer2( spep_2 + 80, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE041, 66 );

--敵飛んでいく
SE042 = playSeVer2( spep_2 + 138, 1121, "",spep_2 + 234, 0, 30, -1);

--地面激突
SE043 = playSeVer2( spep_2 + 180, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE043, 78 );
setPitch( spep_2 + 180, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE044 = playSeVer2( spep_2 + 186, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 188, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 202); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  310f -4


end
