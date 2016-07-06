

function Init() {                                       //функция иниализации блока логина
    id = $.cookie('id');
    console.log(id);
    if (typeof (id) === 'undefined' || id == '') {
        $('.anonim').css('display', 'block');
        $('.regin').css('display', 'none');
    } else {
        $('.anonim').css('display', 'none');
        $('.regin').css('display', 'block');
        name = $.cookie('name');
        $('.usrname').html('&nbsp' + name);
    }
}
function InputCheck(){                                  //функция проверки ввода в поля
    login=$('#logform').val();
    pass=$('#pass').val();
    if (login!=''||pass!=''){
        lpattern=new RegExp("^[a-zA-Z][a-zA-Z0-9-_\.]{2,20}$");
        ppattern=new RegExp("^[A-Za-z0-9]{6,20}$");
        res1=lpattern.test(login);
        res2=ppattern.test(pass);
        if (res1==false||res2==false){
            return 0;
        }else {
            return 1;
        }    
    }else return 0;
}

function logFailed(failText){
    $('#logform').animate({borderColor:"#FF3333"},300);
    $('#pass').animate({borderColor:"#FF3333"},300);
    $('#wronginp').html(failText);
    $('#wronginp').show();
}    

$(document).ready(function () {
    Init();                                     //иниализация блока логина 
        $('#fsubmit').click(function () {
        valid=InputCheck();                     //проверка ввода полей
        if (valid!=0){       
            forms = $('#logpost').serialize();      //сбор данных с полей
            if ($('#stayon').prop('checked')) {     //проверка checkbox
            $staycheck = 'true';
            } else {
                $staycheck = 'false';
            }
            forms = forms + '&stayon=' + $staycheck;    //конечное формирование данных с полей  
            $.ajax({                                    //отправляем поля на сервер  
                type: "POST",
                url: "login/validation",
                data: forms,
                success: function (data) {
                    console.log ('Получены данные:'+data);
                    if (data){ 
                        $('#modal').modal('toggle');
                        Init();                                      //Перерисовка модуля логин
                    }else if (!data) {
                        logFailed('Неверный логин либо пароль!');   //конструируем ответ на неверные данные
                    }else if (data=='admin'){
                        window.location.href='/admin'; 
                    }
            }
            })
        }else{ 
            logFailed('Неверный формат вводимых данных!');        //ответ на неверный формат ввода            
        }    
    })
    $('.logout').click(function () {                //логаут
        $.removeCookie('id');
        $.removeCookie('name');
        location.reload();
    })

})