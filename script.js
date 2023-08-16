
const urlParams = new URLSearchParams(window.location.search);

const ticker = urlParams.get("ticker");

console.log(ticker)
if(ticker){
    stage1(ticker);
}else{
    $('#genie_text').text("Inquire about what? Your future? It's wonderful!");
    $('#genie').attr('src', '/assets/gotcha_genie.png');
}


async function delay(ms) {
    await new Promise(resolve => setTimeout(resolve, ms));
}


async function stage1(ticker){
    $('#ticker_input').val(ticker);
    $('#genie_text').text("...");
    let bad_response = [" is TERRIBE, its down bad, a garenteed stinker, DO NOT BUY",
                        "? WTF is even is that?",
                        " that one's a classic, but still bad, Genie Coins are WAYY better",
                        " might be good, but no, it's BAD",
                        "??????? WHAT? ARE YOU TRYING TO LOSE MONEY?",
                        ".. ahh I see.. I SEEE, but you know what I don't see? This having a future"
                        ];

    let good_response = "? YES YES YES GENIE COINS are the BEST, they have the brightest future, BUY, BUY IT NOW, DO NOT HESITATE";

    $('#genie').attr('src', '/assets/thinking_genie.png');
    
    await delay(3000);

    if(ticker.toLowerCase() == "genie" ||ticker.toLowerCase() == "genie coin" ){
        $('#genie_text').text(ticker + good_response).css('font-size', '25px');
        $('#genie').attr('src', '/assets/gotcha_genie.png');
        $('#genie_button').css('display', 'block')
    }else{
        $('#genie_text').text(ticker + bad_response[Math.random() * bad_response.length | 0])
        $('#genie').attr('src', '/assets/mad_genie.png');
    }
    $('#genie_text').addClass('animate');

}
