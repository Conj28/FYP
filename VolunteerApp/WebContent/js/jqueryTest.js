 $(document).ready(function() {
	 
	 //modified from here
	 //https://www.encodedna.com/2013/07/dynamically-add-remove-textbox-control-using-jquery.htm
	 
        var iCnt = 0;
        
       $('input[name="numLocs"]').val(+iCnt);
        
        
        // CREATE A "DIV" ELEMENT AND DESIGN IT USING jQuery ".css()" CLASS.
        //var container = $(document.createElement('div')).css({
        //    padding: '5px', margin: '20px', width: '170px', border: '1px dashed',
        //   borderTopColor: '#999', borderBottomColor: '#999',
        //   borderLeftColor: '#999', borderRightColor: '#999'
        //});

        $('#btAdd').click(function() {
            if (iCnt <= 19) {

                iCnt = iCnt + 1;

                // ADD TEXTBOX.
                $('#locSpace').append('<div class="form-group row" id = "loc'+ iCnt +'">\
						<div class="col-sm-5 mb-3 mb-sm-0">\
							<!--  Dropdown menu  select-css sideBySideForm -->\
							<!-- padding not working -  https://stackoverflow.com/questions/22681141/select-option-padding-not-working-in-chrome?lq=1 -->\
							<select id = "locSelect'+ iCnt +'"  name = "locSelect'+ iCnt +'" class="form-control selectPadHeight">\
								<option value="antrim">Antrim</option>\
								<option value="armagh">Armagh</option>\
								<option value="carlow">Carlow</option>\
								<option value="cavan">Cavan</option>\
								<option value="clare">Clare</option>\
								<option value="cork">Cork</option>\
								<option value="derry">Derry</option>\
								<option value="donegal">Donegal</option>\
								<option value="down">Down</option>\
								<option value="dublin">Dublin</option>\
								<option value="fermanagh">Fermanagh</option>\
								<option value="galway">Galway</option>\
								<option value="kerry">Kerry</option>\
								<option value="kildare">Kildare</option>\
								<option value="kilkenny">Kilkenny</option>\
								<option value="laois">Laois</option>\
								<option value="leitrim">Leitrim</option>\
								<option value="limerick">Limerick</option>\
								<option value="longford">Longford</option>\
								<option value="louth">Louth</option>\
								<option value="mayo">Mayo</option>\
								<option value="meath">Meath</option>\
								<option value="monaghan">Monaghan</option>\
								<option value="offaly">Offaly</option>\
								<option value="roscommon">Roscommon</option>\
								<option value="sligo">Sligo</option>\
								<option value="tipperary">Tipperary</option>\
								<option value="tyrone">Tyrone</option>\
								<option value="waterford">Waterford</option>\
								<option value="westmeath">Westmeath</option>\
								<option value="wexford">Wexford</option>\
								<option value="wicklow">Wicklow</option>\
							</select>\
						</div>\
						<div class="col-sm-5 mb-3 mb-sm-0">\
							<input type="text" class="form-control form-control-user"\
							id = "locTxt'+ iCnt +'" name = "locTxt'+ iCnt +'" placeholder="Location" required>\
						</div>\
						<div class="col-sm-2 mb-3 mb-sm-0">\
						<input type="number" class="form-control form-control-user"\
							name="locSpaces'+ iCnt +'" id = "locSpaces'+ iCnt +'" placeholder="Available Spaces" required>\
					</div>\
					</div>')
					
					 $('input[name="numLocs"]').val(iCnt);
					
                // SHOW SUBMIT BUTTON IF ATLEAST "1" ELEMENT HAS BEEN CREATED.
//                if (iCnt == 1) {
//                    var divSubmit = $(document.createElement('div'));
//                    $(divSubmit).append('<input type=button class="bt"' + 
//                        'onclick="GetTextValue()"' + 
//                            'id=btSubmit value=Submit />');
//                }

                // ADD BOTH THE DIV ELEMENTS TO THE "main" CONTAINER.
              //  $('#locSpace').after(container, divSubmit);
            }
            // AFTER REACHING THE SPECIFIED LIMIT, DISABLE THE "ADD" BUTTON.
            // (20 IS THE LIMIT WE HAVE SET)
            
            
//            else {      
//                $(container).append('<label>Reached the limit</label>'); 
//                $('#btAdd').attr('class', 'bt-disable'); 
//                $('#btAdd').attr('disabled', 'disabled');
//            }
        });

        // REMOVE ONE ELEMENT PER CLICK.
        $('#btRemove').click(function() {
            if (iCnt != 0) { $('#loc' + iCnt).remove(); iCnt = iCnt - 1; }
        
            $('input[name="numLocs"]').val(iCnt);
            
        });

        // REMOVE ALL THE ELEMENTS IN THE CONTAINER.
        $('#btRemoveAll').click(function() {
            $(container)
                .empty()
                .remove(); 

            $('#btSubmit').remove(); 
            iCnt = 0; 
            
            $('#btAdd')
                .removeAttr('disabled') 
                .attr('class', 'bt');
        });
    });

    // PICK THE VALUES FROM EACH TEXTBOX WHEN "SUBMIT" BUTTON IS CLICKED.
    var divValue, values = '';

    function GetTextValue() {
        $(divValue) 
            .empty() 
            .remove(); 
        
        values = '';

        $('.input').each(function() {
            divValue = $(document.createElement('div')).css({
                padding:'5px', width:'200px'
            });
            values += this.value + '<br />'
        });

        $(divValue).append('<p><b>Your selected values</b></p>' + values);
        $('body').append(divValue);
    }