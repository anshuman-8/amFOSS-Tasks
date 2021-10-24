import requests
import json
import webbrowser
import argparse

if __name__=="__main__":
    
    parser = argparse.ArgumentParser(description='Gets the NASA mars rover images')
    parser.add_argument('--d', type=str, default="2018-08-30", help="Enter date in format YYYY-MM-DD")
    parser.add_argument('--c', type=str, default="NAVCAM", help="Camera options(FHAZ, RHAZ, MAST, NAVCAM, PANCAM, MAHLI, MARDI) ")
    args= parser.parse_args()
    params = {"earth_date":args.d, "camera":args.c, "api_key":"DEMO_KEY"}
    f = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?"
    data = requests.get(f, params = params)
    a = json.loads(data.text)
    
    for i in a["photos"]:
        print(i, "\n\n\n")
    
        b = a["photos"][3]["img_src"]
        print(a["photos"][1]["img_src"])
    
    webbrowser.open(b)




