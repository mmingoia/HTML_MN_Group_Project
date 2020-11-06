function init() {
    var selector = d3.select("#selDataset");
  
    d3.json("samples.json").then((data) => {
      console.log(data);
      var sampleNames = data.names;
      sampleNames.forEach((sample) => {
        selector
          .append("option")
          .text(sample)
          .property("value", sample);
      });
  })}
  
  init();

function optionChanged(newSample) {
    buildMetadata(newSample);
    buildCharts(newSample);
}




function buildMetadata(sample) {
    d3.json("samples.json").then((data) => {
      console.log(data);
      var metadata = data.metadata;
      var resultArray = metadata.filter(sampleObj => sampleObj.id == sample);
      var result = resultArray[0];
      var PANEL = d3.select("#sample-metadata");
  
      PANEL.html("");
      
      PANEL.append("h6").text("ID: " + result.id);
      PANEL.append("h6").text("Ethnicity: " + result.ethnicity);
      PANEL.append("h6").text("Gender: " + result.gender);
      PANEL.append("h6").text("Age: " + result.age);
      PANEL.append("h6").text("Location: " + result.location);
      PANEL.append("h6").text("BB Type: " + result.bbtype);
      PANEL.append("h6").text("WFreq: " + result.wfreq);
    });
}

function buildCharts(sample){
  d3.json("samples.json").then((data) => {
    var samples = data.samples;
    var resultArray = samples.filter(sampleObj => parseInt(sampleObj.id) == sample);
    var result = resultArray[0];
    var xaxis = result.sample_values.splice(0,10);
    var yaxis = result.otu_ids.splice(0,10);;
    for(var i=0;i<yaxis.length;i++){
      yaxis[i] = "OTU "+ yaxis[i];
    }
    var text = result.otu_labels.splice(0,10);;
    
    var bardata = {
    x: xaxis,
    y: yaxis,
    type: 'bar',
    hovertext: text,
    orientation: 'h'
   };
   
   var barlayout = {
    title: "Bar Chart of Top 10 Samples",
    yaxis:{autorange:'reversed'}
   };
   Plotly.newPlot("bar", [bardata], barlayout);

  });


  d3.json("samples.json").then((data) => {
    var samples = data.samples;
    var resultArray = samples.filter(sampleObj => parseInt(sampleObj.id) == sample);
    var result = resultArray[0];
    
    var sampleValues = result.sample_values;
    var otuIDs = result.otu_ids;
    var otuLabels = result.otu_labels;
    var bubbleData = {
    x: otuIDs,
    y: sampleValues,
    text: otuLabels,
    mode: 'markers',
    marker: {
      size: sampleValues,
      sizeref: 1.5,
      color : otuIDs
    }
        
   }
   var bubbleLayout = {
    title: "Bubble Chart of all bacteria",
  };
  Plotly.newPlot("bubble", [bubbleData], bubbleLayout);
  });


  d3.json("samples.json").then((data) => {
    var metadata = data.metadata;
    var resultArray = metadata.filter(sampleObj => sampleObj.id == sample);
    var result = resultArray[0];
    var wash = result.wfreq;
    
    
    var gaugeData = [
      {
        value: wash,
        type : "indicator",
        gauge: {
          axis:{range: [0,9]},
        },
        mode : 'gauge',
        title: { text: "Times washing belly button per week" }

      }
    ];
    var layout = { width: 600, height: 500, margin: { t: 0, b: 0 } };
    Plotly.newPlot('gauge', gaugeData, layout)
  });
}
window.onload - optionChanged(940);