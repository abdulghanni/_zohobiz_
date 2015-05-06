$(document).ready(function() {				
	$(".select2").select2();

    $('#name').on("change",function(ev){
        //$(".select2").select2();
        var user_id = $(this).val();
            $.ajax({
                type: 'POST',
                url: 'get_user_info',
                data: {id: user_id},
                dataType: 'json',
                success: function(data) {

                    $('#organization').val(data.org_nm);
                    $('#position').val(data.org_pos);
                    $('#seniority_date').val(data.seniority_date);
                    $('#get_user_pengganti').html(data.get_user_pengganti);
                }
            });
            ev.preventDefault();
         
    });

    //Date Pickers

      $('.input-append.date')
        .datepicker({todayHighlight: true})
        .on('changeDate', function(ev){
            days();
            $(this).datepicker('hide').blur();
    });


    function days() {
        var a = $("#datepicker_start").datepicker('getFormattedDate'),
            b = $("#datepicker_end").datepicker('getFormattedDate'),
            c = 24*60*60*1000,
            diffDays = Math.floor(( Date.parse(b) - Date.parse(a) ) / c);
        $("#jml_hari").val(diffDays);
        $("#jml_cuti").val(diffDays);
    }

    function formatDate(_d){
         var d = new Date(_d);
        var curr_date = d.getDate();
        if(curr_date < 10)
            curr_date = "0" + curr_date;
        
        var curr_month = d.getMonth() + 1; //Months are zero based
        if(curr_month < 10)
            curr_month = "0" + curr_month;
        
        var curr_year = d.getFullYear();   
        return curr_month + '/' + curr_date + '/' + curr_year;
    }

    $('#jml_hari').change(function(){        
        if($(this).val() != ''){
            var days = $(this).val();
            var start= new Date($("#datepicker_start").val());
            var newStart = start.setDate(start.getDate() + parseInt(days));    
            $("#datepicker_end").val(formatDate(newStart));
        }else{
            $("#datepicker_end").val($("#datepicker_start").val());
        }
        
    });

    $("tr.itemcuti").each(function() {
        var iditemcuti = $(this).attr('id');
        $('#viewcuti-' + iditemcuti).click(function (e){
            e.preventDefault();
            $('#cutidetail-' + iditemcuti).toggle();
        });
    });
      

	//Traditional form validation sample
	$('#form_traditional_validation').validate({
                focusInvalid: false, 
                ignore: "",
                rules: {
                    form1Amount: {
                        minlength: 2,
                        required: true
                    },
                    form1CardHolderName: {
						minlength: 2,
                        required: true,
                    },
                    form1CardNumber: {
                        required: true,
                        creditcard: true
                    }
                },

                invalidHandler: function (event, validator) {
					//display error alert on form submit    
                },

                errorPlacement: function (label, element) { // render error placement for each input type   
					$('<span class="error"></span>').insertAfter(element).append(label)
                    var parent = $(element).parent('.input-with-icon');
                    parent.removeClass('success-control').addClass('error-control');  
                },

                highlight: function (element) { // hightlight error inputs
					
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    
                },

                success: function (label, element) {
					var parent = $(element).parent('.input-with-icon');
					parent.removeClass('error-control').addClass('success-control'); 
                },

                submitHandler: function (form) {
                
                }
            });

    //approval script
    /*$('#btn_app_lv1').click(function(){
        $('#formAppLv1').submit(function(ev){
            $.ajax({
                type: 'POST',
                url: 'do_approve_spv',
                data: $('#formAppLv1').serialize(),
                success: function() {
                    setTimeout(function(){
                        location.reload()},
                        3000
                    )
                }
            });
            ev.preventDefault(); 
        });  
    });

    $('#btn_app_lv2').click(function(){
        $('#formAppLv2').submit(function(ev){
            $.ajax({
                type: 'POST',
                url: 'do_approve_kbg',
                data: $('#formAppLv2').serialize(),
                success: function() {
                    setTimeout(function(){
                        location.reload()},
                        3000
                    )
                }
            });
            ev.preventDefault(); 
        });  
    });

    $('#btn_app_lv3').click(function(){
        $('#formAppLv3').submit(function(ev){
            $.ajax({
                type: 'POST',
                url: 'do_approve_hr',
                data: $('#formAppLv3').serialize(),
                success: function() {
                    setTimeout(function(){
                        location.reload()},
                        3000
                    )
                }
            });
            ev.preventDefault(); 
        });  
    });*/ 	
	
	//Iconic form validation sample	
	   $('#form_iconic_validation').validate({
                errorElement: 'span', 
                errorClass: 'error', 
                focusInvalid: false, 
                ignore: "",
                rules: {
                    form1Name: {
                        minlength: 2,
                        required: true
                    },
                    form1Email: {
                        required: true,
                        email: true
                    },
                    form1Url: {
                        required: true,
                        url: true
                    }
                },

                invalidHandler: function (event, validator) {
					//display error alert on form submit    
                },

                errorPlacement: function (error, element) { // render error placement for each input type
                    var icon = $(element).parent('.input-with-icon').children('i');
                    var parent = $(element).parent('.input-with-icon');
                    icon.removeClass('icon-ok').addClass('icon-exclamation');  
                    parent.removeClass('success-control').addClass('error-control');  
                },

                highlight: function (element) { // hightlight error inputs
					
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    
                },

                success: function (label, element) {
                    var icon = $(element).parent('.input-with-icon').children('i');
					var parent = $(element).parent('.input-with-icon');
                    icon.removeClass("icon-exclamation").addClass('icon-ok');
					parent.removeClass('error-control').addClass('success-control'); 
                },

                submitHandler: function (form) {
                
                }
            });
	//Form Condensed Validation
	$('#form-condensed').validate({
                errorElement: 'span', 
                errorClass: 'error', 
                focusInvalid: false, 
                ignore: "",
                rules: {
                    form3FirstName: {
						name: true,
                        minlength: 3,
                        required: true
                    },
					form3LastName: {
                        minlength: 3,
                        required: true
                    },
                    form3Gender: {
                        required: true,
                    },
					form3DateOfBirth: {
                        required: true,
                    },
					form3Occupation: {
						 minlength: 3,
                        required: true,
                    },
					form3Email: {
                        required: true,
						email: true
                    },
                    form3Address: {
						minlength: 10,
                        required: true,
                    },
					form3City: {
						minlength: 5,
                        required: true,
                    },
					form3State: {
						minlength: 3,
                        required: true,
                    },
					form3Country: {
						minlength: 3,
                        required: true,
                    },
					form3PostalCode: {
						number: true,
						maxlength: 4,
                        required: true,
                    },
					form3TeleCode: {
						minlength: 3,
						maxlength: 4,
                        required: true,
                    },
					form3TeleNo: {
						maxlength: 10,
                        required: true,
                    },
                },

                invalidHandler: function (event, validator) {
					//display error alert on form submit    
                },

                errorPlacement: function (label, element) { // render error placement for each input type   
					$('<span class="error"></span>').insertAfter(element).append(label)
                },

                highlight: function (element) { // hightlight error inputs
					
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    
                },

                success: function (label, element) {
                  
                },

                submitHandler: function (form) {
                
                }
            });	
	
	//Form Wizard Validations
	var $validator = $("#commentForm").validate({
		  rules: {
		    emailfield: {
		      required: true,
		      email: true,
		      minlength: 3
		    },
		    txtFullName: {
		      required: true,
		      minlength: 3
		    },
			txtFirstName: {
		      required: true,
		      minlength: 3
		    },
			txtLastName: {
		      required: true,
		      minlength: 3
		    },
			txtCountry: {
		      required: true,
		      minlength: 3
		    },
			txtPostalCode: {
		      required: true,
		      minlength: 3
		    },
			txtPhoneCode: {
		      required: true,
		      minlength: 3
		    },
			txtPhoneNumber: {
		      required: true,
		      minlength: 3
		    },
		    urlfield: {
		      required: true,
		      minlength: 3,
		      url: true
		    }
		  },
		  errorPlacement: function(label, element) {
				$('<span class="arrow"></span>').insertBefore(element);
				$('<span class="error"></span>').insertAfter(element).append(label)
			}
		});

	$('#rootwizard').bootstrapWizard({
	  		'tabClass': 'form-wizard',
	  		'onNext': function(tab, navigation, index) {
	  			var $valid = $("#commentForm").valid();
	  			if(!$valid) {
	  				$validator.focusInvalid();
	  				return false;
	  			}
				else{
					$('#rootwizard').find('.form-wizard').children('li').eq(index-1).addClass('complete');
					$('#rootwizard').find('.form-wizard').children('li').eq(index-1).find('.step').html('<i class="icon-ok"></i>');	
				}
	  		}
	 });	
	 
	 jQuery.validator.addMethod("name", function(value, element)
		{
			valid = false;
			check = /[^-\.a-zA-Z\s\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02AE]/.test(value);
			if(check==false)
				valid = true;
			return this.optional(element) || valid;
		},jQuery.format("Please enter a proper name."));
});	
	 