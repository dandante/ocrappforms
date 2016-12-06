from tesserocr import PyTessBaseAPI, PSM

with PyTessBaseAPI(psm=PSM.OSD_ONLY) as api:
    api.SetImageFile("tesseract/testing/eurotext.tif")

    os = api.DetectOS()
    print(("Orientation: {orientation}\nOrientation confidence: {oconfidence}\n"
           "Script: {script}\nScript confidence: {sconfidence}").format(**os))
