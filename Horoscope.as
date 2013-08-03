package
{
	
	/**
	* Author: Mika I. 
	* Created: 2013-08-02
	* 
	* Generate random Horoscopes
	* 
	* Bob Manson originally wrote this program in ksh,
	* then later converted it to emacs lisp.
	* Noah Friedman rewrote parts of the engine.
	* Almost 10 years later, Mika I. ported it to AS3 :)
	* 
	* Samples output:
	* Beware of a wallflower bearing a large dog. 
	* Someone you fondled gently 5 or 11 times at Maria Shriver's wedding will give you pennies today. 
	* Someone you know will splode today. Beware of two other people put together bearing a small bomb. 
	* Today is not a good time for gossiping. God-fearing Crustaceans will piss on the bed this week. 
	* You will be in conflict with Leo since Venus has moved into Pisces. 
	* This week romance would be a good thing to ponder. You'll someday be sad. 
	* Your lucky numbers are 20, 30, and 40. Put your dog on hold this week. 
	* Play Sam and Max Hit the Road with the help of the man. Hours from now doing something may seem futile. 
	* Your efforts at thinking turn out to be quite worthwhile. You'll often be gay. 
	* Your lucky number today is 29842924728.  Look for it everywhere. 
	* You might want to consider talking with piglets. 
	* Stealing a tetrodotoxin should not be done while wearing a girdle. 
	* Your piglet will piss on the bed soon. 
	* You'll sometimes be unhappy. Don't forget, it's only 366 days at most until Christmas. 
	* Many people will ask you for advice about becoming pregnant. 
	* Fortune (good or bad) is in the air. You will discover that the wives are catching colds. 
	* Your mom will eventually reveal itself to be the mailman. 
	* Many people will ask you for advice about reading mail. 
	* You will meet a warmonger this week. 
	* Your chicken will be fluctuating in the next 4 or 9 years. 
	* Your wonderful pet dog will be a sick friend. 
	*/
    
	import flash.display.Sprite;
	
	public class Horoscope extends Sprite
	{
		
		private var paragraph:Array;
		private var sentence:Array;
		private var sentence2:Array;
		private var personVerb:Array;
		private var thingVerb:Array;
		private var bullshit:Array;
		private var consider:Array;
		private var event:Array;
		private var times:Array;
		private var greeted:Array;
		private var vagueNumber:Array;
		private var moneyStates:Array;
		private var planet:Array;
		private var zodPlace:Array;
		private var number:Array;
		private var side:Array;
		private var zodiac:Array;
		private var luckyNum:Array;
		private var person:Array;
		private var animal:Array;
		private var action:Array;
		private var thingsToDo:Array;
		private var time:Array;
		private var atTime:Array;
		private var toTry:Array;
		private var value:Array;
		private var likeValue:Array;
		private var noun:Array;
		private var doThing:Array;
		private var verb:Array;
		private var evilPeople:Array;
		private var evilPerson:Array;
		private var thing:Array;
		private var discovery:Array;
		private var state:Array;
		private var stateNoun:Array;
		private var change:Array;
		private var color:Array;
		private var when:Array;
		private var adjective:Array;
		private var relationship:Array;
		
		public function Horoscope()
		{

			paragraph =
				[
					["*sentence.", "*sentence2.", "*sentence.", "*sentence2.", "You'll", "*when", "be", "*state.", "*luckyNum."],
					["*sentence.", "*sentence2.", "*sentence2.", "You'll", "*when", "be", "*state."],
					["*sentence2.", "*sentence.", "*sentence.", "*sentence2.", "You'll", "*when", "be", "*state."]
				];

			sentence = 
				[
					["!person", "will", "*personVerb", "*atTime"],
					["!atTime", "is not a good time for", "*action"],
					["Your", "*noun", "will", "*verb", "soon"],
					["!thing", "is in the air"],
					["You will discover that", "*discovery"],
					["!atTime", "will be a good time for", "*action"],
					["Be sure to", "*verb", "before you find out that", "*discovery"],
					["Your programs will start", "*action"],
					["Look for", "*person", "with one eye"],
					["Don't let", "*person", "*doThing", "with your", "*noun"],
					["Listen to your", "*noun", "*atTime"],
					["Your", "*noun", "will be", "*change", "in the next", "*vagueNumber", "*time"],
					["!thingsToDo"],
					["You might want to consider", "*action"],
					["!time", "from now", "*action", "may seem", "*likeValue"],
					["Do not", "*verb", "*atTime"],
					["!person", "will be a", "*adjective", "*relationship"],
					["!atTime", "*person", "will", "*thingsToDo"],
					["Don't", "*thingsToDo", "*atTime"],
					["Put your", "*noun", "on hold", "*atTime"],
					["Loaning money to your", "*relationship", "will bring dividends"],
					["*bullshit"]
				];
			
			sentence2 =
				[
					["!person", "will eventually reveal itself to be", "*person"],	
					["Your efforts at", "*action", "turn out to be", "*value"],	
					["Many people will ask you for advice about", "*action"],	
					["!person", "will think of you as", "*person"],	
					["Beware of", "*person", "bearing", "*thing"],	
					["Loving your", "*noun", "now will turn out to be", "*value", "after a few", "*time"],	
					["Don't forget to", "*thingsToDo"],	
					["!thingsToDo", "with the help of", "*person"],	
					["Never", "*thingsToDo", "without", "*action", "first"],	
					["Do something nice for", "*person", "*atTime"],	
					["You will meet", "*person", "this week"],	
					["Your", "*noun", "will need to be", "*thingVerb", "*atTime"],	
					["!evilPeople", "will", "*verb", "*atTime"],	
					["!atTime", "*thing", "would be a good thing to", "*consider"],	
					["Stealing a", "*noun", "should not be", "*toTry"],	
					["Your finances will become", "*moneyStates", "in the next several", "*time"],	
					["*bullshit"]
				];
			
			personVerb = 
				[
					["sit next to you on the bus"],	
					["give you good advice"],	
					["become pregnant"],	
					["kiss you"],	
					["make you feel warm and fuzzy"],	
					["eat your mail"],	
					["lift weights"],	
					["hit you"],	
					["give you pennies"],	
					["share intimate feelings"],	
					["throw up"],	
					["splode"]
				];
			
			thingVerb = 
				[
					["replaced"], 
					["repaired"], 
					["opened up"], 
					["rewired"], 
					["burped"], 
					["kicked"], 
					["bathed"], 
					["kissed"], 
					["petted"], 
					["scrubbed"], 
					["rubbed"], 
					["massaged"], 
					["fondled"], 
					["excommunicated"], 
					["removed"], 
					["destroyed"], 
					["eaten"], 
					["turned"]
				];
			
			bullshit = 
				[
					["As", "*planet", "moves into", "*zodPlace,", "be careful of your relationship with your", "*relationship"],
					["You will be in conflict with", "*zodiac",	"since", "*planet", "has moved into", "*zodiac"]
				];
			
			planet = 
				[
					["Mercury"], 
					["Venus"], 
					["Mars"], 
					["Jupiter"], 
					["Saturn"], 
					["Uranus"], 
					["Neptune"], 
					["Pluto"], 
					["the Moon"]
				];
			
			zodPlace =
				[
					["*zodiac"], 
					["the", "*number", "house of", "*zodiac"], 
					["the", "*side", "of", "*zodiac"]
				];
			
			number =
				[
					["first"], 
					["second"], 
					["third"], 
					["11th"], 
					["392nd"]
				];
			
			side =
				[
					["left-hand quadrant"], 
					["right-hand quadrant"], 
					["upper half"], 
					["lower half"], 
					["middle"]
				];
			
			zodiac =
				[
					["Pisces"], 
					["Sagitarius"], 
					["Cancer"], 
					["Leo"], 
					["Gemini"], 
					["Taurus"], 
					["Scorpio"], 
					["Aquarius"], 
					["Capricorn"], 
					["Virgo"]
				];
			luckyNum =
				[
					["Your lucky number today is 29842924728.  Look for it everywhere"], 
					["12 is your lucky number"], 
					["Your lucky numbers are 20, 30, and 40"], 
					["Don't forget, it's only 366 days at most until Christmas"]
				];
			
			person = 
				[
					["a stranger"], 
					["a friend"], 
					["your", "*relationship"], 
					["someone you", "*greeted", "*times", "at", "*event"], 
					["your", "*animal"], 
					["your teddy bear"], 
					["your mom"], 
					["the mailman"], 
					["the man"], 
					["your wonderful pet", "*animal"], 
					["your child"], 
					["your spouse"], 
					["God"], 
					["a wallflower"], 
					["a lout"], 
					["a warmonger"], 
					["two other people put together"], 
					["someone you know"]
				];
			
			animal =
				[
					["dog"], 
					["cat"], 
					["horse"], 
					["elephant"], 
					["piglet"], 
					["mouse"], 
					["rat"], 
					["cheetah"], 
					["giraffe"], 
					["mutant shrimp"], 
					["talking fish"], 
					["crustacean"], 
					["moose"], 
					["algae"], 
					["amoeba"]
				];
			
			action =
				[
					["moving"], 
					["thinking"], 
					["making love"], 
					["straining in the toilet"], 
					["washing clothes"], 
					["becoming pregnant"], 
					["doing something"], 
					["asking for a raise"], 
					["starting a revolution"], 
					["becoming paranoid"], 
					["reading mail"], 
					["talking with piglets"], 
					["balancing a checkbook"], 
					["talking"], 
					["gossiping"], 
					["stealing from the company"], 
					["buying a new computer"], 
					["sleeping"], 
					["using a Torx \#9 wrench"], 
					["telephoning"], 
					["not answering the phone"], 
					["staying where you are"], 
					["cleaning the fridge"], 
					["wearing clothes"]
				];
			
			thingsToDo = 
				[
					["set your clock"], 
					["get married", "*atTime"], 
					["dye your hair"], 
					["move away"], 
					["exercise"], 
					["have your", "*noun", "spayed or neutered"], 
					["watch Dr. Who"], 
					["watch Wheel of Fortune"], 
					["see your psychologist"], 
					["talk to your plants"], 
					["pet piglet"], 
					["clean your apartment"], 
					["think about financial concerns"], 
					["discuss life with RMS"], 
					["marry the milkperson"], 
					["adjust your girdle"], 
					["tune your stereo"], 
					["tune your car"], 
					["lift weights"], 
					["paint"], 
					["draw"], 
					["play Sam and Max Hit the Road"], 
					["play Car Bomb"]
				];
			
			time = 
				[
					["months"], 
					["days"], 
					["years"], 
					["seconds"], 
					["minutes"], 
					["hours"]
				];
			
			atTime =
				[
					["today"], 
					["tomorrow"], 
					["this week"], 
					["this month"]
				];
			
			toTry =
				[
					["attempted lightly"], 
					["tried without the advice of a doctor"], 
					["considered unusual"], 
					["done under the influence of alcohol"], 
					["achieved with the help of ZenIRC"], 
					["done while wearing a girdle"], 
					["stared at"], 
					["questioned by", "*person"], 
					["performed by a", "*relationship"], 
					["shown on TV"], 
					["demonstrated"], 
					["shown to small children"]
				];
			
			value = 
				[
					["worthless"], 
					["futile"], 
					["mysterious"], 
					["quite worthwhile"],
					["costly"], 
					["a good idea"], 
					["unhealthy"],
					["a positive step in the right direction"]
				];
			
			likeValue = 
				[
					["worthless"], 
					["futile"], 
					["mysterious"],
					["quite worthwhile"], 
					["expensive"],
					["like a good idea"], 
					["unhealthy"],
					["like a positive step in the right direction"]
				];
			
			noun =
				[
					["dog"], 
					["cat"], 
					["anteater"], 
					["chicken"], 
					["television"],
					["computer"], 
					["telephone"], 
					["abode"], 
					["vehicle"], 
					["sister"],
					["rhinocerous"], 
					["piglet"], 
					["alien"], 
					["tetrodotoxin"],
					["dinoflagellate"], 
					["endothermic therapsid"],
					["life insurance"], 
					["child"]
				];
			
			doThing = 
				[
					["brush its teeth"], 
					["take a bath"], 
					["make love"],
					["mow the lawn"], 
					["go shopping"], 
					["dig"],
					["rotate the TV antenna"], 
					["eat worms"],
					["genetically engineer your plants"],
					["drink a bath"],
					["get life insurance from a TV ad"]
				];
			
			verb = 
				[
					["become pregnant"], 
					["eat holes in your carpet"],
					["piss on the bed"], 
					["eat watermelon"],
					["sell your house"],
					["give away your", "*relationship", "to", "*evilPeople"],
					["talk to piglet"], 
					["get a", "*noun"],
					["have financial problems"],
					["adjust your girdle"], 
					["sit quietly"], 
					["sleep"],
					["drive"], 
					["put money in the bank"], 
					["play games"]
				];
			
			evilPeople = 
				[
					["Iranians"], 
					["Iraquis"], 
					["Americans"],
					["god-fearing Crustaceans"], 
					["aliens"], 
					["'Bob'"],
					["the Doctor"], 
					["Frenchmen"], 
					["Germans"],
					["piglet-haters"], 
					["aliens from Mars"]
				];
			
			evilPerson = 
				[
					["Iranian"], 
					["Iraqui"], 
					["American"],
					["god-fearing Crustacean"], 
					["alien"], 
					["bobbie"],
					["loon"], 
					["Frenchman"], 
					["Germans"], 
					["piglet-haters"],
					["alien from Mars"], 
					["Republican"], 
					["Democrat"],
					["Communist"], 
					["Socialist"], 
					["idiot"], 
					["artist"]
				];
			
			thing = 
				[
					["romance"], 
					["nasty body odor"],
					["fortune (good or bad)"], 
					["a gift"],
					["a small bomb"], 
					["a flight recorder"],
					["a large dog"], 
					["a piglet"], 
					["a steering wheel"],
					["a toaster oven with a built-in clock radio"],
					["an egg"], 
					["food"], 
					["ice"], 
					["bad weather"],
					["good weather"], 
					["milk"], 
					["a deadly disease"]
				];
			
			discovery =
				[
					["you are married"], 
					["you have two left feet"],
					["Nazi Germany is your country of birth"],
					["you do not have a pet"],
					["several Conspiracy members are following you"],
					["the wives are catching colds"],
					["your", "*relationship", "is confused"],
					["your spouse is an alien"],
					["you lost your piglet"],
					["someone thinks of you as Liza Minelli"],
					["you are Murphy Brown's child"],
					["your long-lost brother is lost"],
					["Michael Jackson is abusing your", "*noun"],
					["*relationship", "was responsible for the overthrow of Communist Russia"],
					["your", "*relationship", "is a", "*evilPerson"],
					["you're originally from", "*planet"],
					["using a", "*noun", "as a sex toy is", "*value"]
				];
					
			state = 
				[
					["happy"], 
					["unhappy"], 
					["confused"], 
					["sad"],
					["enlightened"], 
					["a Borg"], 
					["fulfilled"], 
					["gay"], 
					["tall"],
					["ill"], 
					["shrunk"], 
					["abused"], 
					["tired"], 
					["broke"]
				];
			
			stateNoun = 
				[
					["happiness"], 
					["unhappiness"], 
					["confusion"], 
					["sadness"],
					["enlightenment"], 
					["bogosity"], 
					["fulfillment"], 
					["gaiety"], 
					["tallness"],
					["illness"], 
					["lossage"], 
					["bozosity"], 
					["weariness"]
				];

			change	=
				[
					["fluctuating"], 
					["changing"],
					["turning", "*color"],
					["turning"], 
					["*color"]
				];
			
			color = 
				[
					["green"], 
					["red"], 
					["blue"], 
					["black"], 
					["brown"],
					["yellow"], 
					["orange"], 
					["fuscia"], 
					["mauve"], 
					["plaid"]
				];
			
			when = 
				[
					["soon"], 
					["eventually"], 
					["later"], 
					["never"], 
					["someday"], 
					["often"],
					["fall into a state of", "*stateNoun,", "but eventually"],
					["sometimes"], 
					["perhaps in a few", "*time"],
					["once in a while"]
				];
			
			adjective = 
				[
					["good"], 
					["bad"], 
					["indifferent"], 
					["valuable"],
					["expensive"], 
					["sick"], 
					["unhappy"]
				];
			
			relationship = 
				[
					["friend"], 
					["enemy"], 
					["relative"], 
					["coworker"],
					["slave"], 
					["mother"], 
					["sister"], 
					["spouse"], 
					["owner"],
					["parent"], 
					["child"]
				];
			
			moneyStates = 
				[
					["unstable"], 
					["positive"], 
					["financial"], 
					["good"],
					["bad"], 
					["important"], 
					["unimportant"], 
					["exposed"],
					["significant"]
				];
			
			vagueNumber = 
				[
					["few"], 
					["several"], 
					["4 or 9"], 
					["1 or 7"]
				];
			
			greeted = 
				[
					["said hello to"], 
					["shook hands with"], 
					["met"],
					["talked to"], 
					["screwed"], 
					["kissed"], 
					["fondled gently"],
					["blessed"], 
					["gave an organ to"]
				];
			
			times = 
				[
					["once"], 
					["twice"], 
					["a few times"], 
					["5 or 11 times"],
					["3 to 6 times"], 
					["thrice"], 
					["988,122 times"]
				];
			
			event =
				[
					["a party"], 
					["a gathering of some sort"], 
					["a social reception"], 
					["an intimate office party"], 
					["Maria Shriver's wedding"], 
					["Michael Jackson's trial"], 
					["a bad frat party"], 
					["Underwear City"]
				];
			
			consider = 
				[
					["ponder"], 
					["think about"], 
					["consider"], 
					["try"],
					["make a stab at"], 
					["meditate upon"],
					["look at deeply"]
				];
			
			trace( generateHoroscope() );

		}
		
		private function generateHoroscope():String
		{
			var buffer:String = "";
			var p:Array = randomMember("paragraph");
			for ( var i:int = 0; i < p.length; i++ ) {
				buffer += iterateList(p[i]);
			}
			return buffer;
		}
		
		/**
		 * Return a random member of list A. */
		private function randomMember(listName:String):Array
		{
			return this[listName][Math.floor(Math.random()*this[listName].length)]
		}
				
		/** 
		 * Iterate over list A, replacing all strings beginning with a '*' or '!'
		 * with a random selection from the appropriate list. */
		private function iterateList (part:String):String
		{
			var array:Array;
			var out:String = "";
			var i:int;
			if ( firstChar(part) == "*" ) {
				array = randomMember(cleanPart(part));
				for ( i = 0; i < array.length; i++ ) 
					out += iterateList(array[i]);
			} else if ( firstChar(part) == "!" ) {
				array = randomMember(cleanPart(part));
				for ( i = 0; i < array.length; i++ ) 
					out += iterateList(array[i]);
				out = capitalize(out);
			} else {
				out += cleanPart(part);
			}
			
			if ( lastChar(out) == " " ) out = removeLastChar(out);
			
			if ( lastChar(part) == "." ) {
				out += ". ";
			} else if ( lastChar(part) == "," ) {
				out += ", ";
			} else if ( lastChar(out) != " " ) {  
				out += " ";
			}
			
			return out;
		}
			
		private function capitalize ( string:String ):String
		{
			return string.substring(0, 1).toUpperCase() + string.substring(1, string.length);
		}
		
		private function firstChar ( string:String ):String
		{
			return string.substr(0, 1);
		}
		
		private function lastChar ( string:String ):String
		{
			return string.substr( string.length-1, 1 );
		}
		
		private function removeLastChar ( string:String ):String
		{
			return string.substr(0, string.length-1);
		}
		
		private function cleanPart ( string:String ):String
		{
			var array:Array = string.split('');
		
			if ( array[0] == "*" || array[0] == "!" ) array.shift();
			
			if ( array[array.length-1] == "." || array[array.length-1] == "," )	array.pop();
			
			return array.join('');
		}
	}
}
