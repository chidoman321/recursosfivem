window.addEventListener('message', (event) => {
    if (event.data.display === true && event.data !== undefined) {
        $('#container').show();
    }
    else
    {
       
    }
});