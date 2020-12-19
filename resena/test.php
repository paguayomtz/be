<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/star-rating.css">
    <script src="../js/star-rating.min.js"></script>
    <title>Document</title>
</head>
<body>


    <select id="star-rating">
        <option value="">Select a rating</option>
        <option value="5">Excellent</option>
        <option value="4">Very Good</option>
        <option value="3">Average</option>
        <option value="2">Poor</option>
        <option value="1">Terrible</option>
    </select>





<script>
    // Using vanilla javascript:
    var starrating = new StarRating( document.getElementById( 'star-rating' ));
    // OR - Using jQuery:
    $( '#star-rating' ).starrating();


    $( '#star-rating' ).starrating({
        clearable : true,
        initialText: "Click to Rate",
        onClick : null,
        showText : true,
    });

    $('#star-rating').material_select(); 
</script>
    
</body>
</html>