package com.aspose.cells.cloud.examples.workbook;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class ProtectWorkbook {

	public static void execute(Context context) throws IOException {
		//ExStart: protect-excel-workbook
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			com.aspose.cells.model.WorkbookProtectionRequest properties = new com.aspose.cells.model.WorkbookProtectionRequest();
			properties.setPassword("12345678");
			properties.setProtectionType("All");

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);

			cellsApi.PostProtectDocument(input, Utils.STORAGE, null, properties);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: protect-excel-workbook
	}
}