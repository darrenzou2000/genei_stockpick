<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Final Project</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
    function debug_to_console($data) {
        $output = $data;
        if (is_array($output))
            $output = implode(',', $output);
    
        echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
    }

    function connect_to_database(){
        $db_host = 'localhost';
        $db_user = 'root';
        $db_password = 'root';
        $db_db = 'genie_stock_picks';
        $db_port = 8889;
        $db_socket = '/Applications/MAMP/tmp/mysql/mysql.sock';

        $mysqli = @new mysqli(
            $db_host,
            $db_user,
            $db_password,
            $db_db,
            $db_port,
            $db_socket
        );
            
        if ($mysqli->connect_error) {
            
            debug_to_console('Errno: '.$mysqli->connect_errno);
            debug_to_console('Error: '.$mysqli->connect_error);
            exit();
        }
        debug_to_console('Success: A proper connection to MySQL was made.');
        return $mysqli;
    }

    //this gets the ticker from the url and puts it in the database for storage
    $ticker = $_GET["ticker"];
    if($ticker){
        store_ticker_to_database($ticker);
    }

    function store_ticker_to_database($ticker){
        $mysqli = connect_to_database();
        $result = $ticker=="genie" ? "TRUE" : "FALSE";

        $sql = "INSERT INTO stock_picks(ticker, result) VALUES('$ticker','$result')";

        $push_result  = $mysqli->query($sql);
        if($push_result){
            debug_to_console('Successfully posted');
        }else{
            debug_to_console('Unable to post') ;
        }

        $mysqli->close();
    }

?>
    <div id= main-container>
        <h1 id = title>Genie - Stockinator</h1>
        <form action="/" method="Get">
            <input id=ticker_input type="text" name="ticker" placeholder = "Stock or Crypto Ticker">
            <button id="flamingButton" type="submit" value="Inquire">inquire</button>
        </form>
        <br>
        <div id="genie-holder">
            <div id="text-holder">
                <p id="genie_text"></p>
                <button id="genie_button"> <a href="result.html">What happens when I buy Genie Coins?</a>  </button>
            </div>
            <img id="genie" src="/assets/idle_genie.png" alt="" srcset="">
        </div>
        
        <button><a href="point_harvestor_9000.html">Click for free pointz</a></button>
    </div>
    <script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"></script>


  <script src="script.js"></script>
</body>
</html>