package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DecryptWorkbook {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";
			Path inputFile = Utils.getPath(DecryptWorkbook.class, input);
			Path outputFile = Utils.getPath(DecryptWorkbook.class, output);

			com.aspose.cells.model.WorkbookEncryptionRequest properties = new com.aspose.cells.model.WorkbookEncryptionRequest();
			properties.setEncryptionType("XOR");
			properties.setPassword("12345678");
			properties.setKeyLength(128);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			cellsApi.DeleteDecryptDocument(input, Utils.STORAGE, null, properties);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
