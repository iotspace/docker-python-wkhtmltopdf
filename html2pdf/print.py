import pdfkit
import os
import shutil
import json
import logging
import requests
import datetime
import sys

if __name__ == '__main__':
    
    try:
        arg = sys.argv[1]
        script_name = sys.argv[0]
        report_name = sys.argv[1]
        print(f'RUN script: {script_name} {report_name}')
        
        # options for PDF file
        options = {
            '--enable-local-file-access': '',
            '--debug-javascript': '',
            '--footer-left': 'Hello here is the footer section demostration',
            '--footer-font-size': 7,
            '--footer-font-name': "'Montserrat', 'Gotham', sans-serif",
            '--print-media-type':'', 
            '--javascript-delay':2
        }
        in_html_file = "./html/index.html"
        out_pdf_file = "./gen/index.pdf"
        pdfkit.from_file(in_html_file, out_pdf_file, options=options)

    except IndexError:
        raise SystemExit(f"Usage: {sys.argv[0]} <string_to_reverse>")
