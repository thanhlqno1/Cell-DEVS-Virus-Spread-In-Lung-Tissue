[top]
components : cellular


[cellular]
type : cell
dim : (50, 50, 5)
delay : transport
defaultDelayTime : 100
border : wrapped

neighbors : cellular(-1,0,0) cellular(0,0,0) 
neighbors : cellular(0,1,0)  cellular(1,0,0)  cellular(0,-1,0)   
neighbors : cellular(0,0,1) cellular(0,0,-1)

initialvalue : -1
NeighborPorts: initial state virion virus virus_movement uptake_rate immune_signal cytokine_movement cytokine_secreting
statevariables: s v immunity_rate vi vim vir ur ma is cm cr cs
statevalues: 1 0 0 0 0 0 0.1 0 0 0 0 0
initialvariablesvalue: model.val

localtransition: local

zone : virus {   (3,23,1)..(3,25,1) (4,23,1)..(4,25,1) (5,23,1)..(5,25,1) (6,23,1)..(6,25,1) (6,29,1)..(6,30,1) (7,16,1)..(7,21,1) (7,23,1)..(7,25,1) (7,27,1)..(7,32,1) (8,15,1)..(8,21,1) (8,23,1)..(8,25,1) (8,27,1)..(8,33,1) (9,14,1)..(9,21,1) (9,23,1)..(9,25,1) (9,27,1)..(9,34,1) (10,13,1)..(10,21,1) (10,23,1)..(10,25,1) (10,27,1)..(10,35,1) (11,12,1)..(11,21,1) (11,23,1)..(11,25,1) (11,27,1)..(11,36,1) (12,11,1)..(12,21,1) (12,23,1)..(12,25,1) (12,27,1)..(12,37,1) (13,10,1)..(13,38,1) (14,9,1)..(14,38,1) (15,9,1)..(15,39,1) (16,8,1)..(16,23,1) (16,24,1)..(16,39,1) (17,8,1)..(17,23,1) (17,25,1)..(17,40,1) (18,8,1)..(18,23,1) (18,25,1)..(18,40,1) (19,7,1)..(19,22,1) (19,25,1)..(19,40,1) (20,7,1)..(20,23,1) (20,25,1)..(20,40,1) (21,7,1)..(21,23,1) (21,25,1)..(21,41,1) (22,6,1)..(22,22,1) (22,25,1)..(22,41,1) (23,6,1)..(23,22,1) (23,26,1)..(23,41,1) (24,6,1)..(24,22,1) (24,26,1)..(24,41,1) (25,6,1)..(25,22,1) (25,26,1)..(25,41,1) (26,6,1)..(26,22,1) (26,26,1)..(26,41,1) (27,6,1)..(27,22,1) (27,26,1)..(27,41,1) (28,6,1)..(28,22,1) (28,26,1)..(28,41,1) (29,6,1)..(29,22,1) (29,26,1)..(29,41,1) (30,6,1)..(30,22,1) (30,26,1)..(30,41,1) (31,6,1)..(31,22,1) (31,26,1)..(31,41,1) (32,6,1)..(32,21,1) (32,26,1)..(32,41,1) (33,6,1)..(33,21,1) (33,27,1)..(33,41,1) (34,6,1)..(34,21,1) (34,27,1)..(34,41,1) (35,5,1)..(35,20,1) (35,29,1)..(35,41,1) (36,5,1)..(36,16,1) (36,30,1)..(36,41,1) (37,6,1)..(37,11,1) (37,32,1)..(37,40,1) (38,37,1)..(38,40,1)  }
zone : epithelial-cell {   (3,23,2)..(3,25,2) (4,23,2)..(4,25,2) (5,23,2)..(5,25,2) (6,23,2)..(6,25,2) (6,29,2)..(6,30,2) (7,16,2)..(7,21,2) (7,23,2)..(7,25,2) (7,27,2)..(7,32,2) (8,15,2)..(8,21,2) (8,23,2)..(8,25,2) (8,27,2)..(8,33,2) (9,14,2)..(9,21,2) (9,23,2)..(9,25,2) (9,27,2)..(9,34,2) (10,13,2)..(10,21,2) (10,23,2)..(10,25,2) (10,27,2)..(10,35,2) (11,12,2)..(11,21,2) (11,23,2)..(11,25,2) (11,27,2)..(11,36,2) (12,11,2)..(12,21,2) (12,23,2)..(12,25,2) (12,27,2)..(12,37,2) (13,10,2)..(13,38,2) (14,9,2)..(14,38,2) (15,9,2)..(15,39,2) (16,8,2)..(16,23,2) (16,24,2)..(16,39,2) (17,8,2)..(17,23,2) (17,25,2)..(17,40,2) (18,8,2)..(18,23,2) (18,25,2)..(18,40,2) (19,7,2)..(19,22,2) (19,25,2)..(19,40,2) (20,7,2)..(20,23,2) (20,25,2)..(20,40,2) (21,7,2)..(21,23,2) (21,25,2)..(21,41,2) (22,6,2)..(22,22,2) (22,25,2)..(22,41,2) (23,6,2)..(23,22,2) (23,26,2)..(23,41,2) (24,6,2)..(24,22,2) (24,26,2)..(24,41,2) (25,6,2)..(25,22,2) (25,26,2)..(25,41,2) (26,6,2)..(26,22,2) (26,26,2)..(26,41,2) (27,6,2)..(27,22,2) (27,26,2)..(27,41,2) (28,6,2)..(28,22,2) (28,26,2)..(28,41,2) (29,6,2)..(29,22,2) (29,26,2)..(29,41,2) (30,6,2)..(30,22,2) (30,26,2)..(30,41,2) (31,6,2)..(31,22,2) (31,26,2)..(31,41,2) (32,6,2)..(32,21,2) (32,26,2)..(32,41,2) (33,6,2)..(33,21,2) (33,27,2)..(33,41,2) (34,6,2)..(34,21,2) (34,27,2)..(34,41,2) (35,5,2)..(35,20,2) (35,29,2)..(35,41,2) (36,5,2)..(36,16,2) (36,30,2)..(36,41,2) (37,6,2)..(37,11,2) (37,32,2)..(37,40,2) (38,37,2)..(38,40,2)  }
zone : cytokine {   (3,23,3)..(3,25,3) (4,23,3)..(4,25,3) (5,23,3)..(5,25,3) (6,23,3)..(6,25,3) (6,29,3)..(6,30,3) (7,16,3)..(7,21,3) (7,23,3)..(7,25,3) (7,27,3)..(7,32,3) (8,15,3)..(8,21,3) (8,23,3)..(8,25,3) (8,27,3)..(8,33,3) (9,14,3)..(9,21,3) (9,23,3)..(9,25,3) (9,27,3)..(9,34,3) (10,13,3)..(10,21,3) (10,23,3)..(10,25,3) (10,27,3)..(10,35,3) (11,12,3)..(11,21,3) (11,23,3)..(11,25,3) (11,27,3)..(11,36,3) (12,11,3)..(12,21,3) (12,23,3)..(12,25,3) (12,27,3)..(12,37,3) (13,10,3)..(13,38,3) (14,9,3)..(14,38,3) (15,9,3)..(15,39,3) (16,8,3)..(16,23,3) (16,24,3)..(16,39,3) (17,8,3)..(17,23,3) (17,25,3)..(17,40,3) (18,8,3)..(18,23,3) (18,25,3)..(18,40,3) (19,7,3)..(19,22,3) (19,25,3)..(19,40,3) (20,7,3)..(20,23,3) (20,25,3)..(20,40,3) (21,7,3)..(21,23,3) (21,25,3)..(21,41,3) (22,6,3)..(22,22,3) (22,25,3)..(22,41,3) (23,6,3)..(23,22,3) (23,26,3)..(23,41,3) (24,6,3)..(24,22,3) (24,26,3)..(24,41,3) (25,6,3)..(25,22,3) (25,26,3)..(25,41,3) (26,6,3)..(26,22,3) (26,26,3)..(26,41,3) (27,6,3)..(27,22,3) (27,26,3)..(27,41,3) (28,6,3)..(28,22,3) (28,26,3)..(28,41,3) (29,6,3)..(29,22,3) (29,26,3)..(29,41,3) (30,6,3)..(30,22,3) (30,26,3)..(30,41,3) (31,6,3)..(31,22,3) (31,26,3)..(31,41,3) (32,6,3)..(32,21,3) (32,26,3)..(32,41,3) (33,6,3)..(33,21,3) (33,27,3)..(33,41,3) (34,6,3)..(34,21,3) (34,27,3)..(34,41,3) (35,5,3)..(35,20,3) (35,29,3)..(35,41,3) (36,5,3)..(36,16,3) (36,30,3)..(36,41,3) (37,6,3)..(37,11,3) (37,32,3)..(37,40,3) (38,37,3)..(38,40,3)  }
zone : immune {   (3,23,4)..(3,25,4) (4,23,4)..(4,25,4) (5,23,4)..(5,25,4) (6,23,4)..(6,25,4) (6,29,4)..(6,30,4) (7,16,4)..(7,21,4) (7,23,4)..(7,25,4) (7,27,4)..(7,32,4) (8,15,4)..(8,21,4) (8,23,4)..(8,25,4) (8,27,4)..(8,33,4) (9,14,4)..(9,21,4) (9,23,4)..(9,25,4) (9,27,4)..(9,34,4) (10,13,4)..(10,21,4) (10,23,4)..(10,25,4) (10,27,4)..(10,35,4) (11,12,4)..(11,21,4) (11,23,4)..(11,25,4) (11,27,4)..(11,36,4) (12,11,4)..(12,21,4) (12,23,4)..(12,25,4) (12,27,4)..(12,37,4) (13,10,4)..(13,38,4) (14,9,4)..(14,38,4) (15,9,4)..(15,39,4) (16,8,4)..(16,23,4) (16,24,4)..(16,39,4) (17,8,4)..(17,23,4) (17,25,4)..(17,40,4) (18,8,4)..(18,23,4) (18,25,4)..(18,40,4) (19,7,4)..(19,22,4) (19,25,4)..(19,40,4) (20,7,4)..(20,23,4) (20,25,4)..(20,40,4) (21,7,4)..(21,23,4) (21,25,4)..(21,41,4) (22,6,4)..(22,22,4) (22,25,4)..(22,41,4) (23,6,4)..(23,22,4) (23,26,4)..(23,41,4) (24,6,4)..(24,22,4) (24,26,4)..(24,41,4) (25,6,4)..(25,22,4) (25,26,4)..(25,41,4) (26,6,4)..(26,22,4) (26,26,4)..(26,41,4) (27,6,4)..(27,22,4) (27,26,4)..(27,41,4) (28,6,4)..(28,22,4) (28,26,4)..(28,41,4) (29,6,4)..(29,22,4) (29,26,4)..(29,41,4) (30,6,4)..(30,22,4) (30,26,4)..(30,41,4) (31,6,4)..(31,22,4) (31,26,4)..(31,41,4) (32,6,4)..(32,21,4) (32,26,4)..(32,41,4) (33,6,4)..(33,21,4) (33,27,4)..(33,41,4) (34,6,4)..(34,21,4) (34,27,4)..(34,41,4) (35,5,4)..(35,20,4) (35,29,4)..(35,41,4) (36,5,4)..(36,16,4) (36,30,4)..(36,41,4) (37,6,4)..(37,11,4) (37,32,4)..(37,40,4) (38,37,4)..(38,40,4)  }

[epithelial-cell]

rule : {~initial := 0; ~state := $s; ~virion := $v; ~uptake_rate := $ur; ~immune_signal := $is;} 
	   {$immunity_rate := uniform(0.0, 1); $ma := round(random*100);}
 	   1 
 	   {(0,0,0)~initial = -1}

rule : {~state := $s; ~uptake_rate := $ur; ~immune_signal := $is;} 
	   {$s := if(random < 0.5*((0,0,-1)~virus/100) + 0.5*(1 - (0,0,1)~cytokine_secreting/1000)
				 and (0,0,-1)~virus > 0, 2, 1);
		$ur := if($s = 1, 0.1, 0); 
		$is := if($s = 1, 0, 1);
	   } 
	   37500 
	   {(0,0,0)~state = 1 }

rule : {~state := $s;  ~virion:= $v; ~uptake_rate := 0; } 
	   { $s := if(random > (0,0,1)~cytokine_secreting/1000, 3, 4);  $v := if($s = 3, $ma ,0 ); } 
	   37500 
	   {(0,0,0)~state = 2}

rule : { ~state := $s; ~immune_signal := 0; } { $s := 0; } 150000 { (0,0,0)~state = 4 }

rule : { ~state := $s;  ~virion:= $v; ~uptake_rate := $ur; ~immune_signal := 0;} 
	   { $s := 0; $v := 0; 	$ur := 0.2;} 
	   600000 
	   { (0,0,0)~state = 3 }

rule : {~virion:= 0;} 150000 {t}

[virus]
rule : {~initial := 0; ~virus:= $vi; ~virus_movement := (round($vi*0.8));} 1 {(0,0,0)~initial = -1}
rule : { ~virus := $vi; ~virus_movement := $vim;} 
	   { $vim := if(round($vi*0.8) > 0, round($vi*0.8), 0);
	   	 $vir := round(((1,0,0)~virus_movement + (-1,0,0)~virus_movement + (0,1,0)~virus_movement + (0,-1,0)~virus_movement)/4);
	   	 $vi := max(0,$vi + round((0,0,1)~virion/4 - $vi*(0,0,1)~uptake_rate) - $vim + $vir); 
	   } 
	   37500 
	   { t }

[cytokine]
rule : {~initial := 0; ~cytokine_secreting := $cs; ~cytokine_movement := round($cs*0.9);} 1 {(0,0,0)~initial = -1}

rule : { ~cytokine_secreting := $cs; ~cytokine_movement := $cm; }
	   { 
	   	$cm := if( round($cs*0.9) > 0, round($cs*0.9), 0);
	   	$cr := round(((1,0,0)~cytokine_movement + (-1,0,0)~cytokine_movement + (0,1,0)~cytokine_movement + (0,-1,0)~cytokine_movement)/4);
	   	$cs := $cs + round((0,0,-1)~immune_signal +((0,0,1)~immune_signal ))*0.7*1000 - $cm + $cr
	   	- $cs*((0,0,1)~uptake_rate + if((0,0,-1)~state > 0,0.1,0));
	   }
	   37500 
	   {t}


[immune]
rule : {~initial := 0; ~state := 0; ~uptake_rate := 0.1; ~immune_signal := $is;} 1 {(0,0,0)~initial = -1}

rule : {~state := $s; ~immune_signal := $is;} { $s := if(random < (0,0,-1)~cytokine_secreting/3000 
		and (0,0,-1)~cytokine_secreting > 1000, 1, 0); 
		$is := if($s = 1, 0.5, 0);
	   } 
	   150000 
	   {(0,0,0)~state = 0}

rule : {~state := $s;} { $s := 0; } 600000 {(0,0,0)~state = 1}

[local]
rule : {~state := -1;} 150000 {t}