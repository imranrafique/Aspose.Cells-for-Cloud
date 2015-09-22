#!/usr/bin/env python

class Cells(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'MaxRow': 'int',
            'MaxColumn': 'int',
            'CellCount': 'int',
            'Rows': 'LinkElement',
            'Columns': 'LinkElement',
            'CellList': 'list[LinkElement]',
            'link': 'Link'

        }

        self.attributeMap = {
            'MaxRow': 'MaxRow','MaxColumn': 'MaxColumn','CellCount': 'CellCount','Rows': 'Rows','Columns': 'Columns','CellList': 'CellList','link': 'link'}       

        self.MaxRow = None # int
        self.MaxColumn = None # int
        self.CellCount = None # int
        self.Rows = None # LinkElement
        self.Columns = None # LinkElement
        self.CellList = None # list[LinkElement]
        self.link = None # Link
        
