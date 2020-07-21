window.addEventListener('message', (event) => {
    if (event.data.type == 'open') {

        if(document.getElementById("container").style.display == "none"){
            document.getElementById("container").style.display = "block";
            console.log(`display block`) ;
        }
        else{
            document.getElementById("container").style.display = "none";
            console.log(`display none`) ;
        }
        
    }
});

function c()
{
    // browser-side JS
fetch(`https://${GetParentResourceName()}/datos`, {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify({
        nom : 'asd',
        ap : '1234'
    })
}).then(resp => resp.json()).then(resp => console.log(resp));
}

document.onkeyup = function (data) 
{
    if(data.which == 27){
        fetch(`https://${GetParentResourceName()}/off`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({ })
        }).then(resp => resp.json()).then(resp => console.log(resp));
}};