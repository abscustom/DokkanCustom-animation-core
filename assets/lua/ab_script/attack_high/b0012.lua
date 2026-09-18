print ("[lua]exec b0012");

ATK_01 = 0;
ATK_D = 248;
ATK_end = ATK_01+316;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=314

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,112, 0x100, -1, 0, 0, 0); --ef_172(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 111, 0x100, -1, 0, 0, 0);  --味方側 ef_171


else
    effect_front = entryEffect( ATK_01 + 0, 114, 0x100, -1, 0, 0, 0);  --敵側 ef_171r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,113, 0x80, -1, 0, 0, 0); --ef_173
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+2,-20,1);
	startBgScroll(ATK_01+70,-40,40);
	stopBgScroll(ATK_01+156,1);
	startBgScroll(ATK_01+158,-60,1);
	stopBgScroll(ATK_01+160,20);
	startBgScroll(ATK_01+184,-60,1);
	stopBgScroll(ATK_01+186,20);
	startBgScroll(ATK_01+214,-10,1);
	startBgScroll(ATK_01+248,-30,1);

else
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+2,-20,1);
	startBgScroll(ATK_01+70,-40,40);
	stopBgScroll(ATK_01+156,1);
	startBgScroll(ATK_01+158,-60,1);
	stopBgScroll(ATK_01+160,20);
	startBgScroll(ATK_01+184,-60,1);
	stopBgScroll(ATK_01+186,20);
	startBgScroll(ATK_01+214,-10,1);
	startBgScroll(ATK_01+248,-30,1);

end

--敵と味方のどちらが手前に来るか
-- front : 前に描画する方
function setFront(flame,front) 
	if (front == 1) then
    	setDrawFront( flame, 0, 0);
    	setDrawFront( flame, 1, 1);
	else
    	setDrawFront( flame, 1, 0);
    	setDrawFront( flame, 0, 1);
	end
end

setDrawFront( ATK_01+0, 1, 1);
setFront(ATK_01+8 + OFFSET_X,0)
setFront(ATK_01+36 + OFFSET_X,1)
setFront(ATK_01+44 + OFFSET_X,0)
setFront(ATK_01+72 + OFFSET_X,1)
setFront(ATK_01+76 + OFFSET_X,0)
setFront(ATK_01+94 + OFFSET_X,1)
setFront(ATK_01+98 + OFFSET_X,0)
setFront(ATK_01+116 + OFFSET_X,1)
setFront(ATK_01+120 + OFFSET_X,0)

--画面振動
setShakeXY(ATK_01 + 24 + OFFSET_X,10, 50, 10);
setShakeXY(ATK_01 + 34 + OFFSET_X,4, 10, 10);
setShakeXY(ATK_01 + 38 + OFFSET_X,6, 70, 10);
setShakeXY(ATK_01 + 44 + OFFSET_X,6, 10, 10);
setShakeXY(ATK_01 + 90 + OFFSET_X,4, 10, 10);
setShakeXY(ATK_01 + 94 + OFFSET_X,14, 30, 30);
setShakeXY(ATK_01 + 108 + OFFSET_X,4, 10, 10);
setShakeXY(ATK_01 + 112 + OFFSET_X,8, 20, 20);
setShakeXY(ATK_01 + 120 + OFFSET_X,10, 30, 30);
setShakeXY(ATK_01 + 162 + OFFSET_X,8, 10, 40);
setShakeXY(ATK_01 + 170 + OFFSET_X,12, 10, 20);
setShakeXY(ATK_01 + 186 + OFFSET_X,8, 20, 50);
setShakeXY(ATK_01 + 194 + OFFSET_X,10, 20, 20);
setShakeXY(ATK_01 + 204 + OFFSET_X,6, 10, 10);
setShakeXY(ATK_01 + 216 + OFFSET_X,4, 30, 30);
setShakeXY(ATK_01 + 220 + OFFSET_X,14, 10, 20);
setShakeXY(ATK_01 + 250 + OFFSET_X,6, 20, 40);
setShakeXY(ATK_01 + 256 + OFFSET_X,54, 10, 20);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------

setDisp(ATK_01 + 50 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 52 + OFFSET_X, 0, 1);
setDisp(ATK_01 + 54 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 56 + OFFSET_X, 0, 1);
setDisp(ATK_01 + 58 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 68 + OFFSET_X, 0, 1);
setDisp(ATK_01 + 132 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 134 + OFFSET_X, 0, 1);
setDisp(ATK_01 + 136 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 138 + OFFSET_X, 0, 1);
setDisp(ATK_01 + 140 + OFFSET_X, 0, 0);
setDisp(ATK_01 + 160 + OFFSET_X, 0, 1);
setDisp(ATK_01 + ATK_end -2 , 0, 0);


changeAnime( ATK_01 + 0, 0, 3 );
changeAnimeAndStop( ATK_01 + 14 + OFFSET_X, 0, 19 ,1);
changeAnime( ATK_01 + 20 + OFFSET_X, 0, 10 );
changeAnimeAndStop( ATK_01 + 32 + OFFSET_X, 0, 11 ,1);
changeAnime( ATK_01 + 36 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 0, 11 ,1);
changeAnime( ATK_01 + 48 + OFFSET_X, 0, 3 );
changeAnime( ATK_01 + 68 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 72 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 76 + OFFSET_X, 0, 111 ,3);
changeAnimeAndStop( ATK_01 + 80 + OFFSET_X, 0, 19 ,1);
changeAnime( ATK_01 + 82 + OFFSET_X, 0, 10 );
changeAnimeAndStop( ATK_01 + 86 + OFFSET_X, 0, 111 ,1);
changeAnime( ATK_01 + 90 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 94 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 98 + OFFSET_X, 0, 111 ,3);
changeAnimeAndStop( ATK_01 + 102 + OFFSET_X, 0, 19 ,1);
changeAnime( ATK_01 + 104 + OFFSET_X, 0, 10 );
changeAnimeAndStop( ATK_01 + 108 + OFFSET_X, 0, 111 ,1);
changeAnime( ATK_01 + 112 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 116 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 120 + OFFSET_X, 0, 111 ,3);
changeAnimeAndStop( ATK_01 + 124 + OFFSET_X, 0, 19 ,1);
changeAnime( ATK_01 + 126 + OFFSET_X, 0, 10 );
changeAnimeAndStop( ATK_01 + 130 + OFFSET_X, 0, 111 ,1);
changeAnime( ATK_01 + 158 + OFFSET_X, 0, 3 );
changeAnime( ATK_01 + 184 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 214 + OFFSET_X, 0, 9 );
changeAnimeAndStop( ATK_01 + 234 + OFFSET_X, 0, 19 ,4);
changeAnimeAndStop( ATK_01 + 244 + OFFSET_X, 0, 11 ,1);
changeAnimeAndStop( ATK_01 + 248 + OFFSET_X, 0, 11 ,3);

setMoveKey( ATK_01 + 0, 0, -863.8, 79.6 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -843.5, 77.9 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -843.5, 77.9 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -771.8, 71.8 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -771.8, 71.8 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -633.8, 60.2 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -633.8, 60.2 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -444, 44.2 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -444, 44.2 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -268.8, 29.4 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -268.8, 29.4 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -153.5, 19.7 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -153.5, 19.7 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -94.9, 14.8 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -94.9, 14.8 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -79.4, 14 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -79.4, 14 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -19.4, -6 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -19.4, -6 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, 0.6, -6 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 0.6, -6 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 0.6, -6 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, -49.4, -16.1 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -49.4, -16.1 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, -67.1, 3.3 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, -67.1, 3.3 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, -69.4, 6 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, -69.4, 6 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, -89.4, 6.1 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, -89.4, 6.1 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, -69.4, 6 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, -69.4, 6 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, 36.4, 27.9 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, 36.4, 27.9 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, 36.4, 7.9 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, 36.4, 7.9 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, -3.6, 27.9 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, -3.6, 27.9 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, -23.6, 47.9 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -23.6, 47.9 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, 16.4, 7.9 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, 16.4, 7.9 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, 48.4, 3.9 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, 48.4, 3.9 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, 58.4, -6.1 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, 58.4, -6.1 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, 58.4, -6.1 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, 58.4, -6.1 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -1.6, 13.9 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -1.6, 13.9 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -21.6, 53.9 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -21.6, 53.9 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -1.6, -6.1 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -1.6, -6.1 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, 36.4, -26.1 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, 36.4, -26.1 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, 38.5, -26 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, 38.5, -26 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, 58.5, -26 , 0 );
setMoveKey( ATK_01 + 119 + OFFSET_X, 0, 58.5, -26 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -21.5, -16 , 0 );
setMoveKey( ATK_01 + 123 + OFFSET_X, 0, -21.5, -16 , 0 );
setMoveKey( ATK_01 + 124 + OFFSET_X, 0, -11.5, 30 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, -11.5, 30 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, -9.5, -16 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -9.5, -16 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, 70.5, -36 , 0 );
setMoveKey( ATK_01 + 157 + OFFSET_X, 0, 70.5, -36 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 0, 70.5, -35.9 , 0 );
setMoveKey( ATK_01 + 159 + OFFSET_X, 0, 70.5, -35.9 , 0 );
setMoveKey( ATK_01 + 160 + OFFSET_X, 0, -89.5, -20 , 0 );
setMoveKey( ATK_01 + 183 + OFFSET_X, 0, -89.5, -20 , 0 );
setMoveKey( ATK_01 + 184 + OFFSET_X, 0, -129.5, 6 , 0 );
setMoveKey( ATK_01 + 213 + OFFSET_X, 0, -129.5, 6 , 0 );
setMoveKey( ATK_01 + 214 + OFFSET_X, 0, -29.5, 0 , 0 );
setMoveKey( ATK_01 + 227 + OFFSET_X, 0, -29.5, 0 , 0 );
setMoveKey( ATK_01 + 228 + OFFSET_X, 0, -9.5, -14 , 0 );
setMoveKey( ATK_01 + 229 + OFFSET_X, 0, -9.5, -14 , 0 );
setMoveKey( ATK_01 + 230 + OFFSET_X, 0, 12.5, -24 , 0 );
setMoveKey( ATK_01 + 233 + OFFSET_X, 0, 12.5, -24 , 0 );
setMoveKey( ATK_01 + 234 + OFFSET_X, 0, -9.5, 0.1 , 0 );
setMoveKey( ATK_01 + 235 + OFFSET_X, 0, -9.5, 0.1 , 0 );
setMoveKey( ATK_01 + 236 + OFFSET_X, 0, -43, 11.2 , 0 );
setMoveKey( ATK_01 + 237 + OFFSET_X, 0, -43, 11.2 , 0 );
setMoveKey( ATK_01 + 238 + OFFSET_X, 0, -63, 17.8 , 0 );
setMoveKey( ATK_01 + 239 + OFFSET_X, 0, -63, 17.8 , 0 );
setMoveKey( ATK_01 + 240 + OFFSET_X, 0, -69.7, 20 , 0 );
setMoveKey( ATK_01 + 243 + OFFSET_X, 0, -69.7, 20 , 0 );
setMoveKey( ATK_01 + 244 + OFFSET_X, 0, 30.3, 8 , 0 );
setMoveKey( ATK_01 + 247 + OFFSET_X, 0, 30.3, 8 , 0 );
setMoveKey( ATK_01 + 248 + OFFSET_X, 0, 50.5, 0 , 0 );
setMoveKey( ATK_01 + 249 + OFFSET_X, 0, 50.5, 0 , 0 );
setMoveKey( ATK_01 + 250 + OFFSET_X, 0, 50.8, 0 , 0 );
setMoveKey( ATK_01 + 251 + OFFSET_X, 0, 50.8, 0 , 0 );
setMoveKey( ATK_01 + 252 + OFFSET_X, 0, 51.9, 0 , 0 );
setMoveKey( ATK_01 + 253 + OFFSET_X, 0, 51.9, 0 , 0 );
setMoveKey( ATK_01 + 254 + OFFSET_X, 0, 55.4, 0 , 0 );
setMoveKey( ATK_01 + 255 + OFFSET_X, 0, 55.4, 0 , 0 );
setMoveKey( ATK_01 + 256 + OFFSET_X, 0, 60.6, 0 , 0 );
setMoveKey( ATK_01 + 257 + OFFSET_X, 0, 60.6, 0 , 0 );
setMoveKey( ATK_01 + 258 + OFFSET_X, 0, 64.5, 0 , 0 );
setMoveKey( ATK_01 + 259 + OFFSET_X, 0, 64.5, 0 , 0 );
setMoveKey( ATK_01 + 260 + OFFSET_X, 0, 67, 0 , 0 );
setMoveKey( ATK_01 + 261 + OFFSET_X, 0, 67, 0 , 0 );
setMoveKey( ATK_01 + 262 + OFFSET_X, 0, 68.5, 0 , 0 );
setMoveKey( ATK_01 + 263 + OFFSET_X, 0, 68.5, 0 , 0 );
setMoveKey( ATK_01 + 264 + OFFSET_X, 0, 69.5, 0 , 0 );
setMoveKey( ATK_01 + 265 + OFFSET_X, 0, 69.5, 0 , 0 );
setMoveKey( ATK_01 + 266 + OFFSET_X, 0, 70.1, 0 , 0 );
setMoveKey( ATK_01 + 267 + OFFSET_X, 0, 70.1, 0 , 0 );
setMoveKey( ATK_01 + 268 + OFFSET_X, 0, 70.5, 0 , 0 );
setMoveKey( ATK_01 + ATK_end-3, 0, 70.5, 0 , 0 );
setMoveKey( ATK_01 + ATK_end-2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.65, 0.65 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.65, 0.65 );
setScaleKey( ATK_01 + 8 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 1.21, 1.21 );
setScaleKey( ATK_01 + 11 + OFFSET_X, 0, 1.21, 1.21 );
setScaleKey( ATK_01 + 12 + OFFSET_X, 0, 1.38, 1.38 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 1.38, 1.38 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 67 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 68 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 89 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 90 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 111 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 112 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + ATK_end, 0, 1.5, 1.5 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 13 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 14 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 43 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 44 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 71 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 72 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 75 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 76 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 89 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 90 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 93 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 94 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 97 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 98 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 111 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 112 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 115 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 116 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 119 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 120 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 157 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 158 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 213 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 214 + OFFSET_X, 0, 10 );
setRotateKey( ATK_01 + 227 + OFFSET_X, 0, 10 );
setRotateKey( ATK_01 + 228 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 229 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 230 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 233 + OFFSET_X, 0, 20 );
setRotateKey( ATK_01 + 234 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 235 + OFFSET_X, 0, 15 );
setRotateKey( ATK_01 + 236 + OFFSET_X, 0, 6.7 );
setRotateKey( ATK_01 + 237 + OFFSET_X, 0, 6.7 );
setRotateKey( ATK_01 + 238 + OFFSET_X, 0, 1.7 );
setRotateKey( ATK_01 + 239 + OFFSET_X, 0, 1.7 );
setRotateKey( ATK_01 + 240 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 243 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 244 + OFFSET_X, 0, -10 );
setRotateKey( ATK_01 + 247 + OFFSET_X, 0, -10 );
setRotateKey( ATK_01 + 248 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + ATK_end, 0, 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + 50 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 52 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 54 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 56 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 58 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 68 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 132 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 134 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 136 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 138 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 140 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 160 + OFFSET_X, 1, 1);
	setDisp( ATK_01 + 270 + OFFSET_X, 1, 0)
    
	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 14 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 20 + OFFSET_X, 1, 104 );
	changeAnimeAndStop( ATK_01 + 30 + OFFSET_X, 1, 119 ,1)
	changeAnime( ATK_01 + 36 + OFFSET_X, 1, 114 );
	changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 48 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 68 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 72 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 76 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 80 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 82 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 86 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 94 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 98 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 102 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 104 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 108 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 112 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 116 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 120 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 124 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 126 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 130 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 158 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 184 + OFFSET_X, 1, 113 );
	changeAnime( ATK_01 + 214 + OFFSET_X, 1, 104 );
	-- changeAnime( ATK_01 + 248 + OFFSET_X, 1, 108 );
	
	setMoveKey( ATK_01 + 0, 1, 1187.4, -40.1 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 635.7, -29.8 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 635.7, -29.8 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 446.4, -26.2 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 446.4, -26.2 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 326.5, -24 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 326.5, -24 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 243.4, -22.5 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 243.4, -22.5 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 184.8, -21.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 184.8, -21.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 144.6, -20.6 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 144.6, -20.6 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 119.4, -20.2 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 119.4, -20.2 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 109.3, -19.9 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 109.3, -19.9 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 109.3, -20 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 109.3, -20 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, 144.9, -20 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, 144.9, -20 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 59.3, -20 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 59.3, -20 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 99.3, -20 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 99.3, -20 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 139.3, -20 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 139.3, -20 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -42.6, 80 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -42.6, 80 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, -22.6, 60 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, -22.6, 60 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 37.4, 50 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 37.4, 50 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 77.4, 0 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 77.4, 0 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 67.4, 20 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 67.4, 20 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, -8.6, 64 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, -8.6, 64 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 39.3, 53.9 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 39.3, 53.9 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 79.3, -6.1 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 79.3, -6.1 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 39.3, 33.9 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 39.3, 33.9 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, -32.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, -32.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, -52.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -52.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -32.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, -32.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 113.3, -50.2 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 113.3, -50.2 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, -30.7, 55.8 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -30.7, 55.8 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -30.7, 55.9 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -30.7, 55.9 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 80, -20 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 80, -20 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 120, 6 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 120, 6 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 91.2, -11.5 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 91.2, -11.5 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 105, 7.4 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 105, 7.4 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 110, 14.2 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 110, 14.2 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 113.1, 18.4 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 113.1, 18.4 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 115.3, 21.4 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 115.3, 21.4 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 116.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 116.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 117.9, 25.1 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 117.9, 25.1 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 118.6, 26.1 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 118.6, 26.1 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 119.1, 26.7 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 119.1, 26.7 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 119.3, 27.1 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 119.3, 27.1 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 119.5, 27.1 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 119.5, 27.1 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 177, 65.7 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 177, 65.7 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 186.4, 65.6 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 186.4, 65.6 , 0 );
	setMoveKey( ATK_01 + 252 + OFFSET_X, 1, 225.1, 65.3 , 0 );
	setMoveKey( ATK_01 + 253 + OFFSET_X, 1, 225.1, 65.3 , 0 );
	setMoveKey( ATK_01 + 254 + OFFSET_X, 1, 342.7, 64.3 , 0 );
	setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 342.7, 64.3 , 0 );
	setMoveKey( ATK_01 + 256 + OFFSET_X, 1, 522.4, 62.8 , 0 );
	setMoveKey( ATK_01 + 257 + OFFSET_X, 1, 522.4, 62.8 , 0 );
	setMoveKey( ATK_01 + 258 + OFFSET_X, 1, 655.9, 61.7 , 0 );
	setMoveKey( ATK_01 + 259 + OFFSET_X, 1, 655.9, 61.7 , 0 );
	setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 739.7, 61 , 0 );
	setMoveKey( ATK_01 + 261 + OFFSET_X, 1, 739.7, 61 , 0 );
	setMoveKey( ATK_01 + 262 + OFFSET_X, 1, 791.5, 60.6 , 0 );
	setMoveKey( ATK_01 + 263 + OFFSET_X, 1, 791.5, 60.6 , 0 );
	setMoveKey( ATK_01 + 264 + OFFSET_X, 1, 824.6, 60.3 , 0 );
	setMoveKey( ATK_01 + 265 + OFFSET_X, 1, 824.6, 60.3 , 0 );
	setMoveKey( ATK_01 + 266 + OFFSET_X, 1, 845.8, 60.2 , 0 );
	setMoveKey( ATK_01 + 267 + OFFSET_X, 1, 845.8, 60.2 , 0 );
	setMoveKey( ATK_01 + 268 + OFFSET_X, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + 270 + OFFSET_X, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 3, 3 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 2.23, 2.23 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 2.23, 2.23 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.97, 1.97 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.97, 1.97 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 89 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 247 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 248 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 249 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 250 + OFFSET_X, 1, 1.39, 1.39 );
	setScaleKey( ATK_01 + 251 + OFFSET_X, 1, 1.39, 1.39 );
	setScaleKey( ATK_01 + 252 + OFFSET_X, 1, 1.37, 1.37 );
	setScaleKey( ATK_01 + 253 + OFFSET_X, 1, 1.37, 1.37 );
	setScaleKey( ATK_01 + 254 + OFFSET_X, 1, 1.3, 1.3 );
	setScaleKey( ATK_01 + 255 + OFFSET_X, 1, 1.3, 1.3 );
	setScaleKey( ATK_01 + 256 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 257 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 258 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 259 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 260 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 261 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 262 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 263 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 264 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 265 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 266 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 267 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 268 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 270 + OFFSET_X, 1, 1, 1 );

	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 47 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 48 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 67 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 68 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 71 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 72 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 157 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 158 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 183 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 184 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 213 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 214 + OFFSET_X, 1, -30 );
	setRotateKey( ATK_01 + 227 + OFFSET_X, 1, -30 );
	setRotateKey( ATK_01 + 228 + OFFSET_X, 1, -25.1 );
	setRotateKey( ATK_01 + 229 + OFFSET_X, 1, -25.1 );
	setRotateKey( ATK_01 + 230 + OFFSET_X, 1, -23.4 );
	setRotateKey( ATK_01 + 231 + OFFSET_X, 1, -23.4 );
	setRotateKey( ATK_01 + 232 + OFFSET_X, 1, -22.3 );
	setRotateKey( ATK_01 + 233 + OFFSET_X, 1, -22.3 );
	setRotateKey( ATK_01 + 234 + OFFSET_X, 1, -21.5 );
	setRotateKey( ATK_01 + 235 + OFFSET_X, 1, -21.5 );
	setRotateKey( ATK_01 + 236 + OFFSET_X, 1, -20.9 );
	setRotateKey( ATK_01 + 237 + OFFSET_X, 1, -20.9 );
	setRotateKey( ATK_01 + 238 + OFFSET_X, 1, -20.6 );
	setRotateKey( ATK_01 + 239 + OFFSET_X, 1, -20.6 );
	setRotateKey( ATK_01 + 240 + OFFSET_X, 1, -20.3 );
	setRotateKey( ATK_01 + 241 + OFFSET_X, 1, -20.3 );
	setRotateKey( ATK_01 + 242 + OFFSET_X, 1, -20.1 );
	setRotateKey( ATK_01 + 243 + OFFSET_X, 1, -20.1 );
	setRotateKey( ATK_01 + 244 + OFFSET_X, 1, -20 );
	setRotateKey( ATK_01 + 247 + OFFSET_X, 1, -20 );
	setRotateKey( ATK_01 + 248 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 270 + OFFSET_X, 1, 0 );

else
	setDisp(ATK_01 + 50 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 52 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 54 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 56 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 58 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 68 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 132 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 134 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 136 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 138 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 140 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 160 + OFFSET_X, 1, 1);
	setDisp( ATK_01 + 270 + OFFSET_X, 1, 0)
    
	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 14 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 20 + OFFSET_X, 1, 104 );
	changeAnimeAndStop( ATK_01 + 30 + OFFSET_X, 1, 119 ,1)
	changeAnime( ATK_01 + 36 + OFFSET_X, 1, 114 );
	changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 48 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 68 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 72 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 76 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 80 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 82 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 86 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 94 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 98 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 102 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 104 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 108 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 112 + OFFSET_X, 1, 4 );
	changeAnimeAndStop( ATK_01 + 116 + OFFSET_X, 1, 11 ,3)
	changeAnimeAndStop( ATK_01 + 120 + OFFSET_X, 1, 19 ,1)
	changeAnimeAndStop( ATK_01 + 124 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 126 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 130 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 158 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 184 + OFFSET_X, 1, 113 );
	changeAnime( ATK_01 + 214 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 248 + OFFSET_X, 1, 108 );
	
	setMoveKey( ATK_01 + 0, 1, 1187.4, -40.1 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 635.7, -29.8 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 635.7, -29.8 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 446.4, -26.2 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 446.4, -26.2 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 326.5, -24 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 326.5, -24 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 243.4, -22.5 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 243.4, -22.5 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 184.8, -21.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 184.8, -21.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 144.6, -20.6 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 144.6, -20.6 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 119.4, -20.2 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 119.4, -20.2 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 109.3, -19.9 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 109.3, -19.9 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 109.3, -20 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 109.3, -20 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, 144.9, -20 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, 144.9, -20 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, 149.3, -20 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 59.3, -20 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 59.3, -20 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 99.3, -20 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 99.3, -20 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 139.3, -20 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 139.3, -20 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -42.6, 80 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -42.6, 80 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, -22.6, 60 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, -22.6, 60 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 37.4, 50 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 37.4, 50 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 77.4, 0 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 77.4, 0 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 67.4, 20 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 67.4, 20 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, -8.6, 64 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, -8.6, 64 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, -20.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 39.3, 53.9 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 39.3, 53.9 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 79.3, -6.1 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 79.3, -6.1 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 39.3, 33.9 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 39.3, 33.9 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, -32.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, -32.7, 53.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, -52.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -52.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -32.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, -32.7, 35.8 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 113.3, -50.2 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 113.3, -50.2 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 37.3, 35.8 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, -30.7, 55.8 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -30.7, 55.8 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -30.7, 55.9 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -30.7, 55.9 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 80, -20 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 80, -20 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 120, 6 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 120, 6 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 91.2, -11.5 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 91.2, -11.5 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 105, 7.4 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 105, 7.4 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 110, 14.2 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 110, 14.2 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 113.1, 18.4 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 113.1, 18.4 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 115.3, 21.4 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 115.3, 21.4 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 116.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 116.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 117.9, 25.1 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 117.9, 25.1 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 118.6, 26.1 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 118.6, 26.1 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 119.1, 26.7 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 119.1, 26.7 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 119.3, 27.1 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 119.3, 27.1 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 119.5, 27.1 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 119.5, 27.1 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 177, 65.7 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 177, 65.7 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 186.4, 65.6 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 186.4, 65.6 , 0 );
	setMoveKey( ATK_01 + 252 + OFFSET_X, 1, 225.1, 65.3 , 0 );
	setMoveKey( ATK_01 + 253 + OFFSET_X, 1, 225.1, 65.3 , 0 );
	setMoveKey( ATK_01 + 254 + OFFSET_X, 1, 342.7, 64.3 , 0 );
	setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 342.7, 64.3 , 0 );
	setMoveKey( ATK_01 + 256 + OFFSET_X, 1, 522.4, 62.8 , 0 );
	setMoveKey( ATK_01 + 257 + OFFSET_X, 1, 522.4, 62.8 , 0 );
	setMoveKey( ATK_01 + 258 + OFFSET_X, 1, 655.9, 61.7 , 0 );
	setMoveKey( ATK_01 + 259 + OFFSET_X, 1, 655.9, 61.7 , 0 );
	setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 739.7, 61 , 0 );
	setMoveKey( ATK_01 + 261 + OFFSET_X, 1, 739.7, 61 , 0 );
	setMoveKey( ATK_01 + 262 + OFFSET_X, 1, 791.5, 60.6 , 0 );
	setMoveKey( ATK_01 + 263 + OFFSET_X, 1, 791.5, 60.6 , 0 );
	setMoveKey( ATK_01 + 264 + OFFSET_X, 1, 824.6, 60.3 , 0 );
	setMoveKey( ATK_01 + 265 + OFFSET_X, 1, 824.6, 60.3 , 0 );
	setMoveKey( ATK_01 + 266 + OFFSET_X, 1, 845.8, 60.2 , 0 );
	setMoveKey( ATK_01 + 267 + OFFSET_X, 1, 845.8, 60.2 , 0 );
	setMoveKey( ATK_01 + 268 + OFFSET_X, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + 270 + OFFSET_X, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 859, 60.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );
	
	setScaleKey( ATK_01 + 0, 1, 3, 3 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 2.23, 2.23 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 2.23, 2.23 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.97, 1.97 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.97, 1.97 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 89 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 247 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 248 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 249 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 250 + OFFSET_X, 1, 1.39, 1.39 );
	setScaleKey( ATK_01 + 251 + OFFSET_X, 1, 1.39, 1.39 );
	setScaleKey( ATK_01 + 252 + OFFSET_X, 1, 1.37, 1.37 );
	setScaleKey( ATK_01 + 253 + OFFSET_X, 1, 1.37, 1.37 );
	setScaleKey( ATK_01 + 254 + OFFSET_X, 1, 1.3, 1.3 );
	setScaleKey( ATK_01 + 255 + OFFSET_X, 1, 1.3, 1.3 );
	setScaleKey( ATK_01 + 256 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 257 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 258 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 259 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 260 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 261 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 262 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 263 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 264 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 265 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 266 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 267 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 268 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 270 + OFFSET_X, 1, 1, 1 );

	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 47 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 48 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 67 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 68 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 71 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 72 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 157 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 158 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 183 + OFFSET_X, 1, -10 );
	setRotateKey( ATK_01 + 184 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 213 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + 214 + OFFSET_X, 1, -30 );
	setRotateKey( ATK_01 + 227 + OFFSET_X, 1, -30 );
	setRotateKey( ATK_01 + 228 + OFFSET_X, 1, -25.1 );
	setRotateKey( ATK_01 + 229 + OFFSET_X, 1, -25.1 );
	setRotateKey( ATK_01 + 230 + OFFSET_X, 1, -23.4 );
	setRotateKey( ATK_01 + 231 + OFFSET_X, 1, -23.4 );
	setRotateKey( ATK_01 + 232 + OFFSET_X, 1, -22.3 );
	setRotateKey( ATK_01 + 233 + OFFSET_X, 1, -22.3 );
	setRotateKey( ATK_01 + 234 + OFFSET_X, 1, -21.5 );
	setRotateKey( ATK_01 + 235 + OFFSET_X, 1, -21.5 );
	setRotateKey( ATK_01 + 236 + OFFSET_X, 1, -20.9 );
	setRotateKey( ATK_01 + 237 + OFFSET_X, 1, -20.9 );
	setRotateKey( ATK_01 + 238 + OFFSET_X, 1, -20.6 );
	setRotateKey( ATK_01 + 239 + OFFSET_X, 1, -20.6 );
	setRotateKey( ATK_01 + 240 + OFFSET_X, 1, -20.3 );
	setRotateKey( ATK_01 + 241 + OFFSET_X, 1, -20.3 );
	setRotateKey( ATK_01 + 242 + OFFSET_X, 1, -20.1 );
	setRotateKey( ATK_01 + 243 + OFFSET_X, 1, -20.1 );
	setRotateKey( ATK_01 + 244 + OFFSET_X, 1, -20 );
	setRotateKey( ATK_01 + 247 + OFFSET_X, 1, -20 );
	setRotateKey( ATK_01 + 248 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 270 + OFFSET_X, 1, 0 );

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 14; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	
	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
	
	
	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
	
		if (_IS_PLAYER_SIDE_ == 1) then
	
			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
	
		else
	
			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
	
		end
	
	setEffAlphaKey( SP_dodge, kaihi, 255);
	
	pauseAll( SP_dodge, 67);
	
	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
	setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
	setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
	--setDisp( SP_dodge+5, 0, 0);
	
	endPhase(SP_dodge+10);
	do return end
	else end

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( ATK_01 + 0, 1117, "",ATK_01 + 44, 0, 22, -1);

--殴り合う
SE002 = playSeVer2( ATK_01 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 0, SE002, 150 );
SE003 = playSeVer2( ATK_01 + 8, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 8, SE003, 75 );
SE004 = playSeVer2( ATK_01 + 8, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 8, SE004, 82 );
SE005 = playSeVer2( ATK_01 + 22, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 22, SE005, 60 );
SE006 = playSeVer2( ATK_01 + 24, 1010, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( ATK_01 + 38, 1109, "", 0, 0, 0, -1);

--連打
SE008 = playSeVer2( ATK_01 + 56, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 56, SE008, 79 );
SE009 = playSeVer2( ATK_01 + 56, 1425, "",ATK_01 + 158, 0, 30, -1);
SE010 = playSeVer2( ATK_01 + 82, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 82, SE010, 87 );
SE011 = playSeVer2( ATK_01 + 106, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 106, SE011, 78 );

--瞬間移動
SE012 = playSeVer2( ATK_01 + 124, 1109, "", 0, 0, 0, -1);

--タックル
SE013 = playSeVer2( ATK_01 + 150, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 150, SE013, 71 );
SE014 = playSeVer2( ATK_01 + 150, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 150, SE014, 63 );

--蹴りクロス
SE015 = playSeVer2( ATK_01 + 172, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 172, SE015, 107 );
SE016 = playSeVer2( ATK_01 + 172, 1179, "",ATK_01 + 228, 0, 30, -1);
setSeVolumeByWorkId( ATK_01 + 172, SE016, 71 );

--パンチヒット
SE017 = playSeVer2( ATK_01 + 202, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( ATK_01 + 202, 1110, "", 0, 0, 0, -1);

--殴り飛ばす
SE019 = playSeVer2( ATK_01 + 226, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 226, SE019, 158 );
SE020 = playSeVer2( ATK_01 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 232, SE020, 71 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 244;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0012");