package com.aspose.cells.cloud.examples.properties;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class RemoveParticularProperty {

	public static void execute(Context context) throws IOException {
		//ExStart: remove-particular-property
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample7.xlsx";
			String output = "sample2.xlsx";

			File inputFile = Utils.stream2file("sample7","xlsx", context.getResources().openRawResource(R.raw.sample7));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String propertyName = "Author";

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);
			cellsApi.DeleteDocumentProperty(input, propertyName, Utils.STORAGE, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: remove-particular-property

	}

}