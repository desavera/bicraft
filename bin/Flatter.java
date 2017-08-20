import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.json.CDL;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Iterator;


public class Flatter {
    public static void main(String args[]){


        JSONObject output;
	Path wiki_path = Paths.get(args[0],args[1]);
	Charset charset = Charset.forName("ISO-8859-1");

        try {

	    List<String> lines = Files.readAllLines(wiki_path, charset);

	    StringBuffer jsonStringBuffer = new StringBuffer();

	    Iterator<String> linesIt = lines.iterator();
	    while (linesIt.hasNext()) jsonStringBuffer.append(linesIt.next());

            String jsonString = jsonStringBuffer.toString().trim();

            System.out.println(jsonString);

            output = new JSONObject(jsonString);

            JSONArray docs = output.getJSONArray("list");

            File file=new File(args[2]);
            String csv = CDL.toString(docs);
            FileUtils.writeStringToFile(file, csv);
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }        
    }

}
