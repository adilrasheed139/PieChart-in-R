# Pie Chart for Categorical Data
carb.count <- table(mtcars$carb)
carb.count

# Simple Pie Chart with Defult Arguments Values
pie(carb.count)

# Show the pie chart on Clockwise
pie(carb.count, clockwise = T)

# Simple Pie Chart with Labels
pie (carb.count, labels = carb.count)

# Pie Chat with Customized lables names
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"))

# Pie Chat with Customized labels names and increase the label size
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     cex = 2) # CEX increase the size of labels

# Pie Chat and adding customized colors
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     col = c("red", "blue", "green", "yellow", "black","grey"))

# Pie Chat and style of all border
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     col = c("red", "blue", "green", "yellow", "black","grey"),
             lty = 2)

# Pie Chat and add the density
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     col = c("red", "blue", "green", "yellow", "black","grey"),
             lty = 2,
             density= 50)

# Pie Chat with a different angle
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     col = c("red", "blue", "green", "yellow", "black","grey"),
             lty = 2,
             density= 50,
     angle =90)

# Pie Chat and style the edges
pie (carb.count, labels = c("one", "two", "three", "four", "five", "six"), 
     col = c("red", "blue", "green", "yellow", "black","grey"),
             lty = 2,
             density= 50,
     angle =90,
     edges = 10)

# Pie Chart with Legends
pie (carb.count, labels = c("A", "B", "C", "D", "E", "F"), 
     col = rainbow (6)
     )
legend("topright", legend = c("A", "B", "C", "D", "E", "F"),
       fill = rainbow(6), title = "Legend"
       )

# 3D Pie Chart
# pdf(filename.pdf)
# devoff()
pie3D(carb.count,
    col = rainbow(6),
    height = 0.2, # Height of the Pie Chart
    labelcol = "red",
    border = "black",
    explode = 0.25, # Used for create looks cake shape
    radius = 1.5, # used to expand the pie chart
    )
