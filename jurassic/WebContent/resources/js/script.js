const dayBtn = document.querySelector(".day");
const nightBtn = document.querySelector(".night");
const weekendBtn = document.querySelector(".weekend");

dayBtn.addEventListener("click", () => {
	alert("Fully secured voyage with an armed protection troop.\nPlant-eating species only.\nRare volcano eruptions\n          Chances to survive: 75%.");
});

nightBtn.addEventListener("click", () => {
	alert("No military troops.\nEach participant received a machine gun (deposit $100).\nMinor or underdeveloped predators may appear unexpectedly.\n          Chances to survive: 50%.");
});

weekendBtn.addEventListener("click", () => {
	alert("Single adventure in the wild. Yust you and your knife.\nYou will jump/be pushed out of the plane (parachute optional, deposit $250).\nGather point - raptors' nest.\nChances to survive: 25%.");
});