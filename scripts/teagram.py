from PIL import Image, ImageDraw
import math

side_lenght = 1000

diameter = (side_lenght - 100) /2
center = side_lenght / 2
im = Image.new('RGB', (side_lenght, side_lenght), (255, 255, 255))
draw = ImageDraw.Draw(im)
# font = ImageFont.truetype("sans-serif.ttf", 20)

def sindeg(angle):
	return math.sin(math.radians(angle))

def cosdeg(angle):
	return math.cos(math.radians(angle))

def draw_circle():
	leftUpPoint = (center - diameter, center - diameter)
	rightDownPoint = (center + diameter, center + diameter)
	twoPointList = [leftUpPoint, rightDownPoint]
	draw.ellipse(twoPointList, fill=(240,240,240,10), width=5)

def draw_octagon():
	draw.line((center - diameter,center, center + diameter, center), fill=128, width=3)
	draw.line((center,center - diameter, center, center + diameter), fill=128, width=3)

	oct_points = []
	for angle in range(0,360,45):
		oct_points.append((center + cosdeg(angle) * diameter, center + sindeg(angle) * diameter ))
		draw.line((center,center, oct_points[-1][0],oct_points[-1][1] ), fill=128, width= 3)
		if len(oct_points) > 1:
			draw.line((oct_points[-2][0],oct_points[-2][1], oct_points[-1][0],oct_points[-1][1] ), fill=128, width= 3)
	draw.line((oct_points[0][0],oct_points[0][1], oct_points[-1][0],oct_points[-1][1] ), fill=128, width= 3)

def calc_data(fruits=0,floral=0,vegetal=0,mineral=0, spices=0,cream=0,roast=0, wood=0):
	data = dict()
	data["fruits"] = (center, center + diameter * fruits)
	data["floral"] = (center + cosdeg(45) * diameter * floral, center + sindeg(45) * diameter * floral)

	return data

def draw_data(data):
	print(data)
	for key in data.keys():
		draw.polygon([(center,center), (data["floral"][0],data["floral"][1]), 	(data["fruits"][0],data["fruits"][1])], 
			fill="yellow")

draw_circle()
draw_data(calc_data(fruits=0.5))
draw_octagon()

im.save('imagedraw.png', quality=100)