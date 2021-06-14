<script src="https://www.gstatic.com/firebasejs/8.6.3/firebase-app.js">
</script>
<script src="https://www.gstatic.com/firebasejs/8.6.3/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.3/firebase-database.js"></script>


<script id="MainScript">
    // Your web app's Firebase configuration
    var firebaseConfig = {
        apiKey: "AIzaSyDFVgFLnz3CnBWrY0F3tANV3oX6wtzzHlg",
        authDomain: "fir-javascripts.firebaseapp.com",
        projectId: "fir-javascripts",
        storageBucket: "fir-javascripts.appspot.com",
        messagingSenderId: "304372702125",
        appId: "1:304372702125:web:e6094b469db32dadd65f24"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    function SelectAllData() {
        firebase.database().ref('student').once('value', function(AllRecords) {
            AllRecords.forEach(function(CurrentRecord) {
                var name = CurrentRecord.val().NameOfStudent;
                var roll = CurrentRecord.val().RollNo;
                var sec = CurrentRecord.val().Sec;
                var gen = CurrentRecord.val().Gender;
                AddItemsToTable(name, roll, sec, gen);
            });
        })

    }

    var stdNo = 0;

    function AddItemsToTable(name, roll, sec, gen) {
        var tbody = document.getElementById('tbody1');
        var trow = document.createElement('tr');
        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');
        var td4 = document.createElement('td');
        var td5 = document.createElement('td');
        td1.innerHTML = ++stdNo;
        td2.innerHTML = name;
        trow.appendChild(td1);
        trow.appendChild(td2);
        trow.appendChild(td3);
        trow.appendChild(td4);
        trow.appendChild(td5);
        tbody.appendChild(trowI)