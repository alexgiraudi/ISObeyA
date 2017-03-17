/**
 
 <div class="column__items-wrapper">
														
 
 */

(function ($) {
	
	$( "#SubmitAddCard" ).click(function() {
		
		var l1 = document.createElement("ul");             
	    var txt2 = $("<p></p>").text("Text.");   // Create with jQuery
	    var txt3 = document.createElement("p");  // Create with DOM
	    txt3.innerHTML = "Text.";
	    $("body").append(txt1, txt2, txt3); 
		
	    var newCard = $('<ul></ul>');
	    var newCardElement = $('<div draggable="true" class="card" tabindex="0"></div>');
	    var NewCardElementHeader =  $('<div class="card__header"><div class="estimator"><button class="estimator__estimate-button Low" type="button">L</button></div><img src="./Librairies/iobeya/none.png.jpg" class="avatar"/><div class="assigner"><button class="assigner__assignee">AGI</button></div><span class="blocking-indicator__indicator blocker" >Blocker</span><div class="card__actions"><button   title="Blocker"><i class="glyphicon glyphicon-thumbs-down"></i></button><button   title="Log"><i class="glyphicon glyphicon-pushpin"></i></button><button   title="Edit"><i class="glyphicon glyphicon-edit"></i></button><button   title="Delete"><i class="glyphicon glyphicon-off"></i></button></div></div></div>');
	    var NewCardElementContent = $('<div class="card__body story"><div class="card__body-content" ><div class="card__body-title">Please, new action shall be performed on CASTORE01.</div><div class="card__body-meta" ><div class="TagDueDateOK"><span >September 12, 2017</span></div><div class="card__body-counts"><button >10j</button><button >0%</button></div></div></div></div>');
	    
	    NewCardElementHeader.appendTo(newCardElement);
	    NewCardElementContent.appendTo(newCardElement);
	    newCardElement.appendTo(newCard);
	    newCard.appendTo($("#backlogcolumn"));
	});
 });

