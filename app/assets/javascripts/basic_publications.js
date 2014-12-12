var BasicPublicationForm = {
	currentOption: "",
	previousOption: "",	
	initialTarget: "#basic_publication_publication_type",
	templateTarget: "#form_templates",
	targetForData: "#extra_information",
	
	init: function(){		
		console.log("initializing bp");	
		if(true){				
			var publicationType = $(BasicPublicationForm.initialTarget).val();
			BasicPublicationForm.currentOption = publicationType;
			console.log(publicationType);			
			this.initPublicationTypeSelect();		
			this.populate(publicationType);
		}		
	},
	initPublicationTypeSelect: function(){
		var self = this;		
		$(BasicPublicationForm.initialTarget).on('change', function(){			
			BasicPublicationForm.previousOption = BasicPublicationForm.currentOption;
			BasicPublicationForm.currentOption = $(this).val();; 
			
 			self.movePreviousPublication(BasicPublicationForm.previousOption);
			self.populate(BasicPublicationForm.currentOption);			
		});
	},	
	movePreviousPublication: function(previousPublicationType){
		if(previousPublicationType == 'evento'){
			$(BasicPublicationForm.targetForData).
				children().appendTo("#form_for_event_publication");	
		}
		
	},
	populate: function(publicationType){
		console.log("povoando " + publicationType );		
		if(publicationType == 'evento'){
			$("#form_for_event_publication").children().appendTo(BasicPublicationForm.targetForData);			
		}
	}
};
