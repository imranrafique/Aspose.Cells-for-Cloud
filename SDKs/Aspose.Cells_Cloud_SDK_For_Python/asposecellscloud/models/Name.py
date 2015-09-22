#!/usr/bin/env python

class Name(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'Comment': 'str',
            'WorksheetIndex': 'int',
            'IsReferred': 'bool',
            'IsVisible': 'bool',
            'R1C1RefersTo': 'str',
            'RefersTo': 'str',
            'Text': 'str',
            'link': 'Link'

        }

        self.attributeMap = {
            'Comment': 'Comment','WorksheetIndex': 'WorksheetIndex','IsReferred': 'IsReferred','IsVisible': 'IsVisible','R1C1RefersTo': 'R1C1RefersTo','RefersTo': 'RefersTo','Text': 'Text','link': 'link'}       

        self.Comment = None # str
        self.WorksheetIndex = None # int
        self.IsReferred = None # bool
        self.IsVisible = None # bool
        self.R1C1RefersTo = None # str
        self.RefersTo = None # str
        self.Text = None # str
        self.link = None # Link
        
