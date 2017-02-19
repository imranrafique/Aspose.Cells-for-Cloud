require 'aspose_cells_cloud'

class Document

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

  # Delete document property.
  def delete_document_property
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    property_name = "author"
    response = @cells_api.delete_document_property(file_name, property_name)
  end

end

document = Document.new()
puts document.delete_document_property