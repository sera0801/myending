$(window).on("load", function() {
    // var url = location.href

    // if(url == "users/#{current_user.id}"){
    //   $("tab1").addClass("selected");

    if(document.URL.match("/pictures")) {
      $(".tab2").addClass("selected");

    }else if(document.URL.match("/form")){
      $(".tab3").addClass("selected");

    }else if(document.URL.match("/messageposts")){
      $(".tab4").addClass("selected");

    }else{
      $(".tab1").addClass("selected");

    };

    // if(document.URL.match("/form")) {
    //   $("tab3").addClass("selected");

    // if(document.URL.match("/messages")) {
    //   $("tab4").addClass("selected");
    // }

});