.import "utilities2.js" as Utilities2
Qt.include("utilities3.js") // we can use it directly from main
function greeting() {
 console.log("hello there from external JS File")
}

function combineAges(age1, age2)
{
    console.log("Indirectlu calling add() from utilities2")
    return Utilities2.add(age1, age2)
}
