package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;


public class ClearCellContentStyleWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: clear-cell-content-style
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			String output = "sample2.xlsx";
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			String sheetName = "Sheet1";
			String range = "A1:A10";
			Integer startRow = 1;
			Integer startColumn = 1;
			Integer endRow = 2;
			Integer endColumn = 2;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostClearContents(input, sheetName, range, startRow, startColumn, endRow, endColumn,
					Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr =storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: clear-cell-content-style
	}
}