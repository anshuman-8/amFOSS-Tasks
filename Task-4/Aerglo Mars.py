import requests
import json
import webbrowser
import argparse
import sys

if __name__=="__main__":
    
    parser = argparse.ArgumentParser()

    parser.add_argument('--date', type=str, default="2018-08-30", help="Enter date in format YYYY-MM-DD")

    parser.add_argument('--cam', type=str, default="NAVCAM", help="Camera options(FHAZ, RHAZ, MAST, NAVCAM, PANCAM, MAHLI, MARDI) ")

    parser.add_argument('--page', type=int, default=1, help="Choose a page number between 1 to 25")

    args= parser.parse_args()
    print("Showing you image of mars on ",args.date," form camera ",args.cam)

    p = {"earth_date":args.date, "camera":args.cam,"page":args.page, "api_key":"DEMO_KEY"}

    data = requests.get("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?", params = p)
    #print(data.text)
    a = json.loads(data.text)
    
    webbrowser.open_new_tab(str(a["photos"][args.page]["img_src"]))
    



