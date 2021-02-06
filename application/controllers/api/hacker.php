<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*

//APPLICATIONS
CoolBlue Rotterdam: Senior PHP Developer
*Reasons For Rejection*
1.Prefered Someone with Good knowledge of Agile Skills
2.Says i had difficulty understanding her sometime

*Some Positives*
1.Says she likes how exicited and euthusiatic i was


Bonify via Honeypot(Berlin Germany) ---Awaiting
Book.com -  Awaiting

INTERVIEWS
Answer to the question: TELL ME ABOUT YOURSELF
What they want to know is if you
posses the art of communication.
Can you engage, can you keep them interested,
can you tell a story

Rules:
1. Keep it brief
Tell them a story about your professional background
and Educational background
E.g
How you started your career
Some accomplishments
Your motivation
What you can do for them
What you want for the future,
Why you are best suited for the job

Also give some personal detail to add color
your life doesnt revolve exclusively around work
eg, talk about hobbies

Sample Example.
I would describe myself as someone who is versatile
and determined, and someone who loves learning, 
im creative open-minded and easy going,
and i enjoy working with others
For the last six years ive been working at xyz company...

ref_link
https://www.youtube.com/watch?v=ge9QOO_F8Tg




// Complete the solve function below.
function solve($meal_cost, $tip_percent, $tax_percent) {


}

$stdin = fopen("php://stdin", "r");

fscanf($stdin, "%lf\n", $meal_cost);

fscanf($stdin, "%d\n", $tip_percent);

fscanf($stdin, "%d\n", $tax_percent);

solve($meal_cost, $tip_percent, $tax_percent);

fclose($stdin);




Python

Numeric Arrays ==> Lists & Tuple
However lists are mutable, tuples are 

Associate Arrays ==> Associative arrays

*/
class Hacker extends CI_Controller {
	/*
	
	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

	Find the sum of all the multiples of 3 or 5 below 1000.

	*/
	public function convertNumberToWord($num = false)
	{
		$num = str_replace(array(',', ' '), '' , trim($num));
		if(! $num) {
			return false;
		}
		$num = (int) $num;
		$words = array();
		$list1 = array('', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven',
			'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
		);
		$list2 = array('', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'hundred');
		$list3 = array('', 'thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion',
			'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion',
			'quindecillion', 'sexdecillion', 'septendecillion', 'octodecillion', 'novemdecillion', 'vigintillion'
		);
		$num_length = strlen($num);
		$levels = (int) (($num_length + 2) / 3);
		$max_length = $levels * 3;
		$num = substr('00' . $num, -$max_length);
		$num_levels = str_split($num, 3);
		for ($i = 0; $i < count($num_levels); $i++) {
			$levels--;
			$hundreds = (int) ($num_levels[$i] / 100);
			$hundreds = ($hundreds ? ' ' . $list1[$hundreds] . ' hundred' . ' ' : '');
			$tens = (int) ($num_levels[$i] % 100);
			$singles = '';
			if ( $tens < 20 ) {
				$tens = ($tens ? ' ' . $list1[$tens] . ' ' : '' );
			} else {
				$tens = (int)($tens / 10);
				$tens = ' ' . $list2[$tens] . ' ';
				$singles = (int) ($num_levels[$i] % 10);
				$singles = ' ' . $list1[$singles] . ' ';
			}
			$words[] = $hundreds . $tens . $singles . ( ( $levels && ( int ) ( $num_levels[$i] ) ) ? ' ' . $list3[$levels] . ' ' : '' );
		} //end for loop
		$commas = count($words);
		if ($commas > 1) {
			$commas = $commas - 1;
		}
		return implode(' ', $words);
}

	public function generateOddNumbers(){
		$num;
		while(1){
			$num = rand(1,999);
			if($num%2!=0){//odd number
				break;
			}
		}
		return $num;
	}
	public function index(){
		
		//echo $this->convertNumberToWord(2323);
		$this->generateOddNumbers();
		//$size = $this->generateOddNumbers();//set size of the array
		$size = 11;
		$columns = array();$c=0;
		$rows = array();$r=0;
		
		for($i=0;$i<$size;$i++){
			for($j=0;$j<$size;$j++){
				//the first & second conditions makes sure only one S in a row & column
				if(!in_array($i,$rows) && !in_array($j,$columns)){//column has not been used before
					$arr[$i][$j] = "<span style='font-size:25px'>".rand(1,20)."</span>".
					"<small style='font-size:10px'>(".$i."_".$j.")</small>";
					
					$rows[$c]=$i;
					$c++;
					
					$columns[$r]=$j;
					$r++;

				}else{
					$arr[$i][$j] = "<span style='font-size:25px'>*</span>"."<small style='font-size:10px'>(".$i."_".$j.")</small>";
				}
				
			}
			//echo "<br>";
		}
		
		/*
		$arr[0][0] = 1;$arr[0][1] = 2;$arr[0][2] = 3;$arr[0][3] = 4;
		$arr[1][0] = 5;$arr[1][1] = 6;$arr[1][2] = 7;$arr[1][3] = 8;
		$arr[2][0] = 9;$arr[2][1] = 10;$arr[2][2] = 11;$arr[2][3] = 12;
		$arr[3][0] = 13;$arr[3][1] = 14;$arr[3][2] = 15;$arr[3][3] = 16;
		*/
		
		$count = count($arr);
		//rules, cant pick a value from a row twice
		
		for($i=0;$i<$count;$i++){
			for($j=0;$j<$count;$j++){
				
				echo $arr[$i][$j]."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".
				((strlen($arr[$i][$j])==1?"&nbsp;&nbsp;":""));
				
			}
			echo "<br>";
		}
		
	}
	public function index3(){
		$arr = array(-4,3,-9,0,4,1);
		$count = count($arr);
		$positive=0;
		$negative=0;
		$zero=0;
		for($i=0;$i<$count;$i++){
			if($arr[$i]>0){//positive
				$positive++;
			}elseif($arr[$i]<0){//negative
				$negative++;
			}elseif($arr[$i]==0){//equal to zero
				$zero++;
			}
		}
		echo round(($positive / $count),6)."<br>";
		echo round(($negative / $count),6)."<br>";
		echo round(($zero / $count),6)."<br>";
	}
	public function index2(){
		//PHP Compression library
		//compression effects is best seen in very long strings
		//Use gzdeflate($str,  $comp_level) ==> to compress strings,
		//Use gzinflate($str) ==> to de-compress them back,
		$str = "ofoefulechristianofoefulechristian";
		echo strlen($str)."<br>";
		//$compressed = gzdeflate($str,  9);
		
		$compressed = gzdeflate($str,  9);
		$compressed = gzdeflate($compressed, 9);
		
		echo strlen($compressed)."<br>";
		echo $compressed."<br>";
		echo gzinflate(gzinflate($compressed));
		//echo gzinflate($compressed);
		/*
		$string = str_repeat('1234567890'.implode('', range('a', 'z')), 3);//48800

		echo strlen($string); //1756800 bytes

		$compressed = gzdeflate($string,  9);
		$compressed = gzdeflate($compressed, 9);

		echo '<br/>'.strlen($compressed).'<br/>';//99 bytes

		echo gzinflate(gzinflate($compressed));
		*/

		
		
		
		
		
		//Given a square matrix, calculate the absolute difference between the sums of its diagonals. 
		/*
		$arr[0][0] = 1;$arr[0][1] = 2;$arr[0][2] = 3;
		$arr[1][0] = 4;$arr[1][1] = 5;$arr[1][2] = 6;
		$arr[2][0] = 7;$arr[2][1] = 8;$arr[2][2] = 9;
		$left_sum=0;$right_sum=0;
		$count=count($arr);
		for($i=0;$i<$count;$i++){
			for($j=0;$j<$count;$j++){
				//for left diagonals, i==j
				if($i==$j){
					$left_sum+=$arr[$i][$j];
				}
				//for right diagonals,
				if(($i+$j)==($count-1)){
					$right_sum+=$arr[$i][$j];
				}
			}
		}
		$abs_diff = abs($left_sum - $right_sum);
		return $abs_diff;
		*/
		/*
			$sum = 0;
			for($i=1;$i<1000;$i++){
				if($i%3==0||$i%5==0){
					$sum+=$i;
				}
			}
			echo $sum;
		*/
		/*
			number to word conversion
		*/
		
		//without using strlen, count the number of words in a string
		
		/*
			Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
			1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
			By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
		
		$start=1;$next=2;//initialize first two number in sequence
		$newarray[0]=$next;//initial array to hold even-valued terms
		$c=1;
		$max=4000000;//set max possible value
		for($i=1;$i<$max;$i++){//max possible outcome
			$new=$start+$next;//generate the new number
			if($new<=$max){//then check if new number is less than or equal to max
				if($new%2==0){//if new number is even, save in array
					$newarray[$c]=$new;
					$c++;//increment pointer in array
				}
				$start=$next;
				$next=$new;
			}else{
				//end loop, if number exceeds max
				break;
			}
		}
		echo array_sum($newarray);
		*/
	}
}
?>
<script>
function toWords(s){
	// Convert numbers to words
	// copyright 25th July 2006, by Stephen 

	// Chapman http://javascript.about.com
	// permission to use this Javascript on 

	// American Numbering System
	var th = ['','thousand','million','billion','trillion'];
	var dg = ['zero','one','two','three','four','five','six','seven','eight','nine']; 
	var tn = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen', 
	'seventeen','eighteen','nineteen']; 
	var tw = ['twenty','thirty','forty','fifty', 'sixty','seventy','eighty','ninety']; 
	
	s = s.toString(); 
	s = s.replace(/[\, ]/g,''); 
	
	if (s != parseFloat(s)) 
		return 'not a number'; 
	var x = s.indexOf('.'); 
	
	if (x == -1) 
		x = s.length; 

	if (x > 15) 
		return 'too big'; 
	
	var n = s.split(''); 
	var str = ''; 
	var sk = 0; 
	
	for (var i=0; i < x; i++) 
	{
		if ((x-i)%3==2) 
		{
			if (n[i] == '1') 
			{
				str += tn[Number(n[i+1])] + ' ';
				i++; 
				sk=1;
			} else if (n[i]!=0) 
			{
				str += tw[n[i]-2] + ' ';
				sk=1;
			}
		} else if (n[i]!=0) 
		{
			str += dg[n[i]] +' '; 
			if ((x-i)%3==0) 
				str += 'hundred ';sk=1;
		} 
		if ((x-i)%3==1) 
		{
			if (sk) 
				str += th[(x-i-1)/3] + ' ';sk=0;
		}
	} 
	if (x != s.length) 
	{
		var y = s.length; 
		str += 'point '; 
		
		for (var i=x+1; i<y; i++) 
			str += dg[n[i]] +' ';
		} 
		return str.replace(/\s+/g,' ');
	}
</script>