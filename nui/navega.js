
// del cliente a la ui 
window.addEventListener('message',(e) =>{

    if(e.data.estado == 'abrir'){
            document.getElementById("p1").style.display = "block";
    }
    else{
        document.getElementById("p1").style.display = "none";
    }

});



