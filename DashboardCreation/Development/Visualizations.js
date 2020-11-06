console.log(ReasonsData);

var Electionyears = ReasonsData.map(year => year.electionyear);
var nonvoters = ReasonsData.map(year => year.nonvotersinthousands);

// Try building a chart

var trace = {
    x: Electionyear,
    y: nonvoters,
    type: "bar"
};

var data = [trace];
var layout ={
    title: "Reasons for not voting in Election Years",
    xaxis: {title: "Election Year"},
    yaxis: {title: "Voters not voting (In thousands)"}
};


Plotly.newPlot("bar-plot", data, layout);
