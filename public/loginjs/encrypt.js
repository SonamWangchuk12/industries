
function encrypt(){
    var plainText = document.getElementById('password').value;

    var passphrase="";


    var anysize = 20;//the size of string
    var charset = "abcdefghijklmnopqrstuvwxyz"; //from where to create
    var result="";
    var result2="";
    for( var i=0; i < anysize; i++ ){
                result += charset[Math.floor(Math.random() * charset.length)];
                result2 += charset[Math.floor(Math.random() * charset.length)];
    }
    document.getElementById('random').value=result;
    document.getElementById('random2').value=result2;
    var hash = CryptoJS.SHA256(plainText);
    console.log(hash);
    hash=hash.toString();
    hash=result+hash+result2;


    var hash1=window.btoa(hash);
    document.getElementById('password').value=hash1;
    return true;
    }

