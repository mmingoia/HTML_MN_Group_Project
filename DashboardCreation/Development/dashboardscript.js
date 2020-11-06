function init() {
    var selector = d3.select("#selDataset");

    d3.json("nationalreasonsdata.json").then((data) => {
        console.log(data);
        var electionyear = data.year;
        electionyear.forEach((year) => {
        selector
            .append("option")
            .text(year)
            .property("value", year);
        });
    })};

init();

function optionChanged(newYear) {
    buildMetadata(newYear);
    buildCharts(newYear);
};

function buildMetadata(year) {
    d3.json("nationalreasonsdata.json").then((data) => {
        var metadata = data.metadata;
        var resultArray = metadata.filter(sampleObj => sampleObj.id == year);
        var result = resultArray[0];
        var PANEL = d3.select("#year-metadata");

        PANEL.html("");
        Object.entries(result).forEach(([key, value]) =>
        {PANEL.append("h6").text(key + " : " + value);})
    });

};