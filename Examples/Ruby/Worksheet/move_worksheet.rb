#ExStart:
require 'aspose_cells_cloud'

class Worksheet

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("da77c9f5da014d91faf2961ecec2de66", "B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Move worksheet.
  def move_worksheet
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet1"
    moving_request = WorksheetMovingRequest.new
    moving_request.destination_worksheet = "Sheet5"
    moving_request.position = "after"

    response = @cells_api.post_move_worksheet(file_name, sheet_name, moving_request)
  end

end

worksheet = Worksheet.new()
puts worksheet.move_worksheet
#ExEnd: