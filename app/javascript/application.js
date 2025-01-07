// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"

$(document).ready(function () {
    
    $("#submit-book-form").on("click",function(e){
        e.preventDefault();
        var formdata = {
            title: $("#form-title").val(),
            price: $("#form-price").val(),
            author: $("#form-author").val(),
            genre: $("#form-genre").val()
        };
        console.log(formdata)
        $.ajax({
            type: "POST",
            url: "/create",
            data: formdata,
            
            success: function (response) {
                console.log("form submitted")
            }
        });
    });

});
