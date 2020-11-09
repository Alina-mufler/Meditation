music = document.getElementById('music');

async function getData() {
    let url = window.location.pathname.substring(0, window.location.pathname.lastIndexOf('/')) + '/music';
    try {
        let response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json;charset=utf-8',
            }
        });

        let res = await response.json();
        await generateMusic(res);
    } catch (e) {
        console.log(e);
    }
}

function generateMusic(res) {

    let html = '';

    for (let i = 0; i < res.length; i++) {
        html += '<audio controls style="width:100%;max-width:600px;">\n' +
            '    <source src="' + window.location.pathname.substring(0, window.location.pathname.lastIndexOf('/')) + '/' + res[i][1] + '" type="audio/mp3">\n' +
            '    Тег audio не поддерживается вашим браузером.\n' +
            '</audio>';
    }

    music.innerHTML = html;
}

if (music != null) {
    getData();
}