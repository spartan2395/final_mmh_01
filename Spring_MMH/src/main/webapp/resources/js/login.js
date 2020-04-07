function loginkakao(){
	Kakao.init('117c667ee203cc230a2f6cbf79775540');
	Kakao.Auth.login({
		success : function(authObj){
			Kakao.API.request({
				url:'/v2/user/me',
				success: function(res){
					console.log(JSON.stringify(res.kakao_account.email));
					$.ajax({
						url:'kakaologin.do',
						data:{m_email:res.kakao_account.email},
						contextType:'application/json',
						success: function(data){
							const re = JSON.parse(data);
							console.log(re);
							if(re.key =='Y'){
								location.href = 'user_list.do';
							}else if(re.key == 'N'){
								location.href = 'user_info.do';
							}
						},
						error:function(){
							alert('err');
						}
					
					});
				},
				fail: function(error){
					alert(JSON.stringify(error));
				}
			});
		},
		fail: function(err){
			alert(JSON.stringify(err));
		}
	});	
}

function logingoogle(){
	alert('ㅇㅅㅇ');
    function init() {
        gapi.load('auth2', function() { 
            var gauth = gapi.auth2.init({
                client_id: '261347811871-g4ri915lfl53tn24smcrch9r9fcr7dtm.apps.googleusercontent.com'
            });
            
            gauth.then(function(){
                console.log('init success');
            }, function(){
                console.error('init fail');
            })
        });
    }
    var gauth = gapi.auth2.getAuthInstance();

    if(this.value === 'Login') {
      gauth.signIn().then(function(){
      	alert('Logined');
      });
    } else {
      gauth.signOut().then(function(){
      alert('Logouted');
      });
    }
}