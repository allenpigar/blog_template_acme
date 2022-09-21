
<!-- Four -->
<section id="four" class="wrapper style4 special">
	<div class="container 75%">
		<header class="major">
			<h2>Contact Us<br />
				We are ready to work with you</h2>
		</header>
{{if {post_var.email} }}
		{{include email-responder}}
{{instance.sendemail(Hello {post_var.name},{$responder}, {post_var.email})}}

		<h1> Thanks for contacting us!</h1>
		{{else}}
		<form id="fupForm" method="post" action="#" >
			<!-- These values control how Zesty understands the form. -->
    <input name="zlf" value="Form Request" type="hidden">
    <input name="zcf" value="1" type="hidden"> 
	<input type="hidden" name="_zesty_webhook" value="https://webhook.site/0e98b1cd-4079-480b-83b0-ed31c31272d7"/>
	<input type="hidden" name="_next" value="https://4rb42634-dev.preview.zesty.io/blog">
	<input type="hidden" name="_url" value="https://4rb42634-dev.preview.zesty.io">
<input type="hidden" name="_template" value="table">
<input type="hidden" name="_captcha" value="false">
<input type="hidden" name="{{setting.contact-form.honeypot}}" value=""/>
			<div class="row uniform 50%">
				<div class="6u 12u(mobilep)"><input type="text" name="name" id="name" placeholder="Name" /></div>
				<div class="6u 12u(mobilep)"><input type="email" name="email" id="email" placeholder="Email" /></div>
			</div>
			<div class="row uniform 50%">
				<div class="12u"><textarea name="message" id="message" placeholder="Message" rows="8"></textarea></div>
			</div>
			
			<div class="row uniform">
				<div class="12u">
					<ul class="actions">
						<li><input type="submit" value="Send Message" /></li>
					</ul>
				</div>
			</div>
		</form>
		{{end-if}}
		<h1 id="msg" style="display:none">Thank you!</h1>
	</div>
</section>
<script type="text/javascript">

$("#fupForm_").submit(function(e) {

    e.preventDefault(); // avoid to execute the actual submit of the form.

    var form = $(this);
    var url = '/';
    
    $.ajax({
           type: "POST",
           url: url,
           data: form.serialize(), // serializes the form's elements.
           success: function(data)
           {
               alert("posted to Zesty");
			  $('#fupForm').unbind('submit').submit();
           }
         });

    
});
</script>