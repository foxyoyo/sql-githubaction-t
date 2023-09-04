# Split the files when the string CREATE TABLE is found
csplit master.sql '/CREATE TABLE/'

# Read the first line, extract table name and rename the file
for f in $(ls xx*); 
do 
    table_name=`head -1 $f | awk '{ sub(/.*CREATE TABLE /, ""); sub(/ .*/, ""); print }'`
    mv $f "$table_name.sql"
    echo "Renaming $f to $table_name.sql"; 
done;