print ("[lua]exec b0003");

ATK_01 = 0;
ATK_D = 244;
ATK_end = ATK_01+338;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 182, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 182, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=336

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,78, 0x100, -1, 0, 0, 0); --ef_112(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 77, 0x100, -1, 0, 0, 0);  --味方側 ef_111
else
    effect_front = entryEffect( ATK_01 + 0, 80, 0x100, -1, 0, 0, 0);  --敵側 ef_111r
end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,79, 0x80, -1, 0, 0, 0); --ef_113
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

ryusen = entryEffectLife( ATK_01 + 64 - OFFSET_X, 71, 168, 0x80, -1, 0, 0, 0); --流線
setEffMoveKey( ATK_01 + 0, ryusen, 0, 0 , 0);
setEffMoveKey( ATK_01 + 168, ryusen, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, ryusen, 1.0, 1.0);
setEffScaleKey( ATK_01 + 168, ryusen, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, ryusen, 0);
setEffRotateKey( ATK_01 + 168, ryusen, 0);
setEffAlphaKey( ATK_01 + 0, ryusen, 255);
setEffAlphaKey( ATK_01 + 168, ryusen, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+1,-30,1);
	stopBgScroll(ATK_01+28,1);
	startBgScroll(ATK_01+48,-40,20);
	stopBgScroll(ATK_01+228,1);
	startBgScroll(ATK_01+242,-50,10);

else
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+1,-30,1);
	stopBgScroll(ATK_01+28,1);
	startBgScroll(ATK_01+48,-40,20);
	stopBgScroll(ATK_01+228,1);
	startBgScroll(ATK_01+242,-50,10);

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
setFront(ATK_01+64 + OFFSET_X,0)
setFront(ATK_01+78 + OFFSET_X,1)
setFront(ATK_01+86 + OFFSET_X,0)
setFront(ATK_01+92 + OFFSET_X,1)
setFront(ATK_01+102 + OFFSET_X,0)
setFront(ATK_01+106 + OFFSET_X,1)
setFront(ATK_01+110 + OFFSET_X,0)
setFront(ATK_01+114 + OFFSET_X,1)
setFront(ATK_01+132 + OFFSET_X,0)
setFront(ATK_01+138 + OFFSET_X,1)
setFront(ATK_01+142 + OFFSET_X,0)
setFront(ATK_01+146 + OFFSET_X,1)
setFront(ATK_01+148 + OFFSET_X,0)
setFront(ATK_01+158 + OFFSET_X,1)
setFront(ATK_01+170 + OFFSET_X,0)
setFront(ATK_01+198 + OFFSET_X,1)
setFront(ATK_01+216 + OFFSET_X,0)
setFront(ATK_01+220 + OFFSET_X,1)
setFront(ATK_01+226 + OFFSET_X,0)

--画面振動
setShakeXY(ATK_01 + 28 + OFFSET_X, 10, 50, 25);
setShakeXY(ATK_01 + 38 + OFFSET_X, 10, 10, 30);
setShakeXY(ATK_01 + 68 + OFFSET_X, 22, 20, 20);
setShakeXY(ATK_01 + 90 + OFFSET_X, 6, 10, 20);
setShakeXY(ATK_01 + 96 + OFFSET_X, 18, 0, 20);
setShakeXY(ATK_01 + 114 + OFFSET_X, 12, 20, 0);
setShakeXY(ATK_01 + 126 + OFFSET_X, 14, 40, 40);
setShakeXY(ATK_01 + 140 + OFFSET_X, 10, 20, 10);
setShakeXY(ATK_01 + 150 + OFFSET_X, 10, 20, 20);
setShakeXY(ATK_01 + 160 + OFFSET_X, 10, 10, 20);
setShakeXY(ATK_01 + 170 + OFFSET_X, 10, 10, 10);
setShakeXY(ATK_01 + 180 + OFFSET_X, 4, 50, 30);
setShakeXY(ATK_01 + 184 + OFFSET_X, 8, 30, 40);
setShakeXY(ATK_01 + 192 + OFFSET_X, 6, 20, 20);
setShakeXY(ATK_01 + 198 + OFFSET_X, 6, 10, 10);
setShakeXY(ATK_01 + 204 + OFFSET_X, 6, 5, 30);
setShakeXY(ATK_01 + 210 + OFFSET_X, 24, 10, 20);
setShakeXY(ATK_01 + 234 + OFFSET_X, 16, 10, 30);
setShakeXY(ATK_01 + 250 + OFFSET_X, 6, 20, 0);
setShakeXY(ATK_01 + 256 + OFFSET_X, 4, 10, 10);
setShakeXY(ATK_01 + 260 + OFFSET_X, 8, 0, 30);
setShakeXY(ATK_01 + 268 + OFFSET_X, 10, 20, 20);
setShakeXY(ATK_01 + 278 + OFFSET_X, 6, 10, 30);
setShakeXY(ATK_01 + 284 + OFFSET_X, 8, 10, 10);
setShakeXY(ATK_01 + 292 + OFFSET_X, 8, 30, 10);
setShakeXY(ATK_01 + 300 + OFFSET_X, 38, 10, 30);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp(ATK_01 + 118 + OFFSET_X,0,0)
setDisp(ATK_01 + 120 + OFFSET_X,0,1)
setDisp(ATK_01 + 122 + OFFSET_X,0,0)

setDisp(ATK_01 + 130 + OFFSET_X,0,1)
setDisp(ATK_01 + 172 + OFFSET_X,0,0)
setDisp(ATK_01 + 174 + OFFSET_X,0,1)
setDisp(ATK_01 + 176 + OFFSET_X,0,0)

setDisp(ATK_01 + 184 + OFFSET_X,0,1)
setDisp(ATK_01 + 224 + OFFSET_X,0,0)
setDisp(ATK_01 + 226 + OFFSET_X,0,1)
setDisp(ATK_01 + 228 + OFFSET_X,0,0)

changeAnimeAndStop( ATK_01 + 0, 0, 11 ,1)
changeAnime( ATK_01 + 22 + OFFSET_X, 0, 9 );
changeAnimeAndStop( ATK_01 + 52 + OFFSET_X, 0, 19 ,1)
changeAnimeAndStop( ATK_01 + 60 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 64 + OFFSET_X, 0, 11 ,3)
changeAnimeAndStop( ATK_01 + 70 + OFFSET_X, 0, 11 ,1)
changeAnime( ATK_01 + 74 + OFFSET_X, 0, 9 );
changeAnime( ATK_01 + 78 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 82 + OFFSET_X, 0, 19 ,1)
changeAnime( ATK_01 + 84 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 86 + OFFSET_X, 0, 12 );
changeAnime( ATK_01 + 92 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 96 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 98 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 100 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 102 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 106 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 110 + OFFSET_X, 0, 11 ,3)
changeAnime( ATK_01 + 114 + OFFSET_X, 0, 12 );
changeAnime( ATK_01 + 130 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 132 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 134 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 138 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 142 + OFFSET_X, 0, 11 ,3)
changeAnime( ATK_01 + 146 + OFFSET_X, 0, 12 );
changeAnimeAndStop( ATK_01 + 148 + OFFSET_X, 0, 11 ,3)
changeAnime( ATK_01 + 154 + OFFSET_X, 0, 11 );
changeAnimeAndStop( ATK_01 + 155 + OFFSET_X, 0, 11 ,1)
changeAnime( ATK_01 + 158 + OFFSET_X, 0, 9 );
changeAnime( ATK_01 + 162 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 166 + OFFSET_X, 0, 19 ,1)
changeAnime( ATK_01 + 168 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 170 + OFFSET_X, 0, 12 );
changeAnime( ATK_01 + 182 + OFFSET_X, 0, 11 );
changeAnimeAndStop( ATK_01 + 190 + OFFSET_X, 0, 11 ,1)
changeAnime( ATK_01 + 194 + OFFSET_X, 0, 9 );
changeAnime( ATK_01 + 198 + OFFSET_X, 0, 4 );
changeAnimeAndStop( ATK_01 + 202 + OFFSET_X, 0, 19 ,1)
changeAnime( ATK_01 + 204 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 206 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 210 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 212 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 214 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 216 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 220 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 224 + OFFSET_X, 0, 11 );

setMoveKey( ATK_01 + 0, 0, -586.6, 3.9 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -539.7, 3.5 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -539.7, 3.5 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -492.7, 3.1 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -492.7, 3.1 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -445.7, 2.6 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -445.7, 2.6 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -398.8, 2.2 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -398.8, 2.2 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -351.8, 1.8 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -351.8, 1.8 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -304.9, 1.3 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -304.9, 1.3 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -257.9, 0.9 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -257.9, 0.9 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -210.9, 0.5 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -210.9, 0.5 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -164, 0 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -164, 0 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, -143.9, -4.4 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, -143.9, -4.4 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, -152.3, -3.3 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, -152.3, -3.3 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, -214.1, 18.8 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, -214.1, 18.8 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, -274.5, 25.5 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, -274.5, 25.5 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, -283.1, 26.4 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, -283.1, 26.4 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, -291, 17.6 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, -291, 17.6 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, -265.9, 8.8 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, -265.9, 8.8 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, -203.9, 0 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, -203.9, 0 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, -138.5, -89.6 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, -138.5, -89.6 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, -138.2, -40.3 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -138.2, -40.3 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -60.1, -46.5 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -60.1, -46.5 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -86.3, -68.2 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -86.3, -68.2 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -133.6, -22.6 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, -133.6, -22.6 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, -176.2, -44.3 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, -176.2, -44.3 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, -124.2, 20.3 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -124.2, 20.3 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -180.8, -2.9 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -180.8, -2.9 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -204.4, 44.4 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -204.4, 44.4 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -199.9, 5.6 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -199.9, 5.6 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -199.9, 29.3 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -199.9, 29.3 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -150.2, 32.4 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -150.2, 32.4 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -43.7, 58.5 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -43.7, 58.5 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, -83.9, -12.1 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, -83.9, -12.1 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, -155.5, -36.9 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -155.5, -36.9 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, 107.8, 191.4 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, 107.8, 191.4 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, 110.6, 167.8 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, 110.6, 167.8 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, 140.8, 184.1 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 0, 140.8, 184.1 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 0, 205.6, 200 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 0, 205.6, 200 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 0, 181.2, 157 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 0, 181.2, 157 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 0, 137.6, 141.9 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 0, 137.6, 141.9 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 0, 147.9, 109.8 , 0 );
setMoveKey( ATK_01 + 153 + OFFSET_X, 0, 147.9, 109.8 , 0 );
setMoveKey( ATK_01 + 154 + OFFSET_X, 0, 148.1, 139.8 , 0 );
setMoveKey( ATK_01 + 157 + OFFSET_X, 0, 148.1, 139.8 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 0, 195.7, 136 , 0 );
setMoveKey( ATK_01 + 161 + OFFSET_X, 0, 195.7, 136 , 0 );
setMoveKey( ATK_01 + 162 + OFFSET_X, 0, 179.7, 122.9 , 0 );
setMoveKey( ATK_01 + 165 + OFFSET_X, 0, 179.7, 122.9 , 0 );
setMoveKey( ATK_01 + 166 + OFFSET_X, 0, 150.9, 150.6 , 0 );
setMoveKey( ATK_01 + 167 + OFFSET_X, 0, 150.9, 150.6 , 0 );
setMoveKey( ATK_01 + 168 + OFFSET_X, 0, 125, 137.4 , 0 );
setMoveKey( ATK_01 + 169 + OFFSET_X, 0, 125, 137.4 , 0 );
setMoveKey( ATK_01 + 170 + OFFSET_X, 0, 156.6, 176.7 , 0 );
setMoveKey( ATK_01 + 183 + OFFSET_X, 0, 156.6, 176.7 , 0 );
setMoveKey( ATK_01 + 184 + OFFSET_X, 0, -170.1, 188.9 , 0 );
setMoveKey( ATK_01 + 189 + OFFSET_X, 0, -170.1, 188.9 , 0 );
setMoveKey( ATK_01 + 190 + OFFSET_X, 0, -169.9, 210.2 , 0 );
setMoveKey( ATK_01 + 193 + OFFSET_X, 0, -169.9, 210.2 , 0 );
setMoveKey( ATK_01 + 194 + OFFSET_X, 0, -136.2, 207.5 , 0 );
setMoveKey( ATK_01 + 197 + OFFSET_X, 0, -136.2, 207.5 , 0 );
setMoveKey( ATK_01 + 198 + OFFSET_X, 0, -147.5, 198.1 , 0 );
setMoveKey( ATK_01 + 201 + OFFSET_X, 0, -147.5, 198.1 , 0 );
setMoveKey( ATK_01 + 202 + OFFSET_X, 0, -168, 217.8 , 0 );
setMoveKey( ATK_01 + 203 + OFFSET_X, 0, -168, 217.8 , 0 );
setMoveKey( ATK_01 + 204 + OFFSET_X, 0, -186.4, 208.4 , 0 );
setMoveKey( ATK_01 + 205 + OFFSET_X, 0, -186.4, 208.4 , 0 );
setMoveKey( ATK_01 + 206 + OFFSET_X, 0, -188.4, 226.3 , 0 );
setMoveKey( ATK_01 + 209 + OFFSET_X, 0, -188.4, 226.3 , 0 );
setMoveKey( ATK_01 + 210 + OFFSET_X, 0, -198.6, 246.8 , 0 );
setMoveKey( ATK_01 + 211 + OFFSET_X, 0, -198.6, 246.8 , 0 );
setMoveKey( ATK_01 + 212 + OFFSET_X, 0, -196.6, 230 , 0 );
setMoveKey( ATK_01 + 213 + OFFSET_X, 0, -196.6, 230 , 0 );
setMoveKey( ATK_01 + 214 + OFFSET_X, 0, -196.6, 240.3 , 0 );
setMoveKey( ATK_01 + 215 + OFFSET_X, 0, -196.6, 240.3 , 0 );
setMoveKey( ATK_01 + 216 + OFFSET_X, 0, -175.1, 241.6 , 0 );
setMoveKey( ATK_01 + 219 + OFFSET_X, 0, -175.1, 241.6 , 0 );
setMoveKey( ATK_01 + 220 + OFFSET_X, 0, -129.1, 252.9 , 0 );
setMoveKey( ATK_01 + 225 + OFFSET_X, 0, -129.1, 252.9 , 0 );
setMoveKey( ATK_01 + 226 + OFFSET_X, 0, -146.5, 222.3 , 0 );
setMoveKey( ATK_01 + 228 + OFFSET_X, 0, -146.5, 222.3 , 0 );

setScaleKey( ATK_01 + 0, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 57 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 58 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 59 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 60 + OFFSET_X, 0, 1.85, 1.85 );
setScaleKey( ATK_01 + 61 + OFFSET_X, 0, 1.85, 1.85 );
setScaleKey( ATK_01 + 62 + OFFSET_X, 0, 1.93, 1.93 );
setScaleKey( ATK_01 + 63 + OFFSET_X, 0, 1.93, 1.93 );
setScaleKey( ATK_01 + 64 + OFFSET_X, 0, 2.01, 2.01 );
setScaleKey( ATK_01 + 129 + OFFSET_X, 0, 2.01, 2.01 );
setScaleKey( ATK_01 + 130 + OFFSET_X, 0, 1.22, 1.22 );
setScaleKey( ATK_01 + 183 + OFFSET_X, 0, 1.22, 1.22 );
setScaleKey( ATK_01 + 184 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 228 + OFFSET_X, 0, 0.87, 0.87 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 21 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 22 + OFFSET_X, 0, 12.7 );
setRotateKey( ATK_01 + 49 + OFFSET_X, 0, 12.7 );
setRotateKey( ATK_01 + 50 + OFFSET_X, 0, 11.9 );
setRotateKey( ATK_01 + 51 + OFFSET_X, 0, 11.9 );
setRotateKey( ATK_01 + 52 + OFFSET_X, 0, 6.3 );
setRotateKey( ATK_01 + 53 + OFFSET_X, 0, 6.3 );
setRotateKey( ATK_01 + 54 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 55 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 56 + OFFSET_X, 0, -0.2 );
setRotateKey( ATK_01 + 59 + OFFSET_X, 0, -0.2 );
setRotateKey( ATK_01 + 60 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 61 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 62 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 69 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 70 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 73 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 74 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 77 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 78 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 81 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 82 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 83 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 84 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 85 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 86 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 91 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 92 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 97 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 98 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 99 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 100 + OFFSET_X, 0, -7.8 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 0, -7.8 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 105 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 106 + OFFSET_X, 0, 12.1 );
setRotateKey( ATK_01 + 113 + OFFSET_X, 0, 12.1 );
setRotateKey( ATK_01 + 114 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 129 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 130 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 131 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 132 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 133 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 134 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 137 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 138 + OFFSET_X, 0, 12.1 );
setRotateKey( ATK_01 + 145 + OFFSET_X, 0, 12.1 );
setRotateKey( ATK_01 + 146 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 147 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 148 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 153 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 154 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 157 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 158 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 161 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 162 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 165 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 166 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 167 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 168 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 169 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 170 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 183 + OFFSET_X, 0, 0.2 );
setRotateKey( ATK_01 + 184 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 189 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 190 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 193 + OFFSET_X, 0, -14.9 );
setRotateKey( ATK_01 + 194 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 197 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 198 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 201 + OFFSET_X, 0, -7.1 );
setRotateKey( ATK_01 + 202 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 203 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 204 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 205 + OFFSET_X, 0, -13 );
setRotateKey( ATK_01 + 206 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 211 + OFFSET_X, 0, 10.5 );
setRotateKey( ATK_01 + 212 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 213 + OFFSET_X, 0, -11.7 );
setRotateKey( ATK_01 + 214 + OFFSET_X, 0, -7.8 );
setRotateKey( ATK_01 + 215 + OFFSET_X, 0, -7.8 );
setRotateKey( ATK_01 + 216 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 219 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 220 + OFFSET_X, 0, 12.1 );
setRotateKey( ATK_01 + 228 + OFFSET_X, 0, 12.1 );

setAlphaKey( ATK_01 + 0, 0, 255 );
setAlphaKey( ATK_01 + 2 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 3 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 4 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 5 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 6 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 7 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 131 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 132 + OFFSET_X, 0, 128 );
setAlphaKey( ATK_01 + 133 + OFFSET_X, 0, 128 );
setAlphaKey( ATK_01 + 134 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 228 + OFFSET_X, 0, 255 );

setDisp( ATK_01 + ATK_end - 2, 0, 0);
setMoveKey( ATK_01 + ATK_end - 2, 0, 2000, 0.0 , 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

--やられ描写がないためガード時もポーズなどは同じにする
--if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
--else

setDisp(ATK_01 + 118 + OFFSET_X,1,0)
setDisp(ATK_01 + 120 + OFFSET_X,1,1)
setDisp(ATK_01 + 122 + OFFSET_X,1,0)

setDisp(ATK_01 + 130 + OFFSET_X,1,1)
setDisp(ATK_01 + 172 + OFFSET_X,1,0)
setDisp(ATK_01 + 174 + OFFSET_X,1,1)
setDisp(ATK_01 + 176 + OFFSET_X,1,0)

setDisp(ATK_01 + 184 + OFFSET_X,1,1)
setDisp(ATK_01 + 224 + OFFSET_X,1,0)
setDisp(ATK_01 + 226 + OFFSET_X,1,1)
setDisp(ATK_01 + 228 + OFFSET_X,1,0)


changeAnimeAndStop( ATK_01 + 0 , 1, 111 ,1)
changeAnimeAndStop( ATK_01 + 22 + OFFSET_X, 1, 111 ,3)
changeAnimeAndStop( ATK_01 + 52 + OFFSET_X, 1, 119 ,1)
changeAnimeAndStop( ATK_01 + 60 + OFFSET_X, 1, 111 ,1)
changeAnime( ATK_01 + 64 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 70 + OFFSET_X, 1, 111 ,1)
changeAnime( ATK_01 + 74 + OFFSET_X, 1, 104 );
changeAnime( ATK_01 + 78 + OFFSET_X, 1, 103 );
changeAnime( ATK_01 + 82 + OFFSET_X, 1, 114 );
changeAnimeAndStop( ATK_01 + 84 + OFFSET_X, 1, 111 ,3)
changeAnimeAndStop( ATK_01 + 86 + OFFSET_X, 1, 119 ,1)
changeAnime( ATK_01 + 92 + OFFSET_X, 1, 110 );
changeAnime( ATK_01 + 96 + OFFSET_X, 1, 114 );
changeAnime( ATK_01 + 98 + OFFSET_X, 1, 109 );
changeAnimeAndStop( ATK_01 + 100 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 102 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 106 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 110 + OFFSET_X, 1, 104 );
changeAnime( ATK_01 + 114 + OFFSET_X, 1, 114 );
changeAnime( ATK_01 + 132 + OFFSET_X, 1, 109 );
changeAnime( ATK_01 + 134 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 138 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 142 + OFFSET_X, 1, 104 );
changeAnime( ATK_01 + 146 + OFFSET_X, 1, 114 );
changeAnime( ATK_01 + 148 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 154 + OFFSET_X, 1, 111 ,1)
changeAnime( ATK_01 + 158 + OFFSET_X, 1, 104 );
changeAnime( ATK_01 + 162 + OFFSET_X, 1, 103 );
changeAnime( ATK_01 + 166 + OFFSET_X, 1, 114 );
changeAnimeAndStop( ATK_01 + 168 + OFFSET_X, 1, 111 ,3)
changeAnimeAndStop( ATK_01 + 170 + OFFSET_X, 1, 119 ,1)
changeAnime( ATK_01 + 184 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 190 + OFFSET_X, 1, 111 ,1)
changeAnime( ATK_01 + 194 + OFFSET_X, 1, 104 );
changeAnime( ATK_01 + 198 + OFFSET_X, 1, 103 );
changeAnime( ATK_01 + 202 + OFFSET_X, 1, 114 );
changeAnimeAndStop( ATK_01 + 204 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 206 + OFFSET_X, 1, 110 );
changeAnime( ATK_01 + 210 + OFFSET_X, 1, 114 );
changeAnime( ATK_01 + 212 + OFFSET_X, 1, 109 );
changeAnimeAndStop( ATK_01 + 214 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 216 + OFFSET_X, 1, 104 );
changeAnimeAndStop( ATK_01 + 220 + OFFSET_X, 1, 111 ,3)
changeAnime( ATK_01 + 226 + OFFSET_X, 1, 104 );

setMoveKey( ATK_01 + 0, 1, 669.7, 11.9 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 613.3, 10.6 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 613.3, 10.6 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 556.9, 9.3 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 556.9, 9.3 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 500.5, 7.9 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 500.5, 7.9 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 444, 6.6 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 444, 6.6 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 387.6, 5.3 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 387.6, 5.3 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 331.2, 4 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 331.2, 4 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 274.8, 2.6 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 274.8, 2.6 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 218.4, 1.3 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 1, 218.4, 1.3 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 1, 162, 0 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 1, 162, 0 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 1, 137.8, 16.8 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 1, 137.8, 16.8 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 1, 146.2, 17 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 1, 146.2, 17 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 1, 204.3, 30.1 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 1, 204.3, 30.1 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 1, 263.5, 31.4 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 263.5, 31.4 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 1, 272, 31.6 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 1, 272, 31.6 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 1, 258.9, 20.9 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 1, 258.9, 20.9 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 1, 213.1, 5.7 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 213.1, 5.7 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 130.3, -14.7 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 1, 130.3, -14.7 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 1, 48.6, -26.5 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 1, 48.6, -26.5 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 1, 51.4, -25.1 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 51.4, -25.1 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 112.7, -20.4 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 112.7, -20.4 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 57.3, -19.3 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 57.3, -19.3 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 62.5, -16.5 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 62.5, -16.5 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 1, -19, -15.3 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 1, -19, -15.3 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 17.2, 56.3 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 17.2, 56.3 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 1, -53.7, -7.4 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 1, -53.7, -7.4 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 1, -77.3, 16.2 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 1, -77.3, 16.2 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 1, -30.1, 39.8 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 1, -30.1, 39.8 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 1, -30.1, 39.8 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 92.3, 63.8 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 92.3, 63.8 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 66.3, 47.2 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 66.3, 47.2 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 113.6, 23.6 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 113.6, 23.6 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 93.2, -17.1 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 93.2, -17.1 , 0 );

setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 185.2, 174.2 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 185.2, 174.2 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 214, 188.6 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 214, 188.6 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 288.5, 203.2 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 288.5, 203.2 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 272.6, 193.1 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 272.6, 193.1 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 301.4, 178.7 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 301.4, 178.7 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 289, 154 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 1, 289, 154 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 1, 261.8, 148.2 , 0 );
setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 261.8, 148.2 , 0 );
setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 263.6, 149.1 , 0 );
setMoveKey( ATK_01 + 157 + OFFSET_X, 1, 263.6, 149.1 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 1, 300.9, 151.9 , 0 );
setMoveKey( ATK_01 + 161 + OFFSET_X, 1, 300.9, 151.9 , 0 );
setMoveKey( ATK_01 + 162 + OFFSET_X, 1, 267.1, 152.6 , 0 );
setMoveKey( ATK_01 + 165 + OFFSET_X, 1, 267.1, 152.6 , 0 );
setMoveKey( ATK_01 + 166 + OFFSET_X, 1, 270.3, 154.3 , 0 );
setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 270.3, 154.3 , 0 );
setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 220.7, 155.1 , 0 );
setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 220.7, 155.1 , 0 );
setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 242.7, 198.6 , 0 );
setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 242.7, 198.6 , 0 );

setMoveKey( ATK_01 + 184 + OFFSET_X, 1, -89.2, 216.1 , 0 );
setMoveKey( ATK_01 + 189 + OFFSET_X, 1, -89.2, 216.1 , 0 );
setMoveKey( ATK_01 + 190 + OFFSET_X, 1, -88, 216.7 , 0 );
setMoveKey( ATK_01 + 193 + OFFSET_X, 1, -88, 216.7 , 0 );
setMoveKey( ATK_01 + 194 + OFFSET_X, 1, -61.5, 218.8 , 0 );
setMoveKey( ATK_01 + 197 + OFFSET_X, 1, -61.5, 218.8 , 0 );
setMoveKey( ATK_01 + 198 + OFFSET_X, 1, -85.5, 219.2 , 0 );
setMoveKey( ATK_01 + 201 + OFFSET_X, 1, -85.5, 219.2 , 0 );
setMoveKey( ATK_01 + 202 + OFFSET_X, 1, -83.2, 220.4 , 0 );
setMoveKey( ATK_01 + 203 + OFFSET_X, 1, -83.2, 220.4 , 0 );
setMoveKey( ATK_01 + 204 + OFFSET_X, 1, -118.4, 221 , 0 );
setMoveKey( ATK_01 + 205 + OFFSET_X, 1, -118.4, 221 , 0 );
setMoveKey( ATK_01 + 206 + OFFSET_X, 1, -133.4, 224.4 , 0 );
setMoveKey( ATK_01 + 209 + OFFSET_X, 1, -133.4, 224.4 , 0 );
setMoveKey( ATK_01 + 210 + OFFSET_X, 1, -143.6, 234.6 , 0 );
setMoveKey( ATK_01 + 211 + OFFSET_X, 1, -143.6, 234.6 , 0 );
setMoveKey( ATK_01 + 212 + OFFSET_X, 1, -123.2, 244.8 , 0 );
setMoveKey( ATK_01 + 215 + OFFSET_X, 1, -123.2, 244.8 , 0 );
setMoveKey( ATK_01 + 216 + OFFSET_X, 1, -70.3, 255.1 , 0 );
setMoveKey( ATK_01 + 219 + OFFSET_X, 1, -70.3, 255.1 , 0 );
setMoveKey( ATK_01 + 220 + OFFSET_X, 1, -81.5, 248 , 0 );
setMoveKey( ATK_01 + 225 + OFFSET_X, 1, -81.5, 248 , 0 );
setMoveKey( ATK_01 + 226 + OFFSET_X, 1, -61.1, 237.8 , 0 );
setMoveKey( ATK_01 + 228 + OFFSET_X, 1, -61.1, 237.8 , 0 );
setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 57 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( ATK_01 + 58 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( ATK_01 + 59 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( ATK_01 + 60 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( ATK_01 + 61 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( ATK_01 + 62 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( ATK_01 + 63 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( ATK_01 + 64 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 2.01, 2.01 );

setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( ATK_01 + 176 + OFFSET_X, 1, 1.22, 1.22 );

setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( ATK_01 + 228 + OFFSET_X, 1, 0.87, 0.87 );

setRotateKey( ATK_01 + 0, 1, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 21 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 22 + OFFSET_X, 1, 1.2 );
setRotateKey( ATK_01 + 57 + OFFSET_X, 1, 1.2 );
setRotateKey( ATK_01 + 58 + OFFSET_X, 1, 1.1 );
setRotateKey( ATK_01 + 59 + OFFSET_X, 1, 1.1 );
setRotateKey( ATK_01 + 60 + OFFSET_X, 1, 0.7 );
setRotateKey( ATK_01 + 61 + OFFSET_X, 1, 0.7 );
setRotateKey( ATK_01 + 62 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 69 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 70 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 73 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 74 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 77 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 78 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 81 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 82 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 83 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 84 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 85 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 86 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 1, -8 );
setRotateKey( ATK_01 + 113 + OFFSET_X, 1, -8 );
setRotateKey( ATK_01 + 114 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 122 + OFFSET_X, 1, 0 );

setRotateKey( ATK_01 + 130 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 133 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 134 + OFFSET_X, 1, -8 );
setRotateKey( ATK_01 + 145 + OFFSET_X, 1, -8 );
setRotateKey( ATK_01 + 146 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 153 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 154 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 157 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 158 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 161 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 162 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 165 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 166 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 167 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 168 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 169 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 170 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 176 + OFFSET_X, 1, -18.5 );

setRotateKey( ATK_01 + 184 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 189 + OFFSET_X, 1, 0 );
setRotateKey( ATK_01 + 190 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 193 + OFFSET_X, 1, 9.8 );
setRotateKey( ATK_01 + 194 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 197 + OFFSET_X, 1, 20.3 );
setRotateKey( ATK_01 + 198 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 201 + OFFSET_X, 1, -0.4 );
setRotateKey( ATK_01 + 202 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 203 + OFFSET_X, 1, -11.2 );
setRotateKey( ATK_01 + 204 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 205 + OFFSET_X, 1, 9.5 );
setRotateKey( ATK_01 + 206 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 215 + OFFSET_X, 1, -18.5 );
setRotateKey( ATK_01 + 216 + OFFSET_X, 1, -8 );
setRotateKey( ATK_01 + 228 + OFFSET_X, 1, -8 );

setAlphaKey( ATK_01 + 0, 1, 255 );
setAlphaKey( ATK_01 + 2 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 3 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 4 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 5 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 6 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 7 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 131 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 132 + OFFSET_X, 1, 128 );
setAlphaKey( ATK_01 + 133 + OFFSET_X, 1, 128 );
setAlphaKey( ATK_01 + 134 + OFFSET_X, 1, 255 );
setAlphaKey( ATK_01 + 228 + OFFSET_X, 1, 255 );

--end

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( ATK_01 + 0, 1117, "", ATK_01 + 52, 0, 20, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 20; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	stopSe( SP_dodge-12, SE001, 0);
	
	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
		
	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
	
		if (_IS_PLAYER_SIDE_ == 1) then
	
			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
			stopBgScroll(SP_dodge,0);

		else
	
			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
			stopBgScroll(SP_dodge,0);
	
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
--パンチ打ち合う
SE002 = playSeVer2( ATK_01 + 8, 1003, "", 0, 0, 0, -1);
SE003 = playSeVer2( ATK_01 + 12, 1049, "",ATK_01 + 60, 0, 32, -1);
setSeVolumeByWorkId( ATK_01 + 12, SE003, 84 );
SE004 = playSeVer2( ATK_01 + 16, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 16, SE004, 79 );
SE005 = playSeVer2( ATK_01 + 18, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 18, SE005, 73 );
SE006 = playSeVer2( ATK_01 + 18, 1179, "",ATK_01 + 82, 0, 42, -1);
setSeVolumeByWorkId( ATK_01 + 18, SE006, 61 );

--連続攻撃１
SE007 = playSeVer2( ATK_01 + 48, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( ATK_01 + 54, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 54, SE008, 72 );
SE009 = playSeVer2( ATK_01 + 60, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( ATK_01 + 68, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( ATK_01 + 74, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 74, SE011, 72 );
SE012 = playSeVer2( ATK_01 + 82, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 82, SE012, 74 );
SE013 = playSeVer2( ATK_01 + 92, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 92, SE013, 74 );
SE014 = playSeVer2( ATK_01 + 96, 1012, "", 0, 0, 0, -1);
setPitch( ATK_01 + 96, SE014, -100 );
setTimeStretch( SE014, 0.93, 30, 4 );

--瞬間移動
SE015 = playSeVer2( ATK_01 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 106, SE015, 124 );

--連続攻撃２
SE016 = playSeVer2( ATK_01 + 118, 1012, "", 0, 0, 0, -1);
SE017 = playSeVer2( ATK_01 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 124, SE017, 79 );
SE018 = playSeVer2( ATK_01 + 132, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( ATK_01 + 138, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 138, SE019, 63 );
SE020 = playSeVer2( ATK_01 + 146, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( ATK_01 + 156, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( ATK_01 + 162, 1012, "", 0, 0, 0, -1);
SE023 = playSeVer2( ATK_01 + 164, 1013, "", 0, 0, 0, -1);

--瞬間移動
SE024 = playSeVer2( ATK_01 + 162, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 162, SE024, 126 );

--連続攻撃３
SE025 = playSeVer2( ATK_01 + 176, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( ATK_01 + 182, 1012, "", 0, 0, 0, -1);
SE027 = playSeVer2( ATK_01 + 188, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( ATK_01 + 196, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( ATK_01 + 202, 1013, "", 0, 0, 0, -1);
SE030 = playSeVer2( ATK_01 + 210, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE031 = playSeVer2( ATK_01 + 214, 1109, "", 0, 0, 0, -1);

--敵との激突１
SE032 = playSeVer2( ATK_01 + 222, 1049, "",ATK_01 + 268, 0, 24, -1);
setSeVolumeByWorkId( ATK_01 + 222, SE032, 79 );
SE033 = playSeVer2( ATK_01 + 226, 20, "",ATK_01 + 286, 0, 34, -1);

--敵との激突２
SE034 = playSeVer2( ATK_01 + 248, 1049, "",ATK_01 + 292, 0, 22, -1);
setSeVolumeByWorkId( ATK_01 + 248, SE034, 75 );
setPitch( ATK_01 + 248, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( ATK_01 + 250, 20, "",ATK_01 + 312, 0, 36, -1);
setPitch( ATK_01 + 250, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );

--敵との激突３
SE036 = playSeVer2( ATK_01 + 276, 1049, "",ATK_01 + 322, 0, 24, -1);
setSeVolumeByWorkId( ATK_01 + 276, SE036, 77 );
SE037 = playSeVer2( ATK_01 + 280, 20, "",ATK_01 + 340, 0, 34, -1);

--敵との激突４
SE038 = playSeVer2( ATK_01 + 308, 1049, "",ATK_01 + 354, 0, 24, -1);
setSeVolumeByWorkId( ATK_01 + 308, SE038, 76 );
SE039 = playSeVer2( ATK_01 + 312, 20, "",ATK_01 + 372, 0, 34, -1);

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 220;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0003");