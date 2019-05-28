import LinePlot
import Util
import Renderers
import SubPlot

var filePath = "examples/Reference/"
let fileName = "_05_sub_plot_grid_stacked_line_chart"

let x:[Float] = [0,100,263,489]
let y:[Float] = [0,320,310,170]

var agg_renderer: AGGRenderer = AGGRenderer()
var svg_renderer: SVGRenderer = SVGRenderer()

var plotTitle: PlotTitle = PlotTitle()

var plots = [Plot]()

var lineGraph1: LineGraph = LineGraph()
lineGraph1.addSeries(x, y, label: "Plot 1", color: Color.lightBlue)
plotTitle.title = "PLOT 1"
lineGraph1.plotTitle = plotTitle

var lineGraph2: LineGraph = LineGraph()
lineGraph2.addSeries(x, y, label: "Plot 2", color: Color.orange)
plotTitle.title = "PLOT 2"
lineGraph2.plotTitle = plotTitle

var lineGraph3: LineGraph = LineGraph()
lineGraph3.addSeries(x, y, label: "Plot 3", color: Color.brown)
plotTitle.title = "PLOT 3"
lineGraph3.plotTitle = plotTitle

var lineGraph4: LineGraph = LineGraph()
lineGraph4.addSeries(x, y, label: "Plot 4", color: Color.green)
plotTitle.title = "PLOT 4"
lineGraph4.plotTitle = plotTitle

plots.append(lineGraph1)
plots.append(lineGraph2)
plots.append(lineGraph3)
plots.append(lineGraph4)

var subPlot: SubPlot = SubPlot(numberOfPlots: 4, numberOfRows: 2, numberOfColumns: 2, stackPattern: SubPlot.GRID_STACKED)
subPlot.draw(plots: plots, renderer: svg_renderer, fileName: filePath+"svg/"+fileName)
subPlot.draw(plots: plots, renderer: agg_renderer, fileName: filePath+"agg/"+fileName)
