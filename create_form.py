from PIL import Image, ImageDraw, ImageFont

"""
Create an image which is 1 pixel
black & white with a white background.
We assume the image is 8.5" x 11", but we need
to know what DPI the document will be scanned at and
adjust the DPI constant accordingly.
"""

DPI = 72
IMAGE_WIDTH = int(8.5 * DPI)
IMAGE_HEIGHT = 11 * DPI
BLACK = 0
WHITE = 1

im = Image.new("1", (IMAGE_WIDTH, IMAGE_HEIGHT), WHITE)




draw = ImageDraw.Draw(im)
# draw a line in black that's 2 pixels wide from point (100,100)
# to point (200, 200)
# draw.line((100,100, 200,200), BLACK, 2)


fontfile = "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"
font = ImageFont.truetype(fontfile, 14) # 12 point doesn't seem readable
                                        # by tesseract
draw.text((300,300), "Howdy", font=font, fill=BLACK)

# draw.rectangle([(280, 280), (580, 580)], outline=BLACK)


im.save("temp.png")
