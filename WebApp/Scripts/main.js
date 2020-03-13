window.onload = function () {
    if (window.location.href.includes('HojaMatricula.aspx')) {
        document.querySelector('footer').classList.add('d-none')
    }
}

function setScheduleId(value) {
    let hf = document.querySelector('#ctl00_ContentPlaceHolder1_hfScheduleId');
    hf.value = value;
    console.log('The new value is: ' + value);
}

function openRemoveClassPopup() {
    debugger;
    console.log(document.querySelector('#reasonModal'));
}