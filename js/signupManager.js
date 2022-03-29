$(document).ready(function () {

    $("form").on("submit", function (event) {
        event.preventDefault();

        let data = $(this).serializeArray();
        let quit = false;

        data.forEach(obj => {

            if (obj['value'] == "") {
                let snackbar = document.getElementById("snackbar");
                snackbar.textContent = "Please insert a proper value";
                snackbar.className = "show";
                setTimeout(() => (snackbar.className = snackbar.className.replace("show", "")), 1000);
            }
            else if (obj['name'] == 'email') {
                console.log(obj['value']);
                $.ajax({
                    type: 'POST',
                    url: './login.php',
                    data: { "EmailTest": obj['value'] },
                })
                .done((found) => {
                    console.log(found);
                    if (!found) {
                        console.log('new');
                        $.post('./login.php', $(this).serialize(), function () {

                            let snackbar = document.getElementById("snackbar");
                            snackbar.textContent = "Account created";
                            snackbar.className = "show";
                            setTimeout(() => (snackbar.className = snackbar.className.replace("show", "")), 1000);
                            setTimeout(() => (window.location.replace("login.php")), 1100);
                        });
                    } else {
                        console.log("not new")
                        let snackbar = document.getElementById("snackbar");
                        snackbar.textContent = "Email not valid";
                        snackbar.className = "show";
                        setTimeout(() => (snackbar.className = snackbar.className.replace("show", "")), 1000);
                    }
                })
                .fail(function (valid) {
                    console.log("failed email check");
                });
            }
        });

    });

});