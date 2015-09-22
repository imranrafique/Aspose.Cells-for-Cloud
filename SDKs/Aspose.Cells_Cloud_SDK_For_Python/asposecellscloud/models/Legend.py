#!/usr/bin/env python

class Legend(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'Position': 'str',
            'LegendEntries': 'LinkElement',
            'Area': 'Area',
            'AutoScaleFont': 'bool',
            'BackgroundMode': 'str',
            'Border': 'Line',
            'Font': 'Font',
            'IsAutomaticSize': 'bool',
            'IsInnerMode': 'bool',
            'Shadow': 'bool',
            'ShapeProperties': 'list[LinkElement]',
            'Width': 'int',
            'Height': 'int',
            'X': 'int',
            'Y': 'int',
            'link': 'Link'

        }

        self.attributeMap = {
            'Position': 'Position','LegendEntries': 'LegendEntries','Area': 'Area','AutoScaleFont': 'AutoScaleFont','BackgroundMode': 'BackgroundMode','Border': 'Border','Font': 'Font','IsAutomaticSize': 'IsAutomaticSize','IsInnerMode': 'IsInnerMode','Shadow': 'Shadow','ShapeProperties': 'ShapeProperties','Width': 'Width','Height': 'Height','X': 'X','Y': 'Y','link': 'link'}       

        self.Position = None # str
        self.LegendEntries = None # LinkElement
        self.Area = None # Area
        self.AutoScaleFont = None # bool
        self.BackgroundMode = None # str
        self.Border = None # Line
        self.Font = None # Font
        self.IsAutomaticSize = None # bool
        self.IsInnerMode = None # bool
        self.Shadow = None # bool
        self.ShapeProperties = None # list[LinkElement]
        self.Width = None # int
        self.Height = None # int
        self.X = None # int
        self.Y = None # int
        self.link = None # Link
        