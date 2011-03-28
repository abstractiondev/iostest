Usage:

1. Modify the XML file "CommonLibExample" to include the desired naming convention definition

2. Transform CommonLibGenerator_v1_0.tt template
   In MonoDevelop you must modify the .tt file (insert space and delete it) the file and save it
   The save will trigger the tool execution (there is likely better way, but I'm not aware of it)

3. Include the CommonLibGenerator_v1_0.m to your Xcode project
   NOTE! Important aspect is to "link" the file, not to copy it over; or alter the generator
   to output it directly to proper location / automate the copy.
   (I have too little experience to give much guidance how this is done)

- For considerations; what benefits does the traditional static-library possess over this solution (if we accept that we do have the source-code available for the static-library).
     How about running different versions of the static library... or keeping it in sync centralized way with possible breaking changes?
- How would you support different naming conventions with static library?
- How about some other calling convention, or error reporting or any other aspect-type behaviour?
- Do open the CommonLibGenerator_v1_0.tt file; how difficult you think the modification would be, in case you needed to modify it?

As a disclaimer; the toolset is fully intellisense supported currently in T4 (that is the .tt file) modifications in Visual Studio. MonoDevelop has this feature currently in requested list and it should appear there eventually.
