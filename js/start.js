var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
	return new bootstrap.Tooltip(tooltipTriggerEl);
});
/*
javascript: (() => {
	let birdForm = document.querySelectorAll('.freebirdFormviewerComponentsQuestionBaseRoot');
	for (const items of birdForm) {
		let anser = items.querySelectorAll('.appsMaterialWizToggleRadiogroupEl');
		let rand = 0 + Math.random() * (anser.length - 0);
		let chooseIndex = Math.floor(rand);
		anser[chooseIndex].click();
	}
})();

javascript: (() => {
	let groups = document.querySelectorAll('.appsMaterialWizToggleRadiogroupGroupContainer');
	for (let items of groups) {
		let anser = items.querySelectorAll('.appsMaterialWizToggleRadiogroupEl');
		let rand = 0 + Math.random() * (anser.length - 0);
		let chooseIndex = Math.floor(rand);
		anser[chooseIndex].click();
	}
	let nextBtn = document.querySelectorAll('.appsMaterialWizButtonPaperbuttonLabel');
	setTimeout(() => {
		for (let item of nextBtn) {
			if (item.innerText == 'Tiếp');
			{
				item.click();
				break;
			}
		}
	}, 200);
})();

javascript: (() => {
	setInterval(() => {
		location.reload();
	}, 5000);
})();

*/