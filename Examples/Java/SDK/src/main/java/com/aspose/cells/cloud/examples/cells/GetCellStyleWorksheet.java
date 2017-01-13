package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetCellStyleWorksheet {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			Path inputFile = Utils.getPath(GetCellStyleWorksheet.class, input);

			String sheetName = "Sheet1";
			String cellName = "a1";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			com.aspose.cells.model.StyleResponse apiResponse = cellsApi.GetWorksheetCellStyle(input, sheetName,
					cellName, Utils.STORAGE, Utils.FOLDER);

			System.out.println("Cell Style Font :: " + apiResponse.getStyle().getFont().getName());

		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
