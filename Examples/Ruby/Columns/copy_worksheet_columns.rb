#ExStart:
require 'aspose_cells_cloud'

class Column

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

  # Copy worksheet columns.
  def copy_worksheet_columns
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    source_column_index = 2
    destination_column_index = 0
    column_number = 4
    response = @cells_api.post_copy_worksheet_columns(file_name, sheet_name, source_column_index, destination_column_index, column_number)
  end

end

column = Column.new()
puts column.copy_worksheet_columns
#ExEnd: