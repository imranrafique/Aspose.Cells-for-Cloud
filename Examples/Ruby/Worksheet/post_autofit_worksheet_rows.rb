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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def post_autofit_worksheet_rows
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    auto_fitter_options = AutoFitterOptions.new
    auto_fitter_options.auto_fit_merged_cells = true
    auto_fitter_options.ignore_hidden = true
    auto_fitter_options.only_auto = true
    response = @cells_api.post_autofit_worksheet_rows(file_name, sheet_name, auto_fitter_options, {startRow: 1, endRow: 10, onlyAuto: true})
  end

end

worksheet = Worksheet.new()
puts worksheet.post_autofit_worksheet_rows