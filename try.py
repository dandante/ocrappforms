from io import BytesIO
from contextlib import closing
from PIL import Image

image = Image.open('tesseract/testing/phototest.tif')
print(image)

with closing(BytesIO()) as f:
    image.save(f, image.format or 'JPEG')
    value = f.getvalue()
    
