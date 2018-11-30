import "turns";


		/* MAIN FUNCTION */
function FindMiddle() {
	findWalls();
	while (noBeepersPresent()) {
		locateMiddle();
	}
	collectExcessBeepers();
	foundCenter();
	if (facingEast()) {
		turnLeft();
	} else {
		turnRight();
	}
	pickBeeper();
	findWalls();
	while (noBeepersPresent()) {
		locateMiddle();
	}
	collectExcessBeepers();
	foundCenter();
}




		/* SUB-FUNCTIONS */

			/* Find Walls */

function findWalls() {
	putBeeper();
	while(frontIsClear()) {
		move();
	}
	turnAround();
	putBeeper();
	move();
}


			/* Locate Middle */

function locateMiddle() {
	while (frontIsClear() && noBeepersPresent()) {
   move();
  }
  turnAround();
  move();
  putBeeper();
  move();
}



			/* Collect Excess Beepers */

function collectExcessBeepers() {
	while (frontIsClear()) {
		pickBeeper();
		move();
	}
	pickBeeper();
	turnAround();
	while (noBeepersPresent()) {
		move();
	}
}



			/* Found Center */

function foundCenter() {
	move();
	collectExcessBeepers();
}


