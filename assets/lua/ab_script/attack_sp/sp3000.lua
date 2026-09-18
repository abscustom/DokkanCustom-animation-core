--1033010:UR_ダーブラ_必殺技：ダークネスソードアタック
--sp_effect_b2_00070
--sp3000

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164388; --開幕、セリフカットイン～カードカットインまで ef_001
SP_02  = 164390; --カードカットイン～フィニッシュまで ef_002

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_2 = 252 + 94;

        skipFrame(0, spep_2 + 160);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 160, SP_01, spep_2 + 160 - 2, 1);

        -- ** 音 ** --
        --振りかぶる
        SE018 = playSeVer2( spep_2 + 160+3, 1116, "",spep_2 + 244, 0, 58, -1);

    else 

        setupMovie(0 , SP_01, 0, 0);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場シーン 前面
-------------------------------------------------
MAX_FRAME_0 = 252;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場シーン 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 150 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, -2.9, -6 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -2.9, -6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -24.7, -12 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -24.7, -12 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -26.9, -13.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -26.9, -13.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 20.8, 34 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 20.8, 34 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 22, 36.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 22, 36.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -12.6, -3.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -12.6, -3.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -12.1, -3.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -12.1, -3.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -4.5, 5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -4.5, 5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -5, 6.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -5, 6.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -5.5, 6.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -5.5, 6.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -6, 7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -6, 7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -6.5, 7.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -6.5, 7.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -7, 7.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -7, 7.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -7.5, 8.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -7.5, 8.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 0.4, 13.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 0.4, 13.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -3, 3.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -3, 3.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 0.5, 12.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 0.5, 12.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -8.5, 8.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -8.5, 8.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 3.7, 13.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 3.7, 13.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -4.7, 3.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -4.7, 3.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 2.3, 12.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 2.3, 12.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -5, 6.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -5, 6.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 2.3, 12.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 2.3, 12.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -7, 10.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -7, 10.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 2, 3.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 2, 3.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -8.2, 14.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -8.2, 14.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 5, 11.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 5, 11.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -7.2, 13.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -7.2, 13.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 5, 7.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 5, 7.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -7.4, 11.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -7.4, 11.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 0.2, 5.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 0.2, 5.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -2.1, 13.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -2.1, 13.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -5, 6.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -5, 6.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1.4, 13 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 1.4, 13 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.25, 2.25 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -44.1 );

setBlendColor(spep_0 + 176 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.1)
setBlendColor(spep_0 + 182 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.2)
setBlendColor(spep_0 + 188 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.3)
setBlendColor(spep_0 + 194 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.4)
setBlendColor(spep_0 + 200 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.5)
setBlendColor(spep_0 + 206 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.6)
setBlendColor(spep_0 + 212 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.7)
setBlendColor(spep_0 + 218 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.9)
setBlendColor(spep_0 + 254 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0)

-- ** 音 ** --
--唾を吐く
SE002 = playSeVer2( spep_0 + 48, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE002, 126 );
setBandpassFilter( spep_0 + 48, SE002, 400, 24000 );
SE003 = playSeVer2( spep_0 + 48, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 56 );
SE004 = playSeVer2( spep_0 + 74, 1119, "",spep_0 + 138, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE00X, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--付着
SE005 = playSeVer2( spep_0 + 138, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE005,  567 );
SE006 = playSeVer2( spep_0 + 146, 27, "", 0, 0, 0, -1);

--石になる
SE007 = playSeVer2( spep_0 + 158, 1250, "",spep_0 + 256, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 158, 1459, "",spep_0 + 258, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 252

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 攻撃シーン 前面
-------------------------------------------------
MAX_FRAME_2 = 466;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃シーン 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --
--剣出現する
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 50, 0, 30, -1);
SE011 = playSeVer2( spep_2 + 12, 1500, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 12, 1222, "",spep_2 + 90, 0, 40, -1);
SE013 = playSeVer2( spep_2 + 18, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE013, 45 );
SE014 = playSeVer2( spep_2 + 18, 1152, "", 0, 0, 0, -1);

--向かっていく
SE015 = playSeVer2( spep_2 + 100, 1011, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 100, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 110, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 160, 1116, "",spep_2 + 244, 0, 58, -1);

--斬撃
SE019 = playSeVer2( spep_2 + 224, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE019, 119 );
SE020 = playSeVer2( spep_2 + 228, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE020, 71 );
SE021 = playSeVer2( spep_2 + 232, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE021, 84 );

--爆発
SE022 = playSeVer2( spep_2 + 258, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE022, 75 );
SE023 = playSeVer2( spep_2 + 258, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE023, 73 );

-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 264 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 466F


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場シーン 前面
-------------------------------------------------
MAX_FRAME_0 = 252;

setupMovie(0 , SP_01, 0, 0);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場シーン 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 150 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 2.9, -6 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 2.9, -6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 24.7, -12 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 24.7, -12 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 26.9, -13.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 26.9, -13.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -20.8, 34 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -20.8, 34 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -22, 36.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -22, 36.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 12.6, -3.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 12.6, -3.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 12.1, -3.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 12.1, -3.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 4.5, 5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 4.5, 5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 5, 6.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 5, 6.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 5.5, 6.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 5.5, 6.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 6, 7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 6, 7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 6.5, 7.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 6.5, 7.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 7, 7.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 7, 7.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 7.5, 8.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 7.5, 8.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -0.4, 13.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -0.4, 13.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 3, 3.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 3, 3.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -0.5, 12.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -0.5, 12.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 8.5, 8.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 8.5, 8.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -3.7, 13.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -3.7, 13.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 4.7, 3.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 4.7, 3.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -2.3, 12.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -2.3, 12.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 5, 6.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 5, 6.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -2.3, 12.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -2.3, 12.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 7, 10.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 7, 10.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -2, 3.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -2, 3.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 8.2, 14.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 8.2, 14.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -5, 11.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -5, 11.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 7.2, 13.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 7.2, 13.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -5, 7.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -5, 7.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 7.4, 11.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 7.4, 11.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -0.2, 5.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -0.2, 5.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 2.1, 13.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 2.1, 13.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 5, 6.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 5, 6.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -1.4, 13 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -1.4, 13 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.25, 2.25 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 44.1 );

setBlendColor(spep_0 + 176 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.1)
setBlendColor(spep_0 + 182 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.2)
setBlendColor(spep_0 + 188 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.3)
setBlendColor(spep_0 + 194 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.4)
setBlendColor(spep_0 + 200 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.5)
setBlendColor(spep_0 + 206 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.6)
setBlendColor(spep_0 + 212 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.7)
setBlendColor(spep_0 + 218 + OFFSET_X, 1, 3, 0.44, 0.39, 0.44, 0.9)
setBlendColor(spep_0 + 254 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0)


-- ** 音 ** --
--唾を吐く
SE002 = playSeVer2( spep_0 + 48, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE002, 126 );
setBandpassFilter( spep_0 + 48, SE002, 400, 24000 );
SE003 = playSeVer2( spep_0 + 48, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 56 );
SE004 = playSeVer2( spep_0 + 74, 1119, "",spep_0 + 138, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE00X, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--付着
SE005 = playSeVer2( spep_0 + 138, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE005,  567 );
SE006 = playSeVer2( spep_0 + 146, 27, "", 0, 0, 0, -1);

--石になる
SE007 = playSeVer2( spep_0 + 158, 1250, "",spep_0 + 256, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 158, 1459, "",spep_0 + 258, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 252

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 攻撃シーン 前面
-------------------------------------------------
MAX_FRAME_2 = 466;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃シーン 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --
--剣出現する
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 50, 0, 30, -1);
SE011 = playSeVer2( spep_2 + 12, 1500, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 12, 1222, "",spep_2 + 90, 0, 40, -1);
SE013 = playSeVer2( spep_2 + 18, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE013, 45 );
SE014 = playSeVer2( spep_2 + 18, 1152, "", 0, 0, 0, -1);

--向かっていく
SE015 = playSeVer2( spep_2 + 100, 1011, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 100, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 110, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_2 + 160, 1116, "",spep_2 + 244, 0, 58, -1);

--斬撃
SE019 = playSeVer2( spep_2 + 224, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE019, 119 );
SE020 = playSeVer2( spep_2 + 228, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE020, 71 );
SE021 = playSeVer2( spep_2 + 232, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE021, 84 );

--爆発
SE022 = playSeVer2( spep_2 + 258, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE022, 75 );
SE023 = playSeVer2( spep_2 + 258, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE023, 73 );

-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 264 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 466F

end