Usage:
1. Modify the XML file "CommonLibExample" to include the desired naming convention definition
2. Run CommonLibGenerator_v1_0.tt tool
   In MonoDevelop you must modify the .tt file (insert space and delete it) the file and save it
   The save will trigger the tool execution (there is likely better way, but I'm not aware of it)
3. Include the CommonLibGenerator_v1_0.m to your Xcode project 
   NOTE! Important aspect is to "link" the file, not to copy it over; or alter the generator
   to output it directly to proper location / automate the copy.
   (I have too little experience to give much guidance how this is done)
