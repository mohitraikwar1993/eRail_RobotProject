
import json
import jsonpath

def read_element_locator_value(Locator_Path):
    
    f=open('C:/Users/Beauty/eclipse-workspace/eRail_RobotProject/JSON/Elements.json')
    resp=json.loads(f.read())
    value=jsonpath.jsonpath(resp,Locator_Path)
    return value[0]