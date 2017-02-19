require 'aspose_cells_cloud'

class OLEObject

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Get OLE object in specified format
  def get_ole_object_in_specified_format
    file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    object_number = 0
    format = "png"
    response = @cells_api.get_worksheet_ole_object_with_format(file_name, sheet_name, object_number, format)
  end

end

oleObject = OLEObject.new()
puts oleObject.get_ole_object_in_specified_format