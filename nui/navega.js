
// del cliente a la ui 
window.addEventListener('message',(e) =>{

    if(e.data.estado == 'abrir'){
            document.getElementById("p1").style.display = "block";
    }
    else{
        document.getElementById("p1").style.display = "none";
    }

});



function exit(){
fetch(`https://${GetParentResourceName()}/close`, {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify({
        est: 'dato'
    })
}).then(resp => resp.json()).then(resp => console.log(resp));}