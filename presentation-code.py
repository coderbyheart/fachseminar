from urllib.request import urlopen
import xml.etree.ElementTree as etree

def getTemperature(location):
    ''' Return current temperature in
        celsius for given location by
        using the google wether service'''
    resp = urlopen("http://www.google.com/ig/api?weather=" + location)
    tree = etree.fromstring(resp.read())
    return tree.find('weather/current_conditions/temp_c').attrib['data']

print(getTemperature("D-65195"))
