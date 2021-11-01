// Returns a json data for chart 
// The data tells about the sale of particular pizza on a random day

    // var cdata = [{
    //     "_id": "585b544f5c86b6c8537c34d6",
    //     "pizza": "Pepperoni",
    //     "sold": Math.floor(Math.random() * (100 - 20 + 1)) + 20,
    // }, {/* www.demo2s.com*/
    //     "_id": "585b54505c86b6c8537c34d7",
    //     "pizza": "Farmhouse",
    //     "sold": Math.floor(Math.random() * (80 - 1 + 1)) + 1,
    // }, {
    //     "_id": "585b54515c86b6c8537c34d8",
    //     "pizza": "Veggie Paradise",
    //     "sold": Math.floor(Math.random() * (90 - 20 + 1)) + 20,
    // }, {
    //     "_id": "585b54525c86b6c8537c34d9",
    //     "pizza": "Peppy Panner",
    //     "sold": Math.floor(Math.random() * (50 - 40 + 1)) + 40,
    // }, {
    //     "_id": "585b54535c86b6c8537c34da",
    //     "pizza": "VEGGIE PARADISE",
    //     "sold": Math.floor(Math.random() * (85 - 20 + 1)) + 20,
    // }];
    


    var barColors ="red";
    let labels=['Pepperoni','Farmhouse','Veggie Paradise','Peppy Panner','VEGGIE PARADISE'];
    let data=[
        Math.floor(Math.random() * (100 - 20 + 1)) + 20,
        Math.floor(Math.random() * (80 - 1 + 1)) + 1,
        Math.floor(Math.random() * (90 - 20 + 1)) + 20,
        Math.floor(Math.random() * (50 - 40 + 1)) + 40,
        Math.floor(Math.random() * (85 - 20 + 1)) + 20
    ];
    let colors=['#ff861c','#36CAAB','#34495E','#B370CF','#21cbed'];




let myChart1=document.getElementById("myChart").getContext('2d');
let chart1=new Chart(myChart1,
    {type:'bar',
    data: {
        labels:labels,
        datasets:[{
            data:data,
            backgroundColor:colors
        }]
    },
    options:{
        title:{
            text:"Pizzas Sold Today",
            display:true
        },
        legend: {
            display:false
        }
    }

    });