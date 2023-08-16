var innited = false;
function init(){
    if(innited)return;


    moveRickRightForever();
    $('#cover').toggle();
    //starts music
    let audio = $('#audioPlayer')[0]; // Get the raw DOM element
    console.log(audio)
    audio.play(); // Start playing the audio
    audio.addEventListener('ended', function() {
        this.currentTime = 0; // Reset the audio to the beginning
        this.volume = audio.volume%0.05;
        this.play(); // Play the audio again
    }, false);
    innited = true;
    console.log(recognition)
}
function moveRickRightForever() {
    $('#rick').animate(
        { left: '+=10px' }, // Adjust the increment as needed
        500, // Animation duration in milliseconds
        'linear', // Linear animation
        function() {
            moveRickRightForever(); // Call the function recursively
        }
    );
}

//plays audio

let recognition = null;

$(document).ready(function() {
    $(document).keydown(function(event) {
        if (event.which === 13) { // "Enter" key's key code is 13
            recognition.start();
        }
    });
    document.addEventListener('keydown', (event) => {
        if (event.code === 'Space') {
            console.log("space pressed")
          showNextStep();
        }
      });
    recognition = new webkitSpeechRecognition() || new SpeechRecognition();
        console.log("voice activation added")
            recognition.lang = 'en-US';
            recognition.continuous = true;
            recognition.onresult = function(event) {
                console.log(event.results);
                const transcript = event.results[event.results.length - 1][0].transcript.toLowerCase();
                console.log(transcript)
                if (transcript.includes('911') || transcript.includes('9/11')) {
                    addBoomImage();
                }
                if (transcript.includes('i want to buy') || transcript.includes('bye')) {
                    init();
                }
            };
});

var steps_images = [
    "/assets/69.png",
    "/assets/harvard.png",
    "/assets/daddy_with_milk.jpg",
    "/assets/micheal.png",
    "/assets/cure_cancer.jpeg",
    "/assets/kids.jpeg",
    "/assets/nogamenolife.jpg",
    "/assets/Technoblade.png",
    "/assets/best_girl.png"
]


var current_step =0;

function showNextStep(){
    if(!innited)return;
    console.log($('#imageArea').width()/2)
    let src = steps_images[current_step];

    const newImage = $('<img>');
    let x = random(0, $('#imageArea').width()/3)
    let y = random(0, $('#imageArea').height()/4)
    newImage.attr('src', src);
    newImage.css({
        position: 'absolute',
        left: x+'px', 
        top: y+'px'  
    });

    $('#imageArea').append(newImage);
    current_step+=1;
}


function random(min,max){
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

async function addBoomImage(){
    let explosion = $('#explosionSound')[0];
    explosion.volume=1;
    const newImage = $('<img>');
    newImage.attr('src', '/assets/explosion.gif');
    newImage.css({
        position: 'absolute',
        margin:'auto',
        top: "0",
        bottom: "0",
        left: "0",
        right:"0",
        width: "800px",
        height: "800px",

    });
    explosion.play()
    $('#imageArea').append(newImage);
    setTimeout(function() {
        newImage.remove();
    }, 2000);

    const newImage2 = $('<img>');
    newImage2.attr('src', '/assets/explosion.gif');
    newImage2.css({
        position: 'absolute',
        margin:'auto',
        top: "0",
        bottom: "0",
        left: "0",
        right:"0",
        width: "800px",
        height: "800px",
    });
    setTimeout(function() {
        explosion.play()
        
        $('#imageArea').append(newImage2);
        setTimeout(function() {
            newImage2.remove();
        }, 2000);

    }, 10000);
}
