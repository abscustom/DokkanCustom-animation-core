--4032340:UR_ピッコロ(潜在能力解放)+ガンマ2号_必殺技：連続魔光砲
--sp_effect_a9_00162
--sp2931

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164339; --カード前 ef_001
SP_02  = 164340; --カード後 ef_002

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
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 300;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 158- 1);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 158 - 1, SP_01, spep_2 + 158 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名

    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 300;
-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 214;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 敵キャラクター ** --

setDisp(spep_0 + 80 + OFFSET_X, 1, 1);
setDisp(spep_0 + 212 + OFFSET_X, 1, 0);

setAlphaKey( spep_0 + 80 + OFFSET_X, 1, 255 ); -- 演出全体で敵が最初に表示されるフレーム

changeAnime( spep_0 + 80 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 120 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 190 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, 213.3, 1.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 213.3, 1.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 174.6, 1.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 174.6, 1.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 168.8, -1.4 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 168.8, -1.4 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 165.9, 1.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 165.9, 1.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 161.5, 0 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 161.5, 0 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 158.6, 0 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 158.6, 0 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 157, 0 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 157, 0 , 0 );

--敵位置調整
y_axis_adjust=-100;

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 187.9, 9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 187.9, 9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 192.7, 1.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 192.7, 1.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 198, -9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 198, -9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 204.7, 9.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 204.7, 9.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 204.7, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 204.7, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 212, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 212, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 186.7, 17.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 186.7, 17.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 196.7, 4.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 196.7, 4.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 200.8, 18.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 200.8, 18.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 296.1, 97.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 296.1, 97.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 300.6, 97.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 300.6, 97.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 310.9, 107.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 310.9, 107.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 303.8, 90.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 303.8, 90.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 319.9, 103.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 319.9, 103.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 318.6, 92.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 318.6, 92.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 320.2, 103.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 320.2, 103.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 329.4, 94 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 329.4, 94 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 327, 105.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 327, 105.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 328.9, 94.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 328.9, 94.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 330.8, 94.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 330.8, 94.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 332.7, 94.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 332.7, 94.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 334.6, 94.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 334.6, 94.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 336.5, 95.1 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 336.5, 95.1 + y_axis_adjust , 0 );

--敵位置調整
y_axis_adjust=-70;

setMoveKey( spep_0 + 148 + OFFSET_X, 1, 170.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 170.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 176.4, 121.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 176.4, 121.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 166.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 166.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 170.4, 121.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 170.4, 121.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 156.3, 129.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 156.3, 129.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 160.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 160.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 158.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 158.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 156.8, 131.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 156.8, 131.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 162.5, 113.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 162.5, 113.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 166.6, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 166.6, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 166.7, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 166.7, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 166.7, 115.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 166.7, 115.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 180.5, 61 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 180.5, 61 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 186.2, 83.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 186.2, 83.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 223.9, 50 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 223.9, 50 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 235.3, 64.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 235.3, 64.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 34.4, -52.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 34.4, -52.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 81.2, 53.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 81.2, 53.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 128, 139.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 128, 139.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 174.7, 231.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 174.7, 231.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 221.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 221.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 222.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 222.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 223.6, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 223.6, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 224.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 224.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 225.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 225.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 226.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 226.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 227.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 227.7, 323.3 + y_axis_adjust , 0 );
--ここまで

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 51.9 );

-- ** 音 ** --
--ピッコロ飛び込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 8, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 41 );
setTimeStretch( SE004, 1.52, 30, 4 );



-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

setAlphaKey( spep_0 + 68 + OFFSET_X, 1, 255 );

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--パンチ１
SE005 = playSeVer2( spep_0 + 94, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE005, 214 );
SE006 = playSeVer2( spep_0 + 100, 1187, "", 0, 0, 0, -1);

--パンチ２
SE007 = playSeVer2( spep_0 + 124, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 77 );

--蹴り飛ばす
SE009 = playSeVer2( spep_0 + 168, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1120, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 186, 1359, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_0 + 204, 1442, "",spep_0 + 314, 0, 12, -1);

--構える
SE014 = playSeVer2( spep_0 + 238, 1233, "", 0, 0, 0, -1);

--気弾溜め
SE015 = playSeVer2( spep_0 + 260, 1360, "",spep_0 + 318, 0, 12, -1);
SE016 = playSeVer2( spep_0 + 260, 1443, "",spep_0 + 314, 0, 10, -1);
SE017 = playSeVer2( spep_0 + 260, 1334, "",spep_0 + 312, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 260, SE017, 75 );
--カードカットイン
--SE018 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 300

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--連続気弾
SE019 = playSeVer2( spep_1 + 88, 1401, "", spep_1 + 88 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE019, 79 );
setPitch( spep_1 + 88, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_1 + 90, 1256, "", 0, 0, 0, -1);
setPitch( spep_1 + 90, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );

-------------------------------------------------
-- カード後
-------------------------------------------------

MAX_FRAME_2 = 410;
--
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 22 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, 173.3, 347 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 174.3, 348.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 174.3, 348.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 175.3, 349.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 175.3, 349.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 176.3, 351.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 176.3, 351.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 177.3, 352.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 177.3, 352.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 178.3, 354 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 178.3, 354 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 179.3, 355.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 179.3, 355.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 176, 367.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 176, 367.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 185.6, 351.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 185.6, 351.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 182.3, 363.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 182.3, 363.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 183.3, 354.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 183.3, 354.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 0, 1, 40.9 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 40.9 );

--敵の動き2
setDisp( spep_2 + 216 + OFFSET_X, 1, 1);
setDisp( spep_2 + 366 + OFFSET_X, 1, 0);

setAlphaKey( spep_2 + 260 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 286 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 366 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 367 + OFFSET_X, 1, 255 );

changeAnime( spep_2 + 216 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 216 + OFFSET_X, 1, -87.6, -116.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -87.6, -116.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -78, -83.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -78, -83.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -60.3, -114.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -60.3, -114.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -58.6, -73.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -58.6, -73.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -48.9, -100.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -48.9, -100.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -47.2, -59.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -47.2, -59.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -29.5, -78.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -29.5, -78.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -19.8, -29.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -19.8, -29.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -2.1, -60.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -2.1, -60.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -0.4, -19 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -0.4, -19 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 9.3, -45.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 9.3, -45.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 3, -12 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 3, -12 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 12.5, -38.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 12.5, -38.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 14, 3.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 14, 3.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 23.6, -35.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 23.6, -35.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 17.1, -1.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 17.1, -1.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 18.7, -36 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 18.7, -36 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 12.2, -2.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 12.2, -2.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 21.8, -28.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 21.8, -28.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 23.3, 12.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 23.3, 12.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 32.9, -25.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 32.9, -25.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 26.4, 8.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 26.4, 8.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 28, -26.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 28, -26.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 21.5, 7.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 21.5, 7.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 31.1, -19 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 31.1, -19 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 32.6, 22.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 32.6, 22.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 42.2, -15.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 42.2, -15.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 35.7, 17.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 35.7, 17.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 37.3, -16.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 37.3, -16.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 30.8, 17.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 30.8, 17.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 40.4, -9.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 40.4, -9.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 41.9, 32.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 41.9, 32.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 51.5, -6.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 51.5, -6.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 45, 27.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 45, 27.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 46.6, -6.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 46.6, -6.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 40.1, 26.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 40.1, 26.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 49.7, 0.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 49.7, 0.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 51.2, 18 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 51.2, 18 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 52.8, 19.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 52.8, 19.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 54.3, 21.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 54.3, 21.2 , 0 );

setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 216 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -15.8 );

-- ** 音 ** --
SE021 = playSeVer2( spep_2 + 10, 1401, "", spep_2 + 10 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 79 );
setPitch( spep_2 + 10, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );

--爆発
SE022 = playSeVer2( spep_2 + 10, 1023, "", 0, 0, 0, -1);

--連続気弾
SE023 = playSeVer2( spep_2 + 12, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 12, SE023, 200 );
setTimeStretch( SE023, 1.13, 30, 4 );
SE024 = playSeVer2( spep_2 + 28, 1401, "", spep_2 + 28 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 28, SE024, 79 );
setPitch( spep_2 + 28, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );
SE025 = playSeVer2( spep_2 + 30, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 30, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );

--爆発
SE026 = playSeVer2( spep_2 + 30, 1024, "", 0, 0, 0, -1);

--連続気弾
SE027 = playSeVer2( spep_2 + 42, 1401, "", spep_2 + 42 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 42, SE027, 79 );
setPitch( spep_2 + 42, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );
SE028 = playSeVer2( spep_2 + 44, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 44, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );

--連続気弾
SE029 = playSeVer2( spep_2 + 58, 1401, "", spep_2 + 58 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 58, SE029, 79 );
setPitch( spep_2 + 58, SE029, 1200 );
setTimeStretch( SE029, 1.8, 30, 4 );
SE030 = playSeVer2( spep_2 + 60, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 60, SE030, 200 );
setTimeStretch( SE030, 1.13, 30, 4 );

--気弾溜め
SE031 = playSeVer2( spep_2 + 70, 1442, "",spep_2 + 180, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 70, SE031, 155 );

--画面遷移
SE032 = playSeVer2( spep_2 + 72, 8, "", spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 72, SE032, 116 );

--気弾溜め
SE033 = playSeVer2( spep_2 + 126, 1360, "",spep_2 + 184, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 126, SE033, 89 );
SE034 = playSeVer2( spep_2 + 126, 1443, "",spep_2 + 180, 0, 10, -1);
SE035 = playSeVer2( spep_2 + 126, 1334, "",spep_2 + 178, 0, 8, -1);

--気弾発射
SE036 = playSeVer2( spep_2 + 160, 1122, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 164, 1423, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 164, 1177, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 164, 1027, "", 0, 0, 0, -1);

--気弾に飲まれる
SE040 = playSeVer2( spep_2 + 232, 1161, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 232, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE041, 56 );
SE042 = playSeVer2( spep_2 + 272, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 256); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 410

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 300;
-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 214;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --

setDisp(spep_0 + 80 + OFFSET_X, 1, 1);
setDisp(spep_0 + 212 + OFFSET_X, 1, 0);

setAlphaKey( spep_0 + 80 + OFFSET_X, 1, 255 ); -- 演出全体で敵が最初に表示されるフレーム

changeAnime( spep_0 + 80 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 98 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 120 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 190 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, -213.3, 1.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -213.3, 1.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -174.6, 1.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -174.6, 1.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -168.8, -1.4 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -168.8, -1.4 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -165.9, 1.4 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -165.9, 1.4 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -161.5, 0 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -161.5, 0 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -158.6, 0 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -158.6, 0 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -157, 0 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -157, 0 , 0 );

--敵位置調整
y_axis_adjust=-100;

setMoveKey( spep_0 + 98 + OFFSET_X, 1, -187.9, 9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -187.9, 9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -192.7, 1.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -192.7, 1.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -198, -9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -198, -9.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -204.7, 9.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -204.7, 9.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -204.7, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -204.7, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -212, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -212, 12.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -204.7, 18.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -186.7, 17.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -186.7, 17.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -196.7, 4.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -196.7, 4.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -200.8, 18.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -200.8, 18.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -296.1, 97.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -296.1, 97.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -300.6, 97.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -300.6, 97.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -310.9, 107.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -310.9, 107.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -303.8, 90.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -303.8, 90.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -319.9, 103.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -319.9, 103.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -318.6, 92.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -318.6, 92.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -320.2, 103.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -320.2, 103.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -329.4, 94 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -329.4, 94 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -327, 105.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -327, 105.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -328.9, 94.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -328.9, 94.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -330.8, 94.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -330.8, 94.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -332.7, 94.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -332.7, 94.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -334.6, 94.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -334.6, 94.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -336.5, 95.1 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -336.5, 95.1 + y_axis_adjust , 0 );

--敵位置調整
y_axis_adjust=-70;

setMoveKey( spep_0 + 148 + OFFSET_X, 1, -170.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -170.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -176.4, 121.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -176.4, 121.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -166.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -166.4, 127.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -170.4, 121.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -170.4, 121.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -156.3, 129.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -156.3, 129.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -160.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -160.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -158.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -158.9, 137.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -156.8, 131.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -156.8, 131.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -162.5, 113.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -162.5, 113.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -166.6, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -166.6, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -166.7, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -166.7, 101.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -166.7, 115.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -166.7, 115.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -180.5, 61 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -180.5, 61 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -186.2, 83.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -186.2, 83.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -223.9, 50 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -223.9, 50 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -235.3, 64.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -235.3, 64.2 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -34.4, -52.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -34.4, -52.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -81.2, 53.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -81.2, 53.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -128, 139.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -128, 139.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -174.7, 231.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -174.7, 231.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -221.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -221.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -222.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -222.5, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -223.6, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -223.6, 323.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -224.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -224.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -225.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -225.6, 323.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -226.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -226.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -227.7, 323.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -227.7, 323.3 + y_axis_adjust , 0 );
--ここまで

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -51.9 );

-- ** 音 ** --
--ピッコロ飛び込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 8, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 41 );
setTimeStretch( SE004, 1.52, 30, 4 );



-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

setAlphaKey( spep_0 + 68 + OFFSET_X, 1, 255 );

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ) -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--パンチ１
SE005 = playSeVer2( spep_0 + 94, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE005, 214 );
SE006 = playSeVer2( spep_0 + 100, 1187, "", 0, 0, 0, -1);

--パンチ２
SE007 = playSeVer2( spep_0 + 124, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 77 );

--蹴り飛ばす
SE009 = playSeVer2( spep_0 + 168, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1120, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 186, 1359, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_0 + 204, 1442, "",spep_0 + 314, 0, 12, -1);

--構える
SE014 = playSeVer2( spep_0 + 238, 1233, "", 0, 0, 0, -1);

--気弾溜め
SE015 = playSeVer2( spep_0 + 260, 1360, "",spep_0 + 318, 0, 12, -1);
SE016 = playSeVer2( spep_0 + 260, 1443, "",spep_0 + 314, 0, 10, -1);
SE017 = playSeVer2( spep_0 + 260, 1334, "",spep_0 + 312, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 260, SE017, 75 );
--カードカットイン
--SE018 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 300

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--連続気弾
SE019 = playSeVer2( spep_1 + 88, 1401, "", spep_1 + 88 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE019, 79 );
setPitch( spep_1 + 88, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
SE020 = playSeVer2( spep_1 + 90, 1256, "", 0, 0, 0, -1);
setPitch( spep_1 + 90, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );

-------------------------------------------------
-- カード後
-------------------------------------------------

MAX_FRAME_2 = 410;
--
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 22 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -173.3, 347 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -174.3, 348.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -174.3, 348.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -175.3, 349.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -175.3, 349.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -176.3, 351.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -176.3, 351.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -177.3, 352.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -177.3, 352.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -178.3, 354 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -178.3, 354 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -179.3, 355.4 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -179.3, 355.4 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -176, 367.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -176, 367.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -185.6, 351.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -185.6, 351.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -182.3, 363.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -182.3, 363.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -183.3, 354.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -183.3, 354.6 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 0, 1, -40.9 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -40.9 );

--敵の動き2
setDisp( spep_2 + 216 + OFFSET_X, 1, 1);
setDisp( spep_2 + 366 + OFFSET_X, 1, 0);

setAlphaKey( spep_2 + 260 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 286 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 366 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 367 + OFFSET_X, 1, 255 );

changeAnime( spep_2 + 216 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 216 + OFFSET_X, 1, 87.6, -116.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 87.6, -116.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 78, -83.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 78, -83.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 60.3, -114.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 60.3, -114.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 58.6, -73.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 58.6, -73.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 48.9, -100.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 48.9, -100.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 47.2, -59.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 47.2, -59.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 29.5, -78.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 29.5, -78.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 19.8, -29.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 19.8, -29.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 2.1, -60.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 2.1, -60.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 0.4, -19 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 0.4, -19 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -9.3, -45.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -9.3, -45.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -3, -12 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -3, -12 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -12.5, -38.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -12.5, -38.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -14, 3.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -14, 3.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -23.6, -35.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -23.6, -35.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -17.1, -1.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -17.1, -1.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -18.7, -36 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -18.7, -36 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -12.2, -2.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -12.2, -2.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -21.8, -28.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -21.8, -28.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -23.3, 12.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -23.3, 12.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -32.9, -25.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -32.9, -25.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -26.4, 8.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -26.4, 8.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -28, -26.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -28, -26.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -21.5, 7.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -21.5, 7.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -31.1, -19 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -31.1, -19 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -32.6, 22.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -32.6, 22.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -42.2, -15.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -42.2, -15.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -35.7, 17.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -35.7, 17.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -37.3, -16.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -37.3, -16.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -30.8, 17.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -30.8, 17.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -40.4, -9.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -40.4, -9.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -41.9, 32.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -41.9, 32.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -51.5, -6.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -51.5, -6.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -45, 27.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -45, 27.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -46.6, -6.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -46.6, -6.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -40.1, 26.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -40.1, 26.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -49.7, 0.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -49.7, 0.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -51.2, 18 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -51.2, 18 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -52.8, 19.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -52.8, 19.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -54.3, 21.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -54.3, 21.2 , 0 );

setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 216 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 15.8 );

-- ** 音 ** --
SE021 = playSeVer2( spep_2 + 10, 1401, "", spep_2 + 10 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 79 );
setPitch( spep_2 + 10, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );

--爆発
SE022 = playSeVer2( spep_2 + 10, 1023, "", 0, 0, 0, -1);

--連続気弾
SE023 = playSeVer2( spep_2 + 12, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 12, SE023, 200 );
setTimeStretch( SE023, 1.13, 30, 4 );
SE024 = playSeVer2( spep_2 + 28, 1401, "", spep_2 + 28 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 28, SE024, 79 );
setPitch( spep_2 + 28, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );
SE025 = playSeVer2( spep_2 + 30, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 30, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );

--爆発
SE026 = playSeVer2( spep_2 + 30, 1024, "", 0, 0, 0, -1);

--連続気弾
SE027 = playSeVer2( spep_2 + 42, 1401, "", spep_2 + 42 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 42, SE027, 79 );
setPitch( spep_2 + 42, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );
SE028 = playSeVer2( spep_2 + 44, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 44, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );

--連続気弾
SE029 = playSeVer2( spep_2 + 58, 1401, "", spep_2 + 58 +60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 58, SE029, 79 );
setPitch( spep_2 + 58, SE029, 1200 );
setTimeStretch( SE029, 1.8, 30, 4 );
SE030 = playSeVer2( spep_2 + 60, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 60, SE030, 200 );
setTimeStretch( SE030, 1.13, 30, 4 );

--気弾溜め
SE031 = playSeVer2( spep_2 + 70, 1442, "",spep_2 + 180, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 70, SE031, 155 );

--画面遷移
SE032 = playSeVer2( spep_2 + 72, 8, "", spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 72, SE032, 116 );

--気弾溜め
SE033 = playSeVer2( spep_2 + 126, 1360, "",spep_2 + 184, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 126, SE033, 89 );
SE034 = playSeVer2( spep_2 + 126, 1443, "",spep_2 + 180, 0, 10, -1);
SE035 = playSeVer2( spep_2 + 126, 1334, "",spep_2 + 178, 0, 8, -1);

--気弾発射
SE036 = playSeVer2( spep_2 + 160, 1122, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 164, 1423, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 164, 1177, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 164, 1027, "", 0, 0, 0, -1);

--気弾に飲まれる
SE040 = playSeVer2( spep_2 + 232, 1161, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 232, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE041, 56 );
SE042 = playSeVer2( spep_2 + 272, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 256); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 410


end