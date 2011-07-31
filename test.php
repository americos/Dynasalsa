<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<?php echo gmdate("M d Y");
?>

<p>

<?php
$salary=15000;
$taxrate=20;
$pension = 3;

$beforepensionincome = $salary - (($salary / 100) * $taxrate);
$afterpensionincome = $beforepensionincome - (($beforepensionincome/100)*$pension);

echo "before pension deductions: $beforepensionincome<br>";
echo "After Pension deductions: $afterpensionincome<br>";

echo PHP_OS;
?>



</body>
</html>
